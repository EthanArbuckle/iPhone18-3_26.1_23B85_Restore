uint64_t static AspireApiEvaluationKeyMetadata.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || (specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for AspireApiEvaluationKeyMetadata(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiEvaluationKeyMetadata(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiEvaluationKeyMetadata(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiEvaluationKeyMetadata(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireApiEvaluationKeyMetadata(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || (specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireApiKeyStatus.decodeMessage<A>(decoder:)()
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
      closure #2 in AspireApiKeyStatus.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #2 in AspireApiKeyStatus.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireApiKeyStatus(0) + 24);
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiKeyStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AspireApiKeyStatus.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for AspireApiKeyStatus(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiKeyStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireApiKeyStatus(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 24), v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v13, type metadata accessor for AspireHeEvaluationKeyConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireHeEvaluationKeyConfig);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiKeyStatus(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiKeyStatus(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiKeyStatus(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiEvaluationKeys.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for AspireApiEvaluationKey(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for AspireApiEvaluationKeys(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiEvaluationKeys(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeys and conformance AspireApiEvaluationKeys, type metadata accessor for AspireApiEvaluationKeys);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiEvaluationKeys(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeys and conformance AspireApiEvaluationKeys, type metadata accessor for AspireApiEvaluationKeys);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiEvaluationKeys(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeys and conformance AspireApiEvaluationKeys, type metadata accessor for AspireApiEvaluationKeys);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiEvaluationKey.decodeMessage<A>(decoder:)()
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
      closure #1 in AspireApiEvaluationKey.decodeMessage<A>(decoder:)();
    }

    else if (result == 2)
    {
      closure #2 in AspireApiEvaluationKey.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiEvaluationKey.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireApiEvaluationKey(0) + 20);
  type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in AspireApiEvaluationKey.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireApiEvaluationKey(0) + 24);
  type metadata accessor for AspireHeSerializedEvaluationKey(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeSerializedEvaluationKey and conformance AspireHeSerializedEvaluationKey, type metadata accessor for AspireHeSerializedEvaluationKey);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiEvaluationKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireApiEvaluationKey.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in AspireApiEvaluationKey.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiEvaluationKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireApiEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 20), v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v13, type metadata accessor for AspireApiEvaluationKeyMetadata);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireApiEvaluationKeyMetadata);
}

uint64_t closure #2 in AspireApiEvaluationKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireApiEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 24), v8, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v13, type metadata accessor for AspireHeSerializedEvaluationKey);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeSerializedEvaluationKey and conformance AspireHeSerializedEvaluationKey, type metadata accessor for AspireHeSerializedEvaluationKey);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireHeSerializedEvaluationKey);
}

uint64_t protocol witness for Message.init() in conformance AspireApiEvaluationKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiEvaluationKey(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiConfigRequest.decodeMessage<A>(decoder:)()
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
      dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
    }
  }

  return result;
}

uint64_t AspireApiConfigRequest.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v1))
  {
    if (!*(v0[1] + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for AspireApiConfigRequest(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static AspireApiConfigResponse.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void, void), uint64_t (*a5)(void))
{
  if ((a3(*a1, *a2) & 1) == 0 || (a4(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a5(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance AspireApiConfigRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v2;
  v3 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiConfigRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigRequest and conformance AspireApiConfigRequest, type metadata accessor for AspireApiConfigRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiConfigRequest(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigRequest and conformance AspireApiConfigRequest, type metadata accessor for AspireApiConfigRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiConfigRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigRequest and conformance AspireApiConfigRequest, type metadata accessor for AspireApiConfigRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v11 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v9 = *(type metadata accessor for AspireApiConfig(0) + 20);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 4)
      {
        v12 = *(type metadata accessor for AspireApiConfig(0) + 24);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1)
    {
      closure #1 in AspireApiConfig.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in AspireApiConfig.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspireApiPIRConfig(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AspireApiPIRConfigVSgMd, &_s8CipherML18AspireApiPIRConfigVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v22, type metadata accessor for AspireApiConfig.OneOf_Config);
    outlined init with take of AspireApiEvaluationKeyMetadata(v22, v19, type metadata accessor for AspireApiConfig.OneOf_Config);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireApiConfig.OneOf_Config);
      v34 = v49;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML18AspireApiPIRConfigVSgMd, &_s8CipherML18AspireApiPIRConfigVSgMR);
      v36 = v45;
      outlined init with take of AspireApiEvaluationKeyMetadata(v19, v45, type metadata accessor for AspireApiPIRConfig);
      outlined init with take of AspireApiEvaluationKeyMetadata(v36, v29, type metadata accessor for AspireApiPIRConfig);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRConfig and conformance AspireApiPIRConfig, type metadata accessor for AspireApiPIRConfig);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML18AspireApiPIRConfigVSgMd, &_s8CipherML18AspireApiPIRConfigVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML18AspireApiPIRConfigVSgMd, &_s8CipherML18AspireApiPIRConfigVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML18AspireApiPIRConfigVSgMd, &_s8CipherML18AspireApiPIRConfigVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML18AspireApiPIRConfigVSgMd, &_s8CipherML18AspireApiPIRConfigVSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of AspireApiEvaluationKeyMetadata(v37, v44, type metadata accessor for AspireApiPIRConfig);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML18AspireApiPIRConfigVSgMd, &_s8CipherML18AspireApiPIRConfigVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v40, v41, type metadata accessor for AspireApiPIRConfig);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t closure #2 in AspireApiConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspireApiPECConfig(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AspireApiPECConfigVSgMd, &_s8CipherML18AspireApiPECConfigVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v22, type metadata accessor for AspireApiConfig.OneOf_Config);
    outlined init with take of AspireApiEvaluationKeyMetadata(v22, v19, type metadata accessor for AspireApiConfig.OneOf_Config);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML18AspireApiPECConfigVSgMd, &_s8CipherML18AspireApiPECConfigVSgMR);
      v36 = v45;
      outlined init with take of AspireApiEvaluationKeyMetadata(v19, v45, type metadata accessor for AspireApiPECConfig);
      outlined init with take of AspireApiEvaluationKeyMetadata(v36, v29, type metadata accessor for AspireApiPECConfig);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireApiConfig.OneOf_Config);
      v34 = v49;
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECConfig and conformance AspireApiPECConfig, type metadata accessor for AspireApiPECConfig);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML18AspireApiPECConfigVSgMd, &_s8CipherML18AspireApiPECConfigVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML18AspireApiPECConfigVSgMd, &_s8CipherML18AspireApiPECConfigVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML18AspireApiPECConfigVSgMd, &_s8CipherML18AspireApiPECConfigVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML18AspireApiPECConfigVSgMd, &_s8CipherML18AspireApiPECConfigVSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of AspireApiEvaluationKeyMetadata(v37, v44, type metadata accessor for AspireApiPECConfig);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML18AspireApiPECConfigVSgMd, &_s8CipherML18AspireApiPECConfigVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v40, v41, type metadata accessor for AspireApiPECConfig);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t AspireApiConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6, &v23 - v12, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v14 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
LABEL_7:
    v16 = type metadata accessor for AspireApiConfig(0);
    v17 = (v6 + v16[5]);
    v18 = *v17;
    v19 = v17[1];
    v20 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v20 == 2)
      {
        v21 = v5;
        if (*(v18 + 16) == *(v18 + 24))
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v21 = v5;
    }

    else
    {
      v21 = v5;
      if (!v20)
      {
        if ((v19 & 0xFF000000000000) == 0)
        {
          goto LABEL_18;
        }

LABEL_15:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v21)
        {
          return result;
        }

        goto LABEL_18;
      }

      if (v18 != v18 >> 32)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    if (*(v6 + v16[6]) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v21))
    {
      v22 = v6 + v16[7];
      return UnknownStorage.traverse<A>(visitor:)();
    }

    return result;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AspireApiConfig.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  else
  {
    closure #1 in AspireApiConfig.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireApiConfig.OneOf_Config);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_7;
  }

  return result;
}

uint64_t closure #1 in AspireApiConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspireApiPIRConfig(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v13 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPIRConfig);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRConfig and conformance AspireApiPIRConfig, type metadata accessor for AspireApiPIRConfig);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiPIRConfig);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiConfig.OneOf_Config);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspireApiConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspireApiPECConfig(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v13 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPECConfig);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECConfig and conformance AspireApiPECConfig, type metadata accessor for AspireApiPECConfig);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiPECConfig);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiConfig.OneOf_Config);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireApiConfig@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_225022910;
  *(a2 + v5) = 0;
  v6 = a2 + a1[7];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiConfigResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        closure #1 in AspireApiConfigResponse.decodeMessage<A>(decoder:)();
      }

      else if (result == 2)
      {
        type metadata accessor for AspireApiKeyStatus(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiConfigResponse.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for AspireApiConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t AspireApiConfigResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for AspireApiConfig(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig), v1 = v4, result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v4))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for AspireApiKeyStatus(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for AspireApiConfigResponse(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireApiConfigResponse@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  a2[1] = v4;
  v5 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiConfigResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiConfigResponse(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiConfigResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireApiConfigRequest(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t (*a6)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0 || (a6(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireApiRequests.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for AspireApiRequest(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for AspireApiRequests(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiRequests(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequests and conformance AspireApiRequests, type metadata accessor for AspireApiRequests);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiRequests(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequests and conformance AspireApiRequests, type metadata accessor for AspireApiRequests);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiRequests(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequests and conformance AspireApiRequests, type metadata accessor for AspireApiRequests);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiResponses.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for AspireApiResponse(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for AspireApiResponses(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static AspireApiPECResponse.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiResponses(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponses and conformance AspireApiResponses, type metadata accessor for AspireApiResponses);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiResponses(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponses and conformance AspireApiResponses, type metadata accessor for AspireApiResponses);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiResponses(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponses and conformance AspireApiResponses, type metadata accessor for AspireApiResponses);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #3 in AspireApiRequest.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in AspireApiRequest.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      closure #2 in AspireApiRequest.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in AspireApiRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for AspireApiPIRRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML19AspireApiPIRRequestVSgMd, &_s8CipherML19AspireApiPIRRequestVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v52 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v45 - v28;
  v51 = v6;
  v30 = *(v6 + 56);
  v54 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v45 - v28, 1, 1, v31, v27);
  v33 = *(type metadata accessor for AspireApiRequest(0) + 20);
  v48 = a1;
  v46 = v33;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v33, v14, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v47 = v16;
  v34 = (*(v16 + 48))(v14, 1, v15);
  if (v34 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    v35 = v15;
    v36 = v54;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v22, type metadata accessor for AspireApiRequest.OneOf_Request);
    outlined init with take of AspireApiEvaluationKeyMetadata(v22, v19, type metadata accessor for AspireApiRequest.OneOf_Request);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireApiRequest.OneOf_Request);
      v36 = v54;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML19AspireApiPIRRequestVSgMd, &_s8CipherML19AspireApiPIRRequestVSgMR);
      v37 = v19;
      v38 = v49;
      outlined init with take of AspireApiEvaluationKeyMetadata(v37, v49, type metadata accessor for AspireApiPIRRequest);
      outlined init with take of AspireApiEvaluationKeyMetadata(v38, v29, type metadata accessor for AspireApiPIRRequest);
      v36 = v54;
      v32(v29, 0, 1, v54);
    }
  }

  v39 = v52;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRRequest and conformance AspireApiPIRRequest, type metadata accessor for AspireApiPIRRequest);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML19AspireApiPIRRequestVSgMd, &_s8CipherML19AspireApiPIRRequestVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v39, &_s8CipherML19AspireApiPIRRequestVSgMd, &_s8CipherML19AspireApiPIRRequestVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML19AspireApiPIRRequestVSgMd, &_s8CipherML19AspireApiPIRRequestVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML19AspireApiPIRRequestVSgMd, &_s8CipherML19AspireApiPIRRequestVSgMR);
  }

  else
  {
    v42 = v50;
    outlined init with take of AspireApiEvaluationKeyMetadata(v39, v50, type metadata accessor for AspireApiPIRRequest);
    if (v34 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML19AspireApiPIRRequestVSgMd, &_s8CipherML19AspireApiPIRRequestVSgMR);
    v43 = v48;
    v44 = v46;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v48 + v46, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v42, v43 + v44, type metadata accessor for AspireApiPIRRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v35);
  }
}

uint64_t closure #3 in AspireApiRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for AspireApiPECRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML19AspireApiPECRequestVSgMd, &_s8CipherML19AspireApiPECRequestVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v52 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v45 - v28;
  v51 = v6;
  v30 = *(v6 + 56);
  v54 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v45 - v28, 1, 1, v31, v27);
  v33 = *(type metadata accessor for AspireApiRequest(0) + 20);
  v48 = a1;
  v46 = v33;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v33, v14, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v47 = v16;
  v34 = (*(v16 + 48))(v14, 1, v15);
  if (v34 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    v35 = v15;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v22, type metadata accessor for AspireApiRequest.OneOf_Request);
    outlined init with take of AspireApiEvaluationKeyMetadata(v22, v19, type metadata accessor for AspireApiRequest.OneOf_Request);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML19AspireApiPECRequestVSgMd, &_s8CipherML19AspireApiPECRequestVSgMR);
      v36 = v19;
      v37 = v50;
      outlined init with take of AspireApiEvaluationKeyMetadata(v36, v50, type metadata accessor for AspireApiPECRequest);
      outlined init with take of AspireApiEvaluationKeyMetadata(v37, v29, type metadata accessor for AspireApiPECRequest);
      v38 = v54;
      v32(v29, 0, 1, v54);
      goto LABEL_7;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireApiRequest.OneOf_Request);
  }

  v38 = v54;
LABEL_7:
  v39 = v52;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECRequest and conformance AspireApiPECRequest, type metadata accessor for AspireApiPECRequest);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML19AspireApiPECRequestVSgMd, &_s8CipherML19AspireApiPECRequestVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v39, &_s8CipherML19AspireApiPECRequestVSgMd, &_s8CipherML19AspireApiPECRequestVSgMR);
  if ((*(v51 + 48))(v39, 1, v38) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML19AspireApiPECRequestVSgMd, &_s8CipherML19AspireApiPECRequestVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML19AspireApiPECRequestVSgMd, &_s8CipherML19AspireApiPECRequestVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of AspireApiEvaluationKeyMetadata(v39, v49, type metadata accessor for AspireApiPECRequest);
    if (v34 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML19AspireApiPECRequestVSgMd, &_s8CipherML19AspireApiPECRequestVSgMR);
    v43 = v48;
    v44 = v46;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v48 + v46, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v42, v43 + v44, type metadata accessor for AspireApiPECRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v35);
  }
}

uint64_t closure #4 in AspireApiRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for AspireApiOPRFRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML20AspireApiOPRFRequestVSgMd, &_s8CipherML20AspireApiOPRFRequestVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v52 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v45 - v28;
  v51 = v6;
  v30 = *(v6 + 56);
  v54 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v45 - v28, 1, 1, v31, v27);
  v33 = *(type metadata accessor for AspireApiRequest(0) + 20);
  v48 = a1;
  v46 = v33;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v33, v14, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v47 = v16;
  v34 = (*(v16 + 48))(v14, 1, v15);
  if (v34 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    v35 = v15;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v22, type metadata accessor for AspireApiRequest.OneOf_Request);
    outlined init with take of AspireApiEvaluationKeyMetadata(v22, v19, type metadata accessor for AspireApiRequest.OneOf_Request);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML20AspireApiOPRFRequestVSgMd, &_s8CipherML20AspireApiOPRFRequestVSgMR);
      v36 = v19;
      v37 = v50;
      outlined init with take of AspireApiEvaluationKeyMetadata(v36, v50, type metadata accessor for AspireApiOPRFRequest);
      outlined init with take of AspireApiEvaluationKeyMetadata(v37, v29, type metadata accessor for AspireApiOPRFRequest);
      v38 = v54;
      v32(v29, 0, 1, v54);
      goto LABEL_7;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireApiRequest.OneOf_Request);
  }

  v38 = v54;
