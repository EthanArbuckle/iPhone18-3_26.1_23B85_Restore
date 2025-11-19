uint64_t key path setter for NCProtoCallStateResponse.callState : NCProtoCallStateResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoCallState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo(a1, v8, type metadata accessor for NCProtoCallState);
  v9 = *(type metadata accessor for NCProtoCallStateResponse(0) + 20);
  outlined destroy of NCProtoContactInfo?(a2 + v9, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  outlined init with take of NCProtoContactInfo(v8, a2 + v9, type metadata accessor for NCProtoCallState);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t NCProtoCallStateResponse.callState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoCallStateResponse(0) + 20);
  outlined destroy of NCProtoContactInfo?(v1 + v3, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  outlined init with take of NCProtoContactInfo(a1, v1 + v3, type metadata accessor for NCProtoCallState);
  v4 = type metadata accessor for NCProtoCallState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NCProtoCallStateResponse.callState.modify(void *a1))(uint64_t **a1, char a2)
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
  v15 = *(type metadata accessor for NCProtoCallStateResponse(0) + 20);
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

  return NCProtoCallStateResponse.callState.modify;
}

void NCProtoCallStateResponse.callState.modify(uint64_t **a1, char a2)
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
    outlined init with copy of NCProtoContactInfo((*a1)[5], v4, type metadata accessor for NCProtoCallState);
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
    outlined init with take of NCProtoContactInfo(v4, v9 + v3, type metadata accessor for NCProtoCallState);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of NCProtoContactInfo(v5, type metadata accessor for NCProtoCallState);
  }

  else
  {
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
    outlined init with take of NCProtoContactInfo(v5, v9 + v3, type metadata accessor for NCProtoCallState);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t NCProtoDeviceTokenRequest.memberAssociationPrimaryInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v14 - v4;
  v6 = type metadata accessor for NCProtoDeviceTokenRequest(0);
  outlined init with copy of NCProtoContactInfo?(v1 + *(v6 + 24), v5, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
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

uint64_t key path setter for NCProtoDeviceTokenRequest.memberAssociationPrimaryInfo : NCProtoDeviceTokenRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo(a1, v8, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  v9 = *(type metadata accessor for NCProtoDeviceTokenRequest(0) + 24);
  outlined destroy of NCProtoContactInfo?(a2 + v9, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  outlined init with take of NCProtoContactInfo(v8, a2 + v9, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t NCProtoDeviceTokenRequest.memberAssociationPrimaryInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoDeviceTokenRequest(0) + 24);
  outlined destroy of NCProtoContactInfo?(v1 + v3, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  outlined init with take of NCProtoContactInfo(a1, v1 + v3, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  v4 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*NCProtoDeviceTokenRequest.memberAssociationPrimaryInfo.modify(void *a1))(uint64_t **a1, char a2)
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
  v15 = *(type metadata accessor for NCProtoDeviceTokenRequest(0) + 24);
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

  return NCProtoDeviceTokenRequest.memberAssociationPrimaryInfo.modify;
}

void NCProtoDeviceTokenRequest.memberAssociationPrimaryInfo.modify(uint64_t **a1, char a2)
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
    outlined init with copy of NCProtoContactInfo((*a1)[5], v4, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
    outlined init with take of NCProtoContactInfo(v4, v9 + v3, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of NCProtoContactInfo(v5, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  }

  else
  {
    outlined destroy of NCProtoContactInfo?(v9 + v3, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
    outlined init with take of NCProtoContactInfo(v5, v9 + v3, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL NCProtoDeviceTokenRequest.hasMemberAssociationPrimaryInfo.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v8 - v2;
  v4 = type metadata accessor for NCProtoDeviceTokenRequest(0);
  outlined init with copy of NCProtoContactInfo?(v0 + *(v4 + 24), v3, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  v5 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of NCProtoContactInfo?(v3, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  return v6;
}

Swift::Void __swiftcall NCProtoDeviceTokenRequest.clearMemberAssociationPrimaryInfo()()
{
  v1 = *(type metadata accessor for NCProtoDeviceTokenRequest(0) + 24);
  outlined destroy of NCProtoContactInfo?(v0 + v1, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  v2 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t NCProtoDeviceTokenRequest.callState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  v6 = type metadata accessor for NCProtoDeviceTokenRequest(0);
  outlined init with copy of NCProtoContactInfo?(v1 + *(v6 + 28), v5, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
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

uint64_t key path getter for NCProtoDeviceTokenRequest.callState : NCProtoDeviceTokenRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  v7 = type metadata accessor for NCProtoDeviceTokenRequest(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v7 + 28), v6, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
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

uint64_t key path setter for NCProtoDeviceTokenRequest.callState : NCProtoDeviceTokenRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoCallState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo(a1, v8, type metadata accessor for NCProtoCallState);
  v9 = *(type metadata accessor for NCProtoDeviceTokenRequest(0) + 28);
  outlined destroy of NCProtoContactInfo?(a2 + v9, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  outlined init with take of NCProtoContactInfo(v8, a2 + v9, type metadata accessor for NCProtoCallState);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t NCProtoDeviceTokenRequest.callState.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoDeviceTokenRequest(0) + 28);
  outlined destroy of NCProtoContactInfo?(v1 + v3, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  outlined init with take of NCProtoContactInfo(a1, v1 + v3, type metadata accessor for NCProtoCallState);
  v4 = type metadata accessor for NCProtoCallState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*NCProtoDeviceTokenRequest.callState.modify(void *a1))()
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
  v15 = *(type metadata accessor for NCProtoDeviceTokenRequest(0) + 28);
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

uint64_t key path getter for NCProtoDeviceTokenRequest.shouldLaunchFaceTime : NCProtoDeviceTokenRequest@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NCProtoDeviceTokenRequest(0);
  *a2 = *(a1 + *(result + 32)) & 1;
  return result;
}

uint64_t key path setter for NCProtoDeviceTokenRequest.shouldLaunchFaceTime : NCProtoDeviceTokenRequest(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoDeviceTokenRequest(0);
  *(a2 + *(result + 32)) = v3;
  return result;
}

uint64_t NCProtoDeviceTokenRequest.shouldLaunchFaceTime.setter(char a1)
{
  result = type metadata accessor for NCProtoDeviceTokenRequest(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*NCProtoDeviceTokenRequest.shouldLaunchFaceTime.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for NCProtoDeviceTokenRequest(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NCProtoStartedSessionEvent.isExpanseHandoffSupported.modify;
}

uint64_t NCProtoDeviceTokenRequest.conversationHandoffType.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NCProtoDeviceTokenRequest(0);
  v4 = (v1 + *(result + 36));
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

uint64_t key path getter for NCProtoDeviceTokenRequest.conversationHandoffType : NCProtoDeviceTokenRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for NCProtoDeviceTokenRequest(0);
  v5 = (a1 + *(result + 36));
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

uint64_t key path setter for NCProtoDeviceTokenRequest.conversationHandoffType : NCProtoDeviceTokenRequest(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = type metadata accessor for NCProtoDeviceTokenRequest(0);
  v6 = a2 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t NCProtoDeviceTokenRequest.conversationHandoffType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for NCProtoDeviceTokenRequest(0);
  v5 = v1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 9) = 0;
  return result;
}

uint64_t (*NCProtoDeviceTokenRequest.conversationHandoffType.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoDeviceTokenRequest(0) + 36);
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

Swift::Void __swiftcall NCProtoDeviceTokenRequest.clearConversationHandoffType()()
{
  v1 = v0 + *(type metadata accessor for NCProtoDeviceTokenRequest(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 256;
}

unint64_t NCProtoDeviceTokenRequest.ConversationHandoffType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoDeviceTokenRequest.ConversationHandoffType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t NCProtoDeviceTokenRequest.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for NCProtoDeviceTokenRequest(0);
  v3 = &a1[v2[5]];
  UnknownStorage.init()();
  v4 = v2[6];
  v5 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for NCProtoCallState(0);
  result = (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  a1[v2[8]] = 2;
  v9 = &a1[v2[9]];
  *v9 = 0;
  *(v9 + 4) = 256;
  return result;
}

uint64_t NCProtoDeviceTokenResponse.associationVoucherData.getter()
{
  v1 = (v0 + *(type metadata accessor for NCProtoDeviceTokenResponse(0) + 24));
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

uint64_t key path getter for NCProtoDeviceTokenResponse.associationVoucherData : NCProtoDeviceTokenResponse@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NCProtoDeviceTokenResponse(0) + 24));
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

uint64_t key path setter for NCProtoDeviceTokenResponse.associationVoucherData : NCProtoDeviceTokenResponse(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for NCProtoDeviceTokenResponse(0) + 24));
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data._Representation(v2, v3);
  result = outlined consume of Data?(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t NCProtoDeviceTokenResponse.associationVoucherData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NCProtoDeviceTokenResponse(0) + 24);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*NCProtoDeviceTokenResponse.associationVoucherData.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoDeviceTokenResponse(0) + 24);
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

Swift::Void __swiftcall NCProtoDeviceTokenResponse.clearAssociationVoucherData()()
{
  v1 = v0 + *(type metadata accessor for NCProtoDeviceTokenResponse(0) + 24);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_2255D3AC0;
}

double NCProtoDeviceTokenResponse.init()@<D0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for NCProtoDeviceTokenResponse(0);
  v3 = a1 + *(v2 + 20);
  UnknownStorage.init()();
  result = 0.0;
  *(a1 + *(v2 + 24)) = xmmword_2255D3AC0;
  return result;
}

uint64_t key path getter for NCProtoDisconnectRequest.isPullingBackToPhone : NCProtoDisconnectRequest@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for NCProtoDisconnectRequest(0);
  *a2 = *(a1 + *(result + 24)) & 1;
  return result;
}

uint64_t key path setter for NCProtoDisconnectRequest.isPullingBackToPhone : NCProtoDisconnectRequest(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoDisconnectRequest(0);
  *(a2 + *(result + 24)) = v3;
  return result;
}

uint64_t NCProtoDisconnectRequest.isPullingBackToPhone.setter(char a1)
{
  result = type metadata accessor for NCProtoDisconnectRequest(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*NCProtoDisconnectRequest.isPullingBackToPhone.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for NCProtoDisconnectRequest(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return NCProtoStartedSessionEvent.isExpanseHandoffSupported.modify;
}

uint64_t NCProtoCallState.avMode.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  result = a1(0);
  v5 = (v2 + *(result + 28));
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

uint64_t key path getter for NCProtoCallState.avMode : NCProtoCallState@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(0);
  v6 = (a1 + *(result + 28));
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

uint64_t key path setter for NCProtoCallState.avMode : NCProtoCallState(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  result = a5(0);
  v9 = a2 + *(result + 28);
  *v9 = v6;
  *(v9 + 8) = v7;
  *(v9 + 9) = 0;
  return result;
}

uint64_t NCProtoCallState.avMode.setter(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = a2(0);
  v6 = v2 + *(result + 28);
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t (*NCProtoDisconnectRequest.disconnectReason.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoDisconnectRequest(0) + 28);
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

uint64_t NCProtoActiveConversation.avMode.modify(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t NCProtoCallState.clearAvMode()(uint64_t (*a1)(void))
{
  result = a1(0);
  v3 = v1 + *(result + 28);
  *v3 = 0;
  *(v3 + 8) = 256;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoDisconnectRequest.DisconnectReason(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t NCProtoDisconnectRequest.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_2255D3AB0;
  v2 = type metadata accessor for NCProtoDisconnectRequest(0);
  v3 = a1 + v2[5];
  result = UnknownStorage.init()();
  *(a1 + v2[6]) = 2;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 256;
  return result;
}

uint64_t NCProtoDisconnectResponse.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = &a1[*(type metadata accessor for NCProtoDisconnectResponse(0) + 20)];
  return UnknownStorage.init()();
}

uint64_t (*NCProtoPrepareTransferRequest.activeConversationUuidString.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for NCProtoPrepareTransferRequest(0) + 20);
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

uint64_t NCProtoContinuityCall.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NCProtoContinuityCall.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t (*NCProtoMemberAssociationPrimaryInfo.conversationGroupUuidString.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 24);
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

uint64_t NCProtoNearbyCallStatusChangedEvent.userAccountInfoData.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >> 60 != 15)
  {
    v5 = v2[1];
  }

  outlined copy of Data?(*v2, v3);
  return v4;
}

uint64_t key path getter for NCProtoNearbyCallStatusChangedEvent.userAccountInfoData : NCProtoNearbyCallStatusChangedEvent@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
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

  *a3 = v7;
  a3[1] = v8;

  return outlined copy of Data?(v5, v6);
}

uint64_t key path setter for NCProtoNearbyCallStatusChangedEvent.userAccountInfoData : NCProtoNearbyCallStatusChangedEvent(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (a2 + *(a5(0) + 28));
  v8 = *v7;
  v9 = v7[1];
  outlined copy of Data._Representation(v5, v6);
  result = outlined consume of Data?(v8, v9);
  *v7 = v5;
  v7[1] = v6;
  return result;
}

uint64_t NCProtoNearbyCallStatusChangedEvent.userAccountInfoData.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = v3 + *(a3(0) + 28);
  result = outlined consume of Data?(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t (*NCProtoMemberAssociationPrimaryInfo.handleData.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 28);
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

uint64_t NCProtoActiveConversation.handlesHash.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    outlined copy of Data._Representation(*a1, v2);
    outlined consume of Data?(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return outlined consume of Data._Representation(v4, v2);
  }

  else
  {
    result = outlined consume of Data?(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

double NCProtoNearbyCallStatusChangedEvent.clearUserAccountInfoData()(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  outlined consume of Data?(*v2, *(v2 + 8));
  result = 0.0;
  *v2 = xmmword_2255D3AC0;
  return result;
}

uint64_t NCProtoMemberAssociationPrimaryInfo.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 32));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for NCProtoMemberAssociationPrimaryInfo.identifier : NCProtoMemberAssociationPrimaryInfo@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v5 = (a1 + *(result + 32));
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

uint64_t key path setter for NCProtoMemberAssociationPrimaryInfo.identifier : NCProtoMemberAssociationPrimaryInfo(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v5 = a2 + *(result + 32);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t NCProtoMemberAssociationPrimaryInfo.identifier.setter(uint64_t a1)
{
  result = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*NCProtoMemberAssociationPrimaryInfo.identifier.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 32);
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

Swift::Void __swiftcall NCProtoMemberAssociationPrimaryInfo.clearIdentifier()()
{
  v1 = v0 + *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t NCProtoMemberAssociationPrimaryInfo.avcIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 36));
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

uint64_t key path getter for NCProtoMemberAssociationPrimaryInfo.avcIdentifier : NCProtoMemberAssociationPrimaryInfo@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 36));
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

uint64_t key path setter for NCProtoMemberAssociationPrimaryInfo.avcIdentifier : NCProtoMemberAssociationPrimaryInfo(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 36));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t NCProtoMemberAssociationPrimaryInfo.avcIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*NCProtoMemberAssociationPrimaryInfo.avcIdentifier.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 36);
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

void NCProtoContactInfo.organizationName.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall NCProtoMemberAssociationPrimaryInfo.clearAvcIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 36));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NCProtoConversationAVMode()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NCProtoConversationAVMode()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NCProtoIDSProxyMessage.rawData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v10 - v5;
  outlined init with copy of NCProtoContactInfo?(v2, &v10 - v5, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v7 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v6, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of NCProtoContactInfo(v6, a1, type metadata accessor for NCProtoIDSProxyMessage.RawData);
    }

    outlined destroy of NCProtoContactInfo(v6, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  }

  *a1 = xmmword_2255D3AB0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21InternalSwiftProtobuf07Google_E6_ValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v8 = a1 + *(type metadata accessor for NCProtoIDSProxyMessage.RawData(0) + 28);
  return UnknownStorage.init()();
}

uint64_t NCProtoIDSProxyMessage.RawData.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_2255D3AB0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21InternalSwiftProtobuf07Google_E6_ValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = a1 + *(type metadata accessor for NCProtoIDSProxyMessage.RawData(0) + 28);
  return UnknownStorage.init()();
}

void (*NCProtoIDSProxyMessage.rawData.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for NCProtoIDSProxyMessage.RawData(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of NCProtoContactInfo?(v2, v9, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v14 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v9, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of NCProtoContactInfo(v9, v13, type metadata accessor for NCProtoIDSProxyMessage.RawData);
      return NCProtoIDSProxyMessage.rawData.modify;
    }

    outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  }

  *v13 = xmmword_2255D3AB0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0xE000000000000000;
  *(v13 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21InternalSwiftProtobuf07Google_E6_ValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v16 = v13 + *(v10 + 28);
  UnknownStorage.init()();
  return NCProtoIDSProxyMessage.rawData.modify;
}

uint64_t NCProtoIDSProxyMessage.groupUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  outlined init with copy of NCProtoContactInfo?(v2, &v11 - v5, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v7 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v6, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of NCProtoContactInfo(v6, a1, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
    }

    outlined destroy of NCProtoContactInfo(v6, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = xmmword_2255D3AD0;
  v9 = MEMORY[0x277D84F90];
  *(a1 + 104) = 0xC000000000000000;
  *(a1 + 112) = v9;
  *(a1 + 120) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVTt0g5Tf4g_n(v9);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xE000000000000000;
  v10 = a1 + *(type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0) + 68);
  return UnknownStorage.init()();
}

uint64_t key path getter for NCProtoIDSProxyMessage.groupUpdate : NCProtoIDSProxyMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  outlined init with copy of NCProtoContactInfo?(a1, &v11 - v5, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v7 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v6, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of NCProtoContactInfo(v6, a2, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
    }

    outlined destroy of NCProtoContactInfo(v6, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = xmmword_2255D3AD0;
  v9 = MEMORY[0x277D84F90];
  *(a2 + 104) = 0xC000000000000000;
  *(a2 + 112) = v9;
  *(a2 + 120) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVTt0g5Tf4g_n(v9);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0xE000000000000000;
  v10 = a2 + *(type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0) + 68);
  return UnknownStorage.init()();
}

uint64_t NCProtoIDSProxyMessage.GroupUpdate.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = xmmword_2255D3AD0;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 104) = 0xC000000000000000;
  *(a1 + 112) = v2;
  *(a1 + 120) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVTt0g5Tf4g_n(v2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xE000000000000000;
  v3 = a1 + *(type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0) + 68);
  return UnknownStorage.init()();
}

void (*NCProtoIDSProxyMessage.groupUpdate.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of NCProtoContactInfo?(v2, v9, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v14 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v9, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0xE000000000000000;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 40) = 0xE000000000000000;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0;
    *(v13 + 80) = 0;
    *(v13 + 88) = xmmword_2255D3AD0;
    v16 = MEMORY[0x277D84F90];
    *(v13 + 104) = 0xC000000000000000;
    *(v13 + 112) = v16;
    *(v13 + 120) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVTt0g5Tf4g_n(v16);
    *(v13 + 128) = 0;
    *(v13 + 136) = 0xE000000000000000;
    v17 = v13 + *(v10 + 68);
    UnknownStorage.init()();
    return NCProtoIDSProxyMessage.groupUpdate.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of NCProtoContactInfo(v9, v13, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
  return NCProtoIDSProxyMessage.groupUpdate.modify;
}

uint64_t NCProtoIDSProxyMessage.resource.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v10 - v5;
  outlined init with copy of NCProtoContactInfo?(v2, &v10 - v5, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v7 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v6, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of NCProtoContactInfo(v6, a1, type metadata accessor for NCProtoIDSProxyMessage.Resource);
    }

    outlined destroy of NCProtoContactInfo(v6, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  }

  *a1 = xmmword_2255D3AB0;
  *(a1 + 16) = xmmword_2255D3AB0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21InternalSwiftProtobuf07Google_E6_ValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v9 = a1 + *(type metadata accessor for NCProtoIDSProxyMessage.Resource(0) + 32);
  return UnknownStorage.init()();
}

uint64_t key path setter for NCProtoIDSProxyMessage.rawData : NCProtoIDSProxyMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v16 - v12;
  outlined init with copy of NCProtoContactInfo(a1, &v16 - v12, a6);
  outlined destroy of NCProtoContactInfo?(a2, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  outlined init with take of NCProtoContactInfo(v13, a2, a7);
  v14 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t NCProtoIDSProxyMessage.rawData.setter(uint64_t a1, uint64_t (*a2)(void))
{
  outlined destroy of NCProtoContactInfo?(v2, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  outlined init with take of NCProtoContactInfo(a1, v2, a2);
  v5 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

uint64_t NCProtoIDSProxyMessage.Resource.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_2255D3AB0;
  *(a1 + 16) = xmmword_2255D3AB0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21InternalSwiftProtobuf07Google_E6_ValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = a1 + *(type metadata accessor for NCProtoIDSProxyMessage.Resource(0) + 32);
  return UnknownStorage.init()();
}

void (*NCProtoIDSProxyMessage.resource.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for NCProtoIDSProxyMessage.Resource(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of NCProtoContactInfo?(v2, v9, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v14 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v9, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v13 = xmmword_2255D3AB0;
    *(v13 + 16) = xmmword_2255D3AB0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    *(v13 + 48) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21InternalSwiftProtobuf07Google_E6_ValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v16 = v13 + *(v10 + 32);
    UnknownStorage.init()();
    return NCProtoIDSProxyMessage.resource.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of NCProtoContactInfo(v9, v13, type metadata accessor for NCProtoIDSProxyMessage.Resource);
  return NCProtoIDSProxyMessage.resource.modify;
}

void NCProtoIDSProxyMessage.rawData.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of NCProtoContactInfo((*a1)[3], v10, a5);
    outlined destroy of NCProtoContactInfo?(v13, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    outlined init with take of NCProtoContactInfo(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    outlined destroy of NCProtoContactInfo(v11, a6);
  }

  else
  {
    outlined destroy of NCProtoContactInfo?(**a1, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    outlined init with take of NCProtoContactInfo(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t NCProtoIDSProxyMessage.Resource.context.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t NCProtoContactHandleAnonym.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NCProtoContactHandleAnonym.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t NCProtoIDSProxyMessage.GroupUpdate.groupUuid.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t NCProtoIDSProxyMessage.GroupUpdate.groupUuid.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t NCProtoIDSProxyMessage.GroupUpdate.participantData.getter()
{
  v1 = *(v0 + 80);
  outlined copy of Data._Representation(v1, *(v0 + 88));
  return v1;
}

uint64_t NCProtoIDSProxyMessage.GroupUpdate.participantData.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t NCProtoIDSProxyMessage.GroupUpdate.members.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t NCProtoIDSProxyMessage.GroupUpdate.participantIds.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

uint64_t NCProtoIDSProxyMessage.GroupUpdate.relaySessionID.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t NCProtoIDSProxyMessage.GroupUpdate.relaySessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t NCProtoIDSProxyMessage.GroupUpdate.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0) + 68);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NCProtoIDSProxyMessage.GroupUpdate.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0) + 68);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NCProtoIDSProxyMessage.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for NCProtoIDSProxyMessage(0) + 20);
  return UnknownStorage.init()();
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoConversationAVMode._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoConversationAVMode._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3AE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "None";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Audio";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Video";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoConversationState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoConversationState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UnknownState";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Waiting";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Preparing";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Joining";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "Joined";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "Leaving";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoConversationLetMeInRequestState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoConversationLetMeInRequestState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2255D3B00;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "UnknownLmiState";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "NoneLmiState";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "NotRequested";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "Requested";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "Approved";
  *(v14 + 8) = 8;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoContactImageType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoContactImageType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UnknownImageType";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Avatar";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Poster";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoContactInfo._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoContactInfo._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2255D3B20;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "namePrefix";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v24 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "givenName";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v24 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "middleName";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v24 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "familyName";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v24 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "nameSuffix";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v24 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "nickname";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v24 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "imageData";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v24 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "organizationName";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v24 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "identifier";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoContactHandleAnonym._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoContactHandleAnonym._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3AE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "localizedLabel";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "label";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoContactHandleAnonym.AnonymType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoContactHandleAnonym.AnonymType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PhoneNumber";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "EmailAddress";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoContinuityFavorite._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoContinuityFavorite._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B00;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "contactInfo";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "contactIdentifier";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "anonym";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "actionType";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "bundleIdentifier";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoAddressableContact._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoAddressableContact._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contactInfo";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handleAnonyms";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "contactIdentifier";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoActiveConversation._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoActiveConversation._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2255D3B30;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "uuidString";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "displayName";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "avMode";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "remoteMemberCount";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "remoteMemberContactIdentifiers";
  *(v15 + 1) = 30;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "state";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "letMeInRequestState";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "handlesHash";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoContinuityCall._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoContinuityCall._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2255D3B40;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "uuidString";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "displayName";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "status";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "conversationUuidString";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "isMuted";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "isCameraEnabled";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "info";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "callGroupUuidString";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "imageData";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "service";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "wantsHoldMusic";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "isScreening";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoContinuityCall.Status._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoContinuityCall.Status._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2255D3B30;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "Unknown";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "Ringing";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "Active";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "Sending";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "Idle";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "Held";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "Disconnecting";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "Disconnected";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoContinuityCall.Service._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoContinuityCall.Service._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3AE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UnknownService";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Telephony";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FaceTimeAudio";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FaceTimeVideo";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoStartedSessionEvent._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoStartedSessionEvent._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2255D3AF0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "identifier";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "userAccountInfoData";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "memberAssociationPrimaryInfo";
  *(v11 + 1) = 28;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "avMode";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "isExpanseHandoffSupported";
  *(v15 + 1) = 25;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "isLagunaHandoffSupported";
  *(v17 + 1) = 24;
  v17[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoPendingConversationDisconnectedEvent._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoPendingConversationDisconnectedEvent._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuidString";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "disconnectedReason";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoContactUpdateEvent._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoContactUpdateEvent._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifierHash";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "contacts";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoJoinEvent._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoJoinEvent._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifierHash";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userAccountInfoData";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "policyInfos";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoRecentCallsDidChangeEvent._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoRecentCallsDidChangeEvent._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "recentCalls";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "contactInfos";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "recentCallsInfo";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoSuggestionAdvertisement._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoSuggestionAdvertisement._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "suggestionIdentifier";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "type";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoSuggestionAdvertisement.SuggestionType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoSuggestionAdvertisement.SuggestionType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PullRequest";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IntelligentRoutingRecommendation";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoLagunaConnectionRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoLagunaConnectionRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2255D3B60;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "recentCalls";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "contactInfos";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "callState";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "activeConversations";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "favorites";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "continuityCalls";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "recentCallsInfo";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoNearbyCallStatusChangedEvent._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoNearbyCallStatusChangedEvent._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "calls";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userAccountInfoData";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "incomingCallBannerDevices";
  *(v11 + 8) = 25;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoAddMemberRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoAddMemberRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3AE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "memberToken";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "conversationIdentifier";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "context";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "associationVoucherData";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoAddMemberRequest.NearbyConversationPullContext._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoAddMemberRequest.NearbyConversationPullContext._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PointOfPlayback";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ControlCenterWithActivity";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ControlCenterWithoutActivity";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SystemWake";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "FaceTimeApp";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoAddMemberResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoAddMemberResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifierHash";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "policyInfos";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoPullLagunaSessionToTVRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoPullLagunaSessionToTVRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "conversationIdentifier";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoPullLagunaSessionToTVRequest.Reason._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoPullLagunaSessionToTVRequest.Reason._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3AE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UserInitiated";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SystemWake";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Perception";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoTransferActiveConversationRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoTransferActiveConversationRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "activeConversationUuidString";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isAudioEnabled";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "isVideoEnabled";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoTransferContinuityCallRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoTransferContinuityCallRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuidString";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isAudioEnabled";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoStartLagunaSessionRequest.RecentCallFetchType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoStartLagunaSessionRequest.RecentCallFetchType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Default";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FaceTime";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Telephony";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoSenderIdentity._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoSenderIdentity._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shortName";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoCallInfo._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoCallInfo._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2255D3B20;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "callerIdSubstring";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "callIdentifier";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "displayName";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "isBranded";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "contactIdentifiersByHandle";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "SenderIdentity";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "handlesHash";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "isEmergency";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "handlesBlocked";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoUpdateBlockedStateRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoUpdateBlockedStateRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handlesData";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "spamCallModelInfo";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoUpdateBlockedStateRequest.BlockRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoUpdateBlockedStateRequest.BlockRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Block";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Unblock";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "BlockAndReport";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoSpamCallModelInfo._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoSpamCallModelInfo._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "initiatorHandle";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isIncoming";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "callIdentifier";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "callDuration";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "callTime";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "isFaceTime";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoStartLagunaSessionResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoStartLagunaSessionResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2255D3AF0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "recentCalls";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "contactInfos";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "activeConversations";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "favorites";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "continuityCalls";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "recentCallsInfo";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoJoinActiveConversationRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoJoinActiveConversationRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "activeConversationUuidString";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isAudioEnabled";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "isVideoEnabled";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoGetAddressableContactsResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoGetAddressableContactsResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contacts";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "contactSortOrder";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoGetImageForContactRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoGetImageForContactRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contactIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "imageTypes";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoGetImageForContactResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoGetImageForContactResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "imageData";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "imageType";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoDestinationCapabilities._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoDestinationCapabilities._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "supportsTelephonyCalls";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "supportsFaceTimeAudio";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "supportsFaceTimeVideo";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoGetDestinationCapabilitiesRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoGetDestinationCapabilitiesRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "destinationIdentifier";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "destinationType";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoGetDestinationCapabilitiesRequest.DestinationType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoGetDestinationCapabilitiesRequest.DestinationType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Handle";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Anonym";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoIncomingCallBannerActionRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoIncomingCallBannerActionRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "action";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "callUUID";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "routeIdentifier";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoIncomingCallBannerActionRequest.Action._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoIncomingCallBannerActionRequest.Action._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Accept";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Decline";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoCallState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoCallState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3AE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "isVideoEnabled";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isAudioEnabled";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "avMode";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isCaptioningEnabled";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoDeviceTokenRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoDeviceTokenRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B00;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "conversationIdentifier";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "memberAssociationPrimaryInfo";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "callState";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "shouldLaunchFaceTime";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "conversationHandoffType";
  *(v15 + 8) = 23;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoDeviceTokenRequest.ConversationHandoffType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoDeviceTokenRequest.ConversationHandoffType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B00;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Pull";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Push";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Incoming";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "Outgoing";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoDeviceTokenResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoDeviceTokenResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deviceToken";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "associationVoucherData";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoDisconnectRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoDisconnectRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifierHash";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isPullingBackToPhone";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "disconnectReason";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoDisconnectRequest.DisconnectReason._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoDisconnectRequest.DisconnectReason._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3AE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EndingHandoff";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PullingBackToPhone";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BlockedContact";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoMemberAssociationPrimaryInfo._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoMemberAssociationPrimaryInfo._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2255D3B00;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "conversationGroupUuidString";
  *(v5 + 8) = 27;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "handleData";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "identifier";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "avcIdentifier";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "supportedTypes";
  *(v14 + 8) = 14;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoMemberAssociationPrimaryInfo.MemberAssociationType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoMemberAssociationPrimaryInfo.MemberAssociationType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Expanse";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "IdentityClaiming";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoIDSProxyMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoIDSProxyMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rawData";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "groupUpdate";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "resource";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoIDSProxyMessage.RawData._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoIDSProxyMessage.RawData._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "messageData";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fromID";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "context";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoIDSProxyMessage.Resource._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoIDSProxyMessage.Resource._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2255D3AE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "resourceData";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metadata";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "fromID";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "context";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static NCProtoIDSProxyMessage.GroupUpdate._protobuf_nameMap);
  __swift_project_value_buffer(v0, static NCProtoIDSProxyMessage.GroupUpdate._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2255D3B70;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "isInitiator";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "groupUUID";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "participantID";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "participantDestinationID";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "updateType";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "updateSubtype";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "fromServer";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "serverDate";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "participantData";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "clientContextData";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "members";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "participantIDs";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "relaySessionID";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t NCProtoContactInfo.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      if (result > 2 || result == 1 || result == 2)
      {
LABEL_2:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }
    }

    else
    {
      if (result <= 6)
      {
        goto LABEL_2;
      }

      switch(result)
      {
        case 7:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
        case 8:
          v4 = *(type metadata accessor for NCProtoContactInfo(0) + 48);
LABEL_19:
          v0 = 0;
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 9:
          v3 = *(type metadata accessor for NCProtoContactInfo(0) + 52);
          goto LABEL_19;
      }
    }
  }
}

uint64_t NCProtoContactInfo.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        v10 = v0[7];
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v0[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
        {
          v12 = v0[9];
          v13 = HIBYTE(v12) & 0xF;
          if ((v12 & 0x2000000000000000) == 0)
          {
            v13 = v0[8] & 0xFFFFFFFFFFFFLL;
          }

          if (!v13 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
          {
            v14 = v0[11];
            v15 = HIBYTE(v14) & 0xF;
            if ((v14 & 0x2000000000000000) == 0)
            {
              v15 = v0[10] & 0xFFFFFFFFFFFFLL;
            }

            if (!v15 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
            {
              v16 = v0[12];
              v17 = v0[13];
              v18 = v17 >> 62;
              if ((v17 >> 62) > 1)
              {
                if (v18 != 2)
                {
                  goto LABEL_34;
                }

                v19 = *(v16 + 16);
                v20 = *(v16 + 24);
              }

              else
              {
                if (!v18)
                {
                  if ((v17 & 0xFF000000000000) == 0)
                  {
LABEL_34:
                    result = closure #1 in NCProtoContactInfo.traverse<A>(visitor:)(v0);
                    if (!v1)
                    {
                      closure #2 in NCProtoContactInfo.traverse<A>(visitor:)(v0);
                      v21 = v0 + *(type metadata accessor for NCProtoContactInfo(0) + 44);
                      return UnknownStorage.traverse<A>(visitor:)();
                    }

                    return result;
                  }

LABEL_33:
                  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
                  if (v1)
                  {
                    return result;
                  }

                  goto LABEL_34;
                }

                v19 = v16;
                v20 = v16 >> 32;
              }

              if (v19 == v20)
              {
                goto LABEL_34;
              }

              goto LABEL_33;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in NCProtoContactInfo.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoContactInfo(0);
  v3 = (a1 + *(result + 48));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in NCProtoContactInfo.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoContactInfo(0);
  v3 = (a1 + *(result + 52));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoContactInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0xE000000000000000;
  *(a2 + 96) = xmmword_2255D3AB0;
  v4 = a2 + a1[11];
  result = UnknownStorage.init()();
  v6 = a1[13];
  v7 = (a2 + a1[12]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NCProtoContactInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NCProtoContactInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance NCProtoContactInfo(uint64_t a1, uint64_t a2))()
{
  result = NCProtoContactInfo.namePrefix.modify;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoContactInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoContactInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoContactInfo()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo);

  return Message.hash(into:)();
}

uint64_t NCProtoContactHandleAnonym.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          lazy protocol witness table accessor for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t NCProtoContactHandleAnonym.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    if (!v0[2] || (v11 = v0[2], v12 = *(v0 + 24), lazy protocol witness table accessor for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
    {
      v6 = v0[5];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        v8 = v0[7];
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v0[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
        {
          v10 = v0 + *(type metadata accessor for NCProtoContactHandleAnonym(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoContactHandleAnonym@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance NCProtoContactHandleAnonym(uint64_t a1, uint64_t a2))()
{
  result = NCProtoContactInfo.namePrefix.modify;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoContactHandleAnonym(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactHandleAnonym and conformance NCProtoContactHandleAnonym, type metadata accessor for NCProtoContactHandleAnonym);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoContactHandleAnonym(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactHandleAnonym and conformance NCProtoContactHandleAnonym, type metadata accessor for NCProtoContactHandleAnonym);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoContactHandleAnonym()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactHandleAnonym and conformance NCProtoContactHandleAnonym, type metadata accessor for NCProtoContactHandleAnonym);

  return Message.hash(into:)();
}

uint64_t NCProtoContinuityFavorite.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        closure #1 in NCProtoContinuityFavorite.decodeMessage<A>(decoder:)();
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }

    else if (result == 3)
    {
      closure #3 in NCProtoContinuityFavorite.decodeMessage<A>(decoder:)();
    }

    else if (result == 4 || result == 5)
    {
LABEL_2:
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }
}

uint64_t closure #1 in NCProtoContinuityFavorite.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoContinuityFavorite(0) + 32);
  type metadata accessor for NCProtoContactInfo(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in NCProtoContinuityFavorite.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoContinuityFavorite(0) + 36);
  type metadata accessor for NCProtoContactHandleAnonym(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactHandleAnonym and conformance NCProtoContactHandleAnonym, type metadata accessor for NCProtoContactHandleAnonym);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t NCProtoContinuityFavorite.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in NCProtoContinuityFavorite.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = *v3;
    v10 = v3[1];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    closure #2 in NCProtoContinuityFavorite.traverse<A>(visitor:)(v3, a1, a2, a3);
    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    v14 = v3[5];
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v3[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    v16 = v3 + *(type metadata accessor for NCProtoContinuityFavorite(0) + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NCProtoContinuityFavorite.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v15 - v6;
  v8 = type metadata accessor for NCProtoContactInfo(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NCProtoContinuityFavorite(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v13 + 32), v7, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v7, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v7, v12, type metadata accessor for NCProtoContactInfo);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoContactInfo);
}

uint64_t closure #2 in NCProtoContinuityFavorite.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v15 - v6;
  v8 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NCProtoContinuityFavorite(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v13 + 36), v7, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v7, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v7, v12, type metadata accessor for NCProtoContactHandleAnonym);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactHandleAnonym and conformance NCProtoContactHandleAnonym, type metadata accessor for NCProtoContactHandleAnonym);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoContactHandleAnonym);
}

uint64_t protocol witness for Message.init() in conformance NCProtoContinuityFavorite@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  v4 = &a2[a1[7]];
  UnknownStorage.init()();
  v5 = a1[8];
  v6 = type metadata accessor for NCProtoContactInfo(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[9];
  v8 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance NCProtoContinuityFavorite(uint64_t a1, uint64_t a2))()
{
  result = NCProtoContactInfo.namePrefix.modify;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoContinuityFavorite(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityFavorite and conformance NCProtoContinuityFavorite, type metadata accessor for NCProtoContinuityFavorite);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoContinuityFavorite(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityFavorite and conformance NCProtoContinuityFavorite, type metadata accessor for NCProtoContinuityFavorite);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoContinuityFavorite()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityFavorite and conformance NCProtoContinuityFavorite, type metadata accessor for NCProtoContinuityFavorite);

  return Message.hash(into:)();
}

uint64_t NCProtoAddressableContact.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 2:
          type metadata accessor for NCProtoContactHandleAnonym(0);
          lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactHandleAnonym and conformance NCProtoContactHandleAnonym, type metadata accessor for NCProtoContactHandleAnonym);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 1:
          closure #1 in NCProtoAddressableContact.decodeMessage<A>(decoder:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in NCProtoAddressableContact.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoAddressableContact(0) + 28);
  type metadata accessor for NCProtoContactInfo(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t NCProtoAddressableContact.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in NCProtoAddressableContact.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for NCProtoContactHandleAnonym(0);
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactHandleAnonym and conformance NCProtoContactHandleAnonym, type metadata accessor for NCProtoContactHandleAnonym);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v8 = v5[2];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v5[1] & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    v10 = v5 + *(type metadata accessor for NCProtoAddressableContact(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NCProtoAddressableContact.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v15 - v6;
  v8 = type metadata accessor for NCProtoContactInfo(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NCProtoAddressableContact(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v13 + 28), v7, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v7, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v7, v12, type metadata accessor for NCProtoContactInfo);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoContactInfo);
}

uint64_t protocol witness for Message.init() in conformance NCProtoAddressableContact@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = 0;
  *(a2 + 2) = 0xE000000000000000;
  v4 = &a2[*(a1 + 24)];
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for NCProtoContactInfo(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance NCProtoAddressableContact(uint64_t a1, uint64_t a2))()
{
  result = NCProtoContactInfo.namePrefix.modify;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoAddressableContact(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddressableContact and conformance NCProtoAddressableContact, type metadata accessor for NCProtoAddressableContact);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoAddressableContact(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddressableContact and conformance NCProtoAddressableContact, type metadata accessor for NCProtoAddressableContact);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoAddressableContact()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddressableContact and conformance NCProtoAddressableContact, type metadata accessor for NCProtoAddressableContact);

  return Message.hash(into:)();
}

uint64_t NCProtoActiveConversation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          closure #7 in NCProtoActiveConversation.decodeMessage<A>(decoder:)();
        }

        else if (result == 8)
        {
          v13 = *(type metadata accessor for NCProtoActiveConversation(0) + 48);
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        }
      }

      else if (result == 5)
      {
        dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
      }

      else
      {
        closure #6 in NCProtoActiveConversation.decodeMessage<A>(decoder:)();
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in NCProtoActiveConversation.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for NCProtoActiveConversation);
      }

      else
      {
        v12 = *(type metadata accessor for NCProtoActiveConversation(0) + 36);
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }
    }

    else if (result == 1)
    {
      v14 = *(type metadata accessor for NCProtoActiveConversation(0) + 24);
LABEL_19:
      v4 = 0;
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      v11 = *(type metadata accessor for NCProtoActiveConversation(0) + 28);
      goto LABEL_19;
    }
  }
}

