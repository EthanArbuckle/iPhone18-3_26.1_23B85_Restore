uint64_t closure #2 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v16 = *(updated - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](updated);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMR);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, updated);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = updated;
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, v22, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, v20, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    v34 = updated;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0C6RemoveVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #3 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  v6 = *(updated - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](updated);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMR);
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
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0VSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #4 in AttachmentLedger_UpdateAttachmentRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  v6 = *(updated - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](updated);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMR);
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
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMR);
      v35 = v44;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v44, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v28, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v20, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v36, v43, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0VSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, v40, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v16 - v10, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(updated - 8) + 48))(v11, 1, updated) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      closure #3 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #4 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    closure #2 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  v10 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(updated - 8) + 48))(v8, 1, updated) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #3 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  v10 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #4 in AttachmentLedger_UpdateAttachmentRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  v10 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  }

  result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentRequest()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.protoMessageName;
}

uint64_t closure #2 in AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0) + 24);
  type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(updated + 24), v8, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_AttachmentMetadata);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove.protoMessageName;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.protoMessageName;
}

uint64_t closure #2 in AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0) + 24);
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 24), v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  if ((*(v10 + 48))(v8, 1, updated) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  v6 = &a3[*(a1 + 20)];
  UnknownStorage.init()();
  v7 = *(a1 + 24);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.protoMessageName;
}

uint64_t closure #2 in AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0) + 24);
  type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
