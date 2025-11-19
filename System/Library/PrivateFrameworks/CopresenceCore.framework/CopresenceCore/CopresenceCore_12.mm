uint64_t AttachmentLedger_GetAuthTokenRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  AuthTokenRequest = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  v3 = a1 + *(AuthTokenRequest + 28);
  UnknownStorage.init()();
  v4 = *(AuthTokenRequest + 32);
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v6 = *(*(AuthToken - 8) + 56);

  return v6(a1 + v4, 1, 1, AuthToken);
}

uint64_t static AttachmentLedger_ResponseStatus.allCases.setter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a2;
  *a2 = a1;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance AttachmentLedger_ResponseStatus@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
}

uint64_t key path getter for AttachmentLedger_GetAuthTokenResponse.error : AttachmentLedger_GetAuthTokenResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AuthTokenResponse + 28), v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v9 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0;
  v11 = a2 + *(v9 + 28);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_GetAuthTokenResponse.error : AttachmentLedger_GetAuthTokenResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_ErrorResponse);
  v9 = *(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) + 28);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_ErrorResponse);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AttachmentLedger_GetAuthTokenResponse.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_ErrorResponse);
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*AttachmentLedger_GetAuthTokenResponse.error.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0;
    v17 = v14 + *(v9 + 28);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  return AttachmentLedger_CreateTopicResponse.error.modify;
}

uint64_t key path getter for AttachmentLedger_GetAuthTokenResponse.authPutMaterials : AttachmentLedger_GetAuthTokenResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AuthTokenResponse + 32), v7, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v9 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  v11 = a2 + *(v9 + 32);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_GetAuthTokenResponse.authPutMaterials : AttachmentLedger_GetAuthTokenResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  v9 = *(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) + 32);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AttachmentLedger_GetAuthTokenResponse.authPutMaterials.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) + 32);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  v4 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*AttachmentLedger_GetAuthTokenResponse.authPutMaterials.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    v14[4] = 0;
    v14[5] = 0xE000000000000000;
    v14[6] = 0;
    v17 = v14 + *(v9 + 32);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  return AttachmentLedger_GetAuthTokenResponse.authPutMaterials.modify;
}

uint64_t AttachmentLedger_GetAuthTokenRequest.clearTestOption()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  outlined destroy of NSObject?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AttachmentLedger_GetAuthTokenResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  v3 = a1 + AuthTokenResponse[6];
  UnknownStorage.init()();
  v4 = AuthTokenResponse[7];
  v5 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = AuthTokenResponse[8];
  v7 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t AttachmentLedger_GetAttachmentMetadataRequest.topic.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AttachmentLedger_GetAttachmentMetadataRequest.topic.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AttachmentLedger_GetAttachmentMetadataRequest.attachmentUuid.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t AttachmentLedger_GetAttachmentMetadataRequest.attachmentUuid.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_1AEE0C200;
  v2 = a2 + *(a1(0) + 24);
  return UnknownStorage.init()();
}

uint64_t AttachmentLedger_GetAttachmentMetadataResponse.status.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t AttachmentLedger_GetAttachmentMetadataResponse.status.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t AttachmentLedger_UpdateAttachmentResponse.error.getter@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2 + *(v9 + 24), v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v10 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0;
  v12 = a2 + *(v10 + 28);
  UnknownStorage.init()();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_CreateTopicResponse.error : AttachmentLedger_CreateTopicResponse@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = a2(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v10 + 24), v9, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v11 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, a3, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = 0;
  a3[3] = 0;
  v13 = a3 + *(v11 + 28);
  UnknownStorage.init()();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v9, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_GetAttachmentMetadataResponse.error : AttachmentLedger_GetAttachmentMetadataResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_ErrorResponse);
  v9 = *(type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0) + 24);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_ErrorResponse);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AttachmentLedger_GetAttachmentMetadataResponse.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_ErrorResponse);
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_GetAttachmentMetadataResponse.error.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0;
    v17 = v14 + *(v9 + 28);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  return AttachmentLedger_GetAttachmentMetadataResponse.error.modify;
}