uint64_t closure #6 in NCProtoActiveConversation.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoActiveConversation(0) + 40);
  lazy protocol witness table accessor for type NCProtoConversationState and conformance NCProtoConversationState();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t closure #7 in NCProtoActiveConversation.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoActiveConversation(0) + 44);
  lazy protocol witness table accessor for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t NCProtoActiveConversation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in NCProtoActiveConversation.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoActiveConversation);
  if (!v4)
  {
    closure #2 in NCProtoActiveConversation.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoActiveConversation);
    closure #3 in NCProtoActiveConversation.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoActiveConversation);
    closure #4 in NCProtoActiveConversation.traverse<A>(visitor:)(v3);
    if (*(*v3 + 16))
    {
      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    closure #5 in NCProtoActiveConversation.traverse<A>(visitor:)(v3);
    closure #6 in NCProtoActiveConversation.traverse<A>(visitor:)(v3);
    closure #7 in NCProtoActiveConversation.traverse<A>(visitor:)(v3);
    v9 = v3 + *(type metadata accessor for NCProtoActiveConversation(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #4 in NCProtoActiveConversation.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoActiveConversation(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #5 in NCProtoActiveConversation.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoActiveConversation(0);
  v3 = (a1 + *(result + 40));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    lazy protocol witness table accessor for type NCProtoConversationState and conformance NCProtoConversationState();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in NCProtoActiveConversation.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoActiveConversation(0);
  v3 = (a1 + *(result + 44));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    lazy protocol witness table accessor for type NCProtoConversationLetMeInRequestState and conformance NCProtoConversationLetMeInRequestState();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in NCProtoActiveConversation.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoActiveConversation(0);
  v3 = a1 + *(result + 48);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

double protocol witness for Message.init() in conformance NCProtoActiveConversation@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = (a2 + a1[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  *(v9 + 4) = 256;
  v10 = a2 + v8;
  *v10 = 0;
  v10[8] = 1;
  v11 = a1[11];
  v12 = a2 + a1[10];
  *v12 = 0;
  *(v12 + 4) = 256;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 256;
  result = 0.0;
  *(a2 + a1[12]) = xmmword_2255D3AC0;
  return result;
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance NCProtoActiveConversation(uint64_t a1, uint64_t a2))()
{
  result = NCProtoContactInfo.namePrefix.modify;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoActiveConversation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoActiveConversation and conformance NCProtoActiveConversation, type metadata accessor for NCProtoActiveConversation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoActiveConversation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoActiveConversation and conformance NCProtoActiveConversation, type metadata accessor for NCProtoActiveConversation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoActiveConversation()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoActiveConversation and conformance NCProtoActiveConversation, type metadata accessor for NCProtoActiveConversation);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for defaultInstance()
{
  v0 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = NCProtoContinuityCall._StorageClass.init()();
  static NCProtoContinuityCall._StorageClass.defaultInstance = result;
  return result;
}

uint64_t NCProtoContinuityCall._StorageClass.init()()
{
  *(v0 + 41) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 57) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 514;
  v1 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  v2 = type metadata accessor for NCProtoCallInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData) = xmmword_2255D3AC0;
  v4 = v0 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service;
  *v4 = 0;
  *(v4 + 8) = 256;
  *(v0 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__wantsHoldMusic) = 2;
  *(v0 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__isScreening) = 2;
  return v0;
}

uint64_t NCProtoContinuityCall._StorageClass.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];

  outlined destroy of NCProtoContactInfo?(v0 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v4 = *(v0 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString + 8);

  outlined consume of Data?(*(v0 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData), *(v0 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData + 8));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t NCProtoContinuityCall.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for NCProtoContinuityCall._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = specialized NCProtoContinuityCall._StorageClass.init(copying:)(v12);

    *(v4 + v8) = v16;
    v11 = v16;
  }

  return closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)(v11, a1, a2, a3);
}