LABEL_8:
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

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v8;
    v12 = v8 >> 32;
    goto LABEL_8;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = closure #1 in AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v14 = v3 + *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(updated + 24), v8, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_AttachmentEncryption);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  v4 = &a2[*(a1 + 20)];
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.protoMessageName;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
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
      a4(v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0) + 24);
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v12 = *v5;
  v13 = v5[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v6))
  {
    result = a4(v5, a1, a2, a3);
    if (!v6)
    {
      v16 = v5 + *(a5(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 24), v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  if ((*(v10 + 48))(v8, 1, updated) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.protoMessageName;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.decodeMessage<A>(decoder:)()
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

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 1:
LABEL_10:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.traverse<A>(visitor:)()
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
  v8 = v1;
  if (*(v0 + 16))
  {
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v8 = 0;
  }

  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_22;
    }

    v13 = *(v9 + 16);
    v14 = *(v9 + 24);
  }

  else
  {
    if (!v11)
    {
      v12 = v8;
      if ((v10 & 0xFF000000000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_21:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v12)
      {
        return result;
      }

      goto LABEL_22;
    }

    v13 = v9;
    v14 = v9 >> 32;
  }

  v12 = v8;
  if (v13 != v14)
  {
    goto LABEL_21;
  }

LABEL_22:
  v15 = v0 + *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0) + 28);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = xmmword_1AEE0C200;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_UpdateAttachmentResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        closure #2 in AttachmentLedger_UpdateAttachmentResponse.decodeMessage<A>(decoder:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_UpdateAttachmentResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0) + 24);
  type metadata accessor for AttachmentLedger_ErrorResponse(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_UpdateAttachmentResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v11 = *(v3 + 8), lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AttachmentLedger_UpdateAttachmentResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_UpdateAttachmentResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(updated + 24), v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_ErrorResponse);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_ErrorResponse);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_UpdateAttachmentResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + *(a1 + 20);
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_UpdateAttachmentResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentResponse and conformance AttachmentLedger_UpdateAttachmentResponse, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_UpdateAttachmentResponse()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentResponse and conformance AttachmentLedger_UpdateAttachmentResponse, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_UpdateAttachmentResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentResponse and conformance AttachmentLedger_UpdateAttachmentResponse, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_GetAuthTokenRequest.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
        }

        else if (result == 4)
        {
          closure #4 in AttachmentLedger_GetAuthTokenRequest.decodeMessage<A>(decoder:)();
        }
      }

      else if (result == 1)
      {
        lazy protocol witness table accessor for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #4 in AttachmentLedger_GetAuthTokenRequest.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0) + 32);
  type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TestOption and conformance AttachmentLedger_GetAuthTokenRequest.TestOption, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_GetAuthTokenRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v12 = *v3, v13 = *(v3 + 8), lazy protocol witness table accessor for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v9 = *(v3 + 24);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      if (!*(*(v3 + 32) + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v4))
      {
        result = closure #1 in AttachmentLedger_GetAuthTokenRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (!v4)
        {
          v11 = v3 + *(type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0) + 28);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_GetAuthTokenRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v10 = *(AuthToken - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AuthToken);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AuthTokenRequest = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AuthTokenRequest + 32), v8, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  if ((*(v10 + 48))(v8, 1, AuthToken) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TestOption and conformance AttachmentLedger_GetAuthTokenRequest.TestOption, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_GetAuthTokenRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  v4 = a2 + *(a1 + 28);
  UnknownStorage.init()();
  v5 = *(a1 + 32);
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v7 = *(*(AuthToken - 8) + 56);

  return v7(a2 + v5, 1, 1, AuthToken);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AttachmentLedger_ErrorResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AttachmentLedger_ErrorResponse(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_GetAuthTokenRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest and conformance AttachmentLedger_GetAuthTokenRequest, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_GetAuthTokenRequest()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest and conformance AttachmentLedger_GetAuthTokenRequest, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_GetAuthTokenRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest and conformance AttachmentLedger_GetAuthTokenRequest, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *AttachmentLedger_GetAuthTokenRequest.TestOption.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static AttachmentLedger_GetAuthTokenRequest.TestOption.protoMessageName;
}

uint64_t static AttachmentLedger_MMCSMetadata.BlobData.protoMessageName.getter(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t AttachmentLedger_SubscribeResponse.TopicUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v7 || (v13 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

    else if (result == 2)
    {
      a6(v6 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.TopicUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(void))
{
  if (!*v7 || (v16 = *v7, v17 = *(v7 + 8), a4(a1, a2), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v8))
  {
    v14 = v7[2];
    if (!v14 || (result = a6(v14, 2, a2, a3), !v8))
    {
      v15 = v7 + *(a7(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_SubscribeResponse.TopicUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for static Message.protoMessageName.getter in conformance AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_GetAuthTokenRequest.TestOption(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TestOption and conformance AttachmentLedger_GetAuthTokenRequest.TestOption, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_GetAuthTokenRequest.TestOption()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TestOption and conformance AttachmentLedger_GetAuthTokenRequest.TestOption, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_GetAuthTokenRequest.TestOption(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TestOption and conformance AttachmentLedger_GetAuthTokenRequest.TestOption, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_GetAuthTokenResponse.decodeMessage<A>(decoder:)()
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
          closure #3 in AttachmentLedger_GetAuthTokenResponse.decodeMessage<A>(decoder:)();
        }

        else if (result == 4)
        {
          type metadata accessor for AttachmentLedger_AttachmentAuthGetToken(0);
          lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentAuthGetToken and conformance AttachmentLedger_AttachmentAuthGetToken, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1)
      {
        lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        closure #2 in AttachmentLedger_GetAuthTokenResponse.decodeMessage<A>(decoder:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_GetAuthTokenResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) + 28);
  type metadata accessor for AttachmentLedger_ErrorResponse(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in AttachmentLedger_GetAuthTokenResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) + 32);
  type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_GetAuthTokenResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v11 = *(v3 + 8), lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AttachmentLedger_GetAuthTokenResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in AttachmentLedger_GetAuthTokenResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (*(*(v3 + 16) + 16))
      {
        type metadata accessor for AttachmentLedger_AttachmentAuthGetToken(0);
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentAuthGetToken and conformance AttachmentLedger_AttachmentAuthGetToken, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      v9 = v3 + *(type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_GetAuthTokenResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AuthTokenResponse + 28), v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_ErrorResponse);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_ErrorResponse);
}

uint64_t closure #2 in AttachmentLedger_GetAuthTokenResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AuthTokenResponse + 32), v8, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_AuthPutMaterials);
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_GetAuthTokenResponse@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  v4 = a2 + a1[6];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_GetAuthTokenResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenResponse and conformance AttachmentLedger_GetAuthTokenResponse, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_GetAuthTokenResponse()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenResponse and conformance AttachmentLedger_GetAuthTokenResponse, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_GetAuthTokenResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenResponse and conformance AttachmentLedger_GetAuthTokenResponse, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_CreateTopicRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      a4(v4 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
    v11 = v4[2];
    v12 = v4[3];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_14;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v5)
        {
          return result;
        }

        goto LABEL_14;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 != v15)
    {
      goto LABEL_13;
    }

LABEL_14:
    v16 = v4 + *(a4(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_1AEE0C200;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AttachmentLedger_MMCSMetadata.BlobData@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_GetAttachmentMetadataRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAttachmentMetadataRequest and conformance AttachmentLedger_GetAttachmentMetadataRequest, type metadata accessor for AttachmentLedger_GetAttachmentMetadataRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_GetAttachmentMetadataRequest()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAttachmentMetadataRequest and conformance AttachmentLedger_GetAttachmentMetadataRequest, type metadata accessor for AttachmentLedger_GetAttachmentMetadataRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_GetAttachmentMetadataRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAttachmentMetadataRequest and conformance AttachmentLedger_GetAttachmentMetadataRequest, type metadata accessor for AttachmentLedger_GetAttachmentMetadataRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t AttachmentLedger_ResponseStatus._protobuf_nameMap.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for _NameMap();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static AttachmentLedger_ResponseStatus._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t AttachmentLedger_CreateTopicResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v6)
  {
    while ((v14 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          a5(a1, v9, a2, a3);
          break;
        case 2:
          a4(a1, v9, a2, a3);
          break;
        case 1:
          lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in AttachmentLedger_GetAttachmentMetadataResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0) + 24);
  type metadata accessor for AttachmentLedger_ErrorResponse(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in AttachmentLedger_GetAttachmentMetadataResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0) + 28);
  type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AttachmentLedger_CreateTopicResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  if (!*v6 || (v16 = *v6, v17 = *(v6 + 8), lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v7))
  {
    result = a4(v6, a1, a2, a3);
    if (!v7)
    {
      a5(v6, a1, a2, a3);
      v15 = v6 + *(a6(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AttachmentLedger_GetAttachmentMetadataResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  AttachmentMetadataResponse = type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AttachmentMetadataResponse + 24), v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_ErrorResponse);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_ErrorResponse and conformance AttachmentLedger_ErrorResponse, type metadata accessor for AttachmentLedger_ErrorResponse);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_ErrorResponse);
}

uint64_t closure #2 in AttachmentLedger_GetAttachmentMetadataResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttachmentMetadataResponse = type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AttachmentMetadataResponse + 28), v8, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v13, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v13, type metadata accessor for AttachmentLedger_AttachmentMetadata);
}

Swift::Int AttachmentLedger_MMCSMetadata.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance AttachmentLedger_CreateTopicResponse@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 1;
  v6 = a3 + a1[5];
  UnknownStorage.init()();
  v7 = a1[6];
  v8 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = a1[7];
  v10 = a2(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a3 + v9, 1, 1, v10);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AttachmentLedger_EncryptionID@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AttachmentLedger_EncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedger_GetAttachmentMetadataResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAttachmentMetadataResponse and conformance AttachmentLedger_GetAttachmentMetadataResponse, type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance AttachmentLedger_ResponseStatus@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedger_GetAttachmentMetadataResponse()
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAttachmentMetadataResponse and conformance AttachmentLedger_GetAttachmentMetadataResponse, type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse);

  return Message.debugDescription.getter();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttachmentLedger_MMCSMetadata()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_GetAttachmentMetadataResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type AttachmentLedger_GetAttachmentMetadataResponse and conformance AttachmentLedger_GetAttachmentMetadataResponse, type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttachmentLedger_MMCSMetadata()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static AttachmentLedger_GetAuthTokenResponse.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = (&v51 - v10);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMR);
  v11 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v13 = &v51 - v12;
  v14 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = (&v51 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v51 - v25;
  v27 = *a1;
  v28 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v28 <= 3)
    {
      if (v28 > 1)
      {
        if (v28 == 2)
        {
          if (v27 != 2)
          {
            goto LABEL_38;
          }
        }

        else if (v27 != 3)
        {
          goto LABEL_38;
        }
      }

      else if (v28)
      {
        if (v27 != 1)
        {
          goto LABEL_38;
        }
      }

      else if (v27)
      {
        goto LABEL_38;
      }
    }

    else if (v28 <= 5)
    {
      if (v28 == 4)
      {
        if (v27 != 4)
        {
          goto LABEL_38;
        }
      }

      else if (v27 != 5)
      {
        goto LABEL_38;
      }
    }

    else if (v28 == 6)
    {
      if (v27 != 6)
      {
        goto LABEL_38;
      }
    }

    else if (v28 == 7)
    {
      if (v27 != 7)
      {
        goto LABEL_38;
      }
    }

    else if (v27 != 8)
    {
      goto LABEL_38;
    }
  }

  else if (v27 != v28)
  {
    goto LABEL_38;
  }

  v53 = v13;
  v51 = v7;
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  v29 = *(AuthTokenResponse + 28);
  v30 = *(v23 + 48);
  v54 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v29, v26, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v29, &v26[v30], &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v31 = *(v15 + 48);
  if (v31(v26, 1, v14) == 1)
  {
    if (v31(&v26[v30], 1, v14) == 1)
    {
      outlined destroy of NSObject?(v26, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v26, v22, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v31(&v26[v30], 1, v14) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_ErrorResponse);
LABEL_17:
    v39 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd;
    v40 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR;
LABEL_36:
    v43 = v26;
LABEL_37:
    outlined destroy of NSObject?(v43, v39, v40);
    goto LABEL_38;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v26[v30], v18, type metadata accessor for AttachmentLedger_ErrorResponse);
  if ((*v22 != *v18 || v22[1] != v18[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v22[2] != v18[2] || v22[3] != v18[3])
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_ErrorResponse);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_ErrorResponse);
    v39 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd;
    v40 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR;
    goto LABEL_36;
  }

  v41 = *(v14 + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of NSObject?(v26, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if ((v42 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_12:
  v33 = AuthTokenResponse;
  v32 = v53;
  v34 = *(AuthTokenResponse + 32);
  v35 = *(v56 + 48);
  v36 = v54;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v54 + v34, v53, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v34, v32 + v35, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v37 = v58;
  v38 = *(v57 + 48);
  if (v38(v32, 1, v58) != 1)
  {
    v46 = v55;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v32, v55, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
    if (v38(v32 + v35, 1, v37) != 1)
    {
      v47 = v32 + v35;
      v48 = v51;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v47, v51, type metadata accessor for AttachmentLedger_AuthPutMaterials);
      v49 = specialized static AttachmentLedger_AuthPutMaterials.== infix(_:_:)(v46, v48);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v48, type metadata accessor for AttachmentLedger_AuthPutMaterials);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v46, type metadata accessor for AttachmentLedger_AuthPutMaterials);
      outlined destroy of NSObject?(v32, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
      if ((v49 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_54;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v46, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    goto LABEL_42;
  }

  if (v38(v32 + v35, 1, v37) != 1)
  {
LABEL_42:
    v39 = &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMd;
    v40 = &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMR;
    v43 = v32;
    goto LABEL_37;
  }

  outlined destroy of NSObject?(v32, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
LABEL_54:
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore017AttachmentLedger_D12AuthGetTokenV_Tt1g5(v36[2], *(a2 + 16)))
  {
    v50 = *(v33 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v44 & 1;
  }

LABEL_38:
  v44 = 0;
  return v44 & 1;
}

uint64_t specialized static AttachmentLedger_GetAuthTokenRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v5 = *(AuthToken - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AuthToken);
  v8 = &AuthTokenRequest - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&AuthTokenRequest - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSg_AFtMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &AuthTokenRequest - v16;
  v18 = *a1;
  v19 = *a2;
  if (*(a1 + 8))
  {
    v18 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v19)
    {
      if (v18 != 1)
      {
        goto LABEL_20;
      }
    }

    else if (v18)
    {
      goto LABEL_20;
    }
  }

  else if (v18 != v19)
  {
    goto LABEL_20;
  }

  v20 = v15;
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(a1[4], a2[4]) & 1) == 0)
  {
    goto LABEL_20;
  }

  AuthTokenRequest = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  v21 = *(AuthTokenRequest + 32);
  v22 = *(v20 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v21, v17, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  v30 = v22;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v21, &v17[v22], &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  v23 = *(v5 + 48);
  if (v23(v17, 1, AuthToken) == 1)
  {
    if (v23(&v17[v30], 1, AuthToken) == 1)
    {
      outlined destroy of NSObject?(v17, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
LABEL_23:
      v28 = *(AuthTokenRequest + 28);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v25 & 1;
    }

    goto LABEL_19;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17, v12, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  v24 = v30;
  if (v23(&v17[v30], 1, AuthToken) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
LABEL_19:
    outlined destroy of NSObject?(v17, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSg_AFtMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSg_AFtMR);
    goto LABEL_20;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v17[v24], v8, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  v27 = specialized static AttachmentLedger_GetAuthTokenRequest.TestOption.== infix(_:_:)(v12, v8);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  if (v27)
  {
    goto LABEL_23;
  }

LABEL_20:
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static AttachmentLedger_GetAuthTokenRequest.TestOption.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (a1[2] == *(a2 + 16))
  {
    v4 = *(type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0) + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static AttachmentLedger_CreateTopicResponse.== infix(_:_:)(void *a1, uint64_t a2)
{
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v56 = *(Topic - 8);
  v57 = Topic;
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](Topic);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = (&v50 - v10);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSg_AFtMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSg_AFtMR);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v13 = &v50 - v12;
  v14 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = (&v50 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v50 - v25;
  v27 = *a1;
  v28 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v28 <= 3)
    {
      if (v28 > 1)
      {
        if (v28 == 2)
        {
          if (v27 != 2)
          {
            goto LABEL_38;
          }
        }

        else if (v27 != 3)
        {
          goto LABEL_38;
        }
      }

      else if (v28)
      {
        if (v27 != 1)
        {
          goto LABEL_38;
        }
      }

      else if (v27)
      {
        goto LABEL_38;
      }
    }

    else if (v28 <= 5)
    {
      if (v28 == 4)
      {
        if (v27 != 4)
        {
          goto LABEL_38;
        }
      }

      else if (v27 != 5)
      {
        goto LABEL_38;
      }
    }

    else if (v28 == 6)
    {
      if (v27 != 6)
      {
        goto LABEL_38;
      }
    }

    else if (v28 == 7)
    {
      if (v27 != 7)
      {
        goto LABEL_38;
      }
    }

    else if (v27 != 8)
    {
      goto LABEL_38;
    }
  }

  else if (v27 != v28)
  {
    goto LABEL_38;
  }

  v52 = v13;
  v50 = v7;
  TopicResponse = type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  v29 = *(TopicResponse + 24);
  v30 = *(v23 + 48);
  v53 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v29, v26, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v29, &v26[v30], &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v31 = *(v15 + 48);
  if (v31(v26, 1, v14) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v26, v22, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    if (v31(&v26[v30], 1, v14) != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v26[v30], v18, type metadata accessor for AttachmentLedger_ErrorResponse);
      if (*v22 == *v18 && v22[1] == v18[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v22[2] == v18[2] && v22[3] == v18[3])
      {
        v40 = *(v14 + 28);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_ErrorResponse);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_ErrorResponse);
        outlined destroy of NSObject?(v26, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
        if ((v41 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_12;
      }

      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_ErrorResponse);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_ErrorResponse);
      v38 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd;
      v39 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR;
LABEL_36:
      v42 = v26;
LABEL_37:
      outlined destroy of NSObject?(v42, v38, v39);
      goto LABEL_38;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_ErrorResponse);
LABEL_17:
    v38 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd;
    v39 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR;
    goto LABEL_36;
  }

  if (v31(&v26[v30], 1, v14) != 1)
  {
    goto LABEL_17;
  }

  outlined destroy of NSObject?(v26, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
LABEL_12:
  v33 = TopicResponse;
  v32 = v52;
  v34 = *(TopicResponse + 28);
  v35 = *(v55 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v53 + v34, v52, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v34, v32 + v35, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  v36 = v57;
  v37 = *(v56 + 48);
  if (v37(v32, 1, v57) == 1)
  {
    if (v37(v32 + v35, 1, v36) == 1)
    {
      outlined destroy of NSObject?(v32, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
LABEL_54:
      v49 = *(v33 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v43 & 1;
    }

    goto LABEL_42;
  }

  v45 = v54;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v32, v54, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  if (v37(v32 + v35, 1, v36) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v45, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
LABEL_42:
    v38 = &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSg_AFtMd;
    v39 = &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSg_AFtMR;
    v42 = v32;
    goto LABEL_37;
  }

  v46 = v32 + v35;
  v47 = v50;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v46, v50, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  v48 = specialized static AttachmentLedger_CreateTopicResponse.ClientTopicConfig.== infix(_:_:)(v45, v47);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v47, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v45, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  outlined destroy of NSObject?(v32, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  if (v48)
  {
    goto LABEL_54;
  }

LABEL_38:
  v43 = 0;
  return v43 & 1;
}

uint64_t specialized static AttachmentLedger_CreateTopicResponse.ClientTopicConfig.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    return 0;
  }

  v2 = *(type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0) + 36);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AttachmentLedger_CreateTopicRequest.== infix(_:_:)(void *a1, void *a2)
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

  v6 = *(type metadata accessor for AttachmentLedger_CreateTopicRequest(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v24 - v16, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v17[v18], &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for AttachmentLedger_SubscribeResponse(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
LABEL_6:
    outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v17[v18], v8, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  v21 = specialized static AttachmentLedger_SubscribeResponse.OneOf_Operation.== infix(_:_:)(v12, v8);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.OneOf_Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v41 = type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate(0);
  v3 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v40 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v40 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationO_AEtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationO_AEtMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v40 - v26;
  v28 = *(v25 + 56);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, &v40 - v26, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v43, &v27[v28], type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v27, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v27[v28], v12, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      v30 = specialized static AttachmentLedger_SubscribeResponse.InitializeAck.== infix(_:_:)(v22, v12);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      v31 = v22;
      v32 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck;
      goto LABEL_18;
    }

    v33 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck;
    v34 = v22;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v27, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v33 = type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate;
      v34 = v17;
      goto LABEL_16;
    }

    v35 = v42;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v27[v28], v42, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    v36 = *v17;
    v37 = *v35;
    if (v17[8])
    {
      v36 = *v17 != 0;
    }

    if (*(v35 + 8) == 1)
    {
      if (v37)
      {
        if (v36 != 1)
        {
          goto LABEL_25;
        }
      }

      else if (v36)
      {
LABEL_25:
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v35, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v27, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
        goto LABEL_26;
      }
    }

    else if (v36 != v37)
    {
      goto LABEL_25;
    }

    if (*(v17 + 2) == *(v35 + 16))
    {
      v38 = *(v41 + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v35, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v27, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
        v30 = 1;
        return v30 & 1;
      }
    }

    goto LABEL_25;
  }

  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v27, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v33 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate;
    v34 = v20;
LABEL_16:
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v34, v33);
    outlined destroy of NSObject?(v27, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationO_AEtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationO_AEtMR);
LABEL_26:
    v30 = 0;
    return v30 & 1;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v27[v28], v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  v30 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.== infix(_:_:)(v20, v8);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  v31 = v20;
  v32 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate;
LABEL_18:
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v31, v32);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v27, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  return v30 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.InitializeAck.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = (&v51 - v10);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMR);
  v11 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v13 = &v51 - v12;
  v14 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = (&v51 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v51 - v25;
  v27 = *a1;
  v28 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v28 <= 3)
    {
      if (v28 > 1)
      {
        if (v28 == 2)
        {
          if (v27 != 2)
          {
            goto LABEL_41;
          }
        }

        else if (v27 != 3)
        {
          goto LABEL_41;
        }
      }

      else if (v28)
      {
        if (v27 != 1)
        {
          goto LABEL_41;
        }
      }

      else if (v27)
      {
        goto LABEL_41;
      }
    }

    else if (v28 <= 5)
    {
      if (v28 == 4)
      {
        if (v27 != 4)
        {
          goto LABEL_41;
        }
      }

      else if (v27 != 5)
      {
        goto LABEL_41;
      }
    }

    else if (v28 == 6)
    {
      if (v27 != 6)
      {
        goto LABEL_41;
      }
    }

    else if (v28 == 7)
    {
      if (v27 != 7)
      {
        goto LABEL_41;
      }
    }

    else if (v27 != 8)
    {
      goto LABEL_41;
    }
  }

  else if (v27 != v28)
  {
    goto LABEL_41;
  }

  v53 = v13;
  v51 = v7;
  v52 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v29 = *(v52 + 36);
  v30 = *(v23 + 48);
  v54 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v29, v26, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v29, &v26[v30], &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v31 = *(v15 + 48);
  if (v31(v26, 1, v14) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v26, v22, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    if (v31(&v26[v30], 1, v14) != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v26[v30], v18, type metadata accessor for AttachmentLedger_ErrorResponse);
      if (*v22 == *v18 && v22[1] == v18[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v22[2] == v18[2] && v22[3] == v18[3])
      {
        v41 = *(v14 + 28);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_ErrorResponse);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_ErrorResponse);
        outlined destroy of NSObject?(v26, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
        if ((v42 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_12;
      }

      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_ErrorResponse);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_ErrorResponse);
      v39 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd;
      v40 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR;
LABEL_39:
      v43 = v26;
LABEL_40:
      outlined destroy of NSObject?(v43, v39, v40);
      goto LABEL_41;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_ErrorResponse);
LABEL_20:
    v39 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd;
    v40 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR;
    goto LABEL_39;
  }

  if (v31(&v26[v30], 1, v14) != 1)
  {
    goto LABEL_20;
  }

  outlined destroy of NSObject?(v26, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
LABEL_12:
  v32 = v54;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v54[2], *(a2 + 16)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV19MissingEncryptionIDV_Tt1g5(v32[3], *(a2 + 24)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0D8SnapshotV_Tt1g5(v32[4], *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_41;
  }

  v34 = v52;
  v33 = v53;
  v35 = *(v52 + 40);
  v36 = *(v56 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v32 + v35, v53, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v35, v33 + v36, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v37 = v58;
  v38 = *(v57 + 48);
  if (v38(v33, 1, v58) == 1)
  {
    if (v38(v33 + v36, 1, v37) == 1)
    {
      outlined destroy of NSObject?(v33, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
LABEL_57:
      v50 = *(v34 + 32);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v44 & 1;
    }

    goto LABEL_55;
  }

  v46 = v55;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v33, v55, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  if (v38(v33 + v36, 1, v37) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v46, type metadata accessor for AttachmentLedger_AuthPutMaterials);
LABEL_55:
    v39 = &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMd;
    v40 = &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSg_ADtMR;
    v43 = v33;
    goto LABEL_40;
  }

  v47 = v33 + v36;
  v48 = v51;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v47, v51, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  v49 = specialized static AttachmentLedger_AuthPutMaterials.== infix(_:_:)(v46, v48);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v48, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v46, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  outlined destroy of NSObject?(v33, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  if (v49)
  {
    goto LABEL_57;
  }

LABEL_41:
  v44 = 0;
  return v44 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_10;
  }

  v27 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v28 = a2;
  v17 = *(v27 + 24);
  v18 = *(v13 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v17, v16, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28 + v17, &v16[v18], &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v12, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v16[v18], v8, type metadata accessor for AttachmentLedger_EncryptionID);
      if (specialized static Data.== infix(_:_:)(*v12, *(v12 + 1), *v8, *(v8 + 1)))
      {
        v25 = *(v4 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of NSObject?(v16, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
        if (v26)
        {
          goto LABEL_5;
        }

LABEL_10:
        v21 = 0;
        return v21 & 1;
      }

      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_EncryptionID);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_EncryptionID);
      v22 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd;
      v23 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR;
LABEL_9:
      outlined destroy of NSObject?(v16, v22, v23);
      goto LABEL_10;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_EncryptionID);
LABEL_8:
    v22 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd;
    v23 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR;
    goto LABEL_9;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of NSObject?(v16, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
LABEL_5:
  v20 = *(v27 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSg_AJtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v24 - v16, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v17[v18], &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
LABEL_6:
    outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSg_AJtMR);
    goto LABEL_7;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v17[v18], v8, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  v21 = specialized static AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content.== infix(_:_:)(v12, v8);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v27 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentO_AItMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v27 - v18;
  v20 = (&v27 + *(v17 + 56) - v18);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, &v27 - v18, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a2, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v19, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, v7, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v21 = specialized static AttachmentLedger_AttachmentMetadata.== infix(_:_:)(v12, v7);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_AttachmentMetadata);
LABEL_9:
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v19, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
      return v21 & 1;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  else
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v19, v14, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
    v22 = *v14;
    v23 = v14[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = *v20;
      v25 = v20[1];
      v21 = specialized static Data.== infix(_:_:)(v22, v23, v24, v25);
      outlined consume of Data._Representation(v24, v25);
      outlined consume of Data._Representation(v22, v23);
      goto LABEL_9;
    }

    outlined consume of Data._Representation(v22, v23);
  }

  outlined destroy of NSObject?(v19, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentO_AItMR);
  v21 = 0;
  return v21 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.TopicUpdate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    v4 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate(0) + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSg_AHtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSg_AHtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v25 - v16, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v17[v18], &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
LABEL_6:
    outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSg_AHtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSg_AHtMR);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v17[v18], v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  v20 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event.== infix(_:_:)(v12, v8);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  if ((v20 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v21 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  if (*(a1 + *(v21 + 20)) != *(a2 + *(v21 + 20)))
  {
    goto LABEL_10;
  }

  v22 = *(v21 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSg_AJtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v24 - v16, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v17[v18], &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
LABEL_6:
    outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSg_AJtMR);
    goto LABEL_7;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v17[v18], v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  v21 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type.== infix(_:_:)(v12, v8);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  if ((specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) & 1) == 0 || a1[2] != a2[2])
  {
    goto LABEL_9;
  }

  v27 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  v17 = *(v27 + 28);
  v18 = *(v13 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v17, v16, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v19 = a2 + v17;
  v20 = v18;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v19, &v16[v18], &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v16, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
LABEL_12:
      v25 = *(v27 + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_8;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v12, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_AttachmentEncryption);
LABEL_8:
    outlined destroy of NSObject?(v16, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMR);
    goto LABEL_9;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v16[v20], v8, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v24 = specialized static AttachmentLedger_AttachmentEncryption.== infix(_:_:)(v12, v8);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  outlined destroy of NSObject?(v16, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  if (v24)
  {
    goto LABEL_12;
  }

LABEL_9:
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v29 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeO_AItMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v29 - v21;
  v23 = *(v20 + 56);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, &v29 - v21, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a2, &v22[v23], type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v22, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v22[v23], v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
      v25 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.== infix(_:_:)(v17, v10);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
      return v25 & 1;
    }

    v26 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full;
    v27 = v17;
    goto LABEL_10;
  }

  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v22, v15, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack;
    v27 = v15;
LABEL_10:
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v27, v26);
    outlined destroy of NSObject?(v22, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeO_AItMR);
LABEL_13:
    v25 = 0;
    return v25 & 1;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v22[v23], v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  if ((specialized static Data.== infix(_:_:)(*v15, v15[1], *v6, v6[1]) & 1) == 0 || v15[2] != v6[2] || (v24 = *(v30 + 24), type metadata accessor for UnknownStorage(), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v15, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    goto LABEL_13;
  }

  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v15, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  v25 = 1;
  return v25 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSg_AJtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v24 - v16, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v17[v18], &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
LABEL_6:
    outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSg_AJtMR);
    goto LABEL_7;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v17[v18], v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  v21 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content.== infix(_:_:)(v12, v8);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (a1[4] == *(a2 + 32))
  {
    v6 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0) + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v31 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  if ((specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_28;
  }

  v17 = a1[2];
  v18 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        if (v17 != 2)
        {
          goto LABEL_28;
        }
      }

      else if (v17 != 3)
      {
        goto LABEL_28;
      }
    }

    else if (v18)
    {
      if (v17 != 1)
      {
        goto LABEL_28;
      }
    }

    else if (v17)
    {
      goto LABEL_28;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_28;
  }

  v31 = v8;
  v32 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  v19 = *(v32 + 28);
  v20 = *(v13 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v19, v16, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v19, &v16[v20], &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v12, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    if (v21(&v16[v20], 1, v4) == 1)
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      goto LABEL_17;
    }

    v26 = &v16[v20];
    v27 = v31;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v26, v31, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    if (*v12 != *v27 || (specialized static Data.== infix(_:_:)(v12[1], v12[2], v27[1], v27[2]) & 1) == 0)
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v27, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      v24 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd;
      v25 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR;
      goto LABEL_27;
    }

    v28 = *(v4 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v27, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    outlined destroy of NSObject?(v16, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    if (v29)
    {
      goto LABEL_11;
    }

LABEL_28:
    v23 = 0;
    return v23 & 1;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
LABEL_17:
    v24 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMd;
    v25 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMR;
LABEL_27:
    outlined destroy of NSObject?(v16, v24, v25);
    goto LABEL_28;
  }

  outlined destroy of NSObject?(v16, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
LABEL_11:
  v22 = *(v32 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v31 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentO_AItMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, &v31 - v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a2, &v23[v24], type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v23, v16, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v23[v24], v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      v25 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.== infix(_:_:)(v16, v7);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      v26 = v16;
      v27 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack;
LABEL_9:
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v26, v27);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v23, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
      return v25 & 1;
    }

    v28 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack;
    v29 = v16;
  }

  else
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v23, v18, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v23[v24], v11, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
      v25 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.== infix(_:_:)(v18, v11);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
      v26 = v18;
      v27 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full;
      goto LABEL_9;
    }

    v28 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full;
    v29 = v18;
  }

  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v29, v28);
  outlined destroy of NSObject?(v23, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentO_AItMR);
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v29 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentO_AItMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v29 - v21;
  v23 = *(v20 + 56);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, &v29 - v21, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a2, &v22[v23], type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v22, v17, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v22[v23], v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v25 = specialized static AttachmentLedger_AttachmentMetadata.== infix(_:_:)(v17, v10);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v17, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
      return v25 & 1;
    }

    v26 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
    v27 = v17;
    goto LABEL_9;
  }

  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v22, v15, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack;
    v27 = v15;