LABEL_7:
  v39 = v52;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFRequest and conformance AspireApiOPRFRequest, type metadata accessor for AspireApiOPRFRequest);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML20AspireApiOPRFRequestVSgMd, &_s8CipherML20AspireApiOPRFRequestVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v39, &_s8CipherML20AspireApiOPRFRequestVSgMd, &_s8CipherML20AspireApiOPRFRequestVSgMR);
  if ((*(v51 + 48))(v39, 1, v38) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML20AspireApiOPRFRequestVSgMd, &_s8CipherML20AspireApiOPRFRequestVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v39, &_s8CipherML20AspireApiOPRFRequestVSgMd, &_s8CipherML20AspireApiOPRFRequestVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of AspireApiEvaluationKeyMetadata(v39, v49, type metadata accessor for AspireApiOPRFRequest);
    if (v34 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML20AspireApiOPRFRequestVSgMd, &_s8CipherML20AspireApiOPRFRequestVSgMR);
    v43 = v48;
    v44 = v46;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v48 + v46, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v42, v43 + v44, type metadata accessor for AspireApiOPRFRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v35);
  }
}

uint64_t AspireApiRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  v14 = *v3;
  v15 = v3[1];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v18 = type metadata accessor for AspireApiRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + *(v18 + 20), v13, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v19 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v19 - 8) + 48))(v13, 1, v19) == 1)
  {
    goto LABEL_13;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v21 = v5;
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in AspireApiRequest.traverse<A>(visitor:)(v6, a1, a2, a3);
    }

    else
    {
      closure #3 in AspireApiRequest.traverse<A>(visitor:)(v6, a1, a2, a3);
    }
  }

  else
  {
    v21 = v5;
    closure #1 in AspireApiRequest.traverse<A>(visitor:)(v6, a1, a2, a3);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireApiRequest.OneOf_Request);
  if (!v21)
  {
LABEL_13:
    v22 = v6 + *(v18 + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireApiPIRRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AspireApiRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v13 + 20), v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v14 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPIRRequest);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRRequest and conformance AspireApiPIRRequest, type metadata accessor for AspireApiPIRRequest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiPIRRequest);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiRequest.OneOf_Request);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspireApiRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireApiPECRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AspireApiRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v13 + 20), v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v14 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPECRequest);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECRequest and conformance AspireApiPECRequest, type metadata accessor for AspireApiPECRequest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiPECRequest);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiRequest.OneOf_Request);
  __break(1u);
  return result;
}

uint64_t closure #3 in AspireApiRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireApiOPRFRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AspireApiRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v13 + 20), v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v14 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiOPRFRequest);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFRequest and conformance AspireApiOPRFRequest, type metadata accessor for AspireApiOPRFRequest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiOPRFRequest);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiRequest.OneOf_Request);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireApiRequest@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = *(a1 + 20);
  v5 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiRequest(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        closure #3 in AspireApiResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 2:
        closure #2 in AspireApiResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 1:
        closure #1 in AspireApiResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspireApiPIRResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML20AspireApiPIRResponseVSgMd, &_s8CipherML20AspireApiPIRResponseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v22, type metadata accessor for AspireApiResponse.OneOf_Response);
    outlined init with take of AspireApiEvaluationKeyMetadata(v22, v19, type metadata accessor for AspireApiResponse.OneOf_Response);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireApiResponse.OneOf_Response);
      v34 = v49;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML20AspireApiPIRResponseVSgMd, &_s8CipherML20AspireApiPIRResponseVSgMR);
      v36 = v44;
      outlined init with take of AspireApiEvaluationKeyMetadata(v19, v44, type metadata accessor for AspireApiPIRResponse);
      outlined init with take of AspireApiEvaluationKeyMetadata(v36, v29, type metadata accessor for AspireApiPIRResponse);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRResponse and conformance AspireApiPIRResponse, type metadata accessor for AspireApiPIRResponse);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML20AspireApiPIRResponseVSgMd, &_s8CipherML20AspireApiPIRResponseVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML20AspireApiPIRResponseVSgMd, &_s8CipherML20AspireApiPIRResponseVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML20AspireApiPIRResponseVSgMd, &_s8CipherML20AspireApiPIRResponseVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML20AspireApiPIRResponseVSgMd, &_s8CipherML20AspireApiPIRResponseVSgMR);
  }

  else
  {
    v40 = v45;
    outlined init with take of AspireApiEvaluationKeyMetadata(v37, v45, type metadata accessor for AspireApiPIRResponse);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML20AspireApiPIRResponseVSgMd, &_s8CipherML20AspireApiPIRResponseVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v40, v41, type metadata accessor for AspireApiPIRResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t closure #2 in AspireApiResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspireApiPECResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML20AspireApiPECResponseVSgMd, &_s8CipherML20AspireApiPECResponseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v22, type metadata accessor for AspireApiResponse.OneOf_Response);
    outlined init with take of AspireApiEvaluationKeyMetadata(v22, v19, type metadata accessor for AspireApiResponse.OneOf_Response);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML20AspireApiPECResponseVSgMd, &_s8CipherML20AspireApiPECResponseVSgMR);
      v36 = v45;
      outlined init with take of AspireApiEvaluationKeyMetadata(v19, v45, type metadata accessor for AspireApiPECResponse);
      outlined init with take of AspireApiEvaluationKeyMetadata(v36, v29, type metadata accessor for AspireApiPECResponse);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireApiResponse.OneOf_Response);
      v34 = v49;
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECResponse and conformance AspireApiPECResponse, type metadata accessor for AspireApiPECResponse);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML20AspireApiPECResponseVSgMd, &_s8CipherML20AspireApiPECResponseVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML20AspireApiPECResponseVSgMd, &_s8CipherML20AspireApiPECResponseVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML20AspireApiPECResponseVSgMd, &_s8CipherML20AspireApiPECResponseVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML20AspireApiPECResponseVSgMd, &_s8CipherML20AspireApiPECResponseVSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of AspireApiEvaluationKeyMetadata(v37, v44, type metadata accessor for AspireApiPECResponse);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML20AspireApiPECResponseVSgMd, &_s8CipherML20AspireApiPECResponseVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v40, v41, type metadata accessor for AspireApiPECResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t closure #3 in AspireApiResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspireApiOPRFResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML21AspireApiOPRFResponseVSgMd, &_s8CipherML21AspireApiOPRFResponseVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v22, type metadata accessor for AspireApiResponse.OneOf_Response);
    outlined init with take of AspireApiEvaluationKeyMetadata(v22, v19, type metadata accessor for AspireApiResponse.OneOf_Response);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML21AspireApiOPRFResponseVSgMd, &_s8CipherML21AspireApiOPRFResponseVSgMR);
      v36 = v45;
      outlined init with take of AspireApiEvaluationKeyMetadata(v19, v45, type metadata accessor for AspireApiOPRFResponse);
      outlined init with take of AspireApiEvaluationKeyMetadata(v36, v29, type metadata accessor for AspireApiOPRFResponse);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireApiResponse.OneOf_Response);
      v34 = v49;
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFResponse and conformance AspireApiOPRFResponse, type metadata accessor for AspireApiOPRFResponse);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML21AspireApiOPRFResponseVSgMd, &_s8CipherML21AspireApiOPRFResponseVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML21AspireApiOPRFResponseVSgMd, &_s8CipherML21AspireApiOPRFResponseVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML21AspireApiOPRFResponseVSgMd, &_s8CipherML21AspireApiOPRFResponseVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML21AspireApiOPRFResponseVSgMd, &_s8CipherML21AspireApiOPRFResponseVSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of AspireApiEvaluationKeyMetadata(v37, v44, type metadata accessor for AspireApiOPRFResponse);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML21AspireApiOPRFResponseVSgMd, &_s8CipherML21AspireApiOPRFResponseVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v40, v41, type metadata accessor for AspireApiOPRFResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t AspireApiResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, &v16 - v10, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v12 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in AspireApiResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in AspireApiResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in AspireApiResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiResponse.OneOf_Response);
  if (!v4)
  {
LABEL_8:
    v15 = v3 + *(type metadata accessor for AspireApiResponse(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspireApiPIRResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v13 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPIRResponse);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRResponse and conformance AspireApiPIRResponse, type metadata accessor for AspireApiPIRResponse);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiPIRResponse);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiResponse.OneOf_Response);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspireApiResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspireApiPECResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v13 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPECResponse);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECResponse and conformance AspireApiPECResponse, type metadata accessor for AspireApiPECResponse);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiPECResponse);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiResponse.OneOf_Response);
  __break(1u);
  return result;
}

uint64_t closure #3 in AspireApiResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspireApiOPRFResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v13 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiOPRFResponse);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFResponse and conformance AspireApiOPRFResponse, type metadata accessor for AspireApiOPRFResponse);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiOPRFResponse);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiResponse.OneOf_Response);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiResponse(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPIRShardConfig.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v1 = *(type metadata accessor for AspireApiPIRShardConfig(0) + 32);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 5:
          v5 = *(type metadata accessor for AspireApiPIRShardConfig(0) + 36);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 6:
          v4 = *(type metadata accessor for AspireApiPIRShardConfig(0) + 40);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
      }
    }

    else if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 3)
    {
      dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t AspireApiPIRShardConfig.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
    {
      if (!*(v0[2] + 16) || (result = dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)(), !v1))
      {
        result = closure #1 in AspireApiPIRShardConfig.traverse<A>(visitor:)(v0);
        if (!v1)
        {
          closure #2 in AspireApiPIRShardConfig.traverse<A>(visitor:)(v0);
          closure #3 in AspireApiPIRShardConfig.traverse<A>(visitor:)(v0);
          v3 = v0 + *(type metadata accessor for AspireApiPIRShardConfig(0) + 28);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRShardConfig.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for AspireApiPIRShardConfig(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in AspireApiPIRShardConfig.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for AspireApiPIRShardConfig(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in AspireApiPIRShardConfig.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for AspireApiPIRShardConfig(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireApiPIRShardConfig@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x277D84F90];
  v4 = a2 + a1[7];
  result = UnknownStorage.init()();
  v6 = a1[9];
  v7 = (a2 + a1[8]);
  *v7 = 0;
  v7[1] = 0;
  *(a2 + v6) = 2;
  v8 = a2 + a1[10];
  *v8 = 0;
  v8[8] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPIRShardConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfig and conformance AspireApiPIRShardConfig, type metadata accessor for AspireApiPIRShardConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPIRShardConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfig and conformance AspireApiPIRShardConfig, type metadata accessor for AspireApiPIRShardConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPIRShardConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfig and conformance AspireApiPIRShardConfig, type metadata accessor for AspireApiPIRShardConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for defaultInstance()
{
  v0 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  v5 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs) = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  v7 = type metadata accessor for AspirePirKeywordPirParameters(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = v3 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize) = 0;
  *(v3 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash) = xmmword_225022910;
  v9 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  v10 = type metadata accessor for AspirePirBatchPirParameters(0);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  v12 = type metadata accessor for AspireApiPIRShardConfigs(0);
  result = (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  static AspireApiPIRConfig._StorageClass.defaultInstance = v3;
  return result;
}

uint64_t AspireApiPIRConfig._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v51 - v14;
  v16 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  v17 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  *(v1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs) = MEMORY[0x277D84F90];
  v19 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  v52 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  v20 = type metadata accessor for AspirePirKeywordPirParameters(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = v1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  *v21 = 0;
  *(v21 + 8) = 1;
  v53 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  *(v1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize) = 0;
  v22 = (v1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  *(v1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash) = xmmword_225022910;
  v23 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  v55 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  v24 = type metadata accessor for AspirePirBatchPirParameters(0);
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  v56 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  v26 = type metadata accessor for AspireApiPIRShardConfigs(0);
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v27, v15, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v15, v1 + v16, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  v29 = *(a1 + v28);
  swift_beginAccess();
  v30 = *(v1 + v18);
  *(v1 + v18) = v29;

  v31 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  v32 = v54;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v31, v54, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v33 = v52;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v32, v1 + v33, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  swift_endAccess();
  v34 = (a1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm);
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 8);
  swift_beginAccess();
  *v21 = v35;
  *(v21 + 8) = v34;
  v36 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  swift_beginAccess();
  v37 = *(a1 + v36);
  v38 = v53;
  swift_beginAccess();
  *(v1 + v38) = v37;
  v39 = (a1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v41 = *v39;
  v40 = v39[1];
  swift_beginAccess();
  v42 = *v22;
  v43 = v22[1];
  *v22 = v41;
  v22[1] = v40;
  outlined copy of Data._Representation(v41, v40);
  outlined consume of Data._Representation(v42, v43);
  v44 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  v45 = v57;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v44, v57, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v46 = v55;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v45, v1 + v46, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  v48 = v58;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v47, v58, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);

  v49 = v56;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v48, v1 + v49, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t AspireApiPIRConfig._StorageClass.__deallocating_deinit()
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  outlined consume of Data._Representation(*(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash), *(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash + 8));
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t AspireApiPIRConfig.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v0 + v2);
    v7 = type metadata accessor for AspireApiPIRConfig._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    *(v1 + v2) = AspireApiPIRConfig._StorageClass.init(copying:)(v6);
  }

  return closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)();
}

uint64_t closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 8)
      {
        if (result == 9)
        {
          closure #7 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)();
        }

        else if (result == 10)
        {
          closure #8 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)();
        }
      }

      else if (result == 5)
      {
        closure #5 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)();
      }

      else if (result == 6)
      {
        closure #6 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)();
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)();
      }

      else
      {
        closure #4 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)();
      }
    }

    else if (result == 1)
    {
      closure #1 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)();
    }

    else if (result == 2)
    {
      closure #2 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for AspireHeEncryptionParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for AspireApiPIRShardConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfig and conformance AspireApiPIRShardConfig, type metadata accessor for AspireApiPIRShardConfig);
  dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for AspirePirKeywordPirParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBytesField(value:)();
  return swift_endAccess();
}

uint64_t closure #7 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for AspirePirBatchPirParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspirePirBatchPirParameters and conformance AspirePirBatchPirParameters, type metadata accessor for AspirePirBatchPirParameters);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #8 in closure #1 in AspireApiPIRConfig.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for AspireApiPIRShardConfigs(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfigs and conformance AspireApiPIRShardConfigs, type metadata accessor for AspireApiPIRShardConfigs);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t AspireApiPIRConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for AspireApiPIRConfig(0);
  result = closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = closure #1 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(a1, a2, a3, a4);
  if (!v4)
  {
    v10 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for AspireApiPIRShardConfig(0);
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfig and conformance AspireApiPIRShardConfig, type metadata accessor for AspireApiPIRShardConfig);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    closure #2 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(a1, a2, a3, a4);
    v11 = a1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
    swift_beginAccess();
    if (*v11)
    {
      v19 = *v11;
      v20 = *(v11 + 8);
      lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
    swift_beginAccess();
    if (*(a1 + v12))
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v13 = (a1 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];
    v16 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_17;
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
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v17 = v14;
      v18 = v14 >> 32;
    }

    if (v17 != v18)
    {
LABEL_16:
      outlined copy of Data._Representation(v14, v15);
      dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      outlined consume of Data._Representation(v14, v15);
    }

LABEL_17:
    closure #3 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(a1, a2, a3, a4);
    return closure #4 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(a1, a2, a3, a4);
  }

  return result;
}

uint64_t closure #1 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireHeEncryptionParameters(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v13, type metadata accessor for AspireHeEncryptionParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireHeEncryptionParameters);
}