void AttachmentLedger_GetAttachmentMetadataResponse.error.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_ErrorResponse);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_ErrorResponse);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_ErrorResponse);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AttachmentLedger_GetAttachmentMetadataResponse.attachmentMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  AttachmentMetadataResponse = type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(AttachmentMetadataResponse + 28), v6, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v8 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  v14 = xmmword_1AEE0C200;
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v14;
  v10 = a1 + *(v8 + 32);
  UnknownStorage.init()();
  v11 = *(v8 + 36);
  v12 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_GetAttachmentMetadataResponse.attachmentMetadata : AttachmentLedger_GetAttachmentMetadataResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v9 = *(type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0) + 28);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AttachmentLedger_GetAttachmentMetadataResponse.attachmentMetadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_GetAttachmentMetadataResponse.attachmentMetadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
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
  v15 = *(type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    *(v14 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = xmmword_1AEE0C200;
    v17 = v14 + *(v9 + 32);
    UnknownStorage.init()();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  return AttachmentLedger_GetAttachmentMetadataResponse.attachmentMetadata.modify;
}

void AttachmentLedger_GetAttachmentMetadataResponse.attachmentMetadata.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AttachmentLedger_CreateTopicResponse.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 1;
  v5 = a1(0);
  v6 = a3 + v5[5];
  UnknownStorage.init()();
  v7 = v5[6];
  v8 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = v5[7];
  v10 = a2(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a3 + v9, 1, 1, v10);
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_ResponseStatus._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_ResponseStatus._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1AEE0DC90;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "UNKNOWN";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "OK";
  *(v9 + 8) = 2;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "IGNORED";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "PLUGIN_BOUNCING";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "UNKNOWN_TOPIC";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "INVALID_REQUEST";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "NOT_AUTHORIZED";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "QUOTA_EXCEEDED";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "MISSING_ENCRYPTION_IDS";
  *(v22 + 8) = 22;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_AttachmentStatus._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_AttachmentStatus._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Initial";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SimulcastUploadInProgress";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SimulcastUploadSucceeded";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_MMCSMetadata._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_MMCSMetadata._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "baseBlob";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "progressBlob";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ownerID";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "originalAuthURL";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "fileHash";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "referenceSignature";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_MMCSMetadata.BlobData._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_MMCSMetadata.BlobData._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "body";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_AttachmentMetadata._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_AttachmentMetadata._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE0DCA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryptionSlots";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "mmcsMetadata";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "status";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "metadata";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_AuthPutMaterials._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_AuthPutMaterials._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "signedAuthToken";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "accountID";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "requestURL";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tokenTtlInMilliseconds";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_AttachmentAuthGetToken._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_AttachmentAuthGetToken._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "signedAuthToken";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "accountID";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tokenTtlInMilliseconds";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_AttachmentEncryption._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_AttachmentEncryption._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encryptionID";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryptionMaterial";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "version";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_ErrorResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_ErrorResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "errorMessage";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "maxRetries";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "retryIntervalInMilliseconds";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_CreateTopicRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_CreateTopicRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "participantIDSalt";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_CreateTopicResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_CreateTopicResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "topicConfig";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_CreateTopicResponse.ClientTopicConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_CreateTopicResponse.ClientTopicConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE0DCA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "maxSubscribeRpcStreamTries";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "retrySubscribeRpcStreamIntervalMillis";
  *(v10 + 8) = 37;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "maxRefreshDataCryptorTries";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "refreshDataCryptorIntervalSeconds";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "gracefulShutdownWindowSeconds";
  *(v15 + 8) = 29;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "initialize";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "updateEncryptionID";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "attachmentAck";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeRequest.Initialize._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeRequest.Initialize._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localEncryptionID";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "knownEncryptionIDs";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "saltVerifiedSubscriberParticipantID";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "knownAttachments";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "capabilities";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeRequest.AttachmentAck._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeRequest.AttachmentAck._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuids";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sequenceNumber";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "initializeAck";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attachmentUpdate";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "topicUpdate";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.InitializeAck._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.InitializeAck._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "otherSubscriberParticipantIDs";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "missingEncryptionIDs";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "attachments";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "authPutMaterials";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "participantID";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryptionID";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unchangedAttachmentMetadataUUID";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attachmentMetadata";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.TopicUpdate._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.TopicUpdate._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "participantID";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SubscriberAdded";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SubscriberRemoved";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE0DCA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "added";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "removed";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "encryptionUpdated";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "statusChanged";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 10;
  *v15 = "sequenceNumber";
  *(v15 + 8) = 14;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "full";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ack";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "full";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ack";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "attachmentUUID";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attachmentEncryptionVersion";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "attachmentUUID";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "participantID";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "encryptionMaterial";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "full";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ack";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "attachmentUUID";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "progressBlobVersion";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "attachmentUUID";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "progressBlob";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "add";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remove";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "updateEncryption";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "updateStatus";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metadata";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "uuid";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "container";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryption";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "container";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "progressBlob";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_UpdateAttachmentResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_UpdateAttachmentResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "action";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topic";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "attachmentUUIDs";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "testOption";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest.Action._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest.Action._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NewUploadToken";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NewDownloadToken";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest.TokenEnvironment._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest.TokenEnvironment._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "iCloud3";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "iCloud2";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Production";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest.TestOption._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_GetAuthTokenRequest.TestOption._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "environment";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "overrideTtlInMilliseconds";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_GetAuthTokenResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_GetAuthTokenResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "authPutMaterials";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "signedAuthGetTokens";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_GetAttachmentMetadataRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_GetAttachmentMetadataRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attachmentUUID";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedger_GetAttachmentMetadataResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedger_GetAttachmentMetadataResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "attachmentMetadata";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_ResponseStatus._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_ResponseStatus._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1AEE0DC90;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "UNKNOWN";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "IGNORED";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "PLUGIN_BOUNCING";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "UNKNOWN_TOPIC";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "INVALID_REQUEST";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "NOT_AUTHORIZED";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "QUOTA_EXCEEDED";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "MISSING_ENCRYPTION_IDS";
  *(v21 + 1) = 22;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 1000;
  *v22 = "OK";
  *(v22 + 8) = 2;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_Record._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_Record._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "seqNum";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "destinationParticipantIDs";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "encryptionID";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "sentEpochMillis";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_KeyValue._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_KeyValue._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dataValue";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SequenceNumber._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SequenceNumber._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "publisherParticipantID";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "seqNum";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_TopicSubscribersRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_TopicSubscribersRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topicTerminationAck";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topicTerminationRequest";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_TopicSubscribersRequest.TopicTerminationRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_TopicSubscribersRequest.TopicTerminationRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topicName";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
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
  __swift_allocate_value_buffer(v0, static CP_TopicSubscribersRequest.TopicTerminationRequest.Reason._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_TopicSubscribersRequest.TopicTerminationRequest.Reason._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "REASON_UNSPECIFIED";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INITIATOR_LEFT";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_TopicSubscribers._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_TopicSubscribers._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "terminateTopic";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_TopicSubscribers.TopicSubscribersInfo._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_TopicSubscribers.TopicSubscribersInfo._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subscriberParticipantIDs";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SystemEvent._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SystemEvent._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topicCreated";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "topicDestroyed";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "initialize";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "recordAck";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeRequest.Initialize._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeRequest.Initialize._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09AF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "knownSeqNums";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "localEncryptionID";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "knownEncryptionIDs";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "subscriberParticipantID";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "saltVerifiedSubscriberParticipantID";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "initializeAck";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "record";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "topicUpdate";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeResponse.InitializeAck._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeResponse.InitializeAck._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE14420;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "otherSubscriberParticipantIDs";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "metadata";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "topicCatchupSummary";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "missingEncryptionIDs";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "subscriberSeqNum";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "otherSaltVerifiedSubscriberParticipantIDs";
  *(v22 + 1) = 41;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeResponse.InitializeAck.TopicCatchupSummary._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeResponse.InitializeAck.TopicCatchupSummary._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "participantID";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "seqNums";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeResponse.InitializeAck.MissingEncryptionID._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeResponse.InitializeAck.MissingEncryptionID._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "participantID";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryptionID";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeResponse.TopicUpdate._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeResponse.TopicUpdate._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
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
  *v12 = "participantID";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isSaltVerifiedID";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_SubscribeResponse.TopicUpdate.UpdateEvent._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_SubscribeResponse.TopicUpdate.UpdateEvent._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SubscriberAdded";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SubscriberRemoved";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "MetadataChanged";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_PublishRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_PublishRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "record";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "updatedEncryptionID";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_PublishRequest.UpdatedEncryptionID._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_PublishRequest.UpdatedEncryptionID._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryptionID";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_PublishResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_PublishResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "seqNumAck";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_UpsertTopicMetadataRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_UpsertTopicMetadataRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metadata";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_UpsertTopicMetadataResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_UpsertTopicMetadataResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_CreateTopicRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_CreateTopicRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
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
  *v12 = "participantIDSalt";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "topicCategory";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_CreateTopicRequest.TopicCategory._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_CreateTopicRequest.TopicCategory._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE0DCA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "App";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "System";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ScreenShare";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "FastSync";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_CreateTopicResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_CreateTopicResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "topicConfig";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_CreateTopicResponse.ClientTopicConfig._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_CreateTopicResponse.ClientTopicConfig._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE14420;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "maxRecordDataSizeBytes";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "maxPublishQueueSize";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "maxDecryptionQueueSize";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "maxPrimaryRpcStreamTries";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "retryPrimaryRpcStreamIntervalMillis";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "maxRefreshDataCryptorTries";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "refreshDataCryptorIntervalSeconds";
  *(v20 + 1) = 33;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "gracefulShutdownWindowSeconds";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_FetchTopicsRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_FetchTopicsRequest._protobuf_nameMap);
  return _NameMap.init()();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static CP_FetchTopicsResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static CP_FetchTopicsResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE09B00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "topics";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static DG_Datagram._protobuf_nameMap);
  __swift_project_value_buffer(v0, static DG_Datagram._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "seqNum";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "EncryptionID";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "sentEpochMillis";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static DG_SequenceNumber._protobuf_nameMap);
  __swift_project_value_buffer(v0, static DG_SequenceNumber._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B10;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "senderParticipantID";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "seqNum";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static DG_EncryptionID._protobuf_nameMap);
  __swift_project_value_buffer(v0, static DG_EncryptionID._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B20;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "uuid";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static AttachmentLedgerMetadata_AttachmentMetadata._protobuf_nameMap);
  __swift_project_value_buffer(v0, static AttachmentLedgerMetadata_AttachmentMetadata._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B20;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "developerMetadata";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static AttachmentLedger_CapabilityFlag._protobuf_nameMap, 0, "UNSET", 5);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AttachmentLedger_EncryptionID._protobuf_nameMap, 1, "uuid", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack._protobuf_nameMap, 1, "attachmentUUID", 14);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed._protobuf_nameMap, 1, "attachmentUUID", 14);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CP_EncryptionID._protobuf_nameMap, "uuid", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CP_TopicSubscribersRequest.TopicTerminatedAck._protobuf_nameMap, "topicName", 9);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CP_TopicSubscribers.TerminateTopic._protobuf_nameMap, "topicName", 9);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static CP_SubscribeRequest.RecordAck._protobuf_nameMap, "seqNumsAck", 10);
}