LABEL_9:
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v27, v26);
    outlined destroy of NSObject?(v22, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentO_AItMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentO_AItMR);
LABEL_12:
    v25 = 0;
    return v25 & 1;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v22[v23], v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  if ((specialized static Data.== infix(_:_:)(*v15, *(v15 + 1), *v6, *(v6 + 1)) & 1) == 0 || (v24 = *(v30 + 20), type metadata accessor for UnknownStorage(), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v15, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    goto LABEL_12;
  }

  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v15, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  v25 = 1;
  return v25 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSg_AJtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v24 - v16, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v17[v18], &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17, v12, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
LABEL_6:
    outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSg_AJtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSg_AJtMR);
    goto LABEL_7;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v17[v18], v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  v21 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content.== infix(_:_:)(v12, v8);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v2 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0);
  v9 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v45 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v45 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v45 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventO_AGtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventO_AGtMR);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v45 - v31;
  v33 = *(v30 + 56);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v49, &v45 - v31, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v50, &v32[v33], type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v32, v22, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v35 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated;
        v36 = v22;
        goto LABEL_17;
      }

      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v32[v33], v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
      v37 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.== infix(_:_:)(v22, v8);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
      v38 = v22;
      v39 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated;
LABEL_21:
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v38, v39);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v32, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
      return v37 & 1;
    }

    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v32, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v35 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged;
      v36 = v19;
      goto LABEL_17;
    }

    v42 = v47;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v32[v33], v47, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    v37 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.== infix(_:_:)(v19, v42);
    v43 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged;
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v42, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    v38 = v19;
LABEL_20:
    v39 = v43;
    goto LABEL_21;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v32, v27, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    if (swift_getEnumCaseMultiPayload())
    {
      v35 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added;
      v36 = v27;
LABEL_17:
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v36, v35);
      outlined destroy of NSObject?(v32, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventO_AGtMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventO_AGtMR);
LABEL_18:
      v37 = 0;
      return v37 & 1;
    }

    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v32[v33], v14, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    v37 = specialized static AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.== infix(_:_:)(v27, v14);
    v43 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added;
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v14, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    v38 = v27;
    goto LABEL_20;
  }

  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v32, v25, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v35 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed;
    v36 = v25;
    goto LABEL_17;
  }

  v40 = v48;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v32[v33], v48, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  if ((specialized static Data.== infix(_:_:)(*v25, *(v25 + 1), *v40, *(v40 + 8)) & 1) == 0 || (v41 = *(v46 + 20), type metadata accessor for UnknownStorage(), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v25, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v32, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    goto LABEL_18;
  }

  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v40, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v25, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v32, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  v37 = 1;
  return v37 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v24 - v16, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v17[v18], &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v17, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for AttachmentLedger_SubscribeRequest(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17, v12, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
LABEL_6:
    outlined destroy of NSObject?(v17, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v17[v18], v8, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  v21 = specialized static AttachmentLedger_SubscribeRequest.OneOf_Operation.== infix(_:_:)(v12, v8);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeRequest.OneOf_Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
  v4 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v6 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v44 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationO_AEtMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v44 - v25;
  v27 = *(v24 + 56);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, &v44 - v25, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a2, &v26[v27], type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v26, v21, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v26[v27], v11, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
      v40 = specialized static AttachmentLedger_SubscribeRequest.Initialize.== infix(_:_:)(v21, v11);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v21, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v26, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
      return v40 & 1;
    }

    v35 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize;
    v36 = v21;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v26, v16, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v37 = &v26[v27];
      v38 = v47;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v37, v47, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*v16, *v38) & 1) != 0 && v16[1] == v38[1])
      {
        v39 = *(v44 + 24);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v38, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
          v34 = v16;
          v33 = type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck;
          goto LABEL_14;
        }
      }

      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v38, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
      v41 = v16;
      v42 = type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck;
      goto LABEL_22;
    }

    v35 = type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck;
    v36 = v16;
LABEL_17:
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v36, v35);
    outlined destroy of NSObject?(v26, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationO_AEtMR);
LABEL_23:
    v40 = 0;
    return v40 & 1;
  }

  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v26, v19, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v35 = type metadata accessor for AttachmentLedger_EncryptionID;
    v36 = v19;
    goto LABEL_17;
  }

  v29 = &v26[v27];
  v30 = v46;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v29, v46, type metadata accessor for AttachmentLedger_EncryptionID);
  if ((specialized static Data.== infix(_:_:)(*v19, *(v19 + 1), *v30, *(v30 + 8)) & 1) == 0)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v30, type metadata accessor for AttachmentLedger_EncryptionID);
    goto LABEL_21;
  }

  v31 = *(v45 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v30, type metadata accessor for AttachmentLedger_EncryptionID);
  if ((v32 & 1) == 0)
  {
LABEL_21:
    v42 = type metadata accessor for AttachmentLedger_EncryptionID;
    v41 = v19;
LABEL_22:
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v41, v42);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v26, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    goto LABEL_23;
  }

  v33 = type metadata accessor for AttachmentLedger_EncryptionID;
  v34 = v19;
LABEL_14:
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v34, v33);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v26, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  v40 = 1;
  return v40 & 1;
}

uint64_t specialized static AttachmentLedger_SubscribeRequest.Initialize.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  v18 = *(v17 + 40);
  v19 = a1;
  v20 = *(v13 + 48);
  v32 = v17;
  v33 = v19;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v19 + v18, v16, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v21 = a2 + v18;
  v22 = a2;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v21, &v16[v20], &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v12, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    if (v23(&v16[v20], 1, v4) != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v16[v20], v8, type metadata accessor for AttachmentLedger_EncryptionID);
      if (specialized static Data.== infix(_:_:)(*v12, *(v12 + 1), *v8, *(v8 + 1)))
      {
        v30 = *(v4 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v22 = a2;
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of NSObject?(v16, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
        if (v31)
        {
          goto LABEL_7;
        }

LABEL_16:
        v26 = 0;
        return v26 & 1;
      }

      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_EncryptionID);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_EncryptionID);
      v27 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd;
      v28 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR;
LABEL_15:
      outlined destroy of NSObject?(v16, v27, v28);
      goto LABEL_16;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_EncryptionID);
LABEL_14:
    v27 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd;
    v28 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR;
    goto LABEL_15;
  }

  if (v23(&v16[v20], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  outlined destroy of NSObject?(v16, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
LABEL_7:
  v24 = v33;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore29AttachmentLedger_EncryptionIDV_Tt1g5(v33[2], v22[2]) & 1) == 0 || v24[3] != v22[3] || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore017AttachmentLedger_D8MetadataV_Tt1g5(v24[4], v22[4]) & 1) == 0 || v24[5] != v22[5])
  {
    goto LABEL_16;
  }

  v25 = *(v32 + 36);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v26 & 1;
}