uint64_t closure #2 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v8, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v13, type metadata accessor for AspirePirKeywordPirParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspirePirKeywordPirParameters and conformance AspirePirKeywordPirParameters, type metadata accessor for AspirePirKeywordPirParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspirePirKeywordPirParameters);
}

uint64_t closure #3 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspirePirBatchPirParameters(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v8, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v13, type metadata accessor for AspirePirBatchPirParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspirePirBatchPirParameters and conformance AspirePirBatchPirParameters, type metadata accessor for AspirePirBatchPirParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspirePirBatchPirParameters);
}

uint64_t closure #4 in closure #1 in AspireApiPIRConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireApiPIRShardConfigs(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v8, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v13, type metadata accessor for AspireApiPIRShardConfigs);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfigs and conformance AspireApiPIRShardConfigs, type metadata accessor for AspireApiPIRShardConfigs);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireApiPIRShardConfigs);
}

BOOL closure #1 in static AspireApiPIRConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v149 = a2;
  v3 = type metadata accessor for AspireApiPIRShardConfigs(0);
  v128 = *(v3 - 8);
  v129 = v3;
  v4 = *(v128 + 64);
  MEMORY[0x28223BE20](v3);
  v124 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSg_ADtMd, &_s8CipherML24AspireApiPIRShardConfigsVSg_ADtMR);
  v6 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v130 = &v123 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v125 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v135 = &v123 - v12;
  v13 = type metadata accessor for AspirePirBatchPirParameters(0);
  v132 = *(v13 - 8);
  v133 = v13;
  v14 = *(v132 + 64);
  MEMORY[0x28223BE20](v13);
  v126 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMd, &_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMR);
  v16 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v134 = &v123 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v143 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v136 = &v123 - v22;
  v23 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v140 = *(v23 - 8);
  v141 = v23;
  v24 = *(v140 + 64);
  MEMORY[0x28223BE20](v23);
  v137 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMd, &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMR);
  v26 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v142 = &v123 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v138 = &v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v145 = &v123 - v32;
  v146 = type metadata accessor for AspireHeEncryptionParameters(0);
  v33 = *(v146 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v146);
  v144 = &v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v123 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v147 = &v123 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = &v123 - v45;
  v47 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  v148 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v47, v46, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v48 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  v49 = v149;
  swift_beginAccess();
  v50 = *(v37 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v46, v40, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v49 + v48, &v40[v50], &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v51 = *(v33 + 48);
  v52 = v146;
  if ((v51)(v40, 1) == 1)
  {
    v53 = v148;

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    v54 = v51(&v40[v50], 1, v52);
    v55 = v49;
    v56 = v53;
    if (v54 == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v58 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd;
    v59 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR;
    v60 = v40;
LABEL_7:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v60, v58, v59);
LABEL_39:

    return 0;
  }

  v57 = v148;
  v55 = v49;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v40, v147, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (v51(&v40[v50], 1, v52) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v147, type metadata accessor for AspireHeEncryptionParameters);
    goto LABEL_6;
  }

  v61 = v144;
  outlined init with take of AspireApiEvaluationKeyMetadata(&v40[v50], v144, type metadata accessor for AspireHeEncryptionParameters);
  v56 = v57;

  v62 = v147;
  v63 = static AspireHeEncryptionParameters.== infix(_:_:)(v147, v61);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v61, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v62, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((v63 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_9:
  v64 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  v65 = *(v56 + v64);
  v66 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  v67 = *(v55 + v66);

  v68 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML23AspireApiPIRShardConfigV_Tt1g5(v65, v67);

  if ((v68 & 1) == 0)
  {
    goto LABEL_39;
  }

  v69 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  v70 = v145;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v56 + v69, v145, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v71 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__keywordPirParams;
  swift_beginAccess();
  v72 = *(v139 + 48);
  v73 = v142;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v70, v142, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v55 + v71, v73 + v72, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v74 = v141;
  v75 = *(v140 + 48);
  if (v75(v73, 1, v141) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v70, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    v76 = v75(v73 + v72, 1, v74);
    v77 = v143;
    if (v76 == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v73, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v78 = v138;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v73, v138, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v79 = v75(v73 + v72, 1, v74);
  v77 = v143;
  if (v79 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v145, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v78, type metadata accessor for AspirePirKeywordPirParameters);
LABEL_15:
    v58 = &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMd;
    v59 = &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMR;
    v60 = v73;
    goto LABEL_7;
  }

  v80 = v73 + v72;
  v81 = v137;
  outlined init with take of AspireApiEvaluationKeyMetadata(v80, v137, type metadata accessor for AspirePirKeywordPirParameters);
  v82 = static AspirePirKeywordPirParameters.== infix(_:_:)(v78, v81);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v81, type metadata accessor for AspirePirKeywordPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v145, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v78, type metadata accessor for AspirePirKeywordPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v73, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  if ((v82 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_17:
  v83 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm;
  swift_beginAccess();
  v84 = *(v56 + v83);
  v85 = (v55 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__algorithm);
  swift_beginAccess();
  v86 = *v85;
  if (*(v85 + 8) == 1)
  {
    if (v86)
    {
      if (v86 == 1)
      {
        if (v84 != 1)
        {
          goto LABEL_39;
        }
      }

      else if (v84 != 2)
      {
        goto LABEL_39;
      }
    }

    else if (v84)
    {
      goto LABEL_39;
    }
  }

  else if (v84 != v86)
  {
    goto LABEL_39;
  }

  v87 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  swift_beginAccess();
  v88 = *(v56 + v87);
  v89 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  swift_beginAccess();
  if (v88 != *(v55 + v89))
  {
    goto LABEL_39;
  }

  v90 = (v56 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v92 = *v90;
  v91 = v90[1];
  v93 = (v55 + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v95 = *v93;
  v94 = v93[1];
  outlined copy of Data._Representation(v92, v91);
  outlined copy of Data._Representation(v95, v94);
  v96 = specialized static Data.== infix(_:_:)(v92, v91, v95, v94);
  outlined consume of Data._Representation(v95, v94);
  outlined consume of Data._Representation(v92, v91);
  if ((v96 & 1) == 0)
  {
    goto LABEL_39;
  }

  v97 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  v98 = v136;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v56 + v97, v136, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v99 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  v100 = *(v131 + 48);
  v101 = v134;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v98, v134, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v102 = v101;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v55 + v99, v101 + v100, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v103 = v133;
  v104 = *(v132 + 48);
  if (v104(v101, 1, v133) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v98, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    v105 = v104(v101 + v100, 1, v103);
    v106 = v135;
    if (v105 == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v102, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v101, v77, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v107 = v104(v101 + v100, 1, v103);
  v106 = v135;
  if (v107 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v136, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v77, type metadata accessor for AspirePirBatchPirParameters);
LABEL_34:
    v58 = &_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMd;
    v59 = &_s8CipherML014AspirePirBatchD10ParametersVSg_ADtMR;
    v60 = v102;
    goto LABEL_7;
  }

  v108 = v126;
  outlined init with take of AspireApiEvaluationKeyMetadata(v102 + v100, v126, type metadata accessor for AspirePirBatchPirParameters);
  v109 = static AspirePirBatchPirParameters.== infix(_:_:)(v77, v108);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v108, type metadata accessor for AspirePirBatchPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v136, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v77, type metadata accessor for AspirePirBatchPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v102, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  if ((v109 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  v110 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v56 + v110, v106, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v111 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__pirShardConfigs;
  swift_beginAccess();
  v112 = *(v127 + 48);
  v113 = v106;
  v114 = v106;
  v115 = v130;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v113, v130, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v55 + v111, v115 + v112, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  v116 = v129;
  v117 = *(v128 + 48);
  if (v117(v115, 1, v129) != 1)
  {
    v119 = v125;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v115, v125, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    if (v117(v115 + v112, 1, v116) == 1)
    {

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v135, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v119, type metadata accessor for AspireApiPIRShardConfigs);
      goto LABEL_43;
    }

    v120 = v115 + v112;
    v121 = v124;
    outlined init with take of AspireApiEvaluationKeyMetadata(v120, v124, type metadata accessor for AspireApiPIRShardConfigs);
    v122 = specialized static AspireApiPIRShardConfigs.== infix(_:_:)(v119, v121);

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v121, type metadata accessor for AspireApiPIRShardConfigs);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v135, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v119, type metadata accessor for AspireApiPIRShardConfigs);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v115, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
    return (v122 & 1) != 0;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v114, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  if (v117(v115 + v112, 1, v116) != 1)
  {
LABEL_43:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v115, &_s8CipherML24AspireApiPIRShardConfigsVSg_ADtMd, &_s8CipherML24AspireApiPIRShardConfigsVSg_ADtMR);
    return 0;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v115, &_s8CipherML24AspireApiPIRShardConfigsVSgMd, &_s8CipherML24AspireApiPIRShardConfigsVSgMR);
  return 1;
}

uint64_t protocol witness for Message.init() in conformance AspireApiPIRConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static AspireApiPIRConfig._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPIRConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRConfig and conformance AspireApiPIRConfig, type metadata accessor for AspireApiPIRConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPIRConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRConfig and conformance AspireApiPIRConfig, type metadata accessor for AspireApiPIRConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPIRConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRConfig and conformance AspireApiPIRConfig, type metadata accessor for AspireApiPIRConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPIRShardConfigs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in AspireApiPIRShardConfigs.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRShardConfigs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a1;
  v4 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireApiPIRFixedShardConfigVSgMd, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v44 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v38 - v27;
  v42 = v5;
  v29 = *(v5 + 56);
  v45 = v4;
  v29(&v38 - v27, 1, 1, v4, v26);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v50, v13, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v39 = v15;
  v40 = v14;
  v30 = (*(v15 + 48))(v13, 1, v14);
  if (v30 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
    v31 = v45;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v13, v21, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
    outlined init with take of AspireApiEvaluationKeyMetadata(v21, v18, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v28, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMd, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMR);
    v32 = v43;
    outlined init with take of AspireApiEvaluationKeyMetadata(v18, v43, type metadata accessor for AspireApiPIRFixedShardConfig);
    outlined init with take of AspireApiEvaluationKeyMetadata(v32, v28, type metadata accessor for AspireApiPIRFixedShardConfig);
    v31 = v45;
    (v29)(v28, 0, 1, v45);
  }

  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRFixedShardConfig and conformance AspireApiPIRFixedShardConfig, type metadata accessor for AspireApiPIRFixedShardConfig);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  v34 = v44;
  if (v33)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v28, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMd, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v28, v44, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMd, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMR);
  if ((*(v42 + 48))(v34, 1, v31) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v28, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMd, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMd, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMR);
  }

  else
  {
    v36 = v41;
    outlined init with take of AspireApiEvaluationKeyMetadata(v34, v41, type metadata accessor for AspireApiPIRFixedShardConfig);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v28, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMd, &_s8CipherML28AspireApiPIRFixedShardConfigVSgMR);
    v37 = v50;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v50, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v36, v37, type metadata accessor for AspireApiPIRFixedShardConfig);
    return (*(v39 + 56))(v37, 0, 1, v40);
  }
}

uint64_t AspireApiPIRShardConfigs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireApiPIRShardConfigs.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = v3 + *(type metadata accessor for AspireApiPIRShardConfigs(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRShardConfigs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v13 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiPIRFixedShardConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRFixedShardConfig and conformance AspireApiPIRFixedShardConfig, type metadata accessor for AspireApiPIRFixedShardConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiPIRFixedShardConfig);
}

uint64_t protocol witness for Message.init() in conformance AspireApiResponse@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPIRShardConfigs(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfigs and conformance AspireApiPIRShardConfigs, type metadata accessor for AspireApiPIRShardConfigs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPIRShardConfigs(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfigs and conformance AspireApiPIRShardConfigs, type metadata accessor for AspireApiPIRShardConfigs);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPIRShardConfigs(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfigs and conformance AspireApiPIRShardConfigs, type metadata accessor for AspireApiPIRShardConfigs);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPIRFixedShardConfig.decodeMessage<A>(decoder:)()
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
      closure #1 in AspireApiPIRFixedShardConfig.decodeMessage<A>(decoder:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRFixedShardConfig.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireApiPIRFixedShardConfig(0) + 24);
  type metadata accessor for AspireApiPIRShardConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfig and conformance AspireApiPIRShardConfig, type metadata accessor for AspireApiPIRShardConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiPIRFixedShardConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireApiPIRFixedShardConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    v6 = v3 + *(type metadata accessor for AspireApiPIRFixedShardConfig(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRFixedShardConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireApiPIRShardConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 24), v8, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v13, type metadata accessor for AspireApiPIRShardConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRShardConfig and conformance AspireApiPIRShardConfig, type metadata accessor for AspireApiPIRShardConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireApiPIRShardConfig);
}

uint64_t protocol witness for Message.init() in conformance AspireApiPIRFixedShardConfig@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for AspireApiPIRShardConfig(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPIRFixedShardConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRFixedShardConfig and conformance AspireApiPIRFixedShardConfig, type metadata accessor for AspireApiPIRFixedShardConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPIRFixedShardConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRFixedShardConfig and conformance AspireApiPIRFixedShardConfig, type metadata accessor for AspireApiPIRFixedShardConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPIRFixedShardConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRFixedShardConfig and conformance AspireApiPIRFixedShardConfig, type metadata accessor for AspireApiPIRFixedShardConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPIRRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
        case 5:
          v11 = *(type metadata accessor for AspireApiPIRRequest(0) + 36);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 6:
          closure #6 in AspireApiPIRRequest.decodeMessage<A>(decoder:)();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 2:
          closure #2 in AspireApiPIRRequest.decodeMessage<A>(decoder:)();
          break;
        case 3:
          closure #3 in AspireApiPIRRequest.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for AspireApiPIRRequest);
          break;
      }
    }
  }

  return result;
}