uint64_t AttachmentLedger_MMCSMetadata.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        goto LABEL_14;
      }

      if (result == 5 || result == 6)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          closure #1 in AttachmentLedger_MMCSMetadata.decodeMessage<A>(decoder:)();
          break;
        case 2:
          closure #2 in AttachmentLedger_MMCSMetadata.decodeMessage<A>(decoder:)();
          break;
        case 3:
LABEL_14:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }
    }
  }
}

uint64_t closure #1 in AttachmentLedger_MMCSMetadata.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_MMCSMetadata(0) + 36);
  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in AttachmentLedger_MMCSMetadata.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_MMCSMetadata(0) + 40);
  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_MMCSMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AttachmentLedger_MMCSMetadata.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in AttachmentLedger_MMCSMetadata.traverse<A>(visitor:)(v3, a1, a2, a3);
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

    v14 = v3[4];
    v15 = v3[5];
    v16 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_21;
      }

      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
    }

    else
    {
      if (!v16)
      {
        if ((v15 & 0xFF000000000000) == 0)
        {
LABEL_21:
          v19 = v3[6];
          v20 = v3[7];
          v21 = v20 >> 62;
          if ((v20 >> 62) > 1)
          {
            if (v21 != 2)
            {
              goto LABEL_30;
            }

            v22 = *(v19 + 16);
            v23 = *(v19 + 24);
          }

          else
          {
            if (!v21)
            {
              if ((v20 & 0xFF000000000000) == 0)
              {
                goto LABEL_30;
              }

              goto LABEL_29;
            }

            v22 = v19;
            v23 = v19 >> 32;
          }

          if (v22 != v23)
          {
LABEL_29:
            dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
          }

LABEL_30:
          v24 = v3 + *(type metadata accessor for AttachmentLedger_MMCSMetadata(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }

LABEL_20:
        dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        goto LABEL_21;
      }

      v17 = v14;
      v18 = v14 >> 32;
    }

    if (v17 == v18)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_MMCSMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 36), v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
}