uint64_t specialized static AttachmentLedger_AuthPutMaterials.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] != a2[6])
  {
    return 0;
  }

  v6 = *(type metadata accessor for AttachmentLedger_AuthPutMaterials(0) + 32);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AttachmentLedger_MMCSMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v44 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v46 = (&v44 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v44 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v48 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v44 - v20;
  v51 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v22 = v51[9];
  v47 = v16;
  v23 = *(v16 + 48);
  v49 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v22, v21, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v50 = a2;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v22, &v21[v23], &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v24 = *(v5 + 48);
  if (v24(v21, 1, v4) == 1)
  {
    if (v24(&v21[v23], 1, v4) == 1)
    {
      v25 = v4;
      outlined destroy of NSObject?(v21, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v21, v15, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  if (v24(&v21[v23], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v15, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
LABEL_18:
    v33 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMd;
    v34 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMR;
LABEL_24:
    v38 = v21;
    goto LABEL_25;
  }

  v35 = &v21[v23];
  v36 = v46;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, v46, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  if (*v15 != *v36 || (specialized static Data.== infix(_:_:)(v15[1], v15[2], v36[1], v36[2]) & 1) == 0)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v36, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v15, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    v33 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd;
    v34 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR;
    goto LABEL_24;
  }

  v25 = v4;
  v37 = *(v4 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  LOBYTE(v37) = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v36, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v15, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  outlined destroy of NSObject?(v21, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  if ((v37 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_4:
  v26 = v51[10];
  v27 = v48;
  v28 = *(v47 + 48);
  v29 = v49;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v49 + v26, v48, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v30 = v50;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v50 + v26, v27 + v28, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  if (v24(v27, 1, v25) != 1)
  {
    v40 = v45;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v27, v45, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    if (v24((v27 + v28), 1, v25) == 1)
    {
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v40, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      goto LABEL_30;
    }

    v41 = v27 + v28;
    v42 = v44;
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v41, v44, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    if (*v40 == *v42 && (specialized static Data.== infix(_:_:)(v40[1], v40[2], v42[1], v42[2]) & 1) != 0)
    {
      v43 = *(v25 + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      LOBYTE(v43) = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v42, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v40, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      outlined destroy of NSObject?(v27, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
      if (v43)
      {
        goto LABEL_7;
      }

LABEL_26:
      v32 = 0;
      return v32 & 1;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v42, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v40, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    v33 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd;
    v34 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR;
    v38 = v27;
LABEL_25:
    outlined destroy of NSObject?(v38, v33, v34);
    goto LABEL_26;
  }

  if (v24((v27 + v28), 1, v25) != 1)
  {
LABEL_30:
    v33 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMd;
    v34 = &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSg_AFtMR;
    v38 = v27;
    goto LABEL_25;
  }

  outlined destroy of NSObject?(v27, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
LABEL_7:
  if ((*v29 != *v30 || v29[1] != v30[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v29[2] != v30[2] || v29[3] != v30[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (specialized static Data.== infix(_:_:)(v29[4], v29[5], v30[4], v30[5]) & 1) == 0 || (specialized static Data.== infix(_:_:)(v29[6], v29[7], v30[6], v30[7]) & 1) == 0)
  {
    goto LABEL_26;
  }

  v31 = v51[8];
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v32 & 1;
}

uint64_t specialized static AttachmentLedger_ErrorResponse.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  v5 = *(type metadata accessor for AttachmentLedger_ErrorResponse(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentResponse.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (v28 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v18 <= 3)
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          if (v17 != 2)
          {
            goto LABEL_15;
          }
        }

        else if (v17 != 3)
        {
          goto LABEL_15;
        }
      }

      else if (v18)
      {
        if (v17 != 1)
        {
          goto LABEL_15;
        }
      }

      else if (v17)
      {
        goto LABEL_15;
      }
    }

    else if (v18 <= 5)
    {
      if (v18 == 4)
      {
        if (v17 != 4)
        {
          goto LABEL_15;
        }
      }

      else if (v17 != 5)
      {
        goto LABEL_15;
      }
    }

    else if (v18 == 6)
    {
      if (v17 != 6)
      {
        goto LABEL_15;
      }
    }

    else if (v18 == 7)
    {
      if (v17 != 7)
      {
        goto LABEL_15;
      }
    }

    else if (v17 != 8)
    {
      goto LABEL_15;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_15;
  }

  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  v20 = a1;
  v28[0] = updated;
  v28[1] = a1;
  v21 = *(updated + 24);
  v22 = *(v13 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v20 + v21, v16, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v21, &v16[v22], &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v16, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
LABEL_22:
      v27 = *(v28[0] + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v24 & 1;
    }

    goto LABEL_14;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v12, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_ErrorResponse);
LABEL_14:
    outlined destroy of NSObject?(v16, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v16[v22], v8, type metadata accessor for AttachmentLedger_ErrorResponse);
  v26 = specialized static AttachmentLedger_ErrorResponse.== infix(_:_:)(v12, v8);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of NSObject?(v16, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v26)
  {
    goto LABEL_22;
  }

LABEL_15:
  v24 = 0;
  return v24 & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v5 = *(updated - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v24 - v16, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v17[v18], &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, updated) == 1)
  {
    if (v19(&v17[v18], 1, updated) == 1)
    {
      outlined destroy of NSObject?(v17, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17, v12, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  if (v19(&v17[v18], 1, updated) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
LABEL_6:
    outlined destroy of NSObject?(v17, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v17[v18], v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  v21 = specialized static AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation.== infix(_:_:)(v12, v8);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  v3 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v47 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(0);
  v9 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v48 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v45 - v21);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = (&v45 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v45 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationO_AEtMR);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v45 - v31;
  v33 = *(v30 + 56);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v49, &v45 - v31, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v50, &v32[v33], type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v32, v19, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v35 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate;
        v36 = v19;
        goto LABEL_20;
      }

      v42 = v47;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v32[v33], v47, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
      v37 = specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.== infix(_:_:)(v19, v42);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v42, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
      v39 = v19;
      v43 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate;
LABEL_25:
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v39, v43);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v32, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
      return v37 & 1;
    }

    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v32, v22, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v35 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate;
      v36 = v22;
      goto LABEL_20;
    }

    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v32[v33], v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    v37 = specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.== infix(_:_:)(v22, v8);
    v38 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate;
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    v39 = v22;
LABEL_24:
    v43 = v38;
    goto LABEL_25;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v32, v27, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload())
    {
      v35 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd;
      v36 = v27;
LABEL_20:
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v36, v35);
      outlined destroy of NSObject?(v32, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationO_AEtMR);
LABEL_21:
      v37 = 0;
      return v37 & 1;
    }

    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v32[v33], v14, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    v37 = specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.== infix(_:_:)(v27, v14);
    v38 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd;
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v14, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    v39 = v27;
    goto LABEL_24;
  }

  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(v32, v25, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v35 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove;
    v36 = v25;
    goto LABEL_20;
  }

  v40 = v48;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v32[v33], v48, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  if ((*v25 != *v40 || v25[1] != v40[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (specialized static Data.== infix(_:_:)(v25[2], v25[3], v40[2], v40[3]) & 1) == 0 || (v41 = *(v46 + 24), type metadata accessor for UnknownStorage(), lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v40, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v25, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v32, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    goto LABEL_21;
  }

  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v40, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v25, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v32, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  v37 = 1;
  return v37 & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.== infix(_:_:)(void *a1, void *a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v5 = *(updated - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSg_AHtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSg_AHtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v17, v16, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v17, &v16[v18], &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, updated) == 1)
  {
    if (v19(&v16[v18], 1, updated) == 1)
    {
      outlined destroy of NSObject?(v16, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
LABEL_12:
      v23 = *(v26 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v12, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  if (v19(&v16[v18], 1, updated) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
LABEL_9:
    outlined destroy of NSObject?(v16, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSg_AHtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSg_AHtMR);
    goto LABEL_10;
  }

  v21 = v25;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v16[v18], v25, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  v22 = specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.== infix(_:_:)(v12, v21);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v21, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  outlined destroy of NSObject?(v16, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (specialized static Data.== infix(_:_:)(a1[4], a1[5], *(a2 + 32), *(a2 + 40)))
  {
    v6 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0) + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.== infix(_:_:)(void *a1, void *a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v5 = *(updated - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSg_AHtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSg_AHtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v17, v16, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v17, &v16[v18], &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, updated) == 1)
  {
    if (v19(&v16[v18], 1, updated) == 1)
    {
      outlined destroy of NSObject?(v16, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
LABEL_12:
      v23 = *(v26 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v12, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  if (v19(&v16[v18], 1, updated) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
LABEL_9:
    outlined destroy of NSObject?(v16, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSg_AHtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSg_AHtMR);
    goto LABEL_10;
  }

  v21 = v25;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v16[v18], v25, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  v22 = specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.== infix(_:_:)(v12, v21);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v21, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  outlined destroy of NSObject?(v16, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v25 = v8;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v17 = *(updated + 24);
  v18 = *(v13 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v17, v16, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v17, &v16[v18], &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v16, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
LABEL_11:
      v24 = *(updated + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v12, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_AttachmentEncryption);
LABEL_7:
    outlined destroy of NSObject?(v16, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSg_ADtMR);
    goto LABEL_8;
  }

  v22 = v25;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v16[v18], v25, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v23 = specialized static AttachmentLedger_AttachmentEncryption.== infix(_:_:)(v12, v22);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  outlined destroy of NSObject?(v16, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  v17 = *(updated + 24);
  v18 = *(v13 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v17, v16, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v17, &v16[v18], &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v16, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
LABEL_12:
      v23 = *(updated + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v12, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_AttachmentMetadata);
LABEL_9:
    outlined destroy of NSObject?(v16, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMR);
    goto LABEL_10;
  }

  v21 = v25;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v16[v18], v25, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v22 = specialized static AttachmentLedger_AttachmentMetadata.== infix(_:_:)(v12, v21);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v21, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  outlined destroy of NSObject?(v16, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AttachmentLedger_GetAttachmentMetadataResponse.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = (&v50 - v10);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMR);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v13 = &v50 - v12;
  v14 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = (&v50 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v50 - v25;
  v27 = *a1;
  v28 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v28 <= 3)
    {
      if (v28 > 1)
      {
        if (v28 == 2)
        {
          if (v27 != 2)
          {
            goto LABEL_38;
          }
        }

        else if (v27 != 3)
        {
          goto LABEL_38;
        }
      }

      else if (v28)
      {
        if (v27 != 1)
        {
          goto LABEL_38;
        }
      }

      else if (v27)
      {
        goto LABEL_38;
      }
    }

    else if (v28 <= 5)
    {
      if (v28 == 4)
      {
        if (v27 != 4)
        {
          goto LABEL_38;
        }
      }

      else if (v27 != 5)
      {
        goto LABEL_38;
      }
    }

    else if (v28 == 6)
    {
      if (v27 != 6)
      {
        goto LABEL_38;
      }
    }

    else if (v28 == 7)
    {
      if (v27 != 7)
      {
        goto LABEL_38;
      }
    }

    else if (v27 != 8)
    {
      goto LABEL_38;
    }
  }

  else if (v27 != v28)
  {
    goto LABEL_38;
  }

  v52 = v13;
  v50 = v7;
  AttachmentMetadataResponse = type metadata accessor for AttachmentLedger_GetAttachmentMetadataResponse(0);
  v29 = *(AttachmentMetadataResponse + 24);
  v30 = *(v23 + 48);
  v53 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v29, v26, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v29, &v26[v30], &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v31 = *(v15 + 48);
  if (v31(v26, 1, v14) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v26, v22, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    if (v31(&v26[v30], 1, v14) != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v26[v30], v18, type metadata accessor for AttachmentLedger_ErrorResponse);
      if (*v22 == *v18 && v22[1] == v18[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v22[2] == v18[2] && v22[3] == v18[3])
      {
        v40 = *(v14 + 28);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_ErrorResponse);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_ErrorResponse);
        outlined destroy of NSObject?(v26, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
        if ((v41 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_12;
      }

      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v18, type metadata accessor for AttachmentLedger_ErrorResponse);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_ErrorResponse);
      v38 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd;
      v39 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR;
LABEL_36:
      v42 = v26;
LABEL_37:
      outlined destroy of NSObject?(v42, v38, v39);
      goto LABEL_38;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v22, type metadata accessor for AttachmentLedger_ErrorResponse);
LABEL_17:
    v38 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMd;
    v39 = &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSg_ADtMR;
    goto LABEL_36;
  }

  if (v31(&v26[v30], 1, v14) != 1)
  {
    goto LABEL_17;
  }

  outlined destroy of NSObject?(v26, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
LABEL_12:
  v33 = AttachmentMetadataResponse;
  v32 = v52;
  v34 = *(AttachmentMetadataResponse + 28);
  v35 = *(v55 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v53 + v34, v52, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v34, v32 + v35, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v36 = v57;
  v37 = *(v56 + 48);
  if (v37(v32, 1, v57) == 1)
  {
    if (v37(v32 + v35, 1, v36) == 1)
    {
      outlined destroy of NSObject?(v32, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
LABEL_54:
      v49 = *(v33 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v43 & 1;
    }

    goto LABEL_42;
  }

  v45 = v54;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v32, v54, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if (v37(v32 + v35, 1, v36) == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v45, type metadata accessor for AttachmentLedger_AttachmentMetadata);
LABEL_42:
    v38 = &_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMd;
    v39 = &_s14CopresenceCore017AttachmentLedger_C8MetadataVSg_ADtMR;
    v42 = v32;
    goto LABEL_37;
  }

  v46 = v32 + v35;
  v47 = v50;
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v46, v50, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v48 = specialized static AttachmentLedger_AttachmentMetadata.== infix(_:_:)(v45, v47);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v47, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v45, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  outlined destroy of NSObject?(v32, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  if (v48)
  {
    goto LABEL_54;
  }

LABEL_38:
  v43 = 0;
  return v43 & 1;
}

uint64_t specialized static AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (specialized static Data.== infix(_:_:)(a1[2], a1[3], a2[2], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AttachmentLedger_AttachmentMetadata.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v28 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  if ((specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, *(a2 + 8)) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_14CopresenceCore017AttachmentLedger_E10EncryptionVTt1g5(a1[2], *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_9;
  }

  v29 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v17 = *(v29 + 36);
  v18 = *(v13 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v17, v16, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v19 = a2 + v17;
  v20 = v18;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v19, &v16[v18], &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v12, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    if (v21(&v16[v20], 1, v4) != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v16[v20], v8, type metadata accessor for AttachmentLedger_MMCSMetadata);
      v24 = specialized static AttachmentLedger_MMCSMetadata.== infix(_:_:)(v12, v8);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_MMCSMetadata);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_MMCSMetadata);
      outlined destroy of NSObject?(v16, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
      if ((v24 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v12, type metadata accessor for AttachmentLedger_MMCSMetadata);
LABEL_8:
    outlined destroy of NSObject?(v16, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSg_ADtMR);
    goto LABEL_9;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of NSObject?(v16, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
LABEL_12:
  v25 = a1[3];
  v26 = *(a2 + 24);
  if (*(a2 + 32) == 1)
  {
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        if (v25 != 2)
        {
          goto LABEL_9;
        }
      }

      else if (v25 != 3)
      {
        goto LABEL_9;
      }
    }

    else if (v26)
    {
      if (v25 != 1)
      {
        goto LABEL_9;
      }
    }

    else if (v25)
    {
      goto LABEL_9;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_9;
  }

  if (specialized static Data.== infix(_:_:)(a1[5], a1[6], *(a2 + 40), *(a2 + 48)))
  {
    v27 = *(v29 + 32);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v22 & 1;
  }

LABEL_9:
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static AttachmentLedger_AttachmentAuthGetToken.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] != a2[6])
  {
    return 0;
  }

  v5 = *(type metadata accessor for AttachmentLedger_AttachmentAuthGetToken(0) + 32);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AttachmentLedger_AttachmentEncryption.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v30 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v17 = *(v30 + 28);
  v18 = *(v13 + 56);
  v32 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v17, v16, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v17, &v16[v18], &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v11, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v26 = v31;
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(&v16[v18], v31, type metadata accessor for AttachmentLedger_EncryptionID);
      if (specialized static Data.== infix(_:_:)(*v11, *(v11 + 1), *v26, *(v26 + 8)))
      {
        v27 = *(v4 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v26, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_EncryptionID);
        outlined destroy of NSObject?(v16, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
        if (v28)
        {
          goto LABEL_4;
        }

LABEL_11:
        v22 = 0;
        return v22 & 1;
      }

      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v26, type metadata accessor for AttachmentLedger_EncryptionID);
      outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_EncryptionID);
      v23 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd;
      v24 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR;
LABEL_10:
      outlined destroy of NSObject?(v16, v23, v24);
      goto LABEL_11;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v11, type metadata accessor for AttachmentLedger_EncryptionID);
LABEL_9:
    v23 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMd;
    v24 = &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSg_ADtMR;
    goto LABEL_10;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of NSObject?(v16, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
LABEL_4:
  v20 = v32;
  if ((specialized static Data.== infix(_:_:)(*v32, *(v32 + 8), *a2, a2[1]) & 1) == 0 || *(v20 + 16) != a2[2])
  {
    goto LABEL_11;
  }

  v21 = *(v30 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v22 & 1;
}

uint64_t outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus()
{
  result = lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus()
{
  result = lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent()
{
  result = lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action()
{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment()
{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag()
{
  result = lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag;
  if (!lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AttachmentLedger_ResponseStatus] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void type metadata completion function for AttachmentLedger_MMCSMetadata()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_MMCSMetadata.BlobData?, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AttachmentLedger_MMCSMetadata.BlobData()
{
  return type metadata completion function for AttachmentLedger_MMCSMetadata.BlobData();
}

{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AttachmentLedger_AttachmentMetadata()
{
  type metadata accessor for [UInt64 : AttachmentLedger_AttachmentEncryption]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_MMCSMetadata?, type metadata accessor for AttachmentLedger_MMCSMetadata, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for AttachmentLedger_AuthPutMaterials()
{
  return type metadata completion function for AttachmentLedger_AuthPutMaterials();
}

{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AttachmentLedger_ErrorResponse()
{
  return type metadata completion function for AttachmentLedger_ErrorResponse();
}

{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AttachmentLedger_CreateTopicResponse.ClientTopicConfig()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AttachmentLedger_SubscribeRequest.Initialize()
{
  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for [AttachmentLedger_EncryptionID], type metadata accessor for AttachmentLedger_EncryptionID, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for [AttachmentLedger_AttachmentMetadata], type metadata accessor for AttachmentLedger_AttachmentMetadata, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_EncryptionID?, type metadata accessor for AttachmentLedger_EncryptionID, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for AttachmentLedger_SubscribeRequest.AttachmentAck()
{
  type metadata accessor for [Data](319, &lazy cache variable for type metadata for [Data]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AttachmentLedger_SubscribeRequest.OneOf_Operation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void type metadata completion function for AttachmentLedger_SubscribeResponse.InitializeAck()
{
  type metadata accessor for [Data](319, &lazy cache variable for type metadata for [UInt64]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for [AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID], type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for [AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot], type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_ErrorResponse?, type metadata accessor for AttachmentLedger_ErrorResponse, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_AuthPutMaterials?, type metadata accessor for AttachmentLedger_AuthPutMaterials, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [Data](uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t type metadata completion function for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content()
{
  result = type metadata accessor for AttachmentLedger_AttachmentMetadata(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AttachmentLedger_SubscribeResponse.AttachmentUpdate()
{
  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event?, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_166Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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

void *__swift_store_extra_inhabitant_index_167Tm(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata completion function for AttachmentLedger_EncryptionID()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_175Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 12)
  {
    v6 = *(a1 + 8) >> 60;
    if (((4 * v6) & 0xC) != 0)
    {
      return 16 - ((4 * v6) & 0xC | (v6 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 28);

      return v18(v19, a2, v17);
    }
  }
}

void *__swift_store_extra_inhabitant_index_176Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 28);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void type metadata completion function for AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v8 <= 0x3F)
  {
    type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, a5, a6, MEMORY[0x1E69E6720]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_220Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_221Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for UnknownStorage();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

void type metadata completion function for AttachmentLedger_SubscribeRequest(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, a4, a5, MEMORY[0x1E69E6720]);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t))
{
  result = a4(319);
  if (v11 <= 0x3F)
  {
    result = a5(319);
    if (v12 <= 0x3F)
    {
      result = a6(319);
      if (v13 <= 0x3F)
      {
        result = a7(319);
        if (v14 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_467Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 20);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 24);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_468Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 20);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 24);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_431Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_432Tm(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_281Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 24);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_282Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 24);

    return v19(v20, a2, a2, v18);
  }
}

void type metadata completion function for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v8 <= 0x3F)
  {
    type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, a5, a6, MEMORY[0x1E69E6720]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for AttachmentLedger_GetAuthTokenRequest()
{
  type metadata accessor for [Data](319, &lazy cache variable for type metadata for [Data]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_GetAuthTokenRequest.TestOption?, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_308Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_309Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void type metadata completion function for AttachmentLedger_GetAuthTokenResponse()
{
  type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for [AttachmentLedger_AttachmentAuthGetToken], type metadata accessor for AttachmentLedger_AttachmentAuthGetToken, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_ErrorResponse?, type metadata accessor for AttachmentLedger_ErrorResponse, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_AuthPutMaterials?, type metadata accessor for AttachmentLedger_AuthPutMaterials, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_193Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_194Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_202Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a3[5];
LABEL_5:
    v15 = *(v12 + 48);

    return v15(a1 + v13, a2, v11);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t __swift_store_extra_inhabitant_index_203Tm(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v13 = v12;
    v14 = *(v12 - 8);
    v15 = a4[5];
LABEL_5:
    v17 = *(v14 + 56);

    return v17(a1 + v15, a2, a2, v13);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v13 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_5;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

void type metadata completion function for AttachmentLedger_CreateTopicResponse(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, &lazy cache variable for type metadata for AttachmentLedger_ErrorResponse?, type metadata accessor for AttachmentLedger_ErrorResponse, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData?(319, a4, a5, MEMORY[0x1E69E6720]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Testable.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = static Testable.isMutable.getter();
  if (result)
  {
    v6 = *(*(v4 - 8) + 40);

    return v6(v2, a1, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL static Testable.isMutable.getter()
{
  v0 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v1 = NSClassFromString(v0);

  if (v1)
  {
    return 1;
  }

  v3 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
  v4 = NSClassFromString(v3);

  return v4 != 0;
}

uint64_t key path getter for Testable.wrappedValue : <A>Testable<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + a3 - 8);
  v7 = type metadata accessor for Testable();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return (*(*(v6 - 8) + 32))(a4, v10, v6);
}

uint64_t key path setter for Testable.wrappedValue : <A>Testable<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 8) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  (*(v7 + 16))(&v10 - v5);
  v8 = type metadata accessor for Testable();
  return Testable.wrappedValue.setter(v6, v8);
}

void (*Testable.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x40uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  v13 = *(v10 + 16);
  v7[6] = v13;
  v7[7] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13();
  return Testable.wrappedValue.modify;
}

void Testable.wrappedValue.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 56);
    v5 = *(v2 + 32);
    v4 = *(v2 + 40);
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);
    v9 = *v2;
    v8 = *(v2 + 8);
    (*(v2 + 48))(v5, v4, v6);
    Testable.wrappedValue.setter(v5, v9);
    (*(v7 + 8))(v4, v6);
  }

  else
  {
    v5 = *(v2 + 32);
    v4 = *(v2 + 40);
    v10 = *(v2 + 8);
    Testable.wrappedValue.setter(v4, *v2);
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t type metadata completion function for Testable(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Testable(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for Testable(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t MachServiceName.rawValue.getter()
{
  v1 = 0xD00000000000002CLL;
  v2 = 0xD000000000000027;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000002CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000032;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

CopresenceCore::MachServiceName_optional __swiftcall MachServiceName.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MachServiceName.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MachServiceName()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MachServiceName()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MachServiceName()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MachServiceName(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002CLL;
  v3 = "stablishing";
  v4 = "rsationmanagerhost";
  v5 = 0xD000000000000027;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000002CLL;
    v4 = "lay.GroupSessionService";
  }

  if (*v1)
  {
    v2 = 0xD000000000000032;
    v3 = "ence.conversationmanagerhost";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type MachServiceName and conformance MachServiceName()
{
  result = lazy protocol witness table cache variable for type MachServiceName and conformance MachServiceName;
  if (!lazy protocol witness table cache variable for type MachServiceName and conformance MachServiceName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachServiceName and conformance MachServiceName);
  }

  return result;
}

id AddressableMember.__allocating_init(handle:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AddressableMember.init(handle:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AddressableMember();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t AddressableMember.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v7);
  if (!v8)
  {
    outlined destroy of Any?(v7);
    goto LABEL_5;
  }

  type metadata accessor for AddressableMember();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v2 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle);
  v3 = *&v6[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle];
  v4 = static NSObject.== infix(_:_:)();

  return v4 & 1;
}

id AddressableMember.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v5)
  {
    *&v4[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = v5;
    v8.receiver = v4;
    v8.super_class = v2;
    v6 = objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

id AddressableMember.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    *&v2[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = v4;
    v7.receiver = v2;
    v7.super_class = type metadata accessor for AddressableMember();
    v5 = objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {

    type metadata accessor for AddressableMember();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

Swift::Void __swiftcall AddressableMember.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle);
  v4 = MEMORY[0x1B270FF70](0x656C646E6168, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

uint64_t AddressableMember.description.getter()
{
  swift_getObjectType();
  v1 = _typeName(_:qualified:)();
  MEMORY[0x1B2710020](v1);

  v2 = [*(v0 + OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1B2710020](v3, v5);

  MEMORY[0x1B2710020](0x3D656C646E616820, 0xE800000000000000);

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return 60;
}

id AccountMember.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccountMember.init()()
{
  v0[OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountMember();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t AccountMember.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v7);
  if (!v8)
  {
    outlined destroy of Any?(v7);
    goto LABEL_5;
  }

  type metadata accessor for AccountMember();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount);
  v3 = v6[OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount];

  v4 = v2 ^ v3 ^ 1;
  return v4 & 1;
}

uint64_t @objc AddressableMember.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of Any?(v10);
  return v8 & 1;
}

id AccountMember.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = MEMORY[0x1B270FF70](0x416C61636F4C7369, 0xEE00746E756F6363);
  v5 = [a1 decodeBoolForKey_];

  v3[OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id AccountMember.init(coder:)(void *a1)
{
  v3 = MEMORY[0x1B270FF70](0x416C61636F4C7369, 0xEE00746E756F6363);
  v4 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AccountMember();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

Swift::Void __swiftcall AccountMember.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC14CopresenceCore13AccountMember_isLocalAccount);
  v4 = MEMORY[0x1B270FF70](0x416C61636F4C7369, 0xEE00746E756F6363);
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];
}

id AddressableMember.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t instantiation function for generic protocol witness table for AddressableMember(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(void), unint64_t *a6)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AddressableMember and conformance NSObject(a4, a5);
  result = lazy protocol witness table accessor for type AddressableMember and conformance NSObject(a6, a5);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type AddressableMember and conformance NSObject(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSo14NSUserDefaultsC14CopresenceCoreE3get_6forKeyxSgxm_SStSeRzSERzlFSb_Tt0g5()
{
  v1 = MEMORY[0x1B270FF70]();
  v2 = [v0 valueForKey_];

  if (!v2)
  {
    return 2;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(v29, v27);
  v3 = MEMORY[0x1E69E6370];
  if (swift_dynamicCast())
  {
    v4 = v28;
    if (v28 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v28 = 2;
  }

  outlined init with copy of Any(v29, v27);
  if (swift_dynamicCast())
  {
    v5 = type metadata accessor for JSONDecoder();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v25[0], v25[1]);

    v4 = LOBYTE(v27[0]);
    v28 = v27[0];
    if (LOBYTE(v27[0]) != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v4 = v28;
  if (v28 == 2)
  {
LABEL_9:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.default);
    outlined init with copy of Any(v29, v27);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136315394;
      outlined init with copy of Any(v27, v25);
      outlined init with copy of Any?(v25, &v23);
      if (v24)
      {
        outlined init with take of Any(&v23, v22);
        outlined init with copy of Any(v22, v21);
        v13 = String.init<A>(reflecting:)();
        v15 = v14;
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
      }

      else
      {
        v15 = 0xE300000000000000;
        v13 = 7104878;
      }

      outlined destroy of Any?(v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v26);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      v25[0] = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbmMd, &_sSbmMR);
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v26);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_1AEB26000, v9, v10, "Failed to cast value: %s to type: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v12, -1, -1);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    return 2;
  }

LABEL_16:
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return v4;
}

void one-time initialization function for userDefaults()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = MEMORY[0x1B270FF70](0xD000000000000019, 0x80000001AEE33C70);
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  }

  static Signposts.userDefaults = v2;
}

uint64_t *Signposts.userDefaults.unsafeMutableAddressor()
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  return &static Signposts.userDefaults;
}

id static Signposts.userDefaults.getter()
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  v1 = static Signposts.userDefaults;

  return v1;
}

BOOL Signposts.UserDefaultsKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Signposts.UserDefaultsKeys.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Signposts.UserDefaultsKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Signposts.UserDefaultsKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Signposts.UserDefaultsKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance Signposts.UserDefaultsKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t one-time initialization function for messenger()
{
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static Signposts.messenger);
  __swift_project_value_buffer(v0, static Signposts.messenger);
  return closure #1 in variable initialization expression of static Signposts.messenger();
}

uint64_t closure #1 in variable initialization expression of static Signposts.messenger()
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  v0 = _sSo14NSUserDefaultsC14CopresenceCoreE3get_6forKeyxSgxm_SStSeRzSERzlFSb_Tt0g5();
  if (v0 == 2 || (v0 & 1) == 0)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.default);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1AEB26000, v6, v7, "[Signposts] Messenger disabled", v8, 2u);
      MEMORY[0x1B27120C0](v8, -1, -1);
    }

    return MEMORY[0x1EEE6E8C0]();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.default);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1AEB26000, v2, v3, "[Signposts] Messenger enabled", v4, 2u);
      MEMORY[0x1B27120C0](v4, -1, -1);
    }

    return MEMORY[0x1EEE6E8F0](0xD000000000000028, 0x80000001AEE33CF0, 0x65676E657373654DLL, 0xE900000000000072);
  }
}

uint64_t static Signposts.messenger.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for messenger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OSSignposter();
  v3 = __swift_project_value_buffer(v2, static Signposts.messenger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static Signposts.messengerSignpostIdentifier(forPayload:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for messenger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v6, static Signposts.messenger);
  if (OSSignposter.isEnabled.getter())
  {
    outlined copy of Data._Representation(a1, a2);

    return _s2os12OSSignpostIDV14CopresenceCoreE4hash5usingACx_q_mtc10Foundation12DataProtocolRz9CryptoKit12HashFunctionR_r0_lufCAG0I0V_AI8InsecureO3MD5VTt1t2g5(a1, a2, a3);
  }

  else
  {

    return OSSignpostID.init(_:)();
  }
}

uint64_t _s2os12OSSignpostIDV14CopresenceCoreE4hash5usingACx_q_mtc10Foundation12DataProtocolRz9CryptoKit12HashFunctionR_r0_lufCAG0I0V_AI8InsecureO3MD5VTt1t2g5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for Insecure.MD5();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Insecure.MD5Digest();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v23 = v14;
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  lazy protocol witness table accessor for type Insecure.MD5Digest and conformance Insecure.MD5Digest(&lazy protocol witness table cache variable for type Insecure.MD5Digest and conformance Insecure.MD5Digest, MEMORY[0x1E69666B0]);
  v16 = dispatch thunk of static Digest.byteCount.getter();
  if ((v16 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v16 < 8)
  {
    goto LABEL_7;
  }

  v21 = v12;
  v22 = a3;
  lazy protocol witness table accessor for type Insecure.MD5Digest and conformance Insecure.MD5Digest(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688]);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(a1, a2);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  outlined consume of Data._Representation(a1, a2);
  (*(v7 + 8))(v10, v6);
  if ((v23 + 7) >= 0xF)
  {
    v17 = *v15;
  }

  (*(v21 + 8))(v15, v11);
  result = OSSignpostID.init(_:)();
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OSSignpostID.init<A, B>(hash:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v14[0] = a3;
  v14[3] = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v14 - v8;
  swift_getAssociatedConformanceWitness();
  v10 = dispatch thunk of static Digest.byteCount.getter();
  if ((v10 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (v10 < 8)
  {
    goto LABEL_5;
  }

  static HashFunction.hash<A>(data:)();
  _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, closure #1 in OSSignpostID.init<A, B>(hash:using:), 0, AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E76D8], MEMORY[0x1E69E7410], v11);
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  OSSignpostID.init(_:)();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *closure #1 in OSSignpostID.init<A, B>(hash:using:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = -1;
  if (result && (a2 - result + 7) >= 0xF)
  {
    v3 = *result;
  }

  *a3 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Signposts.UserDefaultsKeys and conformance Signposts.UserDefaultsKeys()
{
  result = lazy protocol witness table cache variable for type Signposts.UserDefaultsKeys and conformance Signposts.UserDefaultsKeys;
  if (!lazy protocol witness table cache variable for type Signposts.UserDefaultsKeys and conformance Signposts.UserDefaultsKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Signposts.UserDefaultsKeys and conformance Signposts.UserDefaultsKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Insecure.MD5Digest and conformance Insecure.MD5Digest(unint64_t *a1, void (*a2)(uint64_t))
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

double one-time initialization function for shared()
{
  type metadata accessor for GroupActivityAssociationCoordinatorTable();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  static GroupActivityAssociationCoordinatorTable.shared = v0;
  return result;
}

uint64_t static GroupActivityAssociationCoordinatorTable.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t GroupActivityAssociationCoordinatorTable.registerCoordinator(_:)(uint64_t a1)
{
  outlined init with copy of UserNotificationCenter(a1, v6);
  swift_beginAccess();
  outlined assign with take of GroupActivityAssociationCoordinating?(v6, v1 + 16);
  result = swift_endAccess();
  v4 = *(v1 + 56);
  if (v4)
  {
    v5 = *(v1 + 64);

    v4(a1);
    return _sxRi_zRi0_zlyytIseghHr_SgWOe(v4);
  }

  return result;
}

uint64_t outlined assign with take of GroupActivityAssociationCoordinating?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36GroupActivityAssociationCoordinating_pSgMd, &_s14CopresenceCore36GroupActivityAssociationCoordinating_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t GroupActivityAssociationCoordinatorTable.configureWithCoordinator(sessionID:_:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sceneAssociation != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.sceneAssociation);
  (*(v9 + 16))(v12, a1, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v32[0] = v18;
    *v17 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = a3;
    v21 = v20;
    (*(v9 + 8))(v12, v8);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v32);
    a3 = v29;

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1AEB26000, v14, v15, "Configuring group session %s as the singleton client of spatial template anchors.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1B27120C0](v18, -1, -1);
    v23 = v17;
    a2 = v28;
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v24 = *(v4 + 56);
  v25 = *(v4 + 64);
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v24);
  swift_beginAccess();
  outlined init with copy of GroupActivityAssociationCoordinating?(v4 + 16, &v30);
  if (v31)
  {
    outlined init with take of ContiguousBytes(&v30, v32);

    a2(v32);
    return __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {

    return outlined destroy of GroupActivityAssociationCoordinating?(&v30);
  }
}

uint64_t GroupActivityAssociationCoordinatorTable.deinit()
{
  outlined destroy of GroupActivityAssociationCoordinating?(v0 + 16);
  v1 = *(v0 + 64);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + 56));
  return v0;
}

uint64_t GroupActivityAssociationCoordinatorTable.__deallocating_deinit()
{
  outlined destroy of GroupActivityAssociationCoordinating?(v0 + 16);
  v1 = *(v0 + 64);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of GroupActivityAssociationCoordinating?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36GroupActivityAssociationCoordinating_pSgMd, &_s14CopresenceCore36GroupActivityAssociationCoordinating_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GroupActivityAssociationCoordinating?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36GroupActivityAssociationCoordinating_pSgMd, &_s14CopresenceCore36GroupActivityAssociationCoordinating_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_14CopresenceCore17AddressableMemberCs5NeverOTg504_s14e124Core24BackgroundSessionManagerC5begin7request16bundleIdentifier07processI010completionyAA0cD15CreationRequestC_SSs5Int32Vys5c11_pSgctFAA17gh4CSo8D6CXEfU_Tf1cn_n(uint64_t a1)
{
  v27 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v30 = result;
    v31 = v4;
    v32 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v33 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = *(a1 + 36);
  v30 = result;
  v31 = v6;
  v32 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v30;
    v10 = v31;
    v12 = v32;
    specialized Set.subscript.getter(v30, v31, v32, a1);
    v14 = v13;
    v15 = type metadata accessor for AddressableMember();
    v16 = objc_allocWithZone(v15);
    *&v16[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = v14;
    v29.receiver = v16;
    v29.super_class = v15;
    objc_msgSendSuper2(&v29, sel_init);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v17 = *(v33 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v27)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v8(v28, 0);
      if (v7 == v2)
      {
LABEL_28:
        outlined consume of Set<AddressableMember>.Index._Variant(v30, v31, v32);
        return v33;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v18 = 1 << *(a1 + 32);
      if (v11 >= v18)
      {
        goto LABEL_32;
      }

      v19 = v11 >> 6;
      v20 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v20 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v21 = v20 & (-2 << (v11 & 0x3F));
      if (v21)
      {
        v18 = __clz(__rbit64(v21)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v19 << 6;
        v23 = v19 + 1;
        v24 = (a1 + 64 + 8 * v19);
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = outlined consume of Set<AddressableMember>.Index._Variant(v11, v10, 0);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_27;
          }
        }

        result = outlined consume of Set<AddressableMember>.Index._Variant(v11, v10, 0);
      }

LABEL_27:
      v30 = v18;
      v31 = v10;
      v32 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

Swift::Int BackgroundSessionManagerError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

uint64_t BackgroundSessionManager.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t BackgroundSessionManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*BackgroundSessionManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ActivitySession.sessionManager.modify;
}

uint64_t BackgroundSessionManager.sessions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  return BackgroundSessionManager.sessions.didset(&unk_1F24A2438, partial apply for closure #1 in BackgroundSessionManager.sessions.didset, &block_descriptor_155);
}

uint64_t (*BackgroundSessionManager.sessions.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return BackgroundSessionManager.sessions.modify;
}

uint64_t BackgroundSessionManager.sessions.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return BackgroundSessionManager.sessions.didset(&unk_1F24A2438, partial apply for closure #1 in BackgroundSessionManager.sessions.didset, &block_descriptor_155);
  }

  return result;
}

uint64_t BackgroundSessionManager.presenceSessions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_presenceSessions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t BackgroundSessionManager.mockIDSGroupSessionProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_mockIDSGroupSessionProvider;
  swift_beginAccess();
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, a1, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
}

uint64_t BackgroundSessionManager.mockIDSGroupSessionProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_mockIDSGroupSessionProvider;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(a1, v1 + v3, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  return swift_endAccess();
}

uint64_t BackgroundSessionManager.serviceProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider);
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider + 8);

  return v1;
}

uint64_t BackgroundSessionManager.personalPresenceControllerProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_personalPresenceControllerProvider);
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_personalPresenceControllerProvider + 8);

  return v1;
}

uint64_t BackgroundSessionManager.presenceControllerProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_presenceControllerProvider);
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_presenceControllerProvider + 8);

  return v1;
}

uint64_t BackgroundSessionManager.sessionSuspensionControllerProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionSuspensionControllerProvider);
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionSuspensionControllerProvider + 8);

  return v1;
}

id BackgroundSessionManager.__allocating_init(queue:featureFlags:serviceProvider:personalPresenceControllerProvider:presenceControllerProvider:sessionSuspensionControllerProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = objc_allocWithZone(v10);
  *&v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = MEMORY[0x1E69E7CD0];
  *&v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessions] = MEMORY[0x1E69E7CD0];
  *&v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_presenceSessions] = v18;
  v19 = &v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_mockIDSGroupSessionProvider];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = &v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionUpdateState];
  *(v20 + 2) = 0;
  *v20 = 0;
  *&v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue] = a1;
  *&v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_featureFlags] = a2;
  v21 = &v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = &v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_personalPresenceControllerProvider];
  *v22 = a5;
  *(v22 + 1) = a6;
  v23 = &v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_presenceControllerProvider];
  *v23 = a7;
  *(v23 + 1) = a8;
  v24 = &v17[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionSuspensionControllerProvider];
  *v24 = a9;
  *(v24 + 1) = a10;
  v28.receiver = v17;
  v28.super_class = v10;
  return objc_msgSendSuper2(&v28, sel_init);
}

id BackgroundSessionManager.init(queue:featureFlags:serviceProvider:personalPresenceControllerProvider:presenceControllerProvider:sessionSuspensionControllerProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *&v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = MEMORY[0x1E69E7CD0];
  *&v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessions] = MEMORY[0x1E69E7CD0];
  *&v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_presenceSessions] = v18;
  v19 = &v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_mockIDSGroupSessionProvider];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = &v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionUpdateState];
  *(v20 + 2) = 0;
  *v20 = 0;
  *&v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue] = a1;
  *&v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_featureFlags] = a2;
  v21 = &v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = &v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_personalPresenceControllerProvider];
  *v22 = a5;
  *(v22 + 1) = a6;
  v23 = &v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_presenceControllerProvider];
  *v23 = a7;
  *(v23 + 1) = a8;
  v24 = &v10[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionSuspensionControllerProvider];
  *v24 = a9;
  *(v24 + 1) = a10;
  v27.receiver = v10;
  v27.super_class = type metadata accessor for BackgroundSessionManager();
  return objc_msgSendSuper2(&v27, sel_init);
}

uint64_t BackgroundSessionManager.__allocating_init(clientIdentifier:queue:)(unint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for AsyncSerialQueue();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 0;
  v41 = 0xE000000000000000;

  v38 = a3;
  _StringGuts.grow(_:)(16);

  v40 = a1;
  v41 = a2;

  MEMORY[0x1B2710020](0x43654D6F54654D2ELL, 0xEE006C656E6E6168);
  v19 = v40;
  v20 = v41;
  LOBYTE(v40) = 1;
  v41 = v19;
  v42 = v20;
  v43 = a1;
  v44 = a2;
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20SKPresenceDataSourceCyAA27ActivityListPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA27ActivityListPresenceContextVGMR));
  v22 = specialized SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(&v40, a3);
  v23 = type metadata accessor for PersonalPresenceController(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8650], v6);
  v28 = v22;
  AsyncSerialQueue.init(priority:bufferingPolicy:)(v14, v10, v18);
  outlined init with take of AsyncSerialQueue(v18, v26 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_workQueue);
  v29 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SKPresenceDataSource<ActivityListPresenceContext> and conformance SKPresenceDataSource<A>, &_s14CopresenceCore20SKPresenceDataSourceCyAA27ActivityListPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA27ActivityListPresenceContextVGMR);
  v30 = (v26 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_personalPresenceDataSource);
  *v30 = v28;
  v30[1] = v29;
  *(v26 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_currentActivityIDs) = MEMORY[0x1E69E7CD0];
  v31 = [objc_allocWithZone(CPFeatureFlags) init];
  v32 = swift_allocObject();
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *(v33 + 24) = a2;
  v34 = *(v39 + 264);

  v35 = v34(v38, v31, partial apply for closure #1 in BackgroundSessionManager.init(clientIdentifier:queue:), v32, partial apply for closure #2 in BackgroundSessionManager.init(clientIdentifier:queue:), v26, partial apply for closure #3 in BackgroundSessionManager.init(clientIdentifier:queue:), v33, closure #4 in BackgroundSessionManager.init(clientIdentifier:queue:), 0);

  return v35;
}

void closure #1 in BackgroundSessionManager.init(clientIdentifier:queue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3 + 16, &v12, &_s14CopresenceCore18IDSServiceProtocol_pSgMd, &_s14CopresenceCore18IDSServiceProtocol_pSgMR);
  if (v13)
  {
    goto LABEL_4;
  }

  outlined destroy of NSObject?(&v12, &_s14CopresenceCore18IDSServiceProtocol_pSgMd, &_s14CopresenceCore18IDSServiceProtocol_pSgMR);
  v8 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  v9 = MEMORY[0x1B270FF70](a1, a2);
  v10 = [v8 initWithService_];

  if (v10)
  {
    v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSService, 0x1E69A48A8);
    v14 = &protocol witness table for IDSService;
    *&v12 = v10;
    outlined init with copy of UserNotificationCenter(&v12, v11);
    swift_beginAccess();
    outlined assign with take of ActivitySession.DomainAssertionWrapper?(v11, a3 + 16, &_s14CopresenceCore18IDSServiceProtocol_pSgMd, &_s14CopresenceCore18IDSServiceProtocol_pSgMR);
LABEL_4:
    outlined init with take of ContiguousBytes(&v12, a4);
    return;
  }

  __break(1u);
}

uint64_t closure #2 in BackgroundSessionManager.init(clientIdentifier:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PresenceController();
  (*(v6 + 16))(v9, a1, v5);

  v10 = specialized PresenceController.__allocating_init(activityID:personalPresenceController:)(v9, a3);

  return v10;
}

void *closure #3 in BackgroundSessionManager.init(clientIdentifier:queue:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14[0] = 0;
  v15 = UUID.uuidString.getter();
  v16 = v7;
  v17 = a3;
  v18 = a4;
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMR));

  v9 = a2;
  v10 = specialized SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(v14, a2);
  type metadata accessor for PresenceController();
  v11 = swift_allocObject();
  v12 = specialized PresenceController.init<A>(dataSource:)(v10, v11);

  return v12;
}