uint64_t closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 6)
      {
        if (result > 9)
        {
          switch(result)
          {
            case 10:
              closure #10 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)();
              break;
            case 11:
              closure #11 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)(a2, a1, a3, a4, &OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__wantsHoldMusic);
              break;
            case 12:
              closure #11 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)(a2, a1, a3, a4, &OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__isScreening);
              break;
          }
        }

        else if (result == 7)
        {
          closure #7 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)();
        }

        else if (result == 8)
        {
          closure #8 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)(a2, a1, a3, a4, &OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString, MEMORY[0x277D217D0]);
        }

        else
        {
          closure #8 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)(a2, a1, a3, a4, &OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData, MEMORY[0x277D21760]);
        }
      }

      else if (result > 3)
      {
        if (result == 4)
        {
          closure #4 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)();
        }

        else if (result == 5)
        {
          closure #5 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)();
        }

        else
        {
          closure #6 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            closure #1 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)();
            break;
          case 2:
            closure #2 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)();
            break;
          case 3:
            closure #3 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  lazy protocol witness table accessor for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #7 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for NCProtoCallInfo(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #8 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t closure #10 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  lazy protocol witness table accessor for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #11 in closure #1 in NCProtoContinuityCall.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t NCProtoContinuityCall.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for NCProtoContinuityCall(0);
  result = closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = closure #1 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(a1);
  if (!v4)
  {
    closure #2 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(a1);
    closure #3 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(a1);
    closure #4 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(a1);
    closure #5 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(a1);
    closure #6 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(a1);
    closure #7 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #8 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(a1);
    closure #9 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(a1);
    closure #10 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(a1);
    closure #11 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__wantsHoldMusic);
    return closure #11 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__isScreening);
  }

  return result;
}

uint64_t closure #1 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 57) & 1) == 0)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56) & 1;
    lazy protocol witness table accessor for type NCProtoContinuityCall.Status and conformance NCProtoContinuityCall.Status();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 72))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #5 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 80) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 81) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[7] = a4;
  v15[1] = a2;
  v15[2] = a3;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v15 - v6;
  v8 = type metadata accessor for NCProtoCallInfo(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  swift_beginAccess();
  outlined init with copy of NCProtoContactInfo?(a1 + v13, v7, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v7, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v7, v12, type metadata accessor for NCProtoCallInfo);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoCallInfo);
}