uint64_t closure #2 in AttachmentLedger_MMCSMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 40), v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_MMCSMetadata@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = xmmword_1AEE0C200;
  *(a2 + 48) = xmmword_1AEE0C200;
  v4 = a2 + a1[8];
  UnknownStorage.init()();
  v5 = a1[9];
  v6 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v7 = a2 + a1[10];

  return v9(v7, 1, 1, v6);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance AttachmentLedger_MMCSMetadata(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for ActivitySession.Errors;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_MMCSMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata and conformance AttachmentLedger_MMCSMetadata, type metadata accessor for AttachmentLedger_MMCSMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_MMCSMetadata()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata and conformance AttachmentLedger_MMCSMetadata, type metadata accessor for AttachmentLedger_MMCSMetadata);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_MMCSMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata and conformance AttachmentLedger_MMCSMetadata, type metadata accessor for AttachmentLedger_MMCSMetadata);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t one-time initialization function for protoMessageName()
{
  result = MEMORY[0x1B2710020](0x746144626F6C422ELL, 0xE900000000000061);
  static AttachmentLedger_MMCSMetadata.BlobData.protoMessageName = 0xD00000000000001DLL;
  *algn_1EB617968 = 0x80000001AEE331C0;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE339F0);
  static AttachmentLedger_CreateTopicResponse.ClientTopicConfig.protoMessageName = 0xD000000000000024;
  unk_1EB617A50 = 0x80000001AEE33310;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.InitializeAck.protoMessageName;
  v2 = *algn_1EB617AF8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0xD000000000000014, 0x80000001AEE337D0);

  static AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.protoMessageName = v1;
  unk_1EB617B20 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.InitializeAck.protoMessageName;
  v2 = *algn_1EB617AF8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE337A0);

  static AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.protoMessageName = v1;
  *algn_1EB617B48 = v2;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000011, 0x80000001AEE33740);
  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.protoMessageName = 0xD000000000000022;
  unk_1EB617BB0 = 0x80000001AEE33370;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.protoMessageName;
  v2 = qword_1EB617BB0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0x64656464412ELL, 0xE600000000000000);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.protoMessageName = v1;
  *algn_1EB617BD8 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.protoMessageName;
  v2 = *algn_1EB617BD8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](1801666862, 0xE400000000000000);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack.protoMessageName = v1;
  unk_1EB617C00 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.protoMessageName;
  v2 = qword_1EB617BB0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0x6465766F6D65522ELL, 0xE800000000000000);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed.protoMessageName = v1;
  *algn_1EB617C28 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.protoMessageName;
  v2 = qword_1EB617BB0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE336E0);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.protoMessageName = v1;
  unk_1EB617C50 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.protoMessageName;
  v2 = qword_1EB617C50;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](1801666862, 0xE400000000000000);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack.protoMessageName = v1;
  *algn_1EB617C78 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.protoMessageName;
  v2 = qword_1EB617C50;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0x6C6C75462ELL, 0xE500000000000000);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.protoMessageName = v1;
  unk_1EB617CA0 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.protoMessageName;
  v2 = qword_1EB617BB0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0x437375746174532ELL, 0xEE006465676E6168);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.protoMessageName = v1;
  *algn_1EB617CC8 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.protoMessageName;
  v2 = *algn_1EB617CC8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](1801666862, 0xE400000000000000);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.protoMessageName = v1;
  unk_1EB617CF0 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.protoMessageName;
  v2 = *algn_1EB617CC8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0x6C6C75462ELL, 0xE500000000000000);

  static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.protoMessageName = v1;
  *algn_1EB617D18 = v2;
  return result;
}

{
  result = MEMORY[0x1B2710020](0x6D6863617474412ELL, 0xEE00646441746E65);
  static AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.protoMessageName = 0xD000000000000028;
  *algn_1EB617D58 = 0x80000001AEE333A0;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000011, 0x80000001AEE33630);
  static AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove.protoMessageName = 0xD000000000000028;
  unk_1EB617D80 = 0x80000001AEE333A0;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD00000000000001BLL, 0x80000001AEE33610);
  static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.protoMessageName = 0xD000000000000028;
  *algn_1EB617DA8 = 0x80000001AEE333A0;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.protoMessageName;
  v2 = *algn_1EB617DA8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0x6E6961746E6F432ELL, 0xEA00000000007265);

  static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.protoMessageName = v1;
  unk_1EB617DD0 = v2;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000017, 0x80000001AEE335E0);
  static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.protoMessageName = 0xD000000000000028;
  *algn_1EB617DF8 = 0x80000001AEE333A0;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.protoMessageName;
  v2 = *algn_1EB617DF8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0x6E6961746E6F432ELL, 0xEA00000000007265);

  static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.protoMessageName = v1;
  unk_1EB617E20 = v2;
  return result;
}

{
  result = MEMORY[0x1B2710020](0x74704F747365542ELL, 0xEB000000006E6F69);
  static AttachmentLedger_GetAuthTokenRequest.TestOption.protoMessageName = 0xD000000000000024;
  *algn_1EB617EA8 = 0x80000001AEE33400;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE35920);
  static CP_TopicSubscribersRequest.TopicTerminatedAck.protoMessageName = 0xD00000000000001ALL;
  unk_1EB618080 = 0x80000001AEE35440;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000018, 0x80000001AEE35900);
  static CP_TopicSubscribersRequest.TopicTerminationRequest.protoMessageName = 0xD00000000000001ALL;
  *algn_1EB6180A8 = 0x80000001AEE35440;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000015, 0x80000001AEE358A0);
  static CP_TopicSubscribers.TopicSubscribersInfo.protoMessageName = 0xD000000000000013;
  unk_1EB618100 = 0x80000001AEE35460;
  return result;
}

{
  result = MEMORY[0x1B2710020](0x616E696D7265542ELL, 0xEF6369706F546574);
  static CP_TopicSubscribers.TerminateTopic.protoMessageName = 0xD000000000000013;
  *algn_1EB618128 = 0x80000001AEE35460;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static CP_SubscribeResponse.InitializeAck.protoMessageName;
  v2 = *algn_1EB6181E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0xD000000000000014, 0x80000001AEE35760);

  static CP_SubscribeResponse.InitializeAck.TopicCatchupSummary.protoMessageName = v1;
  unk_1EB618210 = v2;
  return result;
}