uint64_t closure #4 in BackgroundSessionManager.init(clientIdentifier:queue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69C75F8]) init];
  v9 = type metadata accessor for SessionSuspensionController();
  v10 = swift_allocObject();
  swift_unknownObjectRetain();
  result = specialized SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(a1, a2, a3, v8, v10);
  a4[3] = v9;
  a4[4] = &protocol witness table for SessionSuspensionController;
  *a4 = result;
  return result;
}

uint64_t BackgroundSessionManager.createPresenceController(for:isCrossAccount:queue:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = &OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_presenceControllerProvider;
  if ((a2 & 1) == 0)
  {
    v4 = &OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_personalPresenceControllerProvider;
  }

  v5 = v3 + *v4;
  v6 = *(v5 + 8);
  return (*v5)(a1, a3);
}

void BackgroundSessionManager.createService(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 0xD000000000000022 && 0x80000001AEE33DC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v8 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider);
    v7 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider + 8);
    v9 = *MEMORY[0x1E69A47F8];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8(v10);

    return;
  }

  if (a1 == 0x6C7070612E6D6F63 && a2 == 0xEF7365746F4E2E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000015 && 0x80000001AEE2E800 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider);
    v12 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider + 8);
    v13 = "e.alloy.carmelsync";
    v14 = 0xD00000000000001DLL;