uint64_t closure #8 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
  result = swift_beginAccess();
  if (v1[1])
  {
    v3 = *v1;
    v4 = v1[1];

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData);
  result = swift_beginAccess();
  v3 = v1[1];
  if (v3 >> 60 != 15)
  {
    v4 = *v1;
    outlined copy of Data._Representation(v4, v3);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v4, v3);
  }

  return result;
}

uint64_t closure #10 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service);
  result = swift_beginAccess();
  if ((*(v1 + 9) & 1) == 0)
  {
    v3 = *v1;
    v4 = v1[1] & 1;
    lazy protocol witness table accessor for type NCProtoContinuityCall.Service and conformance NCProtoContinuityCall.Service();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in closure #1 in NCProtoContinuityCall.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v6) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static NCProtoContinuityCall.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoCallInfo(0);
  v76 = *(v4 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4);
  v75 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSg_ADtMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v72 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = (&v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v72 - v16;
  swift_beginAccess();
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  swift_beginAccess();
  v20 = *(a2 + 24);
  if (v18)
  {
    if (!v20 || (v19 != *(a2 + 16) || v18 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  swift_beginAccess();
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  swift_beginAccess();
  v23 = *(a2 + 40);
  if (v22)
  {
    if (!v23 || (v21 != *(a2 + 32) || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v74 = v10;
  swift_beginAccess();
  v24 = *(a1 + 48);
  v25 = *(a1 + 56);
  v26 = *(a1 + 57);
  swift_beginAccess();
  v27 = *(a2 + 57);
  if (v26)
  {
    if ((*(a2 + 57) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 57))
    {
      return 0;
    }

    v28 = *(a2 + 56);
    if (!specialized == infix<A>(_:_:)(v24, v25 & 1, *(a2 + 48)))
    {
      return 0;
    }
  }

  swift_beginAccess();
  v29 = *(a1 + 64);
  v30 = *(a1 + 72);
  swift_beginAccess();
  v31 = *(a2 + 72);
  if (v30)
  {
    if (!v31 || (v29 != *(a2 + 64) || v30 != v31) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  swift_beginAccess();
  v32 = *(a1 + 80);
  swift_beginAccess();
  v33 = *(a2 + 80);
  if (v32 == 2)
  {
    if (v33 != 2)
    {
      return 0;
    }
  }

  else if (v33 == 2 || ((v32 ^ v33) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v34 = *(a1 + 81);
  swift_beginAccess();
  v35 = *(a2 + 81);
  if (v34 == 2)
  {
    if (v35 != 2)
    {
      return 0;
    }
  }

  else if (v35 == 2 || ((v34 ^ v35) & 1) != 0)
  {
    return 0;
  }

  v36 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  swift_beginAccess();
  outlined init with copy of NCProtoContactInfo?(a1 + v36, v17, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v37 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  swift_beginAccess();
  v38 = *(v7 + 48);
  v39 = v74;
  outlined init with copy of NCProtoContactInfo?(v17, v74, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v73 = v38;
  outlined init with copy of NCProtoContactInfo?(a2 + v37, v39 + v38, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v40 = *(v76 + 48);
  if (v40(v39, 1, v4) == 1)
  {

    outlined destroy of NCProtoContactInfo?(v17, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
    if (v40(v39 + v73, 1, v4) == 1)
    {
      outlined destroy of NCProtoContactInfo?(v39, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
      goto LABEL_46;
    }

LABEL_42:
    outlined destroy of NCProtoContactInfo?(v39, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSg_ADtMR);
    goto LABEL_43;
  }

  outlined init with copy of NCProtoContactInfo?(v39, v15, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v41 = v73;
  if (v40(v39 + v73, 1, v4) == 1)
  {

    outlined destroy of NCProtoContactInfo?(v17, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
    outlined destroy of NCProtoContactInfo(v15, type metadata accessor for NCProtoCallInfo);
    goto LABEL_42;
  }

  v43 = v39 + v41;
  v44 = v75;
  outlined init with take of NCProtoContactInfo(v43, v75, type metadata accessor for NCProtoCallInfo);

  v45 = specialized static NCProtoCallInfo.== infix(_:_:)(v15, v44);
  outlined destroy of NCProtoContactInfo(v44, type metadata accessor for NCProtoCallInfo);
  outlined destroy of NCProtoContactInfo?(v17, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  outlined destroy of NCProtoContactInfo(v15, type metadata accessor for NCProtoCallInfo);
  outlined destroy of NCProtoContactInfo?(v39, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  if ((v45 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_46:
  v46 = (a1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
  swift_beginAccess();
  v47 = *v46;
  v48 = v46[1];
  v49 = (a2 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
  swift_beginAccess();
  v50 = v49[1];
  if (v48)
  {
    if (!v50 || (v47 != *v49 || v48 != v50) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v50)
  {
    goto LABEL_43;
  }

  v51 = (a1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData);
  swift_beginAccess();
  v53 = *v51;
  v52 = v51[1];
  v54 = (a2 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData);
  swift_beginAccess();
  v55 = *v54;
  v56 = v54[1];
  outlined copy of Data?(v53, v52);
  outlined copy of Data?(v55, v56);
  if (v52 >> 60 == 15)
  {
    if (v56 >> 60 == 15)
    {
      outlined consume of Data?(v53, v52);
      goto LABEL_61;
    }

LABEL_59:
    outlined consume of Data?(v53, v52);
    outlined consume of Data?(v55, v56);
    return 0;
  }

  outlined copy of Data?(v53, v52);
  outlined copy of Data?(v55, v56);
  if (v56 >> 60 == 15)
  {

    outlined consume of Data?(v55, v56);
    outlined consume of Data?(v53, v52);
    goto LABEL_59;
  }

  v57 = specialized static Data.== infix(_:_:)(v53, v52, v55, v56);
  outlined consume of Data?(v55, v56);
  outlined consume of Data?(v53, v52);
  outlined consume of Data?(v55, v56);
  outlined consume of Data?(v53, v52);
  if ((v57 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_61:
  v58 = (a1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service);
  swift_beginAccess();
  v59 = *v58;
  v60 = *(v58 + 9);
  v61 = a2 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service;
  swift_beginAccess();
  v62 = *(v61 + 9);
  if (v60)
  {
    if ((*(v61 + 9) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (*(v61 + 9))
    {
      goto LABEL_43;
    }

    v67 = *v61;
    if (*(v61 + 8))
    {
      if (v67 > 1)
      {
        if (v67 == 2)
        {
          if (v59 != 2)
          {
            goto LABEL_43;
          }
        }

        else if (v59 != 3)
        {
          goto LABEL_43;
        }
      }

      else if (v67)
      {
        if (v59 != 1)
        {
          goto LABEL_43;
        }
      }

      else if (v59)
      {
        goto LABEL_43;
      }
    }

    else if (v59 != v67)
    {
      goto LABEL_43;
    }
  }

  v63 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__wantsHoldMusic;
  swift_beginAccess();
  v64 = *(a1 + v63);
  v65 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__wantsHoldMusic;
  swift_beginAccess();
  v66 = *(a2 + v65);
  if (v64 == 2)
  {
    if (v66 == 2)
    {
      goto LABEL_74;
    }

LABEL_43:

    return 0;
  }

  if (v66 == 2 || ((v64 ^ v66) & 1) != 0)
  {
    goto LABEL_43;
  }

LABEL_74:
  v68 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__isScreening;
  swift_beginAccess();
  v69 = *(a1 + v68);

  v70 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__isScreening;
  swift_beginAccess();
  v71 = *(a2 + v70);

  if (v69 == 2)
  {
    return v71 == 2;
  }

  return v71 != 2 && ((v69 ^ v71) & 1) == 0;
}

uint64_t protocol witness for Message.init() in conformance NCProtoContinuityCall@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static NCProtoContinuityCall._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoContinuityCall(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityCall and conformance NCProtoContinuityCall, type metadata accessor for NCProtoContinuityCall);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoContinuityCall(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityCall and conformance NCProtoContinuityCall, type metadata accessor for NCProtoContinuityCall);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoContinuityCall()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityCall and conformance NCProtoContinuityCall, type metadata accessor for NCProtoContinuityCall);

  return Message.hash(into:)();
}

uint64_t NCProtoStartedSessionEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          closure #3 in NCProtoActiveConversation.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for NCProtoStartedSessionEvent);
          break;
        case 5:
          v12 = *(type metadata accessor for NCProtoStartedSessionEvent(0) + 36);
LABEL_17:
          v4 = 0;
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 6:
          v11 = *(type metadata accessor for NCProtoStartedSessionEvent(0) + 40);
          goto LABEL_17;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
        case 3:
          closure #3 in NCProtoStartedSessionEvent.decodeMessage<A>(decoder:)();
          break;
      }
    }
  }
}

uint64_t closure #3 in NCProtoStartedSessionEvent.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoStartedSessionEvent(0) + 28);
  type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo and conformance NCProtoMemberAssociationPrimaryInfo, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in NCProtoActiveConversation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 32);
  lazy protocol witness table accessor for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t NCProtoStartedSessionEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v12 = v3[2];
    v13 = v3[3];
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_14;
      }

      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
    }

    else
    {
      if (!v14)
      {
        if ((v13 & 0xFF000000000000) == 0)
        {
LABEL_14:
          result = closure #1 in NCProtoStartedSessionEvent.traverse<A>(visitor:)(v3, a1, a2, a3);
          if (!v4)
          {
            closure #3 in NCProtoActiveConversation.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoStartedSessionEvent);
            closure #3 in NCProtoStartedSessionEvent.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoStartedSessionEvent);
            closure #4 in NCProtoStartedSessionEvent.traverse<A>(visitor:)(v3);
            v17 = v3 + *(type metadata accessor for NCProtoStartedSessionEvent(0) + 24);
            return UnknownStorage.traverse<A>(visitor:)();
          }

          return result;
        }

LABEL_13:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v15 = v12;
      v16 = v12 >> 32;
    }

    if (v15 == v16)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t closure #1 in NCProtoStartedSessionEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v15 - v6;
  v8 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NCProtoStartedSessionEvent(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v13 + 28), v7, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v7, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v7, v12, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo and conformance NCProtoMemberAssociationPrimaryInfo, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
}

uint64_t closure #3 in NCProtoActiveConversation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 32));
  if ((*(v7 + 9) & 1) == 0)
  {
    v8 = *v7;
    v9 = v7[1] & 1;
    lazy protocol witness table accessor for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in NCProtoStartedSessionEvent.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoStartedSessionEvent(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoStartedSessionEvent@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_2255D3AB0;
  v4 = a2 + a1[6];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  result = (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  *(v9 + 8) = 256;
  *(a2 + v8) = 2;
  *(a2 + a1[10]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoStartedSessionEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoStartedSessionEvent and conformance NCProtoStartedSessionEvent, type metadata accessor for NCProtoStartedSessionEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoStartedSessionEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoStartedSessionEvent and conformance NCProtoStartedSessionEvent, type metadata accessor for NCProtoStartedSessionEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoStartedSessionEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoStartedSessionEvent and conformance NCProtoStartedSessionEvent, type metadata accessor for NCProtoStartedSessionEvent);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoEndedSessionEvent._protobuf_nameMap, "identifier", 10);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoFavoritesDidChangeEvent._protobuf_nameMap, "favorites", 9);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoActiveConversationsDidChangeEvent._protobuf_nameMap, "activeConversations", 19);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoContinuityCallsDidChangeEvent._protobuf_nameMap, "continuityCalls", 15);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoSuggestionAdvertisementDidChangeEvent._protobuf_nameMap, "advertisement", 13);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoLagunaConnectionResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoDeviceLaunchedEvent._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoTVLaunchedEvent._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoCancelAddMemberEvent._protobuf_nameMap, "conversationIdentifier", 22);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoEndLagunaSessionEvent._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoPolicyInfoUpdatedEvent._protobuf_nameMap, "policyInfos", 11);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoPullLagunaSessionToTVResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoTransferActiveConversationResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoTransferContinuityCallResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoStartLagunaSessionRequest._protobuf_nameMap, "recentCallFetchTypes", 20);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoUpdateBlockedStateResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoBlockedListUpdateEvent._protobuf_nameMap, "blockedStateForCalls", 20);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoRingtoneConfiguration._protobuf_nameMap, "identifier", 10);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoGetRingtoneConfigurationRequest._protobuf_nameMap, "callIdentifier", 14);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoGetRingtoneConfigurationResponse._protobuf_nameMap, "configuration", 13);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoStartConversationRequest._protobuf_nameMap, "avMode", 6);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoStartConversationResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoJoinActiveConversationResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoCreateLinkConversationRequest._protobuf_nameMap, "conversationUrlString", 21);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoCreateLinkConversationResponse._protobuf_nameMap, "uuidString", 10);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoLinkConversationSendLetMeInRequest._protobuf_nameMap, "uuidString", 10);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoLinkConversationSendLetMeInResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoLinkConversationCancelRequest._protobuf_nameMap, "uuidString", 10);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoLinkConversationCancelResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoDeclineContinuityCallRequest._protobuf_nameMap, "uuidString", 10);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoDeclineContinuityCallResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoGetAddressableContactsRequest._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoAddConversationParticipantsRequest._protobuf_nameMap, "handleValues", 12);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoAddConversationParticipantsResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoGetCallDisplayDetailsRequest._protobuf_nameMap, "callUUID", 8);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoGetCallDisplayDetailsResponse._protobuf_nameMap, "callInfo", 8);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoGetDestinationCapabilitiesResponse._protobuf_nameMap, "capabilities", 12);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoIncomingCallBannerActionResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoCallStateRequest._protobuf_nameMap, "identifierHash", 14);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoCallStateResponse._protobuf_nameMap, "callState", 9);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoDisconnectResponse._protobuf_nameMap, "success", 7);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoPrepareTransferRequest._protobuf_nameMap, "activeConversationUuidString", 28);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoPrepareTransferResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoAudioRouteTransferRequest._protobuf_nameMap, "routeIdentifier", 15);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoAudioRouteTransferResponse._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static NCProtoIDSProxyMessage.ParticipantIDList._protobuf_nameMap, "identifiers", 11);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoEndedSessionEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoEndedSessionEvent and conformance NCProtoEndedSessionEvent, type metadata accessor for NCProtoEndedSessionEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoEndedSessionEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoEndedSessionEvent and conformance NCProtoEndedSessionEvent, type metadata accessor for NCProtoEndedSessionEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoEndedSessionEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoEndedSessionEvent and conformance NCProtoEndedSessionEvent, type metadata accessor for NCProtoEndedSessionEvent);

  return Message.hash(into:)();
}