uint64_t closure #2 in AspireApiPIRRequest.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireApiPIRRequest(0) + 28);
  type metadata accessor for AspirePirEncryptedIndices(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #6 in AspireApiPIRRequest.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireApiPIRRequest(0) + 40);
  type metadata accessor for AspireApiEvaluationKey(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiPIRRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AspireApiPIRRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in AspireApiPIRRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AspireApiPIRRequest);
      v9 = *(v3 + 8);
      v10 = *(v3 + 16);
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v11 != 2)
        {
          goto LABEL_13;
        }

        v12 = *(v9 + 16);
        v13 = *(v9 + 24);
      }

      else
      {
        if (!v11)
        {
          if ((v10 & 0xFF000000000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

        v12 = v9;
        v13 = v9 >> 32;
      }

      if (v12 != v13)
      {
LABEL_12:
        dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      }

LABEL_13:
      closure #3 in AspireApiPIRRequest.traverse<A>(visitor:)(v3);
      closure #4 in AspireApiPIRRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
      v14 = v3 + *(type metadata accessor for AspireApiPIRRequest(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspirePirEncryptedIndices(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireApiPIRRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 28), v8, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v13, type metadata accessor for AspirePirEncryptedIndices);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspirePirEncryptedIndices);
}

uint64_t closure #3 in AspireApiPIRRequest.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for AspireApiPIRRequest(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in AspireApiPIRRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireApiEvaluationKey(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireApiPIRRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 40), v8, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v13, type metadata accessor for AspireApiEvaluationKey);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireApiEvaluationKey);
}

uint64_t protocol witness for Message.init() in conformance AspireApiPIRRequest@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_225022910;
  v4 = a2 + a1[6];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = type metadata accessor for AspirePirEncryptedIndices(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[9];
  v10 = a1[10];
  v11 = (a2 + v9);
  *v11 = 0;
  v11[1] = 0;
  v12 = type metadata accessor for AspireApiEvaluationKey(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2 + v10, 1, 1, v12);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPIRRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRRequest and conformance AspireApiPIRRequest, type metadata accessor for AspireApiPIRRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPIRRequest(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRRequest and conformance AspireApiPIRRequest, type metadata accessor for AspireApiPIRRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPIRRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRRequest and conformance AspireApiPIRRequest, type metadata accessor for AspireApiPIRRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPIRResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for AspireHeSerializedCiphertextVec(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        closure #2 in AspireApiPIRResponse.decodeMessage<A>(decoder:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in AspireApiPIRResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireApiPIRResponse(0) + 24);
  type metadata accessor for AspireApiStashOfEntries(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiStashOfEntries and conformance AspireApiStashOfEntries, type metadata accessor for AspireApiStashOfEntries);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiPIRResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AspireHeSerializedCiphertextVec(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in AspireApiPIRResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for AspireApiPIRResponse(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiPIRResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireApiStashOfEntries(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireApiPIRResponse(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 24), v8, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v13, type metadata accessor for AspireApiStashOfEntries);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiStashOfEntries and conformance AspireApiStashOfEntries, type metadata accessor for AspireApiStashOfEntries);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireApiStashOfEntries);
}

uint64_t protocol witness for Message.init() in conformance AspireApiKeyStatus@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, char *a4@<X8>)
{
  *a4 = a2;
  v7 = &a4[*(a1 + 20)];
  UnknownStorage.init()();
  v8 = *(a1 + 24);
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a4[v8], 1, 1, v9);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPIRResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRResponse and conformance AspireApiPIRResponse, type metadata accessor for AspireApiPIRResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPIRResponse(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRResponse and conformance AspireApiPIRResponse, type metadata accessor for AspireApiPIRResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPIRResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPIRResponse and conformance AspireApiPIRResponse, type metadata accessor for AspireApiPIRResponse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPECConfig.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            closure #1 in AspireApiPECConfig.decodeMessage<A>(decoder:)();
            break;
          case 2:
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            break;
          case 3:
            closure #3 in AspireApiPECConfig.decodeMessage<A>(decoder:)();
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        }

        else if (result == 7)
        {
          dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
        }
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else
      {
        lazy protocol witness table accessor for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiPECConfig.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireApiPECConfig(0) + 40);
  type metadata accessor for AspireHeEncryptionParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in AspireApiPECConfig.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireApiPECConfig(0) + 44);
  type metadata accessor for AspireSimilarityPlaintextPacking(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiPECConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireApiPECConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  if (*v3)
  {
    dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  closure #2 in AspireApiPECConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (*(v3 + 8))
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v3 + 24) & 1) == 0 && *(v3 + 16))
  {
    v15 = *(v3 + 16);
    lazy protocol witness table accessor for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
  }

  else
  {
    if (!v11)
    {
      if ((v10 & 0xFF000000000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v12 = v9;
    v13 = v9 >> 32;
  }

  if (v12 != v13)
  {
LABEL_17:
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  }

LABEL_18:
  if (*(*(v3 + 48) + 16))
  {
    dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
  }

  v14 = v3 + *(type metadata accessor for AspireApiPECConfig(0) + 36);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in AspireApiPECConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireHeEncryptionParameters(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireApiPECConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 40), v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v13, type metadata accessor for AspireHeEncryptionParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireHeEncryptionParameters);
}

uint64_t closure #2 in AspireApiPECConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireApiPECConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 44), v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v13, type metadata accessor for AspireSimilarityPlaintextPacking);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireSimilarityPlaintextPacking);
}

uint64_t protocol witness for Message.init() in conformance AspireApiPECConfig@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = xmmword_225022910;
  *(a2 + 48) = MEMORY[0x277D84F90];
  v4 = a2 + a1[9];
  UnknownStorage.init()();
  v5 = a1[10];
  v6 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[11];
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AspireApiPECConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AspireApiPECConfig(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance AspireApiPECConfig(uint64_t a1, uint64_t a2))()
{
  result = AMDPbFetchHEConfigs.unknownFields.modify;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPECConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECConfig and conformance AspireApiPECConfig, type metadata accessor for AspireApiPECConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPECConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECConfig and conformance AspireApiPECConfig, type metadata accessor for AspireApiPECConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPECConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECConfig and conformance AspireApiPECConfig, type metadata accessor for AspireApiPECConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPECRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
        }

        else if (result == 2)
        {
          type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            closure #3 in AspireApiPIRRequest.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for AspireApiPECRequest);
            break;
          case 4:
            dispatch thunk of Decoder.decodeSingularBytesField(value:)();
            break;
          case 5:
            closure #5 in AspireApiPECRequest.decodeMessage<A>(decoder:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in AspireApiPIRRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 32);
  type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #5 in AspireApiPECRequest.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireApiPECRequest(0) + 36);
  type metadata accessor for AspireApiEvaluationKey(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiPECRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      result = closure #2 in AspireApiPIRRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AspireApiPECRequest);
      if (!v4)
      {
        v9 = v3[2];
        v10 = v3[3];
        v11 = v10 >> 62;
        if ((v10 >> 62) > 1)
        {
          if (v11 != 2)
          {
            goto LABEL_15;
          }

          v12 = *(v9 + 16);
          v13 = *(v9 + 24);
        }

        else
        {
          if (!v11)
          {
            if ((v10 & 0xFF000000000000) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_14;
          }

          v12 = v9;
          v13 = v9 >> 32;
        }

        if (v12 != v13)
        {
LABEL_14:
          dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        }

LABEL_15:
        closure #2 in AspireApiPECRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
        v14 = v3 + *(type metadata accessor for AspireApiPECRequest(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #2 in AspireApiPIRRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, double))
{
  v19[3] = a4;
  v19[0] = a2;
  v19[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v19 - v9;
  v11 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0, v14);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v17 + 32), v10, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v10, v16, type metadata accessor for AspireApiEvaluationKeyMetadata);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v16, type metadata accessor for AspireApiEvaluationKeyMetadata);
}

uint64_t closure #2 in AspireApiPECRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireApiEvaluationKey(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireApiPECRequest(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 36), v8, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v13, type metadata accessor for AspireApiEvaluationKey);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiEvaluationKey and conformance AspireApiEvaluationKey, type metadata accessor for AspireApiEvaluationKey);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireApiEvaluationKey);
}

uint64_t protocol witness for Message.init() in conformance AspireApiPECRequest@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = v4;
  *(a2 + 16) = xmmword_225022910;
  v5 = a2 + a1[7];
  UnknownStorage.init()();
  v6 = a1[8];
  v7 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[9];
  v9 = type metadata accessor for AspireApiEvaluationKey(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPECRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECRequest and conformance AspireApiPECRequest, type metadata accessor for AspireApiPECRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPECRequest(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECRequest and conformance AspireApiPECRequest, type metadata accessor for AspireApiPECRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPECRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECRequest and conformance AspireApiPECRequest, type metadata accessor for AspireApiPECRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiPECShardResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
          break;
        case 1:
          type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AspireApiPECShardResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    if (!*(v0[1] + 16) || (result = dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)(), !v1))
    {
      if (!*(v0[2] + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v1))
      {
        v3 = v0 + *(type metadata accessor for AspireApiPECShardResponse(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPECShardResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECShardResponse and conformance AspireApiPECShardResponse, type metadata accessor for AspireApiPECShardResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPECShardResponse(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECShardResponse and conformance AspireApiPECShardResponse, type metadata accessor for AspireApiPECShardResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPECShardResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECShardResponse and conformance AspireApiPECShardResponse, type metadata accessor for AspireApiPECShardResponse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiEvaluationKeys.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
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
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(a5, a6);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t AspireApiPECResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for AspireApiPECShardResponse(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECShardResponse and conformance AspireApiPECShardResponse, type metadata accessor for AspireApiPECShardResponse), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for AspireApiPECResponse(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiPECResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECResponse and conformance AspireApiPECResponse, type metadata accessor for AspireApiPECResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiPECResponse(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECResponse and conformance AspireApiPECResponse, type metadata accessor for AspireApiPECResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiPECResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiPECResponse and conformance AspireApiPECResponse, type metadata accessor for AspireApiPECResponse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireApiEvaluationKeys(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireApiOPRFRequest.decodeMessage<A>(decoder:)()
{
  return AspireApiOPRFRequest.decodeMessage<A>(decoder:)();
}

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
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiOPRFRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFRequest and conformance AspireApiOPRFRequest, type metadata accessor for AspireApiOPRFRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiOPRFRequest(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFRequest and conformance AspireApiOPRFRequest, type metadata accessor for AspireApiOPRFRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiOPRFRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFRequest and conformance AspireApiOPRFRequest, type metadata accessor for AspireApiOPRFRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiOPRFRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
  }

  else
  {
    if (!v9)
    {
      if ((v8 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v10 = v7;
    v11 = v7 >> 32;
  }

  if (v10 == v11)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v5)
  {
    return result;
  }

LABEL_10:
  v13 = v4[2];
  v14 = v4[3];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_19;
    }

    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((v14 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v16 = v13;
    v17 = v13 >> 32;
  }

  if (v16 != v17)
  {
    goto LABEL_18;
  }

LABEL_19:
  v18 = v4 + *(a4(0) + 24);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiOPRFResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFResponse and conformance AspireApiOPRFResponse, type metadata accessor for AspireApiOPRFResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiOPRFResponse(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFResponse and conformance AspireApiOPRFResponse, type metadata accessor for AspireApiOPRFResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiOPRFResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiOPRFResponse and conformance AspireApiOPRFResponse, type metadata accessor for AspireApiOPRFResponse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireApiOPRFRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireApiStashOfEntries.decodeMessage<A>(decoder:)()
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
        goto LABEL_8;
      case 2:
        dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
        break;
      case 1:
LABEL_8:
        dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
        break;
    }
  }
}

uint64_t AspireApiStashOfEntries.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)(), !v1))
  {
    if (!*(v0[1] + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0[2] + 16) || (result = dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)(), !v1))
      {
        v3 = v0 + *(type metadata accessor for AspireApiStashOfEntries(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireApiPECShardResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v2;
  a2[2] = v2;
  v3 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiStashOfEntries(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiStashOfEntries and conformance AspireApiStashOfEntries, type metadata accessor for AspireApiStashOfEntries);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiStashOfEntries(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiStashOfEntries and conformance AspireApiStashOfEntries, type metadata accessor for AspireApiStashOfEntries);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiStashOfEntries(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiStashOfEntries and conformance AspireApiStashOfEntries, type metadata accessor for AspireApiStashOfEntries);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireApiError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #3 in AspireApiError.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in AspireApiError.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      closure #1 in AspireApiError.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in AspireApiError.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v22, type metadata accessor for AspireApiError.OneOf_ErrorType);
    outlined init with take of AspireApiEvaluationKeyMetadata(v22, v19, type metadata accessor for AspireApiError.OneOf_ErrorType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireApiError.OneOf_ErrorType);
      v34 = v49;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMR);
      v36 = v44;
      outlined init with take of AspireApiEvaluationKeyMetadata(v19, v44, type metadata accessor for AspireApiError.ConfigVersionNotFound);
      outlined init with take of AspireApiEvaluationKeyMetadata(v36, v29, type metadata accessor for AspireApiError.ConfigVersionNotFound);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.ConfigVersionNotFound and conformance AspireApiError.ConfigVersionNotFound, type metadata accessor for AspireApiError.ConfigVersionNotFound);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMR);
  }

  else
  {
    v40 = v45;
    outlined init with take of AspireApiEvaluationKeyMetadata(v37, v45, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21ConfigVersionNotFoundVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v40, v41, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t closure #2 in AspireApiError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspireApiError.EvaluationKeyNotFound(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v22, type metadata accessor for AspireApiError.OneOf_ErrorType);
    outlined init with take of AspireApiEvaluationKeyMetadata(v22, v19, type metadata accessor for AspireApiError.OneOf_ErrorType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMR);
      v36 = v45;
      outlined init with take of AspireApiEvaluationKeyMetadata(v19, v45, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
      outlined init with take of AspireApiEvaluationKeyMetadata(v36, v29, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireApiError.OneOf_ErrorType);
      v34 = v49;
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.EvaluationKeyNotFound and conformance AspireApiError.EvaluationKeyNotFound, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of AspireApiEvaluationKeyMetadata(v37, v44, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMd, &_s8CipherML14AspireApiErrorV21EvaluationKeyNotFoundVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v40, v41, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t closure #3 in AspireApiError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspireApiError.InvalidRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV14InvalidRequestVSgMd, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v22, type metadata accessor for AspireApiError.OneOf_ErrorType);
    outlined init with take of AspireApiEvaluationKeyMetadata(v22, v19, type metadata accessor for AspireApiError.OneOf_ErrorType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMd, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMR);
      v36 = v45;
      outlined init with take of AspireApiEvaluationKeyMetadata(v19, v45, type metadata accessor for AspireApiError.InvalidRequest);
      outlined init with take of AspireApiEvaluationKeyMetadata(v36, v29, type metadata accessor for AspireApiError.InvalidRequest);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireApiError.OneOf_ErrorType);
      v34 = v49;
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InvalidRequest and conformance AspireApiError.InvalidRequest, type metadata accessor for AspireApiError.InvalidRequest);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMd, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMd, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMd, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMd, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of AspireApiEvaluationKeyMetadata(v37, v44, type metadata accessor for AspireApiError.InvalidRequest);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMd, &_s8CipherML14AspireApiErrorV14InvalidRequestVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v40, v41, type metadata accessor for AspireApiError.InvalidRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t closure #4 in AspireApiError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspireApiError.InternalError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV08InternalE0VSgMd, &_s8CipherML14AspireApiErrorV08InternalE0VSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v14, v22, type metadata accessor for AspireApiError.OneOf_ErrorType);
    outlined init with take of AspireApiEvaluationKeyMetadata(v22, v19, type metadata accessor for AspireApiError.OneOf_ErrorType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV08InternalE0VSgMd, &_s8CipherML14AspireApiErrorV08InternalE0VSgMR);
      v36 = v45;
      outlined init with take of AspireApiEvaluationKeyMetadata(v19, v45, type metadata accessor for AspireApiError.InternalError);
      outlined init with take of AspireApiEvaluationKeyMetadata(v36, v29, type metadata accessor for AspireApiError.InternalError);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireApiError.OneOf_ErrorType);
      v34 = v49;
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InternalError and conformance AspireApiError.InternalError, type metadata accessor for AspireApiError.InternalError);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV08InternalE0VSgMd, &_s8CipherML14AspireApiErrorV08InternalE0VSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML14AspireApiErrorV08InternalE0VSgMd, &_s8CipherML14AspireApiErrorV08InternalE0VSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV08InternalE0VSgMd, &_s8CipherML14AspireApiErrorV08InternalE0VSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML14AspireApiErrorV08InternalE0VSgMd, &_s8CipherML14AspireApiErrorV08InternalE0VSgMR);
  }

  else
  {
    v40 = v44;
    outlined init with take of AspireApiEvaluationKeyMetadata(v37, v44, type metadata accessor for AspireApiError.InternalError);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML14AspireApiErrorV08InternalE0VSgMd, &_s8CipherML14AspireApiErrorV08InternalE0VSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    outlined init with take of AspireApiEvaluationKeyMetadata(v40, v41, type metadata accessor for AspireApiError.InternalError);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t AspireApiError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, &v16 - v10, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v12 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      closure #3 in AspireApiError.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #4 in AspireApiError.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    closure #2 in AspireApiError.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AspireApiError.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiError.OneOf_ErrorType);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for AspireApiError(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v13 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.ConfigVersionNotFound and conformance AspireApiError.ConfigVersionNotFound, type metadata accessor for AspireApiError.ConfigVersionNotFound);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiError.ConfigVersionNotFound);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiError.OneOf_ErrorType);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspireApiError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspireApiError.EvaluationKeyNotFound(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v13 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.EvaluationKeyNotFound and conformance AspireApiError.EvaluationKeyNotFound, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiError.OneOf_ErrorType);
  __break(1u);
  return result;
}

uint64_t closure #3 in AspireApiError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspireApiError.InvalidRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v13 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiError.InvalidRequest);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InvalidRequest and conformance AspireApiError.InvalidRequest, type metadata accessor for AspireApiError.InvalidRequest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiError.InvalidRequest);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiError.OneOf_ErrorType);
  __break(1u);
  return result;
}

uint64_t closure #4 in AspireApiError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspireApiError.InternalError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v13 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of AspireApiEvaluationKeyMetadata(v8, v12, type metadata accessor for AspireApiError.InternalError);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InternalError and conformance AspireApiError.InternalError, type metadata accessor for AspireApiError.InternalError);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiError.InternalError);
  }

  result = _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiError.OneOf_ErrorType);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiError(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError and conformance AspireApiError, type metadata accessor for AspireApiError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiError(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError and conformance AspireApiError, type metadata accessor for AspireApiError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiError(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError and conformance AspireApiError, type metadata accessor for AspireApiError);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for protoMessageName()
{
  result = MEMORY[0x22AA60A80](0xD000000000000016, 0x8000000225038BC0);
  static AspireApiError.ConfigVersionNotFound.protoMessageName = 0xD000000000000010;
  *algn_27D700058 = 0x8000000225038750;
  return result;
}

{
  result = MEMORY[0x22AA60A80](0xD000000000000016, 0x8000000225038BE0);
  static AspireApiError.EvaluationKeyNotFound.protoMessageName = 0xD000000000000010;
  unk_27D700080 = 0x8000000225038750;
  return result;
}

uint64_t AspireApiError.ConfigVersionNotFound.decodeMessage<A>(decoder:)()
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
      closure #1 in AspireApiError.ConfigVersionNotFound.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #1 in AspireApiError.ConfigVersionNotFound.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireApiError.ConfigVersionNotFound(0) + 20);
  type metadata accessor for AspireApiConfigResponse(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireApiError.ConfigVersionNotFound.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireApiError.ConfigVersionNotFound.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireApiError.ConfigVersionNotFound.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireApiConfigResponse(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 20), v8, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(v8, v13, type metadata accessor for AspireApiConfigResponse);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v13, type metadata accessor for AspireApiConfigResponse);
}

uint64_t protocol witness for Message.init() in conformance AspireApiError.ConfigVersionNotFound@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for AspireApiConfigResponse(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiError.ConfigVersionNotFound(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.ConfigVersionNotFound and conformance AspireApiError.ConfigVersionNotFound, type metadata accessor for AspireApiError.ConfigVersionNotFound);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiError.ConfigVersionNotFound(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.ConfigVersionNotFound and conformance AspireApiError.ConfigVersionNotFound, type metadata accessor for AspireApiError.ConfigVersionNotFound);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiError.ConfigVersionNotFound(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.ConfigVersionNotFound and conformance AspireApiError.ConfigVersionNotFound, type metadata accessor for AspireApiError.ConfigVersionNotFound);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiError.EvaluationKeyNotFound(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.EvaluationKeyNotFound and conformance AspireApiError.EvaluationKeyNotFound, type metadata accessor for AspireApiError.EvaluationKeyNotFound);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiError.EvaluationKeyNotFound(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.EvaluationKeyNotFound and conformance AspireApiError.EvaluationKeyNotFound, type metadata accessor for AspireApiError.EvaluationKeyNotFound);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiError.EvaluationKeyNotFound(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.EvaluationKeyNotFound and conformance AspireApiError.EvaluationKeyNotFound, type metadata accessor for AspireApiError.EvaluationKeyNotFound);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for protoMessageName(uint64_t a1)
{
  return one-time initialization function for protoMessageName(a1, 0x64696C61766E492ELL, 0xEF74736575716552, &static AspireApiError.InvalidRequest.protoMessageName, algn_27D7000A8);
}

{
  return one-time initialization function for protoMessageName(a1, 0x616E7265746E492ELL, 0xEE00726F7272456CLL, &static AspireApiError.InternalError.protoMessageName, &qword_27D7000D0);
}

{
  return one-time initialization function for protoMessageName(a1, 0x7865646E492ELL, 0xE600000000000000, static AspirePirPirPreprocessDbCommand.Index.protoMessageName, &static AspirePirPirPreprocessDbCommand.Index.protoMessageName[1]);
}

{
  return one-time initialization function for protoMessageName(a1, 0x64726F7779654B2ELL, 0xE800000000000000, static AspirePirPirPreprocessDbCommand.Keyword.protoMessageName, &static AspirePirPirPreprocessDbCommand.Keyword.protoMessageName[1]);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiError.InvalidRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InvalidRequest and conformance AspireApiError.InvalidRequest, type metadata accessor for AspireApiError.InvalidRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiError.InvalidRequest(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InvalidRequest and conformance AspireApiError.InvalidRequest, type metadata accessor for AspireApiError.InvalidRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiError.InvalidRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InvalidRequest and conformance AspireApiError.InvalidRequest, type metadata accessor for AspireApiError.InvalidRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for protoMessageName(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x22AA60A80](a2, a3);
  *a4 = 0xD000000000000010;
  *a5 = 0x8000000225038750;
  return result;
}

{
  result = MEMORY[0x22AA60A80](a2, a3);
  *a4 = 0xD000000000000021;
  *a5 = 0x8000000225038DC0;
  return result;
}

uint64_t static AspireApiError.ConfigVersionNotFound.protoMessageName.getter(void *a1, void *a2, void *a3)
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

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return _NameMap.init()();
}

Swift::Int AspireApiEmpty.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Message.protoMessageName.getter in conformance AspireApiError.ConfigVersionNotFound(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireApiError.InternalError(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InternalError and conformance AspireApiError.InternalError, type metadata accessor for AspireApiError.InternalError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireApiError.InternalError(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InternalError and conformance AspireApiError.InternalError, type metadata accessor for AspireApiError.InternalError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireApiError.InternalError(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type AspireApiError.InternalError and conformance AspireApiError.InternalError, type metadata accessor for AspireApiError.InternalError);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t specialized static AspireApiPECShardResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML42AspireSimilaritySerializedCiphertextMatrixV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[1], a2[1]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for AspireApiPECShardResponse(0) + 28);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspireApiPIRShardConfigs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0O_AEtMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0O_AEtMR);
  v4 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v6 = (&v29 - v5);
  v7 = type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSg_AFtMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSg_AFtMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  v31 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v29 - v18, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v32 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v19[v20], &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  v21 = *(v8 + 48);
  if (v21(v19, 1, v7) == 1)
  {
    if (v21(&v19[v20], 1, v7) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v19, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
LABEL_9:
      v27 = *(type metadata accessor for AspireApiPIRShardConfigs(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v19, v14, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  if (v21(&v19[v20], 1, v7) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v14, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v19, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSg_AFtMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSg_AFtMR);
    goto LABEL_7;
  }

  v23 = &v19[v20];
  v24 = v30;
  outlined init with take of AspireApiEvaluationKeyMetadata(v23, v30, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  v25 = *(v29 + 48);
  outlined init with copy of AspireHeEvaluationKeyConfig(v14, v6, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  outlined init with copy of AspireHeEvaluationKeyConfig(v24, v6 + v25, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  v26 = specialized static AspireApiPIRFixedShardConfig.== infix(_:_:)(v6, (v6 + v25));
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6 + v25, type metadata accessor for AspireApiPIRFixedShardConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v6, type metadata accessor for AspireApiPIRFixedShardConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v24, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v14, type metadata accessor for AspireApiPIRShardConfigs.OneOf_ShardConfigs);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v19, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMd, &_s8CipherML24AspireApiPIRShardConfigsV011OneOf_ShardF0OSgMR);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static AspireApiPIRFixedShardConfig.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for AspireApiPIRShardConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v25 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiPIRShardConfigVSg_ADtMd, &_s8CipherML23AspireApiPIRShardConfigVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for AspireApiPIRFixedShardConfig(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 56);
  v28 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v17, v16, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v17, &v16[v18], &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v11, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiPIRShardConfig);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML23AspireApiPIRShardConfigVSg_ADtMd, &_s8CipherML23AspireApiPIRShardConfigVSg_ADtMR);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  outlined init with take of AspireApiEvaluationKeyMetadata(&v16[v18], v27, type metadata accessor for AspireApiPIRShardConfig);
  v21 = specialized static AspireApiPIRShardConfig.== infix(_:_:)(v11, v20);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v20, type metadata accessor for AspireApiPIRShardConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiPIRShardConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML23AspireApiPIRShardConfigVSgMd, &_s8CipherML23AspireApiPIRShardConfigVSgMR);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v28 != *a2)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static AspireApiPIRShardConfig.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AspireApiPIRShardConfig(0);
  v5 = v4[8];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[9];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    return 0;
  }

  v16 = v4[10];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 8);
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v22 = v4[7];
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspireApiEvaluationKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v47 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMR);
  v10 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v47 - v11;
  v12 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v50 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v47 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for AspireApiEvaluationKey(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v56 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v25, v24, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v27 = a2 + v25;
  v28 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v27, &v24[v26], &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v29 = *(v13 + 48);
  if (v29(v24, 1, v12) == 1)
  {
    if (v29(&v24[v26], 1, v12) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v24, v19, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if (v29(&v24[v26], 1, v12) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireApiEvaluationKeyMetadata);
LABEL_9:
    v35 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMd;
    v36 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMR;
LABEL_15:
    v40 = v24;
LABEL_16:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, v35, v36);
    goto LABEL_17;
  }

  v37 = v50;
  outlined init with take of AspireApiEvaluationKeyMetadata(&v24[v26], v50, type metadata accessor for AspireApiEvaluationKeyMetadata);
  if (*v19 != *v37 || (specialized static Data.== infix(_:_:)(v19[1], v19[2], v37[1], v37[2]) & 1) == 0)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v37, type metadata accessor for AspireApiEvaluationKeyMetadata);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireApiEvaluationKeyMetadata);
    v35 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd;
    v36 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR;
    goto LABEL_15;
  }

  v38 = *(v12 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v37, type metadata accessor for AspireApiEvaluationKeyMetadata);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireApiEvaluationKeyMetadata);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if ((v39 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  v30 = *(v51 + 24);
  v31 = *(v52 + 48);
  v32 = v55;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v56 + v30, v55, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v28 + v30, v32 + v31, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v33 = v54;
  v34 = *(v53 + 48);
  if (v34(v32, 1, v54) == 1)
  {
    if (v34(v32 + v31, 1, v33) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v32, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
LABEL_23:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v41 & 1;
    }

    goto LABEL_21;
  }

  v43 = v49;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v32, v49, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  if (v34(v32 + v31, 1, v33) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v43, type metadata accessor for AspireHeSerializedEvaluationKey);
LABEL_21:
    v35 = &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMd;
    v36 = &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMR;
    v40 = v32;
    goto LABEL_16;
  }

  v44 = v32 + v31;
  v45 = v48;
  outlined init with take of AspireApiEvaluationKeyMetadata(v44, v48, type metadata accessor for AspireHeSerializedEvaluationKey);
  v46 = specialized static AspireHeSerializedEvaluationKey.== infix(_:_:)(v43, v45);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v45, type metadata accessor for AspireHeSerializedEvaluationKey);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v43, type metadata accessor for AspireHeSerializedEvaluationKey);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v32, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  if (v46)
  {
    goto LABEL_23;
  }