LABEL_14:
    v11(v14, v13 | 0x8000000000000000);
    return;
  }

  if (a1 == 0xD000000000000010 && 0x80000001AEE33DF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000012 && 0x80000001AEE33E10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider);
    v16 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider + 8);
    v15(0xD000000000000022, 0x80000001AEE34100);
    return;
  }

  if (a1 == 0xD000000000000010 && 0x80000001AEE33E30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000016 && 0x80000001AEE33E50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000021 && 0x80000001AEE33E70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000001BLL && 0x80000001AEE33EA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000017 && 0x80000001AEE33EC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000022 && 0x80000001AEE33EE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000001CLL && 0x80000001AEE33F10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000002DLL && 0x80000001AEE33F30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000027 && 0x80000001AEE33F60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000001BLL && 0x80000001AEE33F90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001AEE33FB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider);
    v17 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider + 8);
    v13 = "oteControl.session";
    v14 = 0xD00000000000002ELL;
    goto LABEL_14;
  }

  v18 = v3;
  if (a1 == 0xD000000000000016 && 0x80000001AEE33FD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider);
    v19 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider + 8);
    v13 = "e.alloy.facetime.nearby";
    v14 = 0xD000000000000032;
    goto LABEL_14;
  }

  if (a1 == 0xD000000000000013 && 0x80000001AEE33FF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider);
    v20 = *(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider + 8);
    v13 = "e.alloy.arcade.fastsync";
    v14 = 0xD000000000000027;
    goto LABEL_14;
  }

  if (![*(v3 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_featureFlags) gameCenterFastSyncTransport])
  {
    goto LABEL_67;
  }

  v21 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v37 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 1);
  if (!v37)
  {
    goto LABEL_67;
  }

  v31 = [v37 entitlements];
  v32 = LSPropertyList.containsAnyGameCenterEntitlements()();

  if (!v32)
  {

LABEL_67:
    if (_TUIsInternalInstall())
    {
      v22 = [objc_opt_self() mainBundle];
      v23 = [v22 bundleIdentifier];

      if (v23)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserDefaults, 0x1E695E000);
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        static NSUserDefaults.classProtectedStorage(suiteName:)(v24, v26, v40);

        v27 = v41;
        v28 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        (*(v28 + 32))(&v38, MEMORY[0x1E69E6158], 0xD000000000000013, 0x80000001AEE34010, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v27, v28);
        v29 = v39;
        if (v39)
        {
          v30 = v38;
        }

        else
        {
          v34 = *MEMORY[0x1E69A47F8];
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v35;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        v36 = *(v18 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider + 8);
        (*(v18 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider))(v30, v29);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    return;
  }

  v33 = *(v18 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider + 8);
  (*(v18 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_serviceProvider))(0xD000000000000027, 0x80000001AEE34030);
}