uint64_t NCProtoPendingConversationDisconnectedEvent.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t NCProtoPendingConversationDisconnectedEvent.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 4) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v1))
    {
      v6 = v0 + *(type metadata accessor for NCProtoPendingConversationDisconnectedEvent(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static NCProtoPendingConversationDisconnectedEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(type metadata accessor for NCProtoPendingConversationDisconnectedEvent(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance NCProtoPendingConversationDisconnectedEvent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoPendingConversationDisconnectedEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPendingConversationDisconnectedEvent and conformance NCProtoPendingConversationDisconnectedEvent, type metadata accessor for NCProtoPendingConversationDisconnectedEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoPendingConversationDisconnectedEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPendingConversationDisconnectedEvent and conformance NCProtoPendingConversationDisconnectedEvent, type metadata accessor for NCProtoPendingConversationDisconnectedEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoPendingConversationDisconnectedEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPendingConversationDisconnectedEvent and conformance NCProtoPendingConversationDisconnectedEvent, type metadata accessor for NCProtoPendingConversationDisconnectedEvent);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NCProtoPendingConversationDisconnectedEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t closure #2 in NCProtoContactUpdateEvent.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for NCProtoContactInfo(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t NCProtoContactUpdateEvent.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v0[2] + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for NCProtoContactInfo(0), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v1))
  {
    v8 = v0 + *(type metadata accessor for NCProtoContactUpdateEvent(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoContactUpdateEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactUpdateEvent and conformance NCProtoContactUpdateEvent, type metadata accessor for NCProtoContactUpdateEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoContactUpdateEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactUpdateEvent and conformance NCProtoContactUpdateEvent, type metadata accessor for NCProtoContactUpdateEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoContactUpdateEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactUpdateEvent and conformance NCProtoContactUpdateEvent, type metadata accessor for NCProtoContactUpdateEvent);

  return Message.hash(into:)();
}

uint64_t closure #3 in NCProtoJoinEvent.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for ProtobufBool();
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t NCProtoJoinEvent.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = v0[2];
  v9 = v0[3];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      goto LABEL_19;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (!*(v0[4] + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for ProtobufBool(), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v1))
  {
    v13 = v0 + *(type metadata accessor for NCProtoJoinEvent(0) + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoJoinEvent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_2255D3AB0;
  *(a2 + 16) = xmmword_2255D3AB0;
  *(a2 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoJoinEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoJoinEvent and conformance NCProtoJoinEvent, type metadata accessor for NCProtoJoinEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoJoinEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoJoinEvent and conformance NCProtoJoinEvent, type metadata accessor for NCProtoJoinEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoJoinEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoJoinEvent and conformance NCProtoJoinEvent, type metadata accessor for NCProtoJoinEvent);

  return Message.hash(into:)();
}

uint64_t NCProtoRecentCallsDidChangeEvent.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        closure #3 in NCProtoRecentCallsDidChangeEvent.decodeMessage<A>(decoder:)();
        break;
      case 2:
        closure #2 in NCProtoRecentCallsDidChangeEvent.decodeMessage<A>(decoder:)();
        break;
      case 1:
        dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #3 in NCProtoRecentCallsDidChangeEvent.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for NCProtoCallInfo(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t NCProtoRecentCallsDidChangeEvent.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for NCProtoContactInfo(0), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v1))
    {
      if (!*(v0[2] + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for NCProtoCallInfo(0), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v1))
      {
        v3 = v0 + *(type metadata accessor for NCProtoRecentCallsDidChangeEvent(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoRecentCallsDidChangeEvent@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt0g5Tf4g_n(v4);
  a2[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt0g5Tf4g_n(v4);
  v5 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoRecentCallsDidChangeEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoRecentCallsDidChangeEvent and conformance NCProtoRecentCallsDidChangeEvent, type metadata accessor for NCProtoRecentCallsDidChangeEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoRecentCallsDidChangeEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoRecentCallsDidChangeEvent and conformance NCProtoRecentCallsDidChangeEvent, type metadata accessor for NCProtoRecentCallsDidChangeEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoRecentCallsDidChangeEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoRecentCallsDidChangeEvent and conformance NCProtoRecentCallsDidChangeEvent, type metadata accessor for NCProtoRecentCallsDidChangeEvent);

  return Message.hash(into:)();
}

uint64_t NCProtoFavoritesDidChangeEvent.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for NCProtoContinuityFavorite(0), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityFavorite and conformance NCProtoContinuityFavorite, type metadata accessor for NCProtoContinuityFavorite), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for NCProtoFavoritesDidChangeEvent(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static NCProtoFavoritesDidChangeEvent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoActiveConversationV_Tt1g5Tm(*a1, *a2, type metadata accessor for NCProtoContinuityFavorite, type metadata accessor for NCProtoContinuityFavorite, specialized static NCProtoContinuityFavorite.== infix(_:_:), type metadata accessor for NCProtoContinuityFavorite) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for NCProtoFavoritesDidChangeEvent(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoFavoritesDidChangeEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoFavoritesDidChangeEvent and conformance NCProtoFavoritesDidChangeEvent, type metadata accessor for NCProtoFavoritesDidChangeEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoFavoritesDidChangeEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoFavoritesDidChangeEvent and conformance NCProtoFavoritesDidChangeEvent, type metadata accessor for NCProtoFavoritesDidChangeEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoFavoritesDidChangeEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoFavoritesDidChangeEvent and conformance NCProtoFavoritesDidChangeEvent, type metadata accessor for NCProtoFavoritesDidChangeEvent);

  return Message.hash(into:)();
}

uint64_t NCProtoActiveConversationsDidChangeEvent.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for NCProtoActiveConversation(0), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoActiveConversation and conformance NCProtoActiveConversation, type metadata accessor for NCProtoActiveConversation), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for NCProtoActiveConversationsDidChangeEvent(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static NCProtoActiveConversationsDidChangeEvent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoActiveConversationV_Tt1g5Tm(*a1, *a2, type metadata accessor for NCProtoActiveConversation, type metadata accessor for NCProtoActiveConversation, specialized static NCProtoActiveConversation.== infix(_:_:), type metadata accessor for NCProtoActiveConversation) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for NCProtoActiveConversationsDidChangeEvent(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoActiveConversationsDidChangeEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoActiveConversationsDidChangeEvent and conformance NCProtoActiveConversationsDidChangeEvent, type metadata accessor for NCProtoActiveConversationsDidChangeEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoActiveConversationsDidChangeEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoActiveConversationsDidChangeEvent and conformance NCProtoActiveConversationsDidChangeEvent, type metadata accessor for NCProtoActiveConversationsDidChangeEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoActiveConversationsDidChangeEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoActiveConversationsDidChangeEvent and conformance NCProtoActiveConversationsDidChangeEvent, type metadata accessor for NCProtoActiveConversationsDidChangeEvent);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NCProtoFavoritesDidChangeEvent(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *, char *), uint64_t (*a8)(void))
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoActiveConversationV_Tt1g5Tm(*a1, *a2, a5, a6, a7, a8) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t NCProtoFavoritesDidChangeEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(a5, a6);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t NCProtoContinuityCallsDidChangeEvent.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for NCProtoContinuityCall(0), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityCall and conformance NCProtoContinuityCall, type metadata accessor for NCProtoContinuityCall), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for NCProtoContinuityCallsDidChangeEvent(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static NCProtoAddConversationParticipantsRequest.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoContinuityCallsDidChangeEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityCallsDidChangeEvent and conformance NCProtoContinuityCallsDidChangeEvent, type metadata accessor for NCProtoContinuityCallsDidChangeEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoContinuityCallsDidChangeEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityCallsDidChangeEvent and conformance NCProtoContinuityCallsDidChangeEvent, type metadata accessor for NCProtoContinuityCallsDidChangeEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoContinuityCallsDidChangeEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityCallsDidChangeEvent and conformance NCProtoContinuityCallsDidChangeEvent, type metadata accessor for NCProtoContinuityCallsDidChangeEvent);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NCProtoIDSProxyMessage.ParticipantIDList(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t NCProtoSuggestionAdvertisement.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        lazy protocol witness table accessor for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2 || result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t NCProtoSuggestionAdvertisement.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (!v0[4] || (v9 = v0[4], v10 = *(v0 + 40), lazy protocol witness table accessor for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
      {
        v8 = v0 + *(type metadata accessor for NCProtoSuggestionAdvertisement(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoSuggestionAdvertisement@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoSuggestionAdvertisement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement and conformance NCProtoSuggestionAdvertisement, type metadata accessor for NCProtoSuggestionAdvertisement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoSuggestionAdvertisement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement and conformance NCProtoSuggestionAdvertisement, type metadata accessor for NCProtoSuggestionAdvertisement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoSuggestionAdvertisement()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement and conformance NCProtoSuggestionAdvertisement, type metadata accessor for NCProtoSuggestionAdvertisement);

  return Message.hash(into:)();
}

uint64_t closure #1 in NCProtoSuggestionAdvertisementDidChangeEvent.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent(0) + 20);
  type metadata accessor for NCProtoSuggestionAdvertisement(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement and conformance NCProtoSuggestionAdvertisement, type metadata accessor for NCProtoSuggestionAdvertisement);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in NCProtoSuggestionAdvertisementDidChangeEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NCProtoSuggestionAdvertisement(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v14 + 20), v8, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v8, v13, type metadata accessor for NCProtoSuggestionAdvertisement);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement and conformance NCProtoSuggestionAdvertisement, type metadata accessor for NCProtoSuggestionAdvertisement);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v13, type metadata accessor for NCProtoSuggestionAdvertisement);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoSuggestionAdvertisementDidChangeEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisementDidChangeEvent and conformance NCProtoSuggestionAdvertisementDidChangeEvent, type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoSuggestionAdvertisementDidChangeEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisementDidChangeEvent and conformance NCProtoSuggestionAdvertisementDidChangeEvent, type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoSuggestionAdvertisementDidChangeEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisementDidChangeEvent and conformance NCProtoSuggestionAdvertisementDidChangeEvent, type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent);

  return Message.hash(into:)();
}

uint64_t NCProtoLagunaConnectionRequest.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
            break;
          case 2:
            closure #2 in NCProtoRecentCallsDidChangeEvent.decodeMessage<A>(decoder:)();
            break;
          case 3:
            closure #3 in NCProtoLagunaConnectionRequest.decodeMessage<A>(decoder:)();
            break;
        }
      }

      else
      {
        if (result <= 5)
        {
          v3 = v0;
          if (result == 4)
          {
            type metadata accessor for NCProtoActiveConversation(0);
            lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoActiveConversation and conformance NCProtoActiveConversation, type metadata accessor for NCProtoActiveConversation);
          }

          else
          {
            type metadata accessor for NCProtoContinuityFavorite(0);
            lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityFavorite and conformance NCProtoContinuityFavorite, type metadata accessor for NCProtoContinuityFavorite);
          }

          goto LABEL_5;
        }

        if (result == 6)
        {
          v3 = v0;
          type metadata accessor for NCProtoContinuityCall(0);
          lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityCall and conformance NCProtoContinuityCall, type metadata accessor for NCProtoContinuityCall);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 7)
        {
          closure #7 in NCProtoLagunaConnectionRequest.decodeMessage<A>(decoder:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in NCProtoLagunaConnectionRequest.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoLagunaConnectionRequest(0) + 44);
  type metadata accessor for NCProtoCallState(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t NCProtoLagunaConnectionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (!*(*v3 + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v4))
  {
    if (*(v3[1] + 16))
    {
      type metadata accessor for ProtobufString();
      type metadata accessor for NCProtoContactInfo(0);
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo);
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo);
      result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      v5 = v3;
    }

    result = closure #1 in NCProtoLagunaConnectionRequest.traverse<A>(visitor:)(v5, a1, a2, a3);
    if (!v4)
    {
      if (*(v5[2] + 16))
      {
        type metadata accessor for NCProtoActiveConversation(0);
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoActiveConversation and conformance NCProtoActiveConversation, type metadata accessor for NCProtoActiveConversation);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      if (*(v5[3] + 16))
      {
        type metadata accessor for NCProtoContinuityFavorite(0);
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityFavorite and conformance NCProtoContinuityFavorite, type metadata accessor for NCProtoContinuityFavorite);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      if (*(v5[4] + 16))
      {
        type metadata accessor for NCProtoContinuityCall(0);
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityCall and conformance NCProtoContinuityCall, type metadata accessor for NCProtoContinuityCall);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      if (*(v5[5] + 16))
      {
        type metadata accessor for ProtobufString();
        type metadata accessor for NCProtoCallInfo(0);
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo);
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo);
        dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
      }

      v10 = v5 + *(type metadata accessor for NCProtoLagunaConnectionRequest(0) + 40);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in NCProtoLagunaConnectionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NCProtoCallState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NCProtoLagunaConnectionRequest(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v14 + 44), v8, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v8, v13, type metadata accessor for NCProtoCallState);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v13, type metadata accessor for NCProtoCallState);
}