{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v1 = static CP_SubscribeResponse.InitializeAck.protoMessageName;
  v2 = *algn_1EB6181E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B2710020](0xD000000000000014, 0x80000001AEE337D0);

  static CP_SubscribeResponse.InitializeAck.MissingEncryptionID.protoMessageName = v1;
  *algn_1EB618238 = v2;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000014, 0x80000001AEE356C0);
  static CP_PublishRequest.UpdatedEncryptionID.protoMessageName = 0xD000000000000011;
  *algn_1EB6182B8 = 0x80000001AEE354C0;
  return result;
}

{
  result = MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE339F0);
  static CP_CreateTopicResponse.ClientTopicConfig.protoMessageName = 0xD000000000000016;
  unk_1EB618370 = 0x80000001AEE35560;
  return result;
}

uint64_t *AttachmentLedger_MMCSMetadata.BlobData.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_MMCSMetadata.BlobData.protoMessageName;
}

uint64_t AttachmentLedger_MMCSMetadata.BlobData.decodeMessage<A>(decoder:)()
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
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t AttachmentLedger_MMCSMetadata.BlobData.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
  {
    v3 = v0[1];
    v4 = v0[2];
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 != 2)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
    }

    else
    {
      if (!v5)
      {
        if ((v4 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v1)
        {
          return result;
        }

        goto LABEL_12;
      }

      v6 = v3;
      v7 = v3 >> 32;
    }

    if (v6 != v7)
    {
      goto LABEL_11;
    }

LABEL_12:
    v8 = v0 + *(type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static AttachmentLedger_MMCSMetadata.BlobData.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || (specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_MMCSMetadata.BlobData@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xC000000000000000;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for ActivitySession.Errors;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_MMCSMetadata.BlobData()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AttachmentLedger_MMCSMetadata.BlobData(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || (specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AttachmentLedger_AttachmentMetadata.decodeMessage<A>(decoder:)()
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
        break;
      }

      if (result == 1)
      {
        goto LABEL_16;
      }

      if (result == 2)
      {
        closure #2 in AttachmentLedger_AttachmentMetadata.decodeMessage<A>(decoder:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 3)
    {
      closure #3 in AttachmentLedger_AttachmentMetadata.decodeMessage<A>(decoder:)();
      goto LABEL_5;
    }

    if (result == 4)
    {
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      goto LABEL_5;
    }

    if (result != 5)
    {
      goto LABEL_5;
    }

LABEL_16:
    dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    goto LABEL_5;
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_AttachmentMetadata.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufFixed64();
  type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t closure #3 in AttachmentLedger_AttachmentMetadata.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) + 36);
  type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata and conformance AttachmentLedger_MMCSMetadata, type metadata accessor for AttachmentLedger_MMCSMetadata);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_AttachmentMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
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
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 == v12)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_10:
  if (!*(*(v3 + 16) + 16) || (type metadata accessor for ProtobufFixed64(), type metadata accessor for AttachmentLedger_AttachmentEncryption(0), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AttachmentLedger_AttachmentMetadata.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 24))
      {
        v20 = *(v3 + 24);
        v21 = *(v3 + 32);
        lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();
        dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      }

      v14 = *(v3 + 40);
      v15 = *(v3 + 48);
      v16 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v16 != 2)
        {
          goto LABEL_24;
        }

        v17 = *(v14 + 16);
        v18 = *(v14 + 24);
      }

      else
      {
        if (!v16)
        {
          if ((v15 & 0xFF000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        v17 = v14;
        v18 = v14 >> 32;
      }

      if (v17 != v18)
      {
LABEL_23:
        dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      }

LABEL_24:
      v19 = v3 + *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) + 32);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_AttachmentMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 36), v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_MMCSMetadata);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata and conformance AttachmentLedger_MMCSMetadata, type metadata accessor for AttachmentLedger_MMCSMetadata);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_MMCSMetadata);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_AttachmentMetadata@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = xmmword_1AEE0C200;
  v4 = a2 + *(a1 + 32);
  UnknownStorage.init()();
  v5 = *(a1 + 36);
  v6 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_AttachmentMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_AttachmentMetadata()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_AttachmentMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_AuthPutMaterials.traverse<A>(visitor:)()
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
        if (!v0[6] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
        {
          v10 = v0 + *(type metadata accessor for AttachmentLedger_AuthPutMaterials(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_AuthPutMaterials@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_AuthPutMaterials(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_AuthPutMaterials()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_AuthPutMaterials(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_AuthPutMaterials.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }
    }

    else if (result == 1)
    {
      a4(v4, a2, a3);
    }

    else if (result == 2)
    {
LABEL_12:
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }
}

uint64_t AttachmentLedger_AttachmentAuthGetToken.traverse<A>(visitor:)()
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
  v8 = v0[3];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v10 = v0[5];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v0[4] & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (!v0[6] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
      {
        v12 = v0 + *(type metadata accessor for AttachmentLedger_AttachmentAuthGetToken(0) + 32);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_AttachmentAuthGetToken@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_AttachmentAuthGetToken(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentAuthGetToken and conformance AttachmentLedger_AttachmentAuthGetToken, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_AttachmentAuthGetToken()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentAuthGetToken and conformance AttachmentLedger_AttachmentAuthGetToken, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_AttachmentAuthGetToken(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentAuthGetToken and conformance AttachmentLedger_AttachmentAuthGetToken, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_EncryptionID.decodeMessage<A>(decoder:)()
{
  return AttachmentLedger_EncryptionID.decodeMessage<A>(decoder:)();
}

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
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance AttachmentLedger_EncryptionID(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for ActivitySession.Errors;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_EncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_EncryptionID()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_EncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_AttachmentEncryption.decodeMessage<A>(decoder:)()
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
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
      case 1:
        closure #1 in AttachmentLedger_AttachmentEncryption.decodeMessage<A>(decoder:)();
        break;
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_AttachmentEncryption.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_AttachmentEncryption(0) + 28);
  type metadata accessor for AttachmentLedger_EncryptionID(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_AttachmentEncryption.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AttachmentLedger_AttachmentEncryption.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  v6 = *v3;
  v7 = v3[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_11;
    }

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
  }

  else
  {
    if (!v8)
    {
      if ((v7 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v9 = v6;
    v10 = v6 >> 32;
  }

  if (v9 != v10)
  {
LABEL_10:
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  }

LABEL_11:
  if (v3[2])
  {
    dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  v11 = v3 + *(type metadata accessor for AttachmentLedger_AttachmentEncryption(0) + 24);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in AttachmentLedger_AttachmentEncryption.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 28), v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_EncryptionID);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_EncryptionID);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_AttachmentEncryption()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_ErrorResponse.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t AttachmentLedger_ErrorResponse.traverse<A>(visitor:)()
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
    if (!v0[2] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
    {
      if (!v0[3] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
      {
        v6 = v0 + *(type metadata accessor for AttachmentLedger_ErrorResponse(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_ErrorResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance AttachmentLedger_ErrorResponse(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for ActivitySession.Errors;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_ErrorResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_ErrorResponse()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_ErrorResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_CreateTopicRequest.traverse<A>(visitor:)()
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
      v8 = v0 + *(type metadata accessor for AttachmentLedger_CreateTopicRequest(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_CreateTopicRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_CreateTopicRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest, type metadata accessor for AttachmentLedger_CreateTopicRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_CreateTopicRequest()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest, type metadata accessor for AttachmentLedger_CreateTopicRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_CreateTopicRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest, type metadata accessor for AttachmentLedger_CreateTopicRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t closure #2 in AttachmentLedger_CreateTopicResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_CreateTopicResponse(0) + 24);
  type metadata accessor for AttachmentLedger_ErrorResponse(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in AttachmentLedger_CreateTopicResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_CreateTopicResponse(0) + 28);
  type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse.ClientTopicConfig and conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in AttachmentLedger_CreateTopicResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TopicResponse = type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(TopicResponse + 24), v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_ErrorResponse);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_ErrorResponse);
}

uint64_t closure #2 in AttachmentLedger_CreateTopicResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v10 = *(Topic - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Topic);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TopicResponse = type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(TopicResponse + 28), v8, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  if ((*(v10 + 48))(v8, 1, Topic) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse.ClientTopicConfig and conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_CreateTopicResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse and conformance AttachmentLedger_CreateTopicResponse, type metadata accessor for AttachmentLedger_CreateTopicResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_CreateTopicResponse()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse and conformance AttachmentLedger_CreateTopicResponse, type metadata accessor for AttachmentLedger_CreateTopicResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_CreateTopicResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse and conformance AttachmentLedger_CreateTopicResponse, type metadata accessor for AttachmentLedger_CreateTopicResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_CreateTopicResponse.ClientTopicConfig.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_CreateTopicResponse.ClientTopicConfig.protoMessageName;
}

uint64_t AttachmentLedger_CreateTopicResponse.ClientTopicConfig.decodeMessage<A>(decoder:)()
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

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_10:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        goto LABEL_10;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AttachmentLedger_CreateTopicResponse.ClientTopicConfig.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
    {
      if (!v0[2] || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
      {
        if (!v0[3] || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
        {
          if (!v0[4] || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
          {
            v3 = v0 + *(type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0) + 36);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 36);
  return UnknownStorage.init()();
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for ActivitySession.Errors;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse.ClientTopicConfig and conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse.ClientTopicConfig and conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse.ClientTopicConfig and conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t closure #1 in AttachmentLedger_SubscribeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
      v33 = v48;
    }

    else
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMR);
      v35 = v43;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v43, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.Initialize and conformance AttachmentLedger_SubscribeRequest.Initialize, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMR);
  }

  else
  {
    v39 = v44;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v44, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV10InitializeVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in AttachmentLedger_SubscribeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_EncryptionID);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_EncryptionID);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_EncryptionID);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_EncryptionID);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #3 in AttachmentLedger_SubscribeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.AttachmentAck and conformance AttachmentLedger_SubscribeRequest.AttachmentAck, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV0C3AckVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t AttachmentLedger_SubscribeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v16 - v10, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in AttachmentLedger_SubscribeRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in AttachmentLedger_SubscribeRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in AttachmentLedger_SubscribeRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  if (!v4)
  {
LABEL_8:
    v15 = v3 + *(type metadata accessor for AttachmentLedger_SubscribeRequest(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.Initialize and conformance AttachmentLedger_SubscribeRequest.Initialize, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_EncryptionID);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #3 in AttachmentLedger_SubscribeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.AttachmentAck and conformance AttachmentLedger_SubscribeRequest.AttachmentAck, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeRequest()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t one-time initialization function for protoMessageName(uint64_t a1)
{
  return one-time initialization function for protoMessageName(a1, 0x6C616974696E492ELL, 0xEB00000000657A69, static AttachmentLedger_SubscribeRequest.Initialize.protoMessageName, &static AttachmentLedger_SubscribeRequest.Initialize.protoMessageName[1]);
}

{
  return one-time initialization function for protoMessageName(a1, 0x6D6863617474412ELL, 0xEE006B6341746E65, static AttachmentLedger_SubscribeRequest.AttachmentAck.protoMessageName, &static AttachmentLedger_SubscribeRequest.AttachmentAck.protoMessageName[1]);
}

{
  return one-time initialization function for protoMessageName(a1, 0x6C616974696E492ELL, 0xEE006B6341657A69, &static AttachmentLedger_SubscribeResponse.InitializeAck.protoMessageName, algn_1EB617AF8);
}

{
  return one-time initialization function for protoMessageName(a1, 0x70556369706F542ELL, 0xEC00000065746164, static AttachmentLedger_SubscribeResponse.TopicUpdate.protoMessageName, &static AttachmentLedger_SubscribeResponse.TopicUpdate.protoMessageName[1]);
}

{
  return one-time initialization function for protoMessageName(a1, 0x6C616974696E492ELL, 0xEB00000000657A69, static CP_SubscribeRequest.Initialize.protoMessageName, &static CP_SubscribeRequest.Initialize.protoMessageName[1]);
}

{
  return one-time initialization function for protoMessageName(a1, 0x4164726F6365522ELL, 0xEA00000000006B63, static CP_SubscribeRequest.RecordAck.protoMessageName, &static CP_SubscribeRequest.RecordAck.protoMessageName[1]);
}

{
  return one-time initialization function for protoMessageName(a1, 0x6C616974696E492ELL, 0xEE006B6341657A69, &static CP_SubscribeResponse.InitializeAck.protoMessageName, algn_1EB6181E8);
}

{
  return one-time initialization function for protoMessageName(a1, 0x70556369706F542ELL, 0xEC00000065746164, static CP_SubscribeResponse.TopicUpdate.protoMessageName, &static CP_SubscribeResponse.TopicUpdate.protoMessageName[1]);
}

void *AttachmentLedger_SubscribeRequest.Initialize.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return static AttachmentLedger_SubscribeRequest.Initialize.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeRequest.Initialize.decodeMessage<A>(decoder:)()
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
        break;
      }

      switch(result)
      {
        case 4:
          dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
          break;
        case 5:
          v3 = v0;
          type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
          lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
LABEL_19:
          v0 = v3;
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 6:
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
      goto LABEL_5;
    }

    if (result == 2)
    {
      closure #2 in AttachmentLedger_SubscribeRequest.Initialize.decodeMessage<A>(decoder:)();
      goto LABEL_5;
    }

    if (result != 3)
    {
      goto LABEL_5;
    }

    v3 = v0;
    type metadata accessor for AttachmentLedger_EncryptionID(0);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);
    goto LABEL_19;
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeRequest.Initialize.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0) + 40);
  type metadata accessor for AttachmentLedger_EncryptionID(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_SubscribeRequest.Initialize.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = closure #1 in AttachmentLedger_SubscribeRequest.Initialize.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3[2] + 16))
      {
        type metadata accessor for AttachmentLedger_EncryptionID(0);
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      if (v3[3])
      {
        dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
      }

      if (*(v3[4] + 16))
      {
        type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      if (v3[5])
      {
        dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
      }

      v12 = v3 + *(type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0) + 36);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeRequest.Initialize.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 40), v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_EncryptionID);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_EncryptionID);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeRequest.Initialize@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = v4;
  *(a2 + 3) = 0;
  *(a2 + 4) = v4;
  *(a2 + 5) = 0;
  v5 = &a2[*(a1 + 36)];
  UnknownStorage.init()();
  v6 = *(a1 + 40);
  v7 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeRequest.Initialize(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.Initialize and conformance AttachmentLedger_SubscribeRequest.Initialize, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeRequest.Initialize()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.Initialize and conformance AttachmentLedger_SubscribeRequest.Initialize, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeRequest.Initialize(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.Initialize and conformance AttachmentLedger_SubscribeRequest.Initialize, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t one-time initialization function for protoMessageName(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1B2710020](a2, a3);
  *a4 = 0xD000000000000021;
  *a5 = 0x80000001AEE33340;
  return result;
}

{
  result = MEMORY[0x1B2710020](a2, a3);
  *a4 = 0xD000000000000022;
  *a5 = 0x80000001AEE33370;
  return result;
}

{
  result = MEMORY[0x1B2710020](a2, a3);
  *a4 = 0xD000000000000013;
  *a5 = 0x80000001AEE35480;
  return result;
}

{
  result = MEMORY[0x1B2710020](a2, a3);
  *a4 = 0xD000000000000014;
  *a5 = 0x80000001AEE354A0;
  return result;
}

void *AttachmentLedger_SubscribeRequest.AttachmentAck.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return static AttachmentLedger_SubscribeRequest.AttachmentAck.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeRequest.AttachmentAck.decodeMessage<A>(decoder:)()
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
      dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t AttachmentLedger_SubscribeRequest.AttachmentAck.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeRequest.AttachmentAck@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeRequest.AttachmentAck(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.AttachmentAck and conformance AttachmentLedger_SubscribeRequest.AttachmentAck, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeRequest.AttachmentAck()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.AttachmentAck and conformance AttachmentLedger_SubscribeRequest.AttachmentAck, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeRequest.AttachmentAck(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.AttachmentAck and conformance AttachmentLedger_SubscribeRequest.AttachmentAck, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AttachmentLedger_SubscribeRequest.AttachmentAck(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  v6 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AttachmentLedger_SubscribeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v6;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v7 || (v16 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a6(v11, a1, a2, a3);
        break;
      case 2:
        a5(v11, a1, a2, a3);
        break;
      case 1:
        a4(v11, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
      v33 = v48;
    }

    else
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMR);
      v35 = v43;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v43, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMR);
  }

  else
  {
    v39 = v44;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v44, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #3 in AttachmentLedger_SubscribeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate and conformance AttachmentLedger_SubscribeResponse.TopicUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV11TopicUpdateVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t AttachmentLedger_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v16 - v10, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in AttachmentLedger_SubscribeResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in AttachmentLedger_SubscribeResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in AttachmentLedger_SubscribeResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  if (!v4)
  {
LABEL_8:
    v15 = v3 + *(type metadata accessor for AttachmentLedger_SubscribeResponse(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #3 in AttachmentLedger_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate and conformance AttachmentLedger_SubscribeResponse.TopicUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeRequest@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse and conformance AttachmentLedger_SubscribeResponse, type metadata accessor for AttachmentLedger_SubscribeResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse and conformance AttachmentLedger_SubscribeResponse, type metadata accessor for AttachmentLedger_SubscribeResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse and conformance AttachmentLedger_SubscribeResponse, type metadata accessor for AttachmentLedger_SubscribeResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.InitializeAck.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.InitializeAck.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)()
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
            type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
            lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
LABEL_19:
            v0 = v3;
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 5:
            v3 = v0;
            type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(0);
            lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot and conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);
            goto LABEL_19;
          case 6:
            closure #6 in AttachmentLedger_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 2:
            closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)();
            break;
          case 3:
            dispatch thunk of Decoder.decodeRepeatedFixed64Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0) + 36);
  type metadata accessor for AttachmentLedger_ErrorResponse(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #6 in AttachmentLedger_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0) + 40);
  type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v11 = *(v3 + 8), lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(*(v3 + 16) + 16))
      {
        dispatch thunk of Visitor.visitPackedFixed64Field(value:fieldNumber:)();
      }

      if (*(*(v3 + 24) + 16))
      {
        type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      if (*(*(v3 + 32) + 16))
      {
        type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(0);
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot and conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0) + 32);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 36), v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_ErrorResponse);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_ErrorResponse);
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 40), v8, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_AuthPutMaterials);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeResponse.InitializeAck@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = v4;
  *(a2 + 32) = v4;
  v5 = a2 + a1[8];
  UnknownStorage.init()();
  v6 = a1[9];
  v7 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[10];
  v9 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AttachmentLedger_MMCSMetadata@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AttachmentLedger_MMCSMetadata(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.InitializeAck()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.decodeMessage<A>(decoder:)()
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
      dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
    }

    else if (result == 2)
    {
      closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0) + 24);
  type metadata accessor for AttachmentLedger_EncryptionID(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 24), v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_EncryptionID);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_EncryptionID);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.decodeMessage<A>(decoder:)(a1, v5);
    }

    else if (result == 2)
    {
      closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.decodeMessage<A>(decoder:)(uint64_t a1, __int128 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v16 = xmmword_1AEE07B50;
  dispatch thunk of Decoder.decodeSingularBytesField(value:)();
  v8 = v16;
  if (v2 || *(&v16 + 1) >> 60 == 15)
  {
    return outlined consume of Data?(v16, *(&v16 + 1));
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  v15 = *(v9 - 8);
  v10 = *(v15 + 48);
  v17 = v9;
  v11 = v10(v7, 1);
  outlined copy of Data._Representation(v8, *(&v8 + 1));
  outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  if (v11 != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  outlined consume of Data?(v8, *(&v8 + 1));
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  *a2 = v8;
  v13 = v17;
  swift_storeEnumTagMultiPayload();
  return (*(v15 + 56))(a2, 0, 1, v13);
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v15 - v10, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.traverse<A>(visitor:)(v3, a1, a2, a3);
      result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
      result = closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.traverse<A>(visitor:)(v3);
      if (v4)
      {
        return result;
      }
    }
  }

  v14 = v3 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(0) + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v10 - v4);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v10 - v4, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v6 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of NSObject?(v5, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    v8 = *v5;
    v7 = v5[1];
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data._Representation(v8, v7);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot and conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot and conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot and conformance AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

void *AttachmentLedger_SubscribeResponse.TopicUpdate.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return static AttachmentLedger_SubscribeResponse.TopicUpdate.protoMessageName;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.TopicUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate and conformance AttachmentLedger_SubscribeResponse.TopicUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.TopicUpdate()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate and conformance AttachmentLedger_SubscribeResponse.TopicUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.TopicUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate and conformance AttachmentLedger_SubscribeResponse.TopicUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 4:
          closure #4 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 10:
          v11 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0) + 20);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
      }
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
      v33 = v48;
    }

    else
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMR);
      v35 = v43;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v43, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMR);
  }

  else
  {
    v39 = v44;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v44, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV7RemovedVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #4 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v6, &v19 - v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
LABEL_11:
    v17 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
    if (!*(v6 + *(v17 + 20)) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v5))
    {
      v18 = v6 + *(v17 + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }

    return result;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(v6, a1, a2, a3);
    }

    else
    {
      closure #4 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(v6, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  else
  {
    closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_11;
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t closure #4 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.protoMessageName;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
      v33 = v48;
    }

    else
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV3AckVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v15 - v10, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack.protoMessageName;
}