uint64_t BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v40 = a2;
  v41 = a5;
  v42 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.service);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v7;
    v26 = v11;
    v27 = a6;
    v28 = a3;
    v29 = v24;
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v30 = v20;
    _os_log_impl(&dword_1AEB26000, v21, v22, "Request to create presenceSession with request: %@", v23, 0xCu);
    outlined destroy of NSObject?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v31 = v29;
    a3 = v28;
    a6 = v27;
    v11 = v26;
    v7 = v25;
    v14 = v39;
    MEMORY[0x1B27120C0](v31, -1, -1);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  v32 = *&v7[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue];
  v33 = swift_allocObject();
  *(v33 + 16) = v7;
  *(v33 + 24) = v20;
  v34 = v40;
  *(v33 + 32) = v41;
  *(v33 + 40) = a6;
  *(v33 + 48) = v34;
  *(v33 + 56) = a3;
  *(v33 + 64) = v42;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:);
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_13;
  v35 = _Block_copy(aBlock);
  v36 = v20;
  v37 = v7;

  static DispatchQoS.unspecified.getter();
  v46 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v18, v14, v35);
  _Block_release(v35);
  (*(v45 + 8))(v14, v11);
  (*(v43 + 8))(v18, v44);
}

void closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:)(void *a1, char *a2, void (*a3)(void, void *), uint64_t a4, uint64_t a5, char *a6, unsigned int a7)
{
  v125 = a7;
  v127 = a6;
  v126 = a5;
  v131 = a4;
  v132 = a3;
  v135 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v124 = &v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v123 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v119 - v17;
  v120 = type metadata accessor for UUID();
  v119 = *(v120 - 8);
  v19 = *(v119 + 64);
  v20 = MEMORY[0x1EEE9AC00](v120);
  v121 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xD8);
  v134 = a1;
  v23 = v22(v20);
  v24 = v23;
  v128 = v12;
  v130 = v13;
  v129 = v18;
  if ((v23 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for PresenceHostSession(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type PresenceHostSession and conformance NSObject, type metadata accessor for PresenceHostSession);
    Set.Iterator.init(_cocoa:)();
    v25 = v143;
    v26 = v144;
    v27 = v145;
    v28 = v146;
    v29 = v147;
  }

  else
  {
    v30 = -1 << *(v23 + 32);
    v26 = v23 + 56;
    v27 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v29 = v32 & *(v23 + 56);

    v28 = 0;
    v25 = v24;
  }

  v133 = v27;
  v33 = (v27 + 64) >> 6;
  if (v25 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v34 = v28;
  v35 = v29;
  v36 = v28;
  if (!v29)
  {
    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= v33)
      {
        goto LABEL_19;
      }

      v35 = *(v26 + 8 * v36);
      ++v34;
      if (v35)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_12:
  v37 = (v35 - 1) & v35;
  v7 = *(*(v25 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
  if (!v7)
  {
LABEL_19:
    outlined consume of Set<String>.Iterator._Variant();

    v39 = v128;
    v40 = v134;
    v41 = MEMORY[0x1E69E7D40];
    goto LABEL_20;
  }

  while ((static UUID.== infix(_:_:)() & 1) == 0)
  {

    v28 = v36;
    v29 = v37;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v38 = __CocoaSet.Iterator.next()();
    if (v38)
    {
      *&v138 = v38;
      type metadata accessor for PresenceHostSession(0);
      swift_dynamicCast();
      v7 = v140[0];
      v36 = v28;
      v37 = v29;
      if (v140[0])
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  outlined consume of Set<String>.Iterator._Variant();

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  __swift_project_value_buffer(v91, static Log.service);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    _os_log_impl(&dword_1AEB26000, v92, v93, "Found existing presence session.", v94, 2u);
    MEMORY[0x1B27120C0](v94, -1, -1);
  }

  v41 = MEMORY[0x1E69E7D40];
  v95 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xB8);
  if (v95() >= 3u)
  {
    v40 = v134;
    v118 = (*((*v41 & *v134) + 0xE8))(v140);

    v118(v140, 0);
    v39 = v128;
LABEL_20:
    v29 = v126;
    v7 = v127;
    (*((*v41 & *v40) + 0x120))(&v138, v126, v127);
    if (!v139)
    {
      outlined destroy of NSObject?(&v138, &_s14CopresenceCore18IDSServiceProtocol_pSgMd, &_s14CopresenceCore18IDSServiceProtocol_pSgMR);
      if (one-time initialization token for service == -1)
      {
LABEL_30:
        v80 = type metadata accessor for Logger();
        __swift_project_value_buffer(v80, static Log.service);

        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          *&v138 = v84;
          *v83 = 136315138;
          v140[0] = v29;
          v140[1] = v7;

          v85 = String.init<A>(reflecting:)();
          v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v138);

          *(v83 + 4) = v87;
          _os_log_impl(&dword_1AEB26000, v81, v82, "Unknown service for bundle identifier: %s", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v84);
          MEMORY[0x1B27120C0](v84, -1, -1);
          MEMORY[0x1B27120C0](v83, -1, -1);
        }

        v88 = v132;
        lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
        v89 = swift_allocError();
        *v90 = 2;
        v88(0, v89);

        return;
      }

LABEL_49:
      swift_once();
      goto LABEL_30;
    }

    outlined init with take of ContiguousBytes(&v138, v140);
    v42 = v135[OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount];
    if (v42)
    {
      goto LABEL_26;
    }

    v43 = v141;
    v44 = v142;
    __swift_project_boxed_opaque_existential_1(v140, v141);
    v45 = (*(v44 + 16))(v43, v44);
    if (!v45)
    {
      __break(1u);
      return;
    }

    v46 = v45 >> 62 ? __CocoaSet.count.getter() : *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = MEMORY[0x1E69E7D40];

    if (v46 >= 1)
    {
LABEL_26:
      v47 = OBJC_IVAR___CPPresenceSessionCreationRequest_id;
      v48 = *((*v41 & *v40) + 0x118);
      v49 = v41;
      v50 = v135;
      v51 = v48(&v135[OBJC_IVAR___CPPresenceSessionCreationRequest_id], v42, *(v40 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue));
      v52 = v121;
      (*(v119 + 16))(v121, &v50[v47], v120);
      v53 = objc_allocWithZone(type metadata accessor for PresenceHostSession(0));

      v133 = v51;
      v54 = PresenceHostSession.init(id:presenceController:)(v52, v51);
      v55 = *((*v49 & *v40) + 0xE8);
      v56 = v54;
      v57 = v55(&v138);
      specialized Set._Variant.insert(_:)(v137, v56);

      v58 = v57(&v138, 0);
      v59 = *((*v49 & *v56) + 0xD0);
      v135 = v56;
      *&v138 = v59(v58);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGMR);
      v61 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<PresenceHostSession.State, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGMR);
      v62 = v129;
      MEMORY[0x1B270F520](v60, v61);

      v63 = type metadata accessor for TaskPriority();
      v7 = v124;
      (*(*(v63 - 8) + 56))(v124, 1, 1, v63);
      v64 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v65 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v66 = v130;
      v29 = v123;
      (*(v130 + 16))(v123, v62, v39);
      v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v68 = (v122 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
      v69 = swift_allocObject();
      *(v69 + 16) = 0;
      *(v69 + 24) = 0;
      (*(v66 + 32))(v69 + v67, v29, v39);
      *(v69 + v68) = v64;
      *(v69 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8)) = v65;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:), v69);

      outlined destroy of NSObject?(v7, &_sScPSgMd, &_sScPSgMR);
      v71 = *(v134 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionSuspensionControllerProvider);
      v70 = *(v134 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionSuspensionControllerProvider + 8);
      v72 = v135;
      v71(&v138, v125, v72, &protocol witness table for PresenceHostSession);

      v73 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_sessionSuspensionController;
      swift_beginAccess();
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v72[v73], v137, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
      v74 = v137[3];
      outlined destroy of NSObject?(v137, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
      if (v74)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      outlined init with take of ContiguousBytes(&v138, v137);
      swift_beginAccess();
      outlined assign with take of ActivitySession.DomainAssertionWrapper?(v137, &v72[v73], &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
      swift_endAccess();
      v75 = *&v72[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_endpoint];
      v76 = type metadata accessor for PresenceSessionConnectionInfo();
      v77 = objc_allocWithZone(v76);
      *&v77[OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint] = v75;
      v136.receiver = v77;
      v136.super_class = v76;
      v78 = v75;
      v79 = objc_msgSendSuper2(&v136, sel_init);
      v132(v79, 0);

      (*(v130 + 8))(v129, v39);
    }

    else
    {
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v107 = type metadata accessor for Logger();
      __swift_project_value_buffer(v107, static Log.service);

      v108 = v135;
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        *&v138 = v113;
        *v111 = 136315394;
        *(v111 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v7, &v138);
        *(v111 + 12) = 2112;
        *(v111 + 14) = v108;
        *v112 = v108;
        v114 = v108;
        _os_log_impl(&dword_1AEB26000, v109, v110, "Ignoring uninhabited session for bundle identifier: %s due to the request not having any collaborators: %@", v111, 0x16u);
        outlined destroy of NSObject?(v112, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27120C0](v112, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v113);
        MEMORY[0x1B27120C0](v113, -1, -1);
        MEMORY[0x1B27120C0](v111, -1, -1);
      }

      v115 = v132;
      lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
      v116 = swift_allocError();
      *v117 = 7;
      v115(0, v116);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    return;
  }

  v96 = v7;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v140[0] = v100;
    *v99 = 136315138;
    LOBYTE(v138) = v95();
    v101 = String.init<A>(reflecting:)();
    v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v140);

    *(v99 + 4) = v103;
    _os_log_impl(&dword_1AEB26000, v97, v98, "Found existing presence session. Failing for duplicate session creation request. existingSessionState: %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    MEMORY[0x1B27120C0](v100, -1, -1);
    MEMORY[0x1B27120C0](v99, -1, -1);
  }

  v104 = v132;
  lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
  v105 = swift_allocError();
  *v106 = 4;
  v104(0, v105);
}