LABEL_17:
  v41 = 0;
  return v41 & 1;
}

void specialized static AspireApiPECRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AspireApiEvaluationKey(0);
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSg_ADtMd, &_s8CipherML22AspireApiEvaluationKeyVSg_ADtMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v62 = &v55 - v13;
  v14 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v55 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v55 - v25;
  v27 = *a1;
  v28 = *a2;
  v29 = *(*a1 + 16);
  if (v29 != *(*a2 + 16))
  {
    return;
  }

  if (!v29 || v27 == v28)
  {
LABEL_7:
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML42AspireSimilaritySerializedCiphertextMatrixV_Tt1g5(a1[1], a2[1]) & 1) == 0)
    {
      return;
    }

    v55 = v7;
    v32 = type metadata accessor for AspireApiPECRequest(0);
    v58 = a2;
    v33 = *(v32 + 32);
    v34 = *(v23 + 48);
    v56 = v32;
    v57 = a1;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v33, v26, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    v35 = v58 + v33;
    v36 = v58;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v35, &v26[v34], &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    v37 = *(v15 + 48);
    if (v37(v26, 1, v14) == 1)
    {
      if (v37(&v26[v34], 1, v14) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
LABEL_11:
        v38 = v57;
        if ((specialized static Data.== infix(_:_:)(v57[2], v57[3], v36[2], v36[3]) & 1) == 0)
        {
          return;
        }

        v39 = v56;
        v40 = *(v56 + 36);
        v41 = *(v11 + 48);
        v42 = v62;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v38 + v40, v62, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v58 + v40, v42 + v41, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
        v43 = v61;
        v44 = *(v60 + 48);
        if (v44(v42, 1, v61) == 1)
        {
          if (v44(v42 + v41, 1, v43) == 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v42, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
            goto LABEL_30;
          }
        }

        else
        {
          v50 = v59;
          outlined init with copy of AMDPbHEConfig.OneOf_Config?(v42, v59, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
          if (v44(v42 + v41, 1, v43) != 1)
          {
            v51 = v42 + v41;
            v52 = v55;
            outlined init with take of AspireApiEvaluationKeyMetadata(v51, v55, type metadata accessor for AspireApiEvaluationKey);
            v53 = specialized static AspireApiEvaluationKey.== infix(_:_:)(v50, v52);
            _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v52, type metadata accessor for AspireApiEvaluationKey);
            _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v50, type metadata accessor for AspireApiEvaluationKey);
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v42, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
            if ((v53 & 1) == 0)
            {
              return;
            }

LABEL_30:
            v54 = *(v39 + 28);
            type metadata accessor for UnknownStorage();
            _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
            dispatch thunk of static Equatable.== infix(_:_:)();
            return;
          }

          _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v50, type metadata accessor for AspireApiEvaluationKey);
        }

        v45 = &_s8CipherML22AspireApiEvaluationKeyVSg_ADtMd;
        v46 = &_s8CipherML22AspireApiEvaluationKeyVSg_ADtMR;
        v49 = v42;
LABEL_24:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v49, v45, v46);
        return;
      }
    }

    else
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v26, v22, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
      if (v37(&v26[v34], 1, v14) != 1)
      {
        outlined init with take of AspireApiEvaluationKeyMetadata(&v26[v34], v18, type metadata accessor for AspireApiEvaluationKeyMetadata);
        if (*v22 == *v18 && (specialized static Data.== infix(_:_:)(v22[1], v22[2], v18[1], v18[2]) & 1) != 0)
        {
          v47 = *(v14 + 24);
          type metadata accessor for UnknownStorage();
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
          v48 = dispatch thunk of static Equatable.== infix(_:_:)();
          _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v18, type metadata accessor for AspireApiEvaluationKeyMetadata);
          _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v22, type metadata accessor for AspireApiEvaluationKeyMetadata);
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
          if ((v48 & 1) == 0)
          {
            return;
          }

          goto LABEL_11;
        }

        _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v18, type metadata accessor for AspireApiEvaluationKeyMetadata);
        _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v22, type metadata accessor for AspireApiEvaluationKeyMetadata);
        v45 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd;
        v46 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR;
LABEL_23:
        v49 = v26;
        goto LABEL_24;
      }

      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v22, type metadata accessor for AspireApiEvaluationKeyMetadata);
    }

    v45 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMd;
    v46 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMR;
    goto LABEL_23;
  }

  v30 = (v27 + 32);
  v31 = (v28 + 32);
  while (*v30 == *v31)
  {
    ++v30;
    ++v31;
    if (!--v29)
    {
      goto LABEL_7;
    }
  }
}