uint64_t protocol witness for Message.init() in conformance NCProtoLagunaConnectionRequest@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt0g5Tf4g_n(v4);
  *(a2 + 2) = v4;
  *(a2 + 3) = v4;
  *(a2 + 4) = v4;
  *(a2 + 5) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt0g5Tf4g_n(v4);
  v5 = &a2[*(a1 + 40)];
  UnknownStorage.init()();
  v6 = *(a1 + 44);
  v7 = type metadata accessor for NCProtoCallState(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance NCProtoLagunaConnectionRequest(uint64_t a1, uint64_t a2))()
{
  result = NCProtoContactInfo.namePrefix.modify;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoLagunaConnectionRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLagunaConnectionRequest and conformance NCProtoLagunaConnectionRequest, type metadata accessor for NCProtoLagunaConnectionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoLagunaConnectionRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLagunaConnectionRequest and conformance NCProtoLagunaConnectionRequest, type metadata accessor for NCProtoLagunaConnectionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoLagunaConnectionRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLagunaConnectionRequest and conformance NCProtoLagunaConnectionRequest, type metadata accessor for NCProtoLagunaConnectionRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoLagunaConnectionResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLagunaConnectionResponse and conformance NCProtoLagunaConnectionResponse, type metadata accessor for NCProtoLagunaConnectionResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoLagunaConnectionResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLagunaConnectionResponse and conformance NCProtoLagunaConnectionResponse, type metadata accessor for NCProtoLagunaConnectionResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoLagunaConnectionResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLagunaConnectionResponse and conformance NCProtoLagunaConnectionResponse, type metadata accessor for NCProtoLagunaConnectionResponse);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoDeviceLaunchedEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeviceLaunchedEvent and conformance NCProtoDeviceLaunchedEvent, type metadata accessor for NCProtoDeviceLaunchedEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoDeviceLaunchedEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeviceLaunchedEvent and conformance NCProtoDeviceLaunchedEvent, type metadata accessor for NCProtoDeviceLaunchedEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoDeviceLaunchedEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeviceLaunchedEvent and conformance NCProtoDeviceLaunchedEvent, type metadata accessor for NCProtoDeviceLaunchedEvent);

  return Message.hash(into:)();
}

uint64_t NCProtoNearbyCallStatusChangedEvent.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
          break;
        case 2:
          v3 = *(type metadata accessor for NCProtoNearbyCallStatusChangedEvent(0) + 28);
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
        case 1:
          type metadata accessor for NCProtoContinuityCall(0);
          lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityCall and conformance NCProtoContinuityCall, type metadata accessor for NCProtoContinuityCall);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t NCProtoNearbyCallStatusChangedEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for NCProtoContinuityCall(0), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityCall and conformance NCProtoContinuityCall, type metadata accessor for NCProtoContinuityCall), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in NCProtoNearbyCallStatusChangedEvent.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoNearbyCallStatusChangedEvent);
    if (!v4)
    {
      if (*(v3[1] + 16))
      {
        dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
      }

      v9 = v3 + *(type metadata accessor for NCProtoNearbyCallStatusChangedEvent(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

double protocol witness for Message.init() in conformance NCProtoNearbyCallStatusChangedEvent@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  v5 = a2 + *(a1 + 24);
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 28)) = xmmword_2255D3AC0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoNearbyCallStatusChangedEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoNearbyCallStatusChangedEvent and conformance NCProtoNearbyCallStatusChangedEvent, type metadata accessor for NCProtoNearbyCallStatusChangedEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoNearbyCallStatusChangedEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoNearbyCallStatusChangedEvent and conformance NCProtoNearbyCallStatusChangedEvent, type metadata accessor for NCProtoNearbyCallStatusChangedEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoNearbyCallStatusChangedEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoNearbyCallStatusChangedEvent and conformance NCProtoNearbyCallStatusChangedEvent, type metadata accessor for NCProtoNearbyCallStatusChangedEvent);

  return Message.hash(into:)();
}

uint64_t NCProtoTVLaunchedEvent.decodeMessage<A>(decoder:)()
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoTVLaunchedEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoTVLaunchedEvent and conformance NCProtoTVLaunchedEvent, type metadata accessor for NCProtoTVLaunchedEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoTVLaunchedEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoTVLaunchedEvent and conformance NCProtoTVLaunchedEvent, type metadata accessor for NCProtoTVLaunchedEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoTVLaunchedEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoTVLaunchedEvent and conformance NCProtoTVLaunchedEvent, type metadata accessor for NCProtoTVLaunchedEvent);

  return Message.hash(into:)();
}

uint64_t NCProtoEndedSessionEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    v11 = v4 + *(a4(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoCancelAddMemberEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCancelAddMemberEvent and conformance NCProtoCancelAddMemberEvent, type metadata accessor for NCProtoCancelAddMemberEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoCancelAddMemberEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCancelAddMemberEvent and conformance NCProtoCancelAddMemberEvent, type metadata accessor for NCProtoCancelAddMemberEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoCancelAddMemberEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCancelAddMemberEvent and conformance NCProtoCancelAddMemberEvent, type metadata accessor for NCProtoCancelAddMemberEvent);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoEndLagunaSessionEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoEndLagunaSessionEvent and conformance NCProtoEndLagunaSessionEvent, type metadata accessor for NCProtoEndLagunaSessionEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoEndLagunaSessionEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoEndLagunaSessionEvent and conformance NCProtoEndLagunaSessionEvent, type metadata accessor for NCProtoEndLagunaSessionEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoEndLagunaSessionEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoEndLagunaSessionEvent and conformance NCProtoEndLagunaSessionEvent, type metadata accessor for NCProtoEndLagunaSessionEvent);

  return Message.hash(into:)();
}

uint64_t NCProtoBlockedListUpdateEvent.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in NCProtoPolicyInfoUpdatedEvent.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

{
  return NCProtoBlockedListUpdateEvent.decodeMessage<A>(decoder:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoPolicyInfoUpdatedEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPolicyInfoUpdatedEvent and conformance NCProtoPolicyInfoUpdatedEvent, type metadata accessor for NCProtoPolicyInfoUpdatedEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoPolicyInfoUpdatedEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPolicyInfoUpdatedEvent and conformance NCProtoPolicyInfoUpdatedEvent, type metadata accessor for NCProtoPolicyInfoUpdatedEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoPolicyInfoUpdatedEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPolicyInfoUpdatedEvent and conformance NCProtoPolicyInfoUpdatedEvent, type metadata accessor for NCProtoPolicyInfoUpdatedEvent);

  return Message.hash(into:)();
}

uint64_t NCProtoAddMemberRequest.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          lazy protocol witness table accessor for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 4)
        {
          v3 = *(type metadata accessor for NCProtoAddMemberRequest(0) + 32);
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t NCProtoAddMemberRequest.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v6 = *(v0 + 24);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0 + 32) || (v9 = *(v0 + 32), v10 = *(v0 + 40), lazy protocol witness table accessor for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
      {
        result = closure #1 in NCProtoAddMemberRequest.traverse<A>(visitor:)(v0);
        if (!v1)
        {
          v8 = v0 + *(type metadata accessor for NCProtoAddMemberRequest(0) + 28);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in NCProtoAddMemberRequest.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoAddMemberRequest(0);
  v3 = a1 + *(result + 32);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

double protocol witness for Message.init() in conformance NCProtoAddMemberRequest@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v4 = a2 + *(a1 + 28);
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 32)) = xmmword_2255D3AC0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoAddMemberRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddMemberRequest and conformance NCProtoAddMemberRequest, type metadata accessor for NCProtoAddMemberRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoAddMemberRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddMemberRequest and conformance NCProtoAddMemberRequest, type metadata accessor for NCProtoAddMemberRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoAddMemberRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddMemberRequest and conformance NCProtoAddMemberRequest, type metadata accessor for NCProtoAddMemberRequest);

  return Message.hash(into:)();
}