uint64_t closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[19] = v7;
  v8 = *(v7 - 8);
  v6[20] = v8;
  v9 = *(v8 + 64) + 15;
  v6[21] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[22] = v10;
  v11 = *(v10 - 8);
  v6[23] = v11;
  v12 = *(v11 + 64) + 15;
  v6[24] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOG_GMR);
  v6[25] = v13;
  v14 = *(v13 - 8);
  v6[26] = v14;
  v15 = *(v14 + 64) + 15;
  v6[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:), 0, 0);
}

uint64_t closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:)()
{
  v1 = v0[27];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGGMR);
  AsyncPublisher.makeAsyncIterator()();
  swift_beginAccess();
  swift_beginAccess();
  v5 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceHostSession.State, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOG_GMR);
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:);
  v8 = v0[27];
  v9 = v0[25];

  return MEMORY[0x1EEE6D8C8](v0 + 30, v9, v5);
}

{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:);
  }

  else
  {
    v3 = closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  *(v0 + 241) = *(v0 + 240);
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:), 0, 0);
}

{
  if (*(v0 + 241) != 5)
  {
    v1 = *(v0 + 136);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if (*(v0 + 241) != 4)
      {

        goto LABEL_11;
      }

      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Log.service);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1AEB26000, v5, v6, "PresenceSession invalidated. Removing from list.", v7, 2u);
        MEMORY[0x1B27120C0](v7, -1, -1);
      }

      v8 = *(v0 + 144);

      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        v11 = *(v0 + 192);
        v12 = *(v0 + 168);
        v34 = *(v0 + 184);
        v35 = *(v0 + 176);
        v14 = *(v0 + 152);
        v13 = *(v0 + 160);
        v33 = *(&v3->isa + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue);
        v15 = swift_allocObject();
        *(v15 + 16) = v10;
        *(v15 + 24) = v3;
        *(v0 + 48) = partial apply for closure #1 in closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:);
        *(v0 + 56) = v15;
        *(v0 + 16) = MEMORY[0x1E69E9820];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        *(v0 + 40) = &block_descriptor_146;
        v16 = _Block_copy((v0 + 16));
        v31 = v10;
        v32 = v3;
        static DispatchQoS.unspecified.getter();
        *(v0 + 120) = MEMORY[0x1E69E7CC0];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x1B27106E0](0, v11, v12, v16);
        _Block_release(v16);

        (*(v13 + 8))(v12, v14);
        (*(v34 + 8))(v11, v35);

        v17 = *(v0 + 56);

LABEL_11:
        v18 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceHostSession.State, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOG_GMR);
        v19 = *(MEMORY[0x1E69E85A8] + 4);
        v20 = swift_task_alloc();
        *(v0 + 224) = v20;
        *v20 = v0;
        v20[1] = closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:);
        v21 = *(v0 + 216);
        v22 = *(v0 + 200);

        return MEMORY[0x1EEE6D8C8](v0 + 240, v22, v18);
      }

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1AEB26000, v23, v24, "Lost reference to presenceSession in state observer.", v25, 2u);
        MEMORY[0x1B27120C0](v25, -1, -1);
        v26 = v23;
      }

      else
      {
        v26 = v3;
        v3 = v23;
      }
    }
  }

  v27 = *(v0 + 192);
  v28 = *(v0 + 168);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

  v29 = *(v0 + 8);

  return v29();
}

{
  *(v0 + 112) = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

void closure #1 in closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:)(void *a1, void *a2)
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.service);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31[0] = v9;
    *v8 = 136315138;
    type metadata accessor for PresenceHostSession(0);
    v10 = v5;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v31);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Removing presenceSession %s from presenceSessions.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v14 = MEMORY[0x1E69E7D40];
  v15 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0xE8))(v31);
  v16 = specialized Set._Variant.remove(_:)(v5);
  v15(v31, 0);
  if (v16)
  {
  }

  else
  {
    v17 = v5;
    v18 = a2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31[0] = v22;
      *v21 = 136315394;
      type metadata accessor for PresenceHostSession(0);
      v23 = v17;
      v24 = String.init<A>(reflecting:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v31);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      (*((*v14 & *v18) + 0xD8))(v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore19PresenceHostSessionCGMd, &_sShy14CopresenceCore19PresenceHostSessionCGMR);
      v28 = String.init<A>(reflecting:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v31);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_1AEB26000, v19, v20, "Failed to remove presenceSession %s, session was, somehow, already removed. sessions: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);
    }
  }
}

void BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(void *a1, uint64_t a2, unint64_t a3, int a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v90 = a5;
  v82 = a4;
  v88 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v88 - 8);
  v12 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS();
  v84 = *(v86 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.service);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v89 = v17;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v81 = a2;
    v23 = v22;
    *&aBlock = v22;
    *v21 = 136315138;
    v98[0] = v17;
    type metadata accessor for BackgroundSessionCreationRequest();
    v24 = v17;
    v25 = String.init<A>(reflecting:)();
    v27 = v7;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &aBlock);

    *(v21 + 4) = v28;
    v7 = v27;
    _os_log_impl(&dword_1AEB26000, v18, v19, "Request to begin: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v29 = v23;
    a2 = v81;
    MEMORY[0x1B27120C0](v29, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  (*((*MEMORY[0x1E69E7D40] & *v7) + 0x120))(&aBlock, a2, a3);
  if (!v94)
  {
    outlined destroy of NSObject?(&aBlock, &_s14CopresenceCore18IDSServiceProtocol_pSgMd, &_s14CopresenceCore18IDSServiceProtocol_pSgMR);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v98[0] = v51;
      *v50 = 136315138;
      *&aBlock = a2;
      *(&aBlock + 1) = a3;

      v52 = String.init<A>(reflecting:)();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v98);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_1AEB26000, v48, v49, "Unknown service for bundle identifier: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1B27120C0](v51, -1, -1);
      MEMORY[0x1B27120C0](v50, -1, -1);
    }

    lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
    v55 = swift_allocError();
    *v56 = 2;
    v90();

    return;
  }

  outlined init with take of ContiguousBytes(&aBlock, v98);
  v30 = v89;
  v31 = *&v89[OBJC_IVAR___CPBackgroundSessionCreationRequest_members];
  v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_14CopresenceCore17AddressableMemberCs5NeverOTg504_s14e124Core24BackgroundSessionManagerC5begin7request16bundleIdentifier07processI010completionyAA0cD15CreationRequestC_SSs5Int32Vys5c11_pSgctFAA17gh4CSo8D6CXEfU_Tf1cn_n(v31);
  v33 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore17AddressableMemberC_SayAFGTt0g5Tf4g_n(v32);

  if ((v33 & 0xC000000000000001) != 0)
  {
    v34 = __CocoaSet.count.getter();
    if ((v31 & 0xC000000000000001) != 0)
    {
      goto LABEL_8;
    }

LABEL_19:
    if (v34 == *(v31 + 16))
    {
      goto LABEL_9;
    }

LABEL_20:
    v57 = v30;

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&aBlock = v61;
      *v60 = 136315394;
      *&v97[0] = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8TUHandleCGMd, &_sShySo8TUHandleCGMR);
      v62 = String.init<A>(reflecting:)();
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &aBlock);

      *(v60 + 4) = v64;
      *(v60 + 12) = 2080;
      *&v97[0] = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore17AddressableMemberCGMd, &_sShy14CopresenceCore17AddressableMemberCGMR);
      v65 = String.init<A>(reflecting:)();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &aBlock);

      *(v60 + 14) = v67;
      _os_log_impl(&dword_1AEB26000, v58, v59, "Error converting members: %s to %s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v61, -1, -1);
      MEMORY[0x1B27120C0](v60, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
    v69 = swift_allocError();
    v70 = 6;
    goto LABEL_24;
  }

  v34 = *(v33 + 16);
  if ((v31 & 0xC000000000000001) == 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  if (v34 != __CocoaSet.count.getter())
  {
    goto LABEL_20;
  }

LABEL_9:
  if (*(v30 + OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount))
  {
LABEL_14:
    v40 = *(v7 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue);
    outlined init with copy of UserNotificationCenter(v98, v97);
    v41 = swift_allocObject();
    *(v41 + 16) = v7;
    *(v41 + 24) = v30;
    *(v41 + 32) = a2;
    *(v41 + 40) = a3;
    *(v41 + 48) = v33;
    outlined init with take of ContiguousBytes(v97, v41 + 56);
    *(v41 + 96) = v90;
    *(v41 + 104) = a6;
    *(v41 + 112) = v82;
    v95 = partial apply for closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:);
    v96 = v41;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v93 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v94 = &block_descriptor_12_0;
    v42 = _Block_copy(&aBlock);
    v43 = v30;
    v44 = v7;

    v45 = v83;
    static DispatchQoS.unspecified.getter();
    v91 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v46 = v85;
    v47 = v88;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v45, v46, v42);
    _Block_release(v42);
    (*(v87 + 8))(v46, v47);
    (*(v84 + 8))(v45, v86);

LABEL_25:
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    return;
  }

  v35 = a2;
  v36 = v99;
  v37 = v100;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  v38 = (*(v37 + 16))(v36, v37);
  if (v38)
  {
    if (v38 >> 62)
    {
      v39 = __CocoaSet.count.getter();
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a2 = v35;

    if (v39 >= 1)
    {
      goto LABEL_14;
    }

    v71 = v30;

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77 = a2;
      v78 = v76;
      *&aBlock = v76;
      *v74 = 136315394;
      *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, a3, &aBlock);
      *(v74 + 12) = 2112;
      *(v74 + 14) = v71;
      *v75 = v71;
      v79 = v71;
      _os_log_impl(&dword_1AEB26000, v72, v73, "Ignoring uninhabited session for bundle identifier: %s due to the request not having any collaborators: %@", v74, 0x16u);
      outlined destroy of NSObject?(v75, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v75, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x1B27120C0](v78, -1, -1);
      MEMORY[0x1B27120C0](v74, -1, -1);
    }

    lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
    v69 = swift_allocError();
    v70 = 7;
LABEL_24:
    *v68 = v70;
    v90();

    goto LABEL_25;
  }

  __break(1u);
}