uint64_t specialized static AspireApiPIRConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AspireApiPIRConfig(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = closure #1 in static AspireApiPIRConfig.== infix(_:_:)(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspireApiPECConfig.== infix(_:_:)(void *a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v49 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
  v9 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v56 = &v49 - v10;
  v11 = type metadata accessor for AspireHeEncryptionParameters(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v53 = type metadata accessor for AspireApiPECConfig(0);
  v25 = *(v53 + 40);
  v26 = *(v21 + 56);
  v57 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v25, v24, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v27 = v58;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v58 + v25, &v24[v26], &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v29 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd;
    v30 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR;
    v31 = v24;
LABEL_7:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v31, v29, v30);
    goto LABEL_28;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v24, v19, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireHeEncryptionParameters);
    goto LABEL_6;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v24[v26], v15, type metadata accessor for AspireHeEncryptionParameters);
  v32 = static AspireHeEncryptionParameters.== infix(_:_:)(v19, v15);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v15, type metadata accessor for AspireHeEncryptionParameters);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v19, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((v32 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_9:
  v33 = v57;
  if (*v57 != *v27)
  {
    goto LABEL_28;
  }

  v34 = v53;
  v35 = *(v53 + 44);
  v36 = *(v52 + 48);
  v37 = v56;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v57 + v35, v56, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v27 + v35, v37 + v36, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v38 = v55;
  v39 = *(v54 + 48);
  if (v39(v37, 1, v55) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v40 = v51;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v37, v51, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v40, type metadata accessor for AspireSimilarityPlaintextPacking);
LABEL_15:
    v29 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd;
    v30 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR;
    v31 = v37;
    goto LABEL_7;
  }

  v41 = v37 + v36;
  v42 = v50;
  outlined init with take of AspireApiEvaluationKeyMetadata(v41, v50, type metadata accessor for AspireSimilarityPlaintextPacking);
  v43 = static AspireSimilarityPlaintextPacking.== infix(_:_:)(v40, v42);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v42, type metadata accessor for AspireSimilarityPlaintextPacking);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v40, type metadata accessor for AspireSimilarityPlaintextPacking);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if ((v43 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  if (*(v33 + 2) != *(v27 + 8))
  {
    goto LABEL_28;
  }

  v44 = *(v27 + 24);
  if ((v33[3] & 1) == 0)
  {
    v45 = v33[2];
    if (*(v27 + 24))
    {
      if (!v45)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

LABEL_24:
    if (v45 == *(v27 + 16))
    {
      goto LABEL_25;
    }

LABEL_28:
    v47 = 0;
    return v47 & 1;
  }

  if ((*(v27 + 24) & 1) == 0)
  {
    v45 = 0;
    goto LABEL_24;
  }

LABEL_25:
  if ((specialized static Data.== infix(_:_:)(v33[4], v33[5], *(v27 + 32), *(v27 + 40)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v33[6], *(v27 + 48)) & 1) == 0)
  {
    goto LABEL_28;
  }

  v46 = *(v34 + 36);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v47 & 1;
}

uint64_t specialized static AspireApiKeyStatus.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for AspireApiKeyStatus(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 24);
  v21 = *(v13 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v18 + v20, v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v19 + v20, &v16[v21], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
LABEL_11:
      v26 = *(v27[0] + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v12, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireHeEvaluationKeyConfig);
LABEL_7:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
    goto LABEL_8;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v16[v21], v8, type metadata accessor for AspireHeEvaluationKeyConfig);
  v25 = static AspireHeEvaluationKeyConfig.== infix(_:_:)(v12, v8);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireHeEvaluationKeyConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireHeEvaluationKeyConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized static AspireApiResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v24 - v15, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v16[v18], &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
LABEL_9:
      v22 = *(type metadata accessor for AspireApiResponse(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v12, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiResponse.OneOf_Response);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v16[v18], v8, type metadata accessor for AspireApiResponse.OneOf_Response);
  v21 = specialized static AspireApiResponse.OneOf_Response.== infix(_:_:)(v12, v8);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiResponse.OneOf_Response);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiResponse.OneOf_Response);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t *specialized static AspireApiStashOfEntries.== infix(_:_:)(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v6 = result;
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(result[1], a2[1]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v6[2], a2[2]))
    {
      v10 = *(type metadata accessor for AspireApiStashOfEntries(0) + 28);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      return (dispatch thunk of static Equatable.== infix(_:_:)() & 1);
    }

    return 0;
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static AspireApiPIRResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AspireApiStashOfEntries(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiStashOfEntriesVSg_ADtMd, &_s8CipherML23AspireApiStashOfEntriesVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML31AspireHeSerializedCiphertextVecV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for AspireApiPIRResponse(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 24);
  v21 = *(v13 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v18 + v20, v16, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v19 + v20, &v16[v21], &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
LABEL_11:
      v26 = *(v27[0] + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v12, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiStashOfEntries);
LABEL_7:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML23AspireApiStashOfEntriesVSg_ADtMd, &_s8CipherML23AspireApiStashOfEntriesVSg_ADtMR);
    goto LABEL_8;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v16[v21], v8, type metadata accessor for AspireApiStashOfEntries);
  v25 = specialized static AspireApiStashOfEntries.== infix(_:_:)(v12, v8);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiStashOfEntries);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiStashOfEntries);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized static AspireApiResponse.OneOf_Response.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for AspireApiOPRFResponse(0);
  v4 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for AspireApiPECResponse(0);
  v6 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v45 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AspireApiPIRResponse(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v43 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = (&v43 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0O_AEtMd, &_s8CipherML17AspireApiResponseV06OneOf_E0O_AEtMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v43 - v24;
  v27 = *(v26 + 56);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, &v43 - v24, type metadata accessor for AspireApiResponse.OneOf_Response);
  outlined init with copy of AspireHeEvaluationKeyConfig(a2, &v25[v27], type metadata accessor for AspireApiResponse.OneOf_Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig(v25, v21, type metadata accessor for AspireApiResponse.OneOf_Response);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(&v25[v27], v11, type metadata accessor for AspireApiPIRResponse);
      v39 = specialized static AspireApiPIRResponse.== infix(_:_:)(v21, v11);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiPIRResponse);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v21, type metadata accessor for AspireApiPIRResponse);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v25, type metadata accessor for AspireApiResponse.OneOf_Response);
      return v39 & 1;
    }

    v34 = type metadata accessor for AspireApiPIRResponse;
    v35 = v21;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig(v25, v15, type metadata accessor for AspireApiResponse.OneOf_Response);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v36 = &v25[v27];
      v37 = v46;
      outlined init with take of AspireApiEvaluationKeyMetadata(v36, v46, type metadata accessor for AspireApiOPRFResponse);
      if (specialized static Data.== infix(_:_:)(*v15, *(v15 + 1), *v37, *(v37 + 8)) & 1) != 0 && (specialized static Data.== infix(_:_:)(*(v15 + 2), *(v15 + 3), *(v37 + 16), *(v37 + 24)))
      {
        v38 = *(v43 + 24);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v32 = type metadata accessor for AspireApiOPRFResponse;
          _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v37, type metadata accessor for AspireApiOPRFResponse);
          v33 = v15;
          goto LABEL_14;
        }
      }

      v40 = type metadata accessor for AspireApiOPRFResponse;
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v37, type metadata accessor for AspireApiOPRFResponse);
      v41 = v15;
      goto LABEL_20;
    }

    v34 = type metadata accessor for AspireApiOPRFResponse;
    v35 = v15;
LABEL_17:
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v35, v34);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML17AspireApiResponseV06OneOf_E0O_AEtMd, &_s8CipherML17AspireApiResponseV06OneOf_E0O_AEtMR);
LABEL_21:
    v39 = 0;
    return v39 & 1;
  }

  outlined init with copy of AspireHeEvaluationKeyConfig(v25, v18, type metadata accessor for AspireApiResponse.OneOf_Response);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = type metadata accessor for AspireApiPECResponse;
    v35 = v18;
    goto LABEL_17;
  }

  v29 = &v25[v27];
  v30 = v45;
  outlined init with take of AspireApiEvaluationKeyMetadata(v29, v45, type metadata accessor for AspireApiPECResponse);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML25AspireApiPECShardResponseV_Tt1g5(*v18, *v30) & 1) == 0 || (v31 = *(v44 + 20), type metadata accessor for UnknownStorage(), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    v40 = type metadata accessor for AspireApiPECResponse;
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v30, type metadata accessor for AspireApiPECResponse);
    v41 = v18;
LABEL_20:
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v41, v40);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v25, type metadata accessor for AspireApiResponse.OneOf_Response);
    goto LABEL_21;
  }

  v32 = type metadata accessor for AspireApiPECResponse;
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v30, type metadata accessor for AspireApiPECResponse);
  v33 = v18;
LABEL_14:
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v33, v32);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v25, type metadata accessor for AspireApiResponse.OneOf_Response);
  v39 = 1;
  return v39 & 1;
}

uint64_t specialized static AspireApiRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for AspireApiRequest(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v17, v16, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v17, &v16[v18], &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
LABEL_12:
      v23 = *(v26 + 24);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v12, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiRequest.OneOf_Request);
LABEL_9:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMR);
    goto LABEL_10;
  }

  v21 = v25;
  outlined init with take of AspireApiEvaluationKeyMetadata(&v16[v18], v25, type metadata accessor for AspireApiRequest.OneOf_Request);
  v22 = specialized static AspireApiRequest.OneOf_Request.== infix(_:_:)(v12, v21);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v21, type metadata accessor for AspireApiRequest.OneOf_Request);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiRequest.OneOf_Request);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AspireApiPIRRequest.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for AspireApiEvaluationKey(0);
  v81 = *(v4 - 8);
  v82 = v4;
  v5 = *(v81 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v75 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSg_ADtMd, &_s8CipherML22AspireApiEvaluationKeyVSg_ADtMR);
  v11 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v13 = &v75 - v12;
  v14 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = *(v86 + 64);
  MEMORY[0x28223BE20](v14);
  v83 = (&v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v84 = (&v75 - v19);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMR);
  v20 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v88 = &v75 - v21;
  v22 = type metadata accessor for AspirePirEncryptedIndices(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (&v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = (&v75 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMd, &_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v75 - v33;
  if (*a1 != *a2)
  {
    goto LABEL_25;
  }

  v75 = v7;
  v76 = v13;
  v35 = type metadata accessor for AspireApiPIRRequest(0);
  v36 = *(v35 + 28);
  v37 = a1;
  v38 = *(v31 + 48);
  v77 = v35;
  v78 = v37;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v37 + v36, v34, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v39 = a2 + v36;
  v40 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v39, &v34[v38], &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v41 = *(v23 + 48);
  if (v41(v34, 1, v22) == 1)
  {
    if (v41(&v34[v38], 1, v22) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v34, v30, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  if (v41(&v34[v38], 1, v22) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v30, type metadata accessor for AspirePirEncryptedIndices);
LABEL_17:
    v54 = &_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMd;
    v55 = &_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMR;
LABEL_23:
    v58 = v34;
LABEL_24:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v58, v54, v55);
    goto LABEL_25;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v34[v38], v26, type metadata accessor for AspirePirEncryptedIndices);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*v30, *v26) & 1) == 0 || v30[1] != v26[1])
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v26, type metadata accessor for AspirePirEncryptedIndices);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v30, type metadata accessor for AspirePirEncryptedIndices);
    v54 = &_s8CipherML25AspirePirEncryptedIndicesVSgMd;
    v55 = &_s8CipherML25AspirePirEncryptedIndicesVSgMR;
    goto LABEL_23;
  }

  v56 = *(v22 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v26, type metadata accessor for AspirePirEncryptedIndices);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v30, type metadata accessor for AspirePirEncryptedIndices);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v34, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  if ((v57 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_5:
  v43 = v77;
  v42 = v78;
  v44 = v77[8];
  v45 = *(v85 + 48);
  v46 = v88;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v78 + v44, v88, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v40 + v44, v46 + v45, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v47 = v87;
  v48 = *(v86 + 48);
  if (v48(v46, 1, v87) == 1)
  {
    if (v48(v46 + v45, 1, v47) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  v61 = v84;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v46, v84, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if (v48(v46 + v45, 1, v47) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v61, type metadata accessor for AspireApiEvaluationKeyMetadata);
LABEL_29:
    v54 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMd;
    v55 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSg_ADtMR;
    v58 = v46;
    goto LABEL_24;
  }

  v62 = v46 + v45;
  v63 = v83;
  outlined init with take of AspireApiEvaluationKeyMetadata(v62, v83, type metadata accessor for AspireApiEvaluationKeyMetadata);
  if (*v61 != *v63 || (specialized static Data.== infix(_:_:)(v61[1], v61[2], v63[1], v63[2]) & 1) == 0)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v63, type metadata accessor for AspireApiEvaluationKeyMetadata);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v61, type metadata accessor for AspireApiEvaluationKeyMetadata);
    v54 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd;
    v55 = &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR;
    v58 = v46;
    goto LABEL_24;
  }

  v64 = *(v47 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  LOBYTE(v64) = dispatch thunk of static Equatable.== infix(_:_:)();
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v63, type metadata accessor for AspireApiEvaluationKeyMetadata);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v61, type metadata accessor for AspireApiEvaluationKeyMetadata);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v46, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if ((v64 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  if (specialized static Data.== infix(_:_:)(*(v42 + 1), *(v42 + 2), *(v40 + 1), *(v40 + 2)))
  {
    v49 = v43[9];
    v50 = (v42 + v49);
    v51 = *(v42 + v49 + 8);
    v52 = (v40 + v49);
    v53 = v52[1];
    if (v51)
    {
      if (!v53 || (*v50 != *v52 || v51 != v53) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v53)
    {
      goto LABEL_25;
    }

    v65 = v43[10];
    v66 = *(v80 + 48);
    v67 = v76;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v42 + v65, v76, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v40 + v65, v67 + v66, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    v68 = v82;
    v69 = *(v81 + 48);
    if (v69(v67, 1, v82) == 1)
    {
      if (v69(v67 + v66, 1, v68) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v67, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
LABEL_43:
        v74 = v43[6];
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v59 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v59 & 1;
      }

      goto LABEL_41;
    }

    v70 = v79;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v67, v79, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    if (v69(v67 + v66, 1, v68) == 1)
    {
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v70, type metadata accessor for AspireApiEvaluationKey);
LABEL_41:
      v54 = &_s8CipherML22AspireApiEvaluationKeyVSg_ADtMd;
      v55 = &_s8CipherML22AspireApiEvaluationKeyVSg_ADtMR;
      v58 = v67;
      goto LABEL_24;
    }

    v71 = v67 + v66;
    v72 = v75;
    outlined init with take of AspireApiEvaluationKeyMetadata(v71, v75, type metadata accessor for AspireApiEvaluationKey);
    v73 = specialized static AspireApiEvaluationKey.== infix(_:_:)(v70, v72);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v72, type metadata accessor for AspireApiEvaluationKey);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v70, type metadata accessor for AspireApiEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v67, &_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    if (v73)
    {
      goto LABEL_43;
    }
  }

LABEL_25:
  v59 = 0;
  return v59 & 1;
}

uint64_t specialized static AspireApiRequest.OneOf_Request.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v40 = type metadata accessor for AspireApiOPRFRequest(0);
  v3 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AspireApiPECRequest(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for AspireApiPIRRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v39 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = (&v39 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0O_AEtMd, &_s8CipherML16AspireApiRequestV06OneOf_E0O_AEtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v39 - v25;
  v28 = *(v27 + 56);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, &v39 - v25, type metadata accessor for AspireApiRequest.OneOf_Request);
  outlined init with copy of AspireHeEvaluationKeyConfig(v42, &v26[v28], type metadata accessor for AspireApiRequest.OneOf_Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig(v26, v22, type metadata accessor for AspireApiRequest.OneOf_Request);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(&v26[v28], v12, type metadata accessor for AspireApiPIRRequest);
      v31 = specialized static AspireApiPIRRequest.== infix(_:_:)(v22, v12);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiPIRRequest);
      v32 = v22;
      v33 = type metadata accessor for AspireApiPIRRequest;
      goto LABEL_18;
    }

    v34 = type metadata accessor for AspireApiPIRRequest;
    v35 = v22;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig(v26, v19, type metadata accessor for AspireApiRequest.OneOf_Request);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(&v26[v28], v8, type metadata accessor for AspireApiPECRequest);
      specialized static AspireApiPECRequest.== infix(_:_:)(v19, v8);
      v31 = v30;
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiPECRequest);
      v32 = v19;
      v33 = type metadata accessor for AspireApiPECRequest;