uint64_t NCProtoContactUpdateEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }

    else if (result == 2)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in NCProtoAddMemberResponse.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for ProtobufBool();
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t NCProtoAddMemberResponse.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v0[2] + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for ProtobufBool(), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v1))
  {
    v8 = v0 + *(type metadata accessor for NCProtoAddMemberResponse(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static NCProtoContactUpdateEvent.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if ((specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (a3(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a4(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance NCProtoContactUpdateEvent@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  *a3 = xmmword_2255D3AB0;
  *(a3 + 16) = a2(MEMORY[0x277D84F90]);
  v5 = a3 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoAddMemberResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddMemberResponse and conformance NCProtoAddMemberResponse, type metadata accessor for NCProtoAddMemberResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoAddMemberResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddMemberResponse and conformance NCProtoAddMemberResponse, type metadata accessor for NCProtoAddMemberResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoAddMemberResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddMemberResponse and conformance NCProtoAddMemberResponse, type metadata accessor for NCProtoAddMemberResponse);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NCProtoContactUpdateEvent(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if ((specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (a5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoPullLagunaSessionToTVRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVRequest and conformance NCProtoPullLagunaSessionToTVRequest, type metadata accessor for NCProtoPullLagunaSessionToTVRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoPullLagunaSessionToTVRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVRequest and conformance NCProtoPullLagunaSessionToTVRequest, type metadata accessor for NCProtoPullLagunaSessionToTVRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoPullLagunaSessionToTVRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVRequest and conformance NCProtoPullLagunaSessionToTVRequest, type metadata accessor for NCProtoPullLagunaSessionToTVRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoPullLagunaSessionToTVResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVResponse and conformance NCProtoPullLagunaSessionToTVResponse, type metadata accessor for NCProtoPullLagunaSessionToTVResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoPullLagunaSessionToTVResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVResponse and conformance NCProtoPullLagunaSessionToTVResponse, type metadata accessor for NCProtoPullLagunaSessionToTVResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoPullLagunaSessionToTVResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPullLagunaSessionToTVResponse and conformance NCProtoPullLagunaSessionToTVResponse, type metadata accessor for NCProtoPullLagunaSessionToTVResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoTransferActiveConversationRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v4 = *(type metadata accessor for NCProtoTransferActiveConversationRequest(0) + 28);
LABEL_9:
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 2:
        v3 = *(type metadata accessor for NCProtoTransferActiveConversationRequest(0) + 24);
        goto LABEL_9;
      case 1:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
    }
  }
}

uint64_t NCProtoTransferActiveConversationRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in NCProtoTransferActiveConversationRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoTransferActiveConversationRequest);
    if (!v4)
    {
      closure #2 in NCProtoTransferActiveConversationRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoTransferActiveConversationRequest);
      v12 = v3 + *(type metadata accessor for NCProtoTransferActiveConversationRequest(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoTransferActiveConversationRequest@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  *(a2 + a1[6]) = 2;
  *(a2 + v6) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoTransferActiveConversationRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoTransferActiveConversationRequest and conformance NCProtoTransferActiveConversationRequest, type metadata accessor for NCProtoTransferActiveConversationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoTransferActiveConversationRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoTransferActiveConversationRequest and conformance NCProtoTransferActiveConversationRequest, type metadata accessor for NCProtoTransferActiveConversationRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoTransferActiveConversationRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoTransferActiveConversationRequest and conformance NCProtoTransferActiveConversationRequest, type metadata accessor for NCProtoTransferActiveConversationRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoTransferActiveConversationResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoTransferActiveConversationResponse and conformance NCProtoTransferActiveConversationResponse, type metadata accessor for NCProtoTransferActiveConversationResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoTransferActiveConversationResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoTransferActiveConversationResponse and conformance NCProtoTransferActiveConversationResponse, type metadata accessor for NCProtoTransferActiveConversationResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoTransferActiveConversationResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoTransferActiveConversationResponse and conformance NCProtoTransferActiveConversationResponse, type metadata accessor for NCProtoTransferActiveConversationResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoTransferContinuityCallRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for NCProtoTransferContinuityCallRequest(0) + 24);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t NCProtoTransferContinuityCallRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in NCProtoTransferActiveConversationRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoTransferContinuityCallRequest);
    if (!v4)
    {
      v12 = v3 + *(type metadata accessor for NCProtoTransferContinuityCallRequest(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in NCProtoTransferActiveConversationRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoTransferContinuityCallRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v4 = a2 + *(a1 + 20);
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 24)) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoTransferContinuityCallRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoTransferContinuityCallRequest and conformance NCProtoTransferContinuityCallRequest, type metadata accessor for NCProtoTransferContinuityCallRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoTransferContinuityCallRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoTransferContinuityCallRequest and conformance NCProtoTransferContinuityCallRequest, type metadata accessor for NCProtoTransferContinuityCallRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoTransferContinuityCallRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoTransferContinuityCallRequest and conformance NCProtoTransferContinuityCallRequest, type metadata accessor for NCProtoTransferContinuityCallRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoTransferContinuityCallResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoTransferContinuityCallResponse and conformance NCProtoTransferContinuityCallResponse, type metadata accessor for NCProtoTransferContinuityCallResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoTransferContinuityCallResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoTransferContinuityCallResponse and conformance NCProtoTransferContinuityCallResponse, type metadata accessor for NCProtoTransferContinuityCallResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoTransferContinuityCallResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoTransferContinuityCallResponse and conformance NCProtoTransferContinuityCallResponse, type metadata accessor for NCProtoTransferContinuityCallResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoStartLagunaSessionRequest.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType();
        dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t NCProtoStartLagunaSessionRequest.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (lazy protocol witness table accessor for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType(), result = dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for NCProtoStartLagunaSessionRequest(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static NCProtoStartLagunaSessionRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit32NCProtoStartLagunaSessionRequestV19RecentCallFetchTypeO_Tt1g5Tm(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for NCProtoStartLagunaSessionRequest(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoStartLagunaSessionRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest and conformance NCProtoStartLagunaSessionRequest, type metadata accessor for NCProtoStartLagunaSessionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoStartLagunaSessionRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest and conformance NCProtoStartLagunaSessionRequest, type metadata accessor for NCProtoStartLagunaSessionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoStartLagunaSessionRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest and conformance NCProtoStartLagunaSessionRequest, type metadata accessor for NCProtoStartLagunaSessionRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NCProtoStartLagunaSessionRequest(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit32NCProtoStartLagunaSessionRequestV19RecentCallFetchTypeO_Tt1g5Tm(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t NCProtoSenderIdentity.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t NCProtoSenderIdentity.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v8 = v0 + *(type metadata accessor for NCProtoSenderIdentity(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static NCProtoSenderIdentity.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for NCProtoSenderIdentity(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance NCProtoSenderIdentity@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoSenderIdentity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSenderIdentity and conformance NCProtoSenderIdentity, type metadata accessor for NCProtoSenderIdentity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoSenderIdentity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSenderIdentity and conformance NCProtoSenderIdentity, type metadata accessor for NCProtoSenderIdentity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoSenderIdentity()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSenderIdentity and conformance NCProtoSenderIdentity, type metadata accessor for NCProtoSenderIdentity);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NCProtoSenderIdentity(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t NCProtoCallInfo.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            v3 = v0;
            v9 = *(type metadata accessor for NCProtoCallInfo(0) + 32);
            goto LABEL_5;
          }

          v5 = v0;
          v8 = *(type metadata accessor for NCProtoCallInfo(0) + 36);
LABEL_26:
          v0 = v5;
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_6;
        }

        if (result == 1)
        {
          v3 = v0;
          v4 = *(type metadata accessor for NCProtoCallInfo(0) + 24);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_6;
        }

        if (result == 2)
        {
          v3 = v0;
          v7 = *(type metadata accessor for NCProtoCallInfo(0) + 28);
          goto LABEL_5;
        }
      }

      else
      {
        if (result > 6)
        {
          switch(result)
          {
            case 7:
              v10 = *(type metadata accessor for NCProtoCallInfo(0) + 44);
              dispatch thunk of Decoder.decodeSingularBytesField(value:)();
              goto LABEL_6;
            case 8:
              v5 = v0;
              v11 = *(type metadata accessor for NCProtoCallInfo(0) + 48);
              break;
            case 9:
              v5 = v0;
              v6 = *(type metadata accessor for NCProtoCallInfo(0) + 52);
              break;
            default:
              goto LABEL_6;
          }

          goto LABEL_26;
        }

        if (result == 5)
        {
          type metadata accessor for ProtobufString();
          dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
        }

        else
        {
          closure #6 in NCProtoCallInfo.decodeMessage<A>(decoder:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #6 in NCProtoCallInfo.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoCallInfo(0) + 40);
  type metadata accessor for NCProtoSenderIdentity(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSenderIdentity and conformance NCProtoSenderIdentity, type metadata accessor for NCProtoSenderIdentity);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t NCProtoCallInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in NCProtoActiveConversation.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoCallInfo);
  if (!v4)
  {
    closure #2 in NCProtoActiveConversation.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoCallInfo);
    closure #3 in NCProtoCallInfo.traverse<A>(visitor:)(v3);
    closure #3 in NCProtoStartedSessionEvent.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoCallInfo);
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ProtobufString();
      dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
    }

    closure #5 in NCProtoCallInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
    closure #6 in NCProtoCallInfo.traverse<A>(visitor:)(v5);
    closure #7 in NCProtoCallInfo.traverse<A>(visitor:)(v5);
    closure #8 in NCProtoCallInfo.traverse<A>(visitor:)(v5);
    v11 = v5 + *(type metadata accessor for NCProtoCallInfo(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NCProtoActiveConversation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in NCProtoActiveConversation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if (v7[1])
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in NCProtoCallInfo.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoCallInfo(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in NCProtoStartedSessionEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #5 in NCProtoCallInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NCProtoSenderIdentity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NCProtoCallInfo(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v14 + 40), v8, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v8, v13, type metadata accessor for NCProtoSenderIdentity);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSenderIdentity and conformance NCProtoSenderIdentity, type metadata accessor for NCProtoSenderIdentity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v13, type metadata accessor for NCProtoSenderIdentity);
}

uint64_t closure #6 in NCProtoCallInfo.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoCallInfo(0);
  v3 = a1 + *(result + 44);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

uint64_t closure #7 in NCProtoCallInfo.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoCallInfo(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in NCProtoCallInfo.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoCallInfo(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

double protocol witness for Message.init() in conformance NCProtoCallInfo@<D0>(int *a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = a2 + a1[5];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = (a2 + a1[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[9];
  v9 = (a2 + a1[8]);
  *v9 = 0;
  v9[1] = 0;
  *(a2 + v8) = 2;
  v10 = a1[10];
  v11 = type metadata accessor for NCProtoSenderIdentity(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = 0.0;
  v13 = a1[12];
  *(a2 + a1[11]) = xmmword_2255D3AC0;
  *(a2 + v13) = 2;
  *(a2 + a1[13]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoCallInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoCallInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoCallInfo()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo);

  return Message.hash(into:)();
}

uint64_t NCProtoUpdateBlockedStateRequest.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          closure #3 in NCProtoUpdateBlockedStateRequest.decodeMessage<A>(decoder:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
          break;
        case 1:
          lazy protocol witness table accessor for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in NCProtoUpdateBlockedStateRequest.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoUpdateBlockedStateRequest(0) + 28);
  type metadata accessor for NCProtoSpamCallModelInfo(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSpamCallModelInfo and conformance NCProtoSpamCallModelInfo, type metadata accessor for NCProtoSpamCallModelInfo);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t NCProtoUpdateBlockedStateRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v11 = *(v3 + 8), lazy protocol witness table accessor for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(*(v3 + 16) + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v4))
    {
      result = closure #1 in NCProtoUpdateBlockedStateRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (!v4)
      {
        v9 = v3 + *(type metadata accessor for NCProtoUpdateBlockedStateRequest(0) + 24);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in NCProtoUpdateBlockedStateRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NCProtoSpamCallModelInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for NCProtoUpdateBlockedStateRequest(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(updated + 28), v8, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v8, v13, type metadata accessor for NCProtoSpamCallModelInfo);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSpamCallModelInfo and conformance NCProtoSpamCallModelInfo, type metadata accessor for NCProtoSpamCallModelInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v13, type metadata accessor for NCProtoSpamCallModelInfo);
}

uint64_t protocol witness for Message.init() in conformance NCProtoUpdateBlockedStateRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 24);
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for NCProtoSpamCallModelInfo(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoUpdateBlockedStateRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest and conformance NCProtoUpdateBlockedStateRequest, type metadata accessor for NCProtoUpdateBlockedStateRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoUpdateBlockedStateRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest and conformance NCProtoUpdateBlockedStateRequest, type metadata accessor for NCProtoUpdateBlockedStateRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoUpdateBlockedStateRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest and conformance NCProtoUpdateBlockedStateRequest, type metadata accessor for NCProtoUpdateBlockedStateRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoUpdateBlockedStateResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateResponse and conformance NCProtoUpdateBlockedStateResponse, type metadata accessor for NCProtoUpdateBlockedStateResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoUpdateBlockedStateResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateResponse and conformance NCProtoUpdateBlockedStateResponse, type metadata accessor for NCProtoUpdateBlockedStateResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoUpdateBlockedStateResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateResponse and conformance NCProtoUpdateBlockedStateResponse, type metadata accessor for NCProtoUpdateBlockedStateResponse);

  return Message.hash(into:)();
}

uint64_t closure #1 in NCProtoPolicyInfoUpdatedEvent.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for ProtobufBool();
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t NCProtoPolicyInfoUpdatedEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for ProtobufBool(), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v5))
  {
    v8 = v4 + *(a4(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoPolicyInfoUpdatedEvent@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoBlockedListUpdateEvent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoBlockedListUpdateEvent and conformance NCProtoBlockedListUpdateEvent, type metadata accessor for NCProtoBlockedListUpdateEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoBlockedListUpdateEvent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoBlockedListUpdateEvent and conformance NCProtoBlockedListUpdateEvent, type metadata accessor for NCProtoBlockedListUpdateEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoBlockedListUpdateEvent()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoBlockedListUpdateEvent and conformance NCProtoBlockedListUpdateEvent, type metadata accessor for NCProtoBlockedListUpdateEvent);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoRingtoneConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoRingtoneConfiguration and conformance NCProtoRingtoneConfiguration, type metadata accessor for NCProtoRingtoneConfiguration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoRingtoneConfiguration(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoRingtoneConfiguration and conformance NCProtoRingtoneConfiguration, type metadata accessor for NCProtoRingtoneConfiguration);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoRingtoneConfiguration()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoRingtoneConfiguration and conformance NCProtoRingtoneConfiguration, type metadata accessor for NCProtoRingtoneConfiguration);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoGetRingtoneConfigurationRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetRingtoneConfigurationRequest and conformance NCProtoGetRingtoneConfigurationRequest, type metadata accessor for NCProtoGetRingtoneConfigurationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoGetRingtoneConfigurationRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetRingtoneConfigurationRequest and conformance NCProtoGetRingtoneConfigurationRequest, type metadata accessor for NCProtoGetRingtoneConfigurationRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoGetRingtoneConfigurationRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetRingtoneConfigurationRequest and conformance NCProtoGetRingtoneConfigurationRequest, type metadata accessor for NCProtoGetRingtoneConfigurationRequest);

  return Message.hash(into:)();
}

uint64_t closure #1 in NCProtoGetRingtoneConfigurationResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoGetRingtoneConfigurationResponse(0) + 20);
  type metadata accessor for NCProtoRingtoneConfiguration(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoRingtoneConfiguration and conformance NCProtoRingtoneConfiguration, type metadata accessor for NCProtoRingtoneConfiguration);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in NCProtoGetRingtoneConfigurationResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NCProtoRingtoneConfiguration(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  RingtoneConfigurationResponse = type metadata accessor for NCProtoGetRingtoneConfigurationResponse(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(RingtoneConfigurationResponse + 20), v8, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v8, v13, type metadata accessor for NCProtoRingtoneConfiguration);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoRingtoneConfiguration and conformance NCProtoRingtoneConfiguration, type metadata accessor for NCProtoRingtoneConfiguration);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v13, type metadata accessor for NCProtoRingtoneConfiguration);
}

uint64_t protocol witness for Message.init() in conformance NCProtoSuggestionAdvertisementDidChangeEvent@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoGetRingtoneConfigurationResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetRingtoneConfigurationResponse and conformance NCProtoGetRingtoneConfigurationResponse, type metadata accessor for NCProtoGetRingtoneConfigurationResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoGetRingtoneConfigurationResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetRingtoneConfigurationResponse and conformance NCProtoGetRingtoneConfigurationResponse, type metadata accessor for NCProtoGetRingtoneConfigurationResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoGetRingtoneConfigurationResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetRingtoneConfigurationResponse and conformance NCProtoGetRingtoneConfigurationResponse, type metadata accessor for NCProtoGetRingtoneConfigurationResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoSpamCallModelInfo.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5)
      {
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      else if (result == 6)
      {
LABEL_15:
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for NCProtoSpamCallModelInfo(0) + 40);
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
        case 2:
          goto LABEL_15;
        case 3:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }
    }
  }
}

uint64_t NCProtoSpamCallModelInfo.traverse<A>(visitor:)()
{
  result = closure #1 in NCProtoSpamCallModelInfo.traverse<A>(visitor:)(v0);
  if (!v1)
  {
    if (*v0 == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    v3 = *(v0 + 16);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    if (*(v0 + 24))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if (*(v0 + 32))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if (*(v0 + 40) == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    v5 = v0 + *(type metadata accessor for NCProtoSpamCallModelInfo(0) + 36);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NCProtoSpamCallModelInfo.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoSpamCallModelInfo(0);
  v3 = a1 + *(result + 40);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

double protocol witness for Message.init() in conformance NCProtoSpamCallModelInfo@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v4 = a2 + *(a1 + 36);
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 40)) = xmmword_2255D3AC0;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NCProtoSpamCallModelInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NCProtoSpamCallModelInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance NCProtoSpamCallModelInfo(uint64_t a1, uint64_t a2))()
{
  result = NCProtoContactInfo.namePrefix.modify;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoSpamCallModelInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSpamCallModelInfo and conformance NCProtoSpamCallModelInfo, type metadata accessor for NCProtoSpamCallModelInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoSpamCallModelInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSpamCallModelInfo and conformance NCProtoSpamCallModelInfo, type metadata accessor for NCProtoSpamCallModelInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoSpamCallModelInfo()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoSpamCallModelInfo and conformance NCProtoSpamCallModelInfo, type metadata accessor for NCProtoSpamCallModelInfo);

  return Message.hash(into:)();
}

uint64_t NCProtoStartLagunaSessionResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v3 = v0;
            type metadata accessor for NCProtoContinuityFavorite(0);
            lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityFavorite and conformance NCProtoContinuityFavorite, type metadata accessor for NCProtoContinuityFavorite);
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 5:
            v3 = v0;
            type metadata accessor for NCProtoContinuityCall(0);
            lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityCall and conformance NCProtoContinuityCall, type metadata accessor for NCProtoContinuityCall);
            goto LABEL_5;
          case 6:
            closure #7 in NCProtoLagunaConnectionRequest.decodeMessage<A>(decoder:)();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
            break;
          case 2:
            closure #2 in NCProtoRecentCallsDidChangeEvent.decodeMessage<A>(decoder:)();
            break;
          case 3:
            v3 = v0;
            type metadata accessor for NCProtoActiveConversation(0);
            lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoActiveConversation and conformance NCProtoActiveConversation, type metadata accessor for NCProtoActiveConversation);
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in NCProtoRecentCallsDidChangeEvent.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for NCProtoContactInfo(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t closure #7 in NCProtoLagunaConnectionRequest.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for NCProtoCallInfo(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t NCProtoStartLagunaSessionResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v1))
  {
    v5 = v1;
    if (*(v0[1] + 16))
    {
      type metadata accessor for ProtobufString();
      type metadata accessor for NCProtoContactInfo(0);
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo);
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContactInfo and conformance NCProtoContactInfo, type metadata accessor for NCProtoContactInfo);
      result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      v5 = 0;
    }

    if (*(v0[2] + 16))
    {
      type metadata accessor for NCProtoActiveConversation(0);
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoActiveConversation and conformance NCProtoActiveConversation, type metadata accessor for NCProtoActiveConversation);
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v5)
      {
        return result;
      }

      v5 = 0;
    }

    if (*(v0[3] + 16))
    {
      type metadata accessor for NCProtoContinuityFavorite(0);
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityFavorite and conformance NCProtoContinuityFavorite, type metadata accessor for NCProtoContinuityFavorite);
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v5)
      {
        return result;
      }

      v5 = 0;
    }

    if (*(v0[4] + 16))
    {
      type metadata accessor for NCProtoContinuityCall(0);
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoContinuityCall and conformance NCProtoContinuityCall, type metadata accessor for NCProtoContinuityCall);
      v3 = v5;
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v5)
      {
        return result;
      }
    }

    else
    {
      v3 = v5;
    }

    if (!*(v0[5] + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for NCProtoCallInfo(0), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v3))
    {
      v4 = v0 + *(type metadata accessor for NCProtoStartLagunaSessionResponse(0) + 40);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoStartLagunaSessionResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt0g5Tf4g_n(v4);
  a2[2] = v4;
  a2[3] = v4;
  a2[4] = v4;
  a2[5] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt0g5Tf4g_n(v4);
  v5 = a2 + *(a1 + 40);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NCProtoLagunaConnectionRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NCProtoLagunaConnectionRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoStartLagunaSessionResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoStartLagunaSessionResponse and conformance NCProtoStartLagunaSessionResponse, type metadata accessor for NCProtoStartLagunaSessionResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoStartLagunaSessionResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoStartLagunaSessionResponse and conformance NCProtoStartLagunaSessionResponse, type metadata accessor for NCProtoStartLagunaSessionResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoStartLagunaSessionResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoStartLagunaSessionResponse and conformance NCProtoStartLagunaSessionResponse, type metadata accessor for NCProtoStartLagunaSessionResponse);

  return Message.hash(into:)();
}