uint64_t AttachmentLedger_EncryptionID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2 || *(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
    if (v6 == v6 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v9 = a4;
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v5)
  {
    return result;
  }

  a4 = v9;
LABEL_11:
  v11 = v4 + *(a4(0) + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed.protoMessageName;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AEE07B20;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = a3;
  *v14 = a4;
  *(v14 + 8) = a5;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v16 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AttachmentLedger_EncryptionID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.protoMessageName;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
      v33 = v48;
    }

    else
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV4FullVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV3AckVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v15 - v10, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack.decodeMessage<A>(decoder:)()
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
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack.traverse<A>(visitor:)()
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
  if (!v0[2] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
  {
    v8 = v0 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  v6 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.decodeMessage<A>(decoder:)()
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
        closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.decodeMessage<A>(decoder:)();
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0) + 28);
  type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
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
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!v3[2] || (result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      v14 = v3 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 28), v8, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_AttachmentEncryption);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_AttachmentEncryption@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  *a3 = xmmword_1AEE0C200;
  *(a3 + 16) = 0;
  v6 = a3 + *(a1 + 24);
  UnknownStorage.init()();
  v7 = *(a1 + 28);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a3 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(v9, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
      v33 = v48;
    }

    else
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV4FullVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV3AckVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v15 - v10, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
        case 2:
          lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
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
  if (*(v0 + 16))
  {
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    if (!*(v0 + 32))
    {
      goto LABEL_16;
    }

LABEL_15:
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (*(v0 + 32))
  {
    goto LABEL_15;
  }

LABEL_16:
  v8 = v0 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0) + 28);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.protoMessageName;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.decodeMessage<A>(decoder:)();
          break;
        case 2:
          lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0) + 28);
  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
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
        goto LABEL_10;
      }

LABEL_9:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v3 + 16) || (v15 = *(v3 + 16), v16 = *(v3 + 24), lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      v14 = v3 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 28), v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v4 = a2 + *(a1 + 24);
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      closure #1 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  v6 = *(updated - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](updated);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = updated;
  v30 = updated;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
      v33 = v48;
    }

    else
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMR);
      v35 = v43;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v43, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMR);
  }

  else
  {
    v39 = v44;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v44, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C3AddVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}