LABEL_18:
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v32, v33);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v26, type metadata accessor for AspireApiRequest.OneOf_Request);
      return v31 & 1;
    }

    v34 = type metadata accessor for AspireApiPECRequest;
    v35 = v19;
    goto LABEL_14;
  }

  outlined init with copy of AspireHeEvaluationKeyConfig(v26, v16, type metadata accessor for AspireApiRequest.OneOf_Request);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v34 = type metadata accessor for AspireApiOPRFRequest;
    v35 = v16;
LABEL_14:
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v35, v34);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML16AspireApiRequestV06OneOf_E0O_AEtMd, &_s8CipherML16AspireApiRequestV06OneOf_E0O_AEtMR);
LABEL_16:
    v31 = 0;
    return v31 & 1;
  }

  v36 = v41;
  outlined init with take of AspireApiEvaluationKeyMetadata(&v26[v28], v41, type metadata accessor for AspireApiOPRFRequest);
  if ((specialized static Data.== infix(_:_:)(*v16, *(v16 + 1), *v36, *(v36 + 8)) & 1) == 0 || (specialized static Data.== infix(_:_:)(*(v16 + 2), *(v16 + 3), *(v36 + 16), *(v36 + 24)) & 1) == 0 || (v37 = *(v40 + 24), type metadata accessor for UnknownStorage(), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v36, type metadata accessor for AspireApiOPRFRequest);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v16, type metadata accessor for AspireApiOPRFRequest);
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v26, type metadata accessor for AspireApiRequest.OneOf_Request);
    goto LABEL_16;
  }

  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v36, type metadata accessor for AspireApiOPRFRequest);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v16, type metadata accessor for AspireApiOPRFRequest);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v26, type metadata accessor for AspireApiRequest.OneOf_Request);
  v31 = 1;
  return v31 & 1;
}

uint64_t specialized static AspireApiConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v18 = *(v17 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v25 - v15, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v16[v18], &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v12, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      outlined init with take of AspireApiEvaluationKeyMetadata(&v16[v18], v8, type metadata accessor for AspireApiConfig.OneOf_Config);
      v21 = specialized static AspireApiConfig.OneOf_Config.== infix(_:_:)(v12, v8);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiConfig.OneOf_Config);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiConfig.OneOf_Config);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
      if ((v21 & 1) == 0)
      {
LABEL_10:
        v20 = 0;
        return v20 & 1;
      }

LABEL_8:
      v22 = type metadata accessor for AspireApiConfig(0);
      if ((specialized static Data.== infix(_:_:)(*(a1 + v22[5]), *(a1 + v22[5] + 8), *(a2 + v22[5]), *(a2 + v22[5] + 8)) & 1) != 0 && *(a1 + v22[6]) == *(a2 + v22[6]))
      {
        v24 = v22[7];
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v20 & 1;
      }

      goto LABEL_10;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiConfig.OneOf_Config);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMR);
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AspireApiConfig.OneOf_Config.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPECConfig(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AspireApiPIRConfig(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMd, &_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v35 - v20;
  v23 = *(v22 + 56);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, &v35 - v20, type metadata accessor for AspireApiConfig.OneOf_Config);
  outlined init with copy of AspireHeEvaluationKeyConfig(a2, &v21[v23], type metadata accessor for AspireApiConfig.OneOf_Config);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig(v21, v17, type metadata accessor for AspireApiConfig.OneOf_Config);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = &v21[v23];
      v28 = v36;
      outlined init with take of AspireApiEvaluationKeyMetadata(v27, v36, type metadata accessor for AspireApiPIRConfig);
      v29 = *(v8 + 20);
      v30 = *&v17[v29];
      v31 = *(v28 + v29);
      if (v30 == v31 || (v32 = *&v17[v29], , , v33 = closure #1 in static AspireApiPIRConfig.== infix(_:_:)(v30, v31), , , v33))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v28, type metadata accessor for AspireApiPIRConfig);
          _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v17, type metadata accessor for AspireApiPIRConfig);
          _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v21, type metadata accessor for AspireApiConfig.OneOf_Config);
          v24 = 1;
          return v24 & 1;
        }
      }

      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v28, type metadata accessor for AspireApiPIRConfig);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v17, type metadata accessor for AspireApiPIRConfig);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v21, type metadata accessor for AspireApiConfig.OneOf_Config);
LABEL_13:
      v24 = 0;
      return v24 & 1;
    }

    v25 = type metadata accessor for AspireApiPIRConfig;
    v26 = v17;
LABEL_7:
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v26, v25);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v21, &_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMd, &_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMR);
    goto LABEL_13;
  }

  outlined init with copy of AspireHeEvaluationKeyConfig(v21, v14, type metadata accessor for AspireApiConfig.OneOf_Config);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v25 = type metadata accessor for AspireApiPECConfig;
    v26 = v14;
    goto LABEL_7;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v21[v23], v7, type metadata accessor for AspireApiPECConfig);
  v24 = specialized static AspireApiPECConfig.== infix(_:_:)(v14, v7);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v7, type metadata accessor for AspireApiPECConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v14, type metadata accessor for AspireApiPECConfig);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v21, type metadata accessor for AspireApiConfig.OneOf_Config);
  return v24 & 1;
}

uint64_t specialized static AspireApiError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSg_AFtMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v24 - v15, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v16[v18], &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for AspireApiError(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v12, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiError.OneOf_ErrorType);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSg_AFtMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v16[v18], v8, type metadata accessor for AspireApiError.OneOf_ErrorType);
  v21 = specialized static AspireApiError.OneOf_ErrorType.== infix(_:_:)(v12, v8);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v8, type metadata accessor for AspireApiError.OneOf_ErrorType);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v12, type metadata accessor for AspireApiError.OneOf_ErrorType);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AspireApiError.ConfigVersionNotFound.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiConfigResponse(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27[0] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (v27 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSg_ADtMd, &_s8CipherML23AspireApiConfigResponseVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v27 - v15;
  v17 = *(type metadata accessor for AspireApiError.ConfigVersionNotFound(0) + 20);
  v18 = *(v13 + 56);
  v27[1] = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v17, v16, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v17, &v16[v18], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v11, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v23 = v27[0];
      outlined init with take of AspireApiEvaluationKeyMetadata(&v16[v18], v27[0], type metadata accessor for AspireApiConfigResponse);
      if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_8CipherML15AspireApiConfigVTt1g5(*v11, *v23) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML18AspireApiKeyStatusV_Tt1g5(v11[1], v23[1]))
      {
        v24 = *(v4 + 24);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v23, type metadata accessor for AspireApiConfigResponse);
        _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiConfigResponse);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
        if (v25)
        {
          goto LABEL_4;
        }

LABEL_14:
        v20 = 0;
        return v20 & 1;
      }

      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v23, type metadata accessor for AspireApiConfigResponse);
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiConfigResponse);
      v21 = &_s8CipherML23AspireApiConfigResponseVSgMd;
      v22 = &_s8CipherML23AspireApiConfigResponseVSgMR;
LABEL_13:
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, v21, v22);
      goto LABEL_14;
    }

    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v11, type metadata accessor for AspireApiConfigResponse);
LABEL_7:
    v21 = &_s8CipherML23AspireApiConfigResponseVSg_ADtMd;
    v22 = &_s8CipherML23AspireApiConfigResponseVSg_ADtMR;
    goto LABEL_13;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
LABEL_4:
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t specialized static AspireApiError.OneOf_ErrorType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for AspireApiError.InternalError(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AspireApiError.InvalidRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AspireApiError.EvaluationKeyNotFound(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v46 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspireApiError.ConfigVersionNotFound(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AspireApiError.OneOf_ErrorType(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v46 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v46 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v46 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14AspireApiErrorV06OneOf_E4TypeO_AEtMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeO_AEtMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v46 - v31;
  v34 = *(v33 + 56);
  outlined init with copy of AspireHeEvaluationKeyConfig(a1, &v46 - v31, type metadata accessor for AspireApiError.OneOf_ErrorType);
  outlined init with copy of AspireHeEvaluationKeyConfig(v49, &v32[v34], type metadata accessor for AspireApiError.OneOf_ErrorType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of AspireHeEvaluationKeyConfig(v32, v22, type metadata accessor for AspireApiError.OneOf_ErrorType);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v36 = type metadata accessor for AspireApiError.InvalidRequest;
        v37 = v22;
        goto LABEL_17;
      }

      v38 = v47;
      outlined init with take of AspireApiEvaluationKeyMetadata(&v32[v34], v47, type metadata accessor for AspireApiError.InvalidRequest);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = type metadata accessor for AspireApiError.InvalidRequest;
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v38, type metadata accessor for AspireApiError.InvalidRequest);
      v41 = v22;
    }

    else
    {
      outlined init with copy of AspireHeEvaluationKeyConfig(v32, v19, type metadata accessor for AspireApiError.OneOf_ErrorType);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v36 = type metadata accessor for AspireApiError.InternalError;
        v37 = v19;
        goto LABEL_17;
      }

      v43 = v48;
      outlined init with take of AspireApiEvaluationKeyMetadata(&v32[v34], v48, type metadata accessor for AspireApiError.InternalError);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = type metadata accessor for AspireApiError.InternalError;
      _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v43, type metadata accessor for AspireApiError.InternalError);
      v41 = v19;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with copy of AspireHeEvaluationKeyConfig(v32, v25, type metadata accessor for AspireApiError.OneOf_ErrorType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = type metadata accessor for AspireApiError.EvaluationKeyNotFound;
      v37 = v25;
      goto LABEL_17;
    }

    v42 = v46;
    outlined init with take of AspireApiEvaluationKeyMetadata(&v32[v34], v46, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v40 = type metadata accessor for AspireApiError.EvaluationKeyNotFound;
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v42, type metadata accessor for AspireApiError.EvaluationKeyNotFound);
    v41 = v25;
LABEL_12:
    v44 = v40;
    goto LABEL_13;
  }

  outlined init with copy of AspireHeEvaluationKeyConfig(v32, v28, type metadata accessor for AspireApiError.OneOf_ErrorType);
  if (swift_getEnumCaseMultiPayload())
  {
    v36 = type metadata accessor for AspireApiError.ConfigVersionNotFound;
    v37 = v28;
LABEL_17:
    _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v37, v36);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v32, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeO_AEtMd, &_s8CipherML14AspireApiErrorV06OneOf_E4TypeO_AEtMR);
    v39 = 0;
    return v39 & 1;
  }

  outlined init with take of AspireApiEvaluationKeyMetadata(&v32[v34], v15, type metadata accessor for AspireApiError.ConfigVersionNotFound);
  v39 = specialized static AspireApiError.ConfigVersionNotFound.== infix(_:_:)(v28, v15);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v15, type metadata accessor for AspireApiError.ConfigVersionNotFound);
  v41 = v28;
  v44 = type metadata accessor for AspireApiError.ConfigVersionNotFound;
LABEL_13:
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v41, v44);
  _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(v32, type metadata accessor for AspireApiError.OneOf_ErrorType);
  return v39 & 1;
}