uint64_t closure #1 in NCProtoStartConversationRequest.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoStartConversationRequest(0) + 20);
  lazy protocol witness table accessor for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t closure #1 in NCProtoStartConversationRequest.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoStartConversationRequest(0);
  v3 = (a1 + *(result + 20));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    lazy protocol witness table accessor for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoStartConversationRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 8) = 256;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoStartConversationRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoStartConversationRequest and conformance NCProtoStartConversationRequest, type metadata accessor for NCProtoStartConversationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoStartConversationRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoStartConversationRequest and conformance NCProtoStartConversationRequest, type metadata accessor for NCProtoStartConversationRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoStartConversationRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoStartConversationRequest and conformance NCProtoStartConversationRequest, type metadata accessor for NCProtoStartConversationRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoStartConversationResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoStartConversationResponse and conformance NCProtoStartConversationResponse, type metadata accessor for NCProtoStartConversationResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoStartConversationResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoStartConversationResponse and conformance NCProtoStartConversationResponse, type metadata accessor for NCProtoStartConversationResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoStartConversationResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoStartConversationResponse and conformance NCProtoStartConversationResponse, type metadata accessor for NCProtoStartConversationResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoJoinActiveConversationRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for NCProtoJoinActiveConversationRequest(0) + 28);
LABEL_3:
        v0 = 0;
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 2:
        v1 = *(type metadata accessor for NCProtoJoinActiveConversationRequest(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for NCProtoJoinActiveConversationRequest(0) + 20);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
    }
  }
}

uint64_t NCProtoJoinActiveConversationRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in NCProtoRingtoneConfiguration.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoJoinActiveConversationRequest);
  if (!v4)
  {
    closure #1 in NCProtoTransferActiveConversationRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoJoinActiveConversationRequest);
    closure #2 in NCProtoTransferActiveConversationRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoJoinActiveConversationRequest);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NCProtoRingtoneConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in NCProtoTransferActiveConversationRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoJoinActiveConversationRequest@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5) = 2;
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoJoinActiveConversationRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoJoinActiveConversationRequest and conformance NCProtoJoinActiveConversationRequest, type metadata accessor for NCProtoJoinActiveConversationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoJoinActiveConversationRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoJoinActiveConversationRequest and conformance NCProtoJoinActiveConversationRequest, type metadata accessor for NCProtoJoinActiveConversationRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoJoinActiveConversationRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoJoinActiveConversationRequest and conformance NCProtoJoinActiveConversationRequest, type metadata accessor for NCProtoJoinActiveConversationRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoJoinActiveConversationResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoJoinActiveConversationResponse and conformance NCProtoJoinActiveConversationResponse, type metadata accessor for NCProtoJoinActiveConversationResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoJoinActiveConversationResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoJoinActiveConversationResponse and conformance NCProtoJoinActiveConversationResponse, type metadata accessor for NCProtoJoinActiveConversationResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoJoinActiveConversationResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoJoinActiveConversationResponse and conformance NCProtoJoinActiveConversationResponse, type metadata accessor for NCProtoJoinActiveConversationResponse);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoCreateLinkConversationRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCreateLinkConversationRequest and conformance NCProtoCreateLinkConversationRequest, type metadata accessor for NCProtoCreateLinkConversationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoCreateLinkConversationRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCreateLinkConversationRequest and conformance NCProtoCreateLinkConversationRequest, type metadata accessor for NCProtoCreateLinkConversationRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoCreateLinkConversationRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCreateLinkConversationRequest and conformance NCProtoCreateLinkConversationRequest, type metadata accessor for NCProtoCreateLinkConversationRequest);

  return Message.hash(into:)();
}

uint64_t NCProtoRingtoneConfiguration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = *(a4(0) + 20);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoCreateLinkConversationResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCreateLinkConversationResponse and conformance NCProtoCreateLinkConversationResponse, type metadata accessor for NCProtoCreateLinkConversationResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoCreateLinkConversationResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCreateLinkConversationResponse and conformance NCProtoCreateLinkConversationResponse, type metadata accessor for NCProtoCreateLinkConversationResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoCreateLinkConversationResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCreateLinkConversationResponse and conformance NCProtoCreateLinkConversationResponse, type metadata accessor for NCProtoCreateLinkConversationResponse);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoLinkConversationSendLetMeInRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLinkConversationSendLetMeInRequest and conformance NCProtoLinkConversationSendLetMeInRequest, type metadata accessor for NCProtoLinkConversationSendLetMeInRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoLinkConversationSendLetMeInRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLinkConversationSendLetMeInRequest and conformance NCProtoLinkConversationSendLetMeInRequest, type metadata accessor for NCProtoLinkConversationSendLetMeInRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoLinkConversationSendLetMeInRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLinkConversationSendLetMeInRequest and conformance NCProtoLinkConversationSendLetMeInRequest, type metadata accessor for NCProtoLinkConversationSendLetMeInRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoLinkConversationSendLetMeInResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLinkConversationSendLetMeInResponse and conformance NCProtoLinkConversationSendLetMeInResponse, type metadata accessor for NCProtoLinkConversationSendLetMeInResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoLinkConversationSendLetMeInResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLinkConversationSendLetMeInResponse and conformance NCProtoLinkConversationSendLetMeInResponse, type metadata accessor for NCProtoLinkConversationSendLetMeInResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoLinkConversationSendLetMeInResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLinkConversationSendLetMeInResponse and conformance NCProtoLinkConversationSendLetMeInResponse, type metadata accessor for NCProtoLinkConversationSendLetMeInResponse);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoLinkConversationCancelRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLinkConversationCancelRequest and conformance NCProtoLinkConversationCancelRequest, type metadata accessor for NCProtoLinkConversationCancelRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoLinkConversationCancelRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLinkConversationCancelRequest and conformance NCProtoLinkConversationCancelRequest, type metadata accessor for NCProtoLinkConversationCancelRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoLinkConversationCancelRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLinkConversationCancelRequest and conformance NCProtoLinkConversationCancelRequest, type metadata accessor for NCProtoLinkConversationCancelRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoLinkConversationCancelResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLinkConversationCancelResponse and conformance NCProtoLinkConversationCancelResponse, type metadata accessor for NCProtoLinkConversationCancelResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoLinkConversationCancelResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLinkConversationCancelResponse and conformance NCProtoLinkConversationCancelResponse, type metadata accessor for NCProtoLinkConversationCancelResponse);

  return MEMORY[0x28217E428](a1, v2);
}