uint64_t outlined init with take of AspireApiEvaluationKeyMetadata(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML16AspireApiRequestV06OneOf_E0OWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of AspireHeEvaluationKeyConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for AspireApiEvaluationKeyMetadata()
{
  return type metadata completion function for AspireApiEvaluationKeyMetadata();
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

void type metadata accessor for AspireHeEvaluationKeyConfig?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for AspireApiEvaluationKey()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiEvaluationKeyMetadata?, type metadata accessor for AspireApiEvaluationKeyMetadata, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireHeSerializedEvaluationKey?, type metadata accessor for AspireHeSerializedEvaluationKey, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspireApiConfigRequest()
{
  type metadata accessor for [String](319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String](319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspireApiConfig()
{
  type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiConfig.OneOf_Config?, type metadata accessor for AspireApiConfig.OneOf_Config, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AspireApiConfig.OneOf_Config()
{
  result = type metadata accessor for AspireApiPIRConfig(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AspireApiPECConfig(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_123Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *__swift_store_extra_inhabitant_index_124Tm(void *result, uint64_t a2, int a3, uint64_t a4)
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

void type metadata completion function for AspireApiConfigResponse()
{
  type metadata accessor for [String : AspireApiConfig]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for [AspireApiKeyStatus], type metadata accessor for AspireApiKeyStatus, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspireApiRequest()
{
  type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiRequest.OneOf_Request?, type metadata accessor for AspireApiRequest.OneOf_Request, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AspireApiRequest.OneOf_Request(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
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

void type metadata completion function for AspireApiPIRShardConfig()
{
  type metadata accessor for [String](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [String](319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [String](319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [String](319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for AspireApiPIRConfig()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AspireApiPIRConfig._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AspireApiPIRShardConfigs.OneOf_ShardConfigs(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPIRFixedShardConfig(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_224E30540);
}

uint64_t storeEnumTagSinglePayload for AspireApiPIRShardConfigs.OneOf_ShardConfigs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AspireApiPIRFixedShardConfig(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_224E30554);
}

uint64_t type metadata completion function for AspireApiPIRShardConfigs.OneOf_ShardConfigs(uint64_t a1)
{
  result = type metadata accessor for AspireApiPIRFixedShardConfig(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_96Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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

uint64_t __swift_store_extra_inhabitant_index_97Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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

void type metadata completion function for AspireApiKeyStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v8 <= 0x3F)
  {
    type metadata accessor for AspireHeEvaluationKeyConfig?(319, a5, a6, MEMORY[0x277D83D88]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for AspireApiPIRRequest()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspirePirEncryptedIndices?, type metadata accessor for AspirePirEncryptedIndices, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiEvaluationKeyMetadata?, type metadata accessor for AspireApiEvaluationKeyMetadata, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [String](319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiEvaluationKey?, type metadata accessor for AspireApiEvaluationKey, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for AspireApiPIRResponse()
{
  type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for [AspireHeSerializedCiphertextVec], type metadata accessor for AspireHeSerializedCiphertextVec, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiStashOfEntries?, type metadata accessor for AspireApiStashOfEntries, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspireApiPECConfig()
{
  type metadata accessor for [String](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireHeEncryptionParameters?, type metadata accessor for AspireHeEncryptionParameters, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireSimilarityPlaintextPacking?, type metadata accessor for AspireSimilarityPlaintextPacking, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for AspireApiPECRequest()
{
  type metadata accessor for [String](319, &lazy cache variable for type metadata for [UInt32], MEMORY[0x277D84CC0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for [AspireSimilaritySerializedCiphertextMatrix], type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiEvaluationKeyMetadata?, type metadata accessor for AspireApiEvaluationKeyMetadata, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiEvaluationKey?, type metadata accessor for AspireApiEvaluationKey, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for [String](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata completion function for AspireApiPECShardResponse()
{
  type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for [AspireSimilaritySerializedCiphertextMatrix], type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [String](319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_310Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_311Tm(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_292Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *__swift_store_extra_inhabitant_index_293Tm(void *result, uint64_t a2, int a3, uint64_t a4)
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

void type metadata completion function for AspireApiStashOfEntries()
{
  type metadata accessor for [String](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String](319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspireApiEvaluationKeys(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for AspireHeEvaluationKeyConfig?(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AspireApiError.OneOf_ErrorType()
{
  result = type metadata accessor for AspireApiError.ConfigVersionNotFound(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AspireApiError.EvaluationKeyNotFound(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AspireApiError.InvalidRequest(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for AspireApiError.InternalError(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void type metadata completion function for AspireApiError.ConfigVersionNotFound()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiConfigResponse?, type metadata accessor for AspireApiConfigResponse, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for AspireApiPIRConfig._StorageClass()
{
  type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireHeEncryptionParameters?, type metadata accessor for AspireHeEncryptionParameters, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspirePirKeywordPirParameters?, type metadata accessor for AspirePirKeywordPirParameters, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspirePirBatchPirParameters?, type metadata accessor for AspirePirBatchPirParameters, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        type metadata accessor for AspireHeEvaluationKeyConfig?(319, &lazy cache variable for type metadata for AspireApiPIRShardConfigs?, type metadata accessor for AspireApiPIRShardConfigs, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t AspirePirKeywordPirParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v3 = a1 + v2[6];
  UnknownStorage.init()();
  v4 = v2[7];
  v5 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[8];
  v7 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t AspirePirEncryptedIndices.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  v1 = a1 + *(type metadata accessor for AspirePirEncryptedIndices(0) + 24);
  return UnknownStorage.init()();
}

uint64_t AspirePirKeywordPirParameters.shardingFunction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 32), v6, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v8 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v6, a1, type metadata accessor for AspirePirPIRShardingFunction);
  }

  v10 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  }

  return result;
}

BOOL AspirePirKeywordPirParameters.hasShardingFunction.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v5 + 32), v4, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v6 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  return v7;
}

BOOL AspirePirKeywordPirParameters.hasSymmetricPirClientConfig.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v5 + 28), v4, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v6 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  return v7;
}

uint64_t AspirePirKeywordPirParameters.symmetricPirClientConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AspirePirKeywordPirParameters(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 28), v6, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v8 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v6, a1, type metadata accessor for AspirePirSymmetricPirClientConfig);
  }

  *a1 = xmmword_225022910;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  }

  return result;
}

uint64_t AspirePirPirParameters.encryptionParameters.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = AspirePirPirParameters._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of AspirePirPIRShardingFunction(a1, v7, type metadata accessor for AspireHeEncryptionParameters);
  v15 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v11 + v16, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  return swift_endAccess();
}

uint64_t AspirePirPirParameters.numEntries.setter(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = AspirePirPirParameters._StorageClass.init(copying:)(v9);
    *(v4 + v6) = v9;
  }

  v13 = *a2;
  result = swift_beginAccess();
  *(v9 + v13) = a1;
  return result;
}

uint64_t AspirePirPirParameters.dimensions.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  v12 = *(v7 + v11);
  *(v7 + v11) = a1;
}

uint64_t AspirePirBatchPirParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x277D84F90];
  a1[3] = 0;
  v1 = a1 + *(type metadata accessor for AspirePirBatchPirParameters(0) + 32);
  return UnknownStorage.init()();
}

unint64_t AspirePirPirAlgorithm.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPirAlgorithm(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirKeyCompressionStrategy(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t AspirePirSymmetricPirConfigType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t AspirePirSymmetricPirConfigType.rawValue.getter()
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

unint64_t protocol witness for Enum.init(rawValue:) in conformance AspirePirSymmetricPirConfigType@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance AspirePirSymmetricPirConfigType()
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

void *protocol witness for RawRepresentable.init(rawValue:) in conformance AspirePirSymmetricPirConfigType@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AspirePirSymmetricPirConfigType(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirSymmetricPirConfigType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AspirePirSymmetricPirConfigType(uint64_t *a1, uint64_t *a2)
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

uint64_t AspirePirPirParameters.encryptionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v5, a1, type metadata accessor for AspireHeEncryptionParameters);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  v10 = a1 + *(v8 + 40);
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirPirParameters.encryptionParameters : AspirePirPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v12, type metadata accessor for AspireHeEncryptionParameters);
  v13 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = AspirePirPirParameters._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of AspirePirPIRShardingFunction(v12, v7, type metadata accessor for AspireHeEncryptionParameters);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v16 + v20, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  return swift_endAccess();
}

void (*AspirePirPirParameters.encryptionParameters.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeEncryptionParameters(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
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
  v15 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = 0;
    *(v14 + 48) = 1;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
    v19 = v14 + *(v9 + 40);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspireHeEncryptionParameters);
  }

  return AspirePirPirParameters.encryptionParameters.modify;
}

void AspirePirPirParameters.encryptionParameters.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of AspireHeEncryptionParameters(*(v2 + 120), *(v2 + 112), type metadata accessor for AspireHeEncryptionParameters);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v14, v18, type metadata accessor for AspireHeEncryptionParameters);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v7 + v19, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    swift_endAccess();
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v13, type metadata accessor for AspireHeEncryptionParameters);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = AspirePirPirParameters._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v13, v18, type metadata accessor for AspireHeEncryptionParameters);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__encryptionParameters;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v23 + v31, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

void (*AspirePirPirParameters.numEntries.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__numEntries;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return AspirePirPirParameters.numEntries.modify;
}

uint64_t AspirePirPirParameters.numEntries.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

uint64_t key path setter for AspirePirPirParameters.numEntries : AspirePirPirParameters(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = AspirePirPirParameters._StorageClass.init(copying:)(v11);
    *(a2 + v8) = v11;
  }

  v15 = *a5;
  result = swift_beginAccess();
  *(v11 + v15) = v7;
  return result;
}

void (*AspirePirPirParameters.entrySize.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__entrySize;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return AspirePirPirParameters.entrySize.modify;
}

void AspirePirPirParameters.numEntries.modify(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 88);
    v12 = *(v4 + 80);
    v13 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v10 = AspirePirPirParameters._StorageClass.init(copying:)(v10);
    *(v12 + v11) = v10;
  }

  v16 = *a3;
  swift_beginAccess();
  *(v10 + v16) = v5;

  free(v4);
}

uint64_t AspirePirPirParameters.dimensions.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v2 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t key path getter for AspirePirPirParameters.dimensions : AspirePirPirParameters@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v4 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t key path setter for AspirePirPirParameters.dimensions : AspirePirPirParameters(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspirePirPirParameters(0) + 20);

  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  v12 = *(v7 + v11);
  *(v7 + v11) = v3;
}

void (*AspirePirPirParameters.dimensions.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return AspirePirPirParameters.dimensions.modify;
}

void AspirePirPirParameters.dimensions.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = AspirePirPirParameters._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    v16 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
    swift_beginAccess();
    v17 = *(v10 + v16);
    *(v10 + v16) = v3;

    v18 = *v4;
  }

  else
  {
    v19 = *(v6 + v5);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v5);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 88);
      v23 = *(v2 + 80);
      v24 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = AspirePirPirParameters._StorageClass.init(copying:)(v21);
      *(v23 + v22) = v21;
    }

    v27 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__dimensions;
    swift_beginAccess();
    v28 = *(v21 + v27);
    *(v21 + v27) = v3;
  }

  free(v2);
}

uint64_t AspirePirPirParameters.keywordPirParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v6 + v7, v5, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v8 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v5, a1, type metadata accessor for AspirePirKeywordPirParameters);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v10 = a1 + v8[6];
  UnknownStorage.init()();
  v11 = v8[7];
  v12 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v8[8];
  v14 = type metadata accessor for AspirePirPIRShardingFunction(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirPirParameters.keywordPirParams : AspirePirPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v12, type metadata accessor for AspirePirKeywordPirParameters);
  v13 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = AspirePirPirParameters._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of AspirePirPIRShardingFunction(v12, v7, type metadata accessor for AspirePirKeywordPirParameters);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v16 + v20, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  return swift_endAccess();
}

uint64_t AspirePirPirParameters.keywordPirParams.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = AspirePirPirParameters._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of AspirePirPIRShardingFunction(a1, v7, type metadata accessor for AspirePirKeywordPirParameters);
  v15 = type metadata accessor for AspirePirKeywordPirParameters(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v11 + v16, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  return swift_endAccess();
}

void (*AspirePirPirParameters.keywordPirParams.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspirePirKeywordPirParameters(0);
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
  v15 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    v19 = v14 + v9[6];
    UnknownStorage.init()();
    v20 = v9[7];
    v21 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    v22 = v9[8];
    v23 = type metadata accessor for AspirePirPIRShardingFunction(0);
    (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspirePirKeywordPirParameters);
  }

  return AspirePirPirParameters.keywordPirParams.modify;
}

void AspirePirPirParameters.keywordPirParams.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of AspireHeEncryptionParameters(*(v2 + 120), *(v2 + 112), type metadata accessor for AspirePirKeywordPirParameters);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v14, v18, type metadata accessor for AspirePirKeywordPirParameters);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v7 + v19, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    swift_endAccess();
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v13, type metadata accessor for AspirePirKeywordPirParameters);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = AspirePirPirParameters._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v13, v18, type metadata accessor for AspirePirKeywordPirParameters);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keywordPirParams;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v23 + v31, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL AspirePirPirParameters.hasEncryptionParameters.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, a1, a2);
  return v16;
}

uint64_t AspirePirPirParameters.clearEncryptionParameters()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v17 = AspirePirPirParameters._StorageClass.init(copying:)(v17);
    *(v9 + v14) = v17;
  }

  v21 = a3(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v13, v17 + v22, a1, a2);
  return swift_endAccess();
}

void (*AspirePirPirParameters.algorithm.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__algorithm;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return AspirePirPirParameters.algorithm.modify;
}

void (*AspirePirPirParameters.batchSize.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__batchSize;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return AspirePirPirParameters.batchSize.modify;
}

uint64_t AspirePirPirParameters.evaluationKeyConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v8 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v7 + v8, v6, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v9 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v6, a1, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  v11 = a1 + *(v9 + 24);
  UnknownStorage.init()();
  v12 = *(v9 + 28);
  v13 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  }

  return result;
}

uint64_t key path getter for AspirePirPirParameters.evaluationKeyConfig : AspirePirPirParameters@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = *(a1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v9 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v8 + v9, v7, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v10 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of AspirePirPIRShardingFunction(v7, a2, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  v12 = a2 + *(v10 + 24);
  UnknownStorage.init()();
  v13 = *(v10 + 28);
  v14 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AspirePirPirParameters.evaluationKeyConfig : AspirePirPirParameters(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeEncryptionParameters(a1, v12, type metadata accessor for AspireHeEvaluationKeyConfig);
  v13 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = AspirePirPirParameters._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of AspirePirPIRShardingFunction(v12, v7, type metadata accessor for AspireHeEvaluationKeyConfig);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v16 + v20, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  return swift_endAccess();
}

uint64_t AspirePirPirParameters.evaluationKeyConfig.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = AspirePirPirParameters._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of AspirePirPIRShardingFunction(a1, v7, type metadata accessor for AspireHeEvaluationKeyConfig);
  v15 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v7, v11 + v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  return swift_endAccess();
}

void (*AspirePirPirParameters.evaluationKeyConfig.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
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
  v15 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16 + v17, v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    v19 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    v20 = *(v9 + 28);
    v21 = type metadata accessor for AspireHeEncryptionParameters(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v14, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  return AspirePirPirParameters.evaluationKeyConfig.modify;
}

void AspirePirPirParameters.evaluationKeyConfig.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of AspireHeEncryptionParameters(*(v2 + 120), *(v2 + 112), type metadata accessor for AspireHeEvaluationKeyConfig);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v14, v18, type metadata accessor for AspireHeEvaluationKeyConfig);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v7 + v19, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    swift_endAccess();
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v13, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = AspirePirPirParameters._StorageClass.init(copying:)(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    outlined init with take of AspirePirPIRShardingFunction(v13, v18, type metadata accessor for AspireHeEvaluationKeyConfig);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__evaluationKeyConfig;
    swift_beginAccess();
    outlined assign with take of AMDPbHEConfig.OneOf_Config?(v18, v23 + v31, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t AspirePirPirParameters.algorithm.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(type metadata accessor for AspirePirPirParameters(0) + 20)) + *a1;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a2 = *v4;
  *(a2 + 8) = v6;
  return result;
}

uint64_t key path getter for AspirePirPirParameters.algorithm : AspirePirPirParameters@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for AspirePirPirParameters(0) + 20)) + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t key path setter for AspirePirPirParameters.algorithm : AspirePirPirParameters(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v10 = *(a2 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = AspirePirPirParameters._StorageClass.init(copying:)(v12);
    *(a2 + v9) = v12;
  }

  v16 = v12 + *a5;
  result = swift_beginAccess();
  *v16 = v7;
  *(v16 + 8) = v8;
  return result;
}

uint64_t AspirePirPirParameters.algorithm.setter(uint64_t *a1, void *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v8 = *(v2 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v10 = AspirePirPirParameters._StorageClass.init(copying:)(v10);
    *(v4 + v7) = v10;
  }

  v14 = v10 + *a2;
  result = swift_beginAccess();
  *v14 = v5;
  *(v14 + 8) = v6;
  return result;
}

void (*AspirePirPirParameters.keyCompressionStrategy.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__keyCompressionStrategy;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return AspirePirPirParameters.keyCompressionStrategy.modify;
}

void AspirePirPirParameters.algorithm.modify(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 80);
  v9 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v4 + 84);
    v13 = *(v4 + 88);
    v14 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v11 = AspirePirPirParameters._StorageClass.init(copying:)(v11);
    *(v13 + v12) = v11;
  }

  v17 = v11 + *a3;
  swift_beginAccess();
  *v17 = v5;
  *(v17 + 8) = v8;

  free(v4);
}

uint64_t AspirePirPirParameters.compressVectorizedPirResponse.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v2 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  return *(v1 + v2) & 1;
}

uint64_t key path setter for AspirePirPirParameters.compressVectorizedPirResponse : AspirePirPirParameters(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  result = swift_beginAccess();
  *(v7 + v11) = v3;
  return result;
}

uint64_t AspirePirPirParameters.compressVectorizedPirResponse.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  result = swift_beginAccess();
  *(v7 + v11) = a1 & 1;
  return result;
}

void (*AspirePirPirParameters.compressVectorizedPirResponse.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return AspirePirPirParameters.compressVectorizedPirResponse.modify;
}

void AspirePirPirParameters.compressVectorizedPirResponse.modify(uint64_t *a1)
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
    v10 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  v13 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  *(v7 + v13) = v4;

  free(v1);
}

BOOL AspirePirPirParameters.hasCompressVectorizedPirResponse.getter()
{
  v1 = *(v0 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v2 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  return *(v1 + v2) != 2;
}

Swift::Void __swiftcall AspirePirPirParameters.clearCompressVectorizedPirResponse()()
{
  v1 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v4 = AspirePirPirParameters._StorageClass.init(copying:)(v4);
    *(v0 + v1) = v4;
  }

  v8 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  swift_beginAccess();
  *(v4 + v8) = 2;
}

uint64_t AspirePirPirParameters.vectorizedPirInternalBatchingSize.getter()
{
  v1 = (*(v0 + *(type metadata accessor for AspirePirPirParameters(0) + 20)) + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize);
  swift_beginAccess();
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for AspirePirPirParameters.vectorizedPirInternalBatchingSize : AspirePirPirParameters@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirParameters(0) + 20)) + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  result = swift_beginAccess();
  v5 = *v3;
  if (*(v3 + 8))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for AspirePirPirParameters.vectorizedPirInternalBatchingSize : AspirePirPirParameters(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  result = swift_beginAccess();
  *v11 = v3;
  *(v11 + 8) = 0;
  return result;
}

uint64_t AspirePirPirParameters.vectorizedPirInternalBatchingSize.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for AspirePirPirParameters._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = AspirePirPirParameters._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  result = swift_beginAccess();
  *v11 = a1;
  *(v11 + 8) = 0;
  return result;
}

void (*AspirePirPirParameters.vectorizedPirInternalBatchingSize.modify(uint64_t *a1))(uint64_t *a1)
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
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for AspirePirPirParameters(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__vectorizedPirInternalBatchingSize;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return AspirePirPirParameters.vectorizedPirInternalBatchingSize.modify;
}