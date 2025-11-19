uint64_t closure #2 in CP_SubscribeResponse.InitializeAck.MissingEncryptionID.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 24);
  type metadata accessor for CP_EncryptionID(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t CP_PublishRequest.UpdatedEncryptionID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = closure #1 in CP_SubscribeResponse.InitializeAck.MissingEncryptionID.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    if (!v4)
    {
      v12 = v3 + *(type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in CP_SubscribeResponse.InitializeAck.MissingEncryptionID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for CP_EncryptionID(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v16 + 24), v10, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of NSObject?(v10, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  }

  outlined init with take of CP_SequenceNumber(v10, v15, type metadata accessor for CP_EncryptionID);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CP_SequenceNumber(v15, type metadata accessor for CP_EncryptionID);
}

uint64_t protocol witness for Message.init() in conformance CP_PublishRequest.UpdatedEncryptionID@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for CP_EncryptionID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_PublishRequest.UpdatedEncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest.UpdatedEncryptionID and conformance CP_PublishRequest.UpdatedEncryptionID, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_PublishRequest.UpdatedEncryptionID()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest.UpdatedEncryptionID and conformance CP_PublishRequest.UpdatedEncryptionID, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_PublishRequest.UpdatedEncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest.UpdatedEncryptionID and conformance CP_PublishRequest.UpdatedEncryptionID, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t closure #3 in CP_PublishResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for CP_PublishResponse(0) + 28);
  type metadata accessor for CP_SequenceNumber(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in CP_PublishResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CP_SequenceNumber(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CP_PublishResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 28), v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  outlined init with take of CP_SequenceNumber(v8, v13, type metadata accessor for CP_SequenceNumber);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CP_SequenceNumber(v13, type metadata accessor for CP_SequenceNumber);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_PublishResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishResponse and conformance CP_PublishResponse, type metadata accessor for CP_PublishResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_PublishResponse()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishResponse and conformance CP_PublishResponse, type metadata accessor for CP_PublishResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_PublishResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishResponse and conformance CP_PublishResponse, type metadata accessor for CP_PublishResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_UpsertTopicMetadataRequest.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CP_KeyValue(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CP_UpsertTopicMetadataRequest.traverse<A>(visitor:)()
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
    if (!*(v0[2] + 16) || (type metadata accessor for CP_KeyValue(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
    {
      v6 = v0 + *(type metadata accessor for CP_UpsertTopicMetadataRequest(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_TopicSubscribers.TopicSubscribersInfo@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_UpsertTopicMetadataRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataRequest and conformance CP_UpsertTopicMetadataRequest, type metadata accessor for CP_UpsertTopicMetadataRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_UpsertTopicMetadataRequest()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataRequest and conformance CP_UpsertTopicMetadataRequest, type metadata accessor for CP_UpsertTopicMetadataRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_UpsertTopicMetadataRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataRequest and conformance CP_UpsertTopicMetadataRequest, type metadata accessor for CP_UpsertTopicMetadataRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_UpsertTopicMetadataResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus();
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

uint64_t CP_UpsertTopicMetadataResponse.traverse<A>(visitor:)()
{
  if (!*v0 || (v6 = *v0, v7 = *(v0 + 8), lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v5 = v0 + *(type metadata accessor for CP_UpsertTopicMetadataResponse(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_UpsertTopicMetadataResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_UpsertTopicMetadataResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataResponse and conformance CP_UpsertTopicMetadataResponse, type metadata accessor for CP_UpsertTopicMetadataResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_UpsertTopicMetadataResponse()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataResponse and conformance CP_UpsertTopicMetadataResponse, type metadata accessor for CP_UpsertTopicMetadataResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_UpsertTopicMetadataResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataResponse and conformance CP_UpsertTopicMetadataResponse, type metadata accessor for CP_UpsertTopicMetadataResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_CreateTopicRequest.decodeMessage<A>(decoder:)()
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
        if (result == 3)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          lazy protocol witness table accessor for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
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
          type metadata accessor for CP_KeyValue(0);
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CP_CreateTopicRequest.traverse<A>(visitor:)()
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
    if (!*(v0[2] + 16) || (type metadata accessor for CP_KeyValue(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
    {
      v6 = v0[4];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v0[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        if (!v0[5] || (v9 = v0[5], v10 = *(v0 + 48), lazy protocol witness table accessor for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
        {
          v8 = v0 + *(type metadata accessor for CP_CreateTopicRequest(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_CreateTopicRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_CreateTopicRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicRequest and conformance CP_CreateTopicRequest, type metadata accessor for CP_CreateTopicRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_CreateTopicRequest()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicRequest and conformance CP_CreateTopicRequest, type metadata accessor for CP_CreateTopicRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_CreateTopicRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicRequest and conformance CP_CreateTopicRequest, type metadata accessor for CP_CreateTopicRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_PublishResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v5)
  {
    while ((v12 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          a4(a1, v7, a2, a3);
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in CP_CreateTopicResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for CP_CreateTopicResponse(0) + 28);
  type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse.ClientTopicConfig and conformance CP_CreateTopicResponse.ClientTopicConfig, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t CP_PublishResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  if (!*v5 || (v16 = *v5, v17 = *(v5 + 8), lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v6))
  {
    v13 = v5[3];
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v5[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v6))
    {
      result = a4(v5, a1, a2, a3);
      if (!v6)
      {
        v15 = v5 + *(a5(0) + 24);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in CP_CreateTopicResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  Topic = type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  v10 = *(Topic - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Topic);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TopicResponse = type metadata accessor for CP_CreateTopicResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(TopicResponse + 28), v8, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  if ((*(v10 + 48))(v8, 1, Topic) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  }

  outlined init with take of CP_SequenceNumber(v8, v13, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse.ClientTopicConfig and conformance CP_CreateTopicResponse.ClientTopicConfig, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CP_SequenceNumber(v13, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
}

uint64_t protocol witness for Message.init() in conformance CP_PublishResponse@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  v6 = a3 + *(a1 + 24);
  UnknownStorage.init()();
  v7 = *(a1 + 28);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a3 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_CreateTopicResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse and conformance CP_CreateTopicResponse, type metadata accessor for CP_CreateTopicResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_CreateTopicResponse()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse and conformance CP_CreateTopicResponse, type metadata accessor for CP_CreateTopicResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_CreateTopicResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse and conformance CP_CreateTopicResponse, type metadata accessor for CP_CreateTopicResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *CP_CreateTopicResponse.ClientTopicConfig.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_CreateTopicResponse.ClientTopicConfig.protoMessageName;
}

uint64_t CP_CreateTopicResponse.ClientTopicConfig.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result < 8 || result == 8)
      {
        goto LABEL_2;
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_16;
      }

LABEL_2:
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else if (result == 1 || result == 2)
    {
LABEL_16:
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }
}

uint64_t CP_CreateTopicResponse.ClientTopicConfig.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 8) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
    {
      if (!*(v0 + 16) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
      {
        if (!*(v0 + 24) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
        {
          if (!*(v0 + 28) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
          {
            if (!*(v0 + 32) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
            {
              if (!*(v0 + 36) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
              {
                if (!*(v0 + 40) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
                {
                  v3 = v0 + *(type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0) + 48);
                  return UnknownStorage.traverse<A>(visitor:)();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_CreateTopicResponse.ClientTopicConfig@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *(a2 + 28) = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v2 = a2 + *(a1 + 48);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance CP_CreateTopicResponse.ClientTopicConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance CP_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance CP_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for ActivitySession.Errors;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse.ClientTopicConfig and conformance CP_CreateTopicResponse.ClientTopicConfig, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_CreateTopicResponse.ClientTopicConfig()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse.ClientTopicConfig and conformance CP_CreateTopicResponse.ClientTopicConfig, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse.ClientTopicConfig and conformance CP_CreateTopicResponse.ClientTopicConfig, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_FetchTopicsRequest.decodeMessage<A>(decoder:)()
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t static CP_FetchTopicsRequest.== infix(_:_:)()
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance CP_FetchTopicsRequest@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance CP_FetchTopicsRequest(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_FetchTopicsRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_FetchTopicsRequest and conformance CP_FetchTopicsRequest, type metadata accessor for CP_FetchTopicsRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_FetchTopicsRequest()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_FetchTopicsRequest and conformance CP_FetchTopicsRequest, type metadata accessor for CP_FetchTopicsRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_FetchTopicsRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_FetchTopicsRequest and conformance CP_FetchTopicsRequest, type metadata accessor for CP_FetchTopicsRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CP_FetchTopicsRequest()
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t CP_FetchTopicsResponse.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CP_FetchTopicsResponse.traverse<A>(visitor:)()
{
  if (!*v0 || (v6 = *v0, v7 = *(v0 + 8), lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0[4] + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v1))
      {
        v5 = v0 + *(type metadata accessor for CP_FetchTopicsResponse(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

Swift::Int CP_Record.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance CP_FetchTopicsResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_FetchTopicsResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_FetchTopicsResponse and conformance CP_FetchTopicsResponse, type metadata accessor for CP_FetchTopicsResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_FetchTopicsResponse()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_FetchTopicsResponse and conformance CP_FetchTopicsResponse, type metadata accessor for CP_FetchTopicsResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_FetchTopicsResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_FetchTopicsResponse and conformance CP_FetchTopicsResponse, type metadata accessor for CP_FetchTopicsResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t specialized static CP_SystemEvent.OneOf_Event.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t specialized static CP_UpsertTopicMetadataResponse.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1AEE179E0[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    if (v3 <= 3)
    {
      if (v3 > 1)
      {
        if (v3 == 2)
        {
          if (v2 != 3)
          {
            return 0;
          }
        }

        else if (v2 != 4)
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

    else if (v3 <= 5)
    {
      if (v3 == 4)
      {
        if (v2 != 5)
        {
          return 0;
        }
      }

      else if (v2 != 6)
      {
        return 0;
      }
    }

    else if (v3 == 6)
    {
      if (v2 != 7)
      {
        return 0;
      }
    }

    else if (v3 == 7)
    {
      if (v2 != 8)
      {
        return 0;
      }
    }

    else if (v2 != 1000)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = *(type metadata accessor for CP_UpsertTopicMetadataResponse(0) + 24);
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static CP_UpsertTopicMetadataRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore11CP_KeyValueV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for CP_UpsertTopicMetadataRequest(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CP_TopicSubscribersRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v24 - v16, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v17[v18], &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v17, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for CP_TopicSubscribersRequest(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17, v12, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
LABEL_6:
    outlined destroy of NSObject?(v17, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of CP_SequenceNumber(&v17[v18], v8, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  v21 = specialized static CP_TopicSubscribersRequest.OneOf_Operation.== infix(_:_:)(v12, v8);
  outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static CP_TopicSubscribersRequest.OneOf_Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0);
  v4 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0);
  v7 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v37 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationO_AEtMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v37 - v20;
  v22 = *(v19 + 56);
  outlined init with copy of CP_SequenceNumber(a1, &v37 - v20, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  outlined init with copy of CP_SequenceNumber(a2, &v21[v22], type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of CP_SequenceNumber(v21, v14, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of CP_SequenceNumber(&v21[v22], v6, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
      v23 = *v14 == *v6 && *(v14 + 1) == *(v6 + 1);
      if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_33;
      }

      v24 = *(v14 + 2);
      v25 = *(v6 + 2);
      if (v14[24])
      {
        v24 = v24 != 0;
      }

      if (v6[24] == 1)
      {
        if (v25)
        {
          if (v24 != 1)
          {
            goto LABEL_33;
          }
        }

        else if (v24)
        {
          goto LABEL_33;
        }
      }

      else if (v24 != v25)
      {
        goto LABEL_33;
      }

      v35 = *(v37 + 24);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
        v32 = v14;
        v31 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest;
        goto LABEL_32;
      }

LABEL_33:
      outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
      v34 = v14;
      v33 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest;
      goto LABEL_34;
    }

    v26 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest;
    v27 = v14;
  }

  else
  {
    outlined init with copy of CP_SequenceNumber(v21, v16, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of CP_SequenceNumber(&v21[v22], v9, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
      v28 = *v16 == *v9 && v16[1] == v9[1];
      if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v29 = *(v38 + 20);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CP_SequenceNumber(v9, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
        if (v30)
        {
          v31 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck;
          v32 = v16;
LABEL_32:
          outlined destroy of CP_SequenceNumber(v32, v31);
          outlined destroy of CP_SequenceNumber(v21, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
          return 1;
        }
      }

      else
      {
        outlined destroy of CP_SequenceNumber(v9, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
      }

      v33 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck;
      v34 = v16;
LABEL_34:
      outlined destroy of CP_SequenceNumber(v34, v33);
      outlined destroy of CP_SequenceNumber(v21, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
      return 0;
    }

    v26 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck;
    v27 = v16;
  }

  outlined destroy of CP_SequenceNumber(v27, v26);
  outlined destroy of NSObject?(v21, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationO_AEtMR);
  return 0;
}

uint64_t specialized static CP_TopicSubscribersRequest.TopicTerminationRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (*(a1 + 24))
  {
    v5 = v5 != 0;
  }

  if (*(a2 + 24) == 1)
  {
    if (v6)
    {
      if (v5 != 1)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  v8 = *(type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CP_FetchTopicsResponse.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (*(a1 + 8) == 1)
  {
    v4 = qword_1AEE179E0[v4];
  }

  v5 = *a2;
  if (*(a2 + 8))
  {
    if (v5 <= 3)
    {
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          if (v4 != 3)
          {
            return 0;
          }
        }

        else if (v4 != 4)
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

    else if (v5 <= 5)
    {
      if (v5 == 4)
      {
        if (v4 != 5)
        {
          return 0;
        }
      }

      else if (v4 != 6)
      {
        return 0;
      }
    }

    else if (v5 == 6)
    {
      if (v4 != 7)
      {
        return 0;
      }
    }

    else if (v5 == 7)
    {
      if (v4 != 8)
      {
        return 0;
      }
    }

    else if (v4 != 1000)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1[4], *(a2 + 32)))
  {
    v7 = *(type metadata accessor for CP_FetchTopicsResponse(0) + 28);
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static CP_CreateTopicResponse.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  Topic = type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  v5 = *(Topic - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Topic);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSg_AFtMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v17 = *a1;
  if (*(a1 + 8) == 1)
  {
    v17 = qword_1AEE179E0[v17];
  }

  v18 = *a2;
  if (*(a2 + 8))
  {
    if (v18 <= 3)
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          if (v17 != 3)
          {
            goto LABEL_24;
          }
        }

        else if (v17 != 4)
        {
          goto LABEL_24;
        }
      }

      else if (v18)
      {
        if (v17 != 1)
        {
          goto LABEL_24;
        }
      }

      else if (v17)
      {
        goto LABEL_24;
      }
    }

    else if (v18 <= 5)
    {
      if (v18 == 4)
      {
        if (v17 != 5)
        {
          goto LABEL_24;
        }
      }

      else if (v17 != 6)
      {
        goto LABEL_24;
      }
    }

    else if (v18 == 6)
    {
      if (v17 != 7)
      {
        goto LABEL_24;
      }
    }

    else if (v18 == 7)
    {
      if (v17 != 8)
      {
        goto LABEL_24;
      }
    }

    else if (v17 != 1000)
    {
      goto LABEL_24;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_24;
  }

  if ((a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  v27 = v8;
  TopicResponse = type metadata accessor for CP_CreateTopicResponse(0);
  v19 = *(TopicResponse + 28);
  v20 = *(v13 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v19, v16, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v19, &v16[v20], &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Topic) == 1)
  {
    if (v21(&v16[v20], 1, Topic) == 1)
    {
      outlined destroy of NSObject?(v16, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
LABEL_33:
      v26 = *(TopicResponse + 24);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_23;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v12, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  if (v21(&v16[v20], 1, Topic) == 1)
  {
    outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
LABEL_23:
    outlined destroy of NSObject?(v16, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSg_AFtMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSg_AFtMR);
    goto LABEL_24;
  }

  v24 = v27;
  outlined init with take of CP_SequenceNumber(&v16[v20], v27, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  v25 = specialized static CP_CreateTopicResponse.ClientTopicConfig.== infix(_:_:)(v12, v24);
  outlined destroy of CP_SequenceNumber(v24, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  outlined destroy of NSObject?(v16, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  if (v25)
  {
    goto LABEL_33;
  }

LABEL_24:
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static CP_CreateTopicResponse.ClientTopicConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28) || *(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v2 = *(type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0) + 48);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CP_CreateTopicRequest.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore11CP_KeyValueV_Tt1g5(a1[2], *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = *(a2 + 40);
  if (*(a2 + 48) == 1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (v6 != 2)
        {
          return 0;
        }
      }

      else if (v7 == 3)
      {
        if (v6 != 3)
        {
          return 0;
        }
      }

      else if (v6 != 4)
      {
        return 0;
      }

LABEL_19:
      v8 = *(type metadata accessor for CP_CreateTopicRequest(0) + 32);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }

      goto LABEL_19;
    }

    if (!v6)
    {
      goto LABEL_19;
    }
  }

  else if (v6 == v7)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t specialized static CP_SubscribeResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v24 - v16, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v17[v18], &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v17, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for CP_SubscribeResponse(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17, v12, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
LABEL_6:
    outlined destroy of NSObject?(v17, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of CP_SequenceNumber(&v17[v18], v8, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  v21 = specialized static CP_SubscribeResponse.OneOf_Operation.== infix(_:_:)(v12, v8);
  outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static CP_SubscribeResponse.OneOf_Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CP_Record(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v38 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v38 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationO_AEtMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationO_AEtMR);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v38 - v27;
  v29 = *(v26 + 56);
  outlined init with copy of CP_SequenceNumber(a1, &v38 - v27, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  outlined init with copy of CP_SequenceNumber(v39, &v28[v29], type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of CP_SequenceNumber(v28, v21, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of CP_SequenceNumber(&v28[v29], v9, type metadata accessor for CP_Record);
        v31 = specialized static CP_Record.== infix(_:_:)(v21, v9);
        v32 = type metadata accessor for CP_Record;
        outlined destroy of CP_SequenceNumber(v9, type metadata accessor for CP_Record);
        v33 = v21;
LABEL_13:
        outlined destroy of CP_SequenceNumber(v33, v32);
        outlined destroy of CP_SequenceNumber(v28, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
        return v31 & 1;
      }

      v34 = type metadata accessor for CP_Record;
      v35 = v21;
    }

    else
    {
      outlined init with copy of CP_SequenceNumber(v28, v18, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v36 = v38;
        outlined init with take of CP_SequenceNumber(&v28[v29], v38, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
        v31 = specialized static CP_SubscribeResponse.TopicUpdate.== infix(_:_:)(v18, v36);
        v32 = type metadata accessor for CP_SubscribeResponse.TopicUpdate;
        outlined destroy of CP_SequenceNumber(v36, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
        v33 = v18;
        goto LABEL_13;
      }

      v34 = type metadata accessor for CP_SubscribeResponse.TopicUpdate;
      v35 = v18;
    }
  }

  else
  {
    outlined init with copy of CP_SequenceNumber(v28, v23, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of CP_SequenceNumber(&v28[v29], v13, type metadata accessor for CP_SubscribeResponse.InitializeAck);
      v31 = specialized static CP_SubscribeResponse.InitializeAck.== infix(_:_:)(v23, v13);
      v32 = type metadata accessor for CP_SubscribeResponse.InitializeAck;
      outlined destroy of CP_SequenceNumber(v13, type metadata accessor for CP_SubscribeResponse.InitializeAck);
      v33 = v23;
      goto LABEL_13;
    }

    v34 = type metadata accessor for CP_SubscribeResponse.InitializeAck;
    v35 = v23;
  }

  outlined destroy of CP_SequenceNumber(v35, v34);
  outlined destroy of NSObject?(v28, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationO_AEtMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationO_AEtMR);
  v31 = 0;
  return v31 & 1;
}

uint64_t specialized static CP_SubscribeResponse.InitializeAck.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = (&v56 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSg_ADtMd, &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - v12;
  v14 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = (&v56 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSg_AHtMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSg_AHtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v56 - v25;
  v27 = *a1;
  if (*(a1 + 8) == 1)
  {
    v27 = qword_1AEE179E0[v27];
  }

  v28 = *a2;
  if (*(a2 + 8))
  {
    if (v28 <= 3)
    {
      if (v28 > 1)
      {
        if (v28 == 2)
        {
          if (v27 != 3)
          {
            goto LABEL_54;
          }
        }

        else if (v27 != 4)
        {
          goto LABEL_54;
        }
      }

      else if (v28)
      {
        if (v27 != 1)
        {
          goto LABEL_54;
        }
      }

      else if (v27)
      {
        goto LABEL_54;
      }
    }

    else if (v28 <= 5)
    {
      if (v28 == 4)
      {
        if (v27 != 5)
        {
          goto LABEL_54;
        }
      }

      else if (v27 != 6)
      {
        goto LABEL_54;
      }
    }

    else if (v28 == 6)
    {
      if (v27 != 7)
      {
        goto LABEL_54;
      }
    }

    else if (v28 == 7)
    {
      if (v27 != 8)
      {
        goto LABEL_54;
      }
    }

    else if (v27 != 1000)
    {
      goto LABEL_54;
    }
  }

  else if (v27 != v28)
  {
LABEL_54:
    v43 = 0;
    return v43 & 1;
  }

  if ((a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[4], *(a2 + 32)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore11CP_KeyValueV_Tt1g5(a1[5], *(a2 + 40)) & 1) == 0)
  {
    goto LABEL_54;
  }

  v57 = v13;
  v56 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  v29 = *(v56 + 44);
  v30 = *(v23 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v29, v26, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v31 = a2 + v29;
  v32 = v30;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v31, &v26[v30], &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v33 = *(v15 + 48);
  if (v33(v26, 1, v14) == 1)
  {
    if (v33(&v26[v32], 1, v14) == 1)
    {
      outlined destroy of NSObject?(v26, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
      goto LABEL_19;
    }

    goto LABEL_46;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v26, v22, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  if (v33(&v26[v32], 1, v14) == 1)
  {
    outlined destroy of CP_SequenceNumber(v22, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
LABEL_46:
    v44 = &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSg_AHtMd;
    v45 = &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSg_AHtMR;
LABEL_52:
    v48 = v26;
LABEL_53:
    outlined destroy of NSObject?(v48, v44, v45);
    goto LABEL_54;
  }

  outlined init with take of CP_SequenceNumber(&v26[v32], v18, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  if (*v22 != *v18 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore17CP_SequenceNumberV_Tt1g5(v22[1], v18[1]) & 1) == 0)
  {
    outlined destroy of CP_SequenceNumber(v18, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
    outlined destroy of CP_SequenceNumber(v22, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
    v44 = &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd;
    v45 = &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR;
    goto LABEL_52;
  }

  v46 = *(v14 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CP_SequenceNumber(v18, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  outlined destroy of CP_SequenceNumber(v22, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  outlined destroy of NSObject?(v26, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  if ((v47 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_19:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19MissingEncryptionIDV_Tt1g5(a1[6], *(a2 + 48)) & 1) == 0)
  {
    goto LABEL_54;
  }

  v35 = v56;
  v34 = v57;
  v36 = *(v56 + 48);
  v37 = *(v10 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v36, v57, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v38 = a2 + v36;
  v39 = v34;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v38, v34 + v37, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v40 = v61;
  v41 = *(v60 + 48);
  if (v41(v34, 1, v61) == 1)
  {
    if (v41(v34 + v37, 1, v40) == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

  v50 = v34;
  v51 = v59;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v50, v59, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if (v41(v39 + v37, 1, v40) == 1)
  {
    outlined destroy of CP_SequenceNumber(v51, type metadata accessor for CP_SequenceNumber);
LABEL_58:
    v44 = &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMd;
    v45 = &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMR;
    v48 = v39;
    goto LABEL_53;
  }

  v52 = v39 + v37;
  v53 = v58;
  outlined init with take of CP_SequenceNumber(v52, v58, type metadata accessor for CP_SequenceNumber);
  if (*v51 != *v53 || v51[1] != v53[1])
  {
    outlined destroy of CP_SequenceNumber(v53, type metadata accessor for CP_SequenceNumber);
    goto LABEL_64;
  }

  v54 = *(v40 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CP_SequenceNumber(v53, type metadata accessor for CP_SequenceNumber);
  if ((v55 & 1) == 0)
  {
LABEL_64:
    outlined destroy of CP_SequenceNumber(v51, type metadata accessor for CP_SequenceNumber);
    v44 = &_s14CopresenceCore17CP_SequenceNumberVSgMd;
    v45 = &_s14CopresenceCore17CP_SequenceNumberVSgMR;
    v48 = v39;
    goto LABEL_53;
  }

  outlined destroy of CP_SequenceNumber(v51, type metadata accessor for CP_SequenceNumber);
LABEL_22:
  outlined destroy of NSObject?(v39, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[7], *(a2 + 56)) & 1) == 0)
  {
    goto LABEL_54;
  }

  v42 = *(v35 + 40);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v43 & 1;
}

uint64_t specialized static CP_SubscribeResponse.InitializeAck.MissingEncryptionID.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for CP_EncryptionID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd, &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_10;
  }

  v27 = type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v28 = a2;
  v17 = *(v27 + 24);
  v18 = *(v13 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v17, v16, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28 + v17, &v16[v18], &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v12, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      outlined init with take of CP_SequenceNumber(&v16[v18], v8, type metadata accessor for CP_EncryptionID);
      if (specialized static Data.== infix(_:_:)(*v12, *(v12 + 1), *v8, *(v8 + 1)))
      {
        v25 = *(v4 + 20);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_EncryptionID);
        outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_EncryptionID);
        outlined destroy of NSObject?(v16, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
        if (v26)
        {
          goto LABEL_5;
        }

LABEL_10:
        v21 = 0;
        return v21 & 1;
      }

      outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_EncryptionID);
      outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_EncryptionID);
      v22 = &_s14CopresenceCore15CP_EncryptionIDVSgMd;
      v23 = &_s14CopresenceCore15CP_EncryptionIDVSgMR;
LABEL_9:
      outlined destroy of NSObject?(v16, v22, v23);
      goto LABEL_10;
    }

    outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_EncryptionID);
LABEL_8:
    v22 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd;
    v23 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR;
    goto LABEL_9;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of NSObject?(v16, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
LABEL_5:
  v20 = *(v27 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static CP_SubscribeResponse.TopicUpdate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v4 != v5)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 != 1)
  {
    if (v4 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v4 != 1)
  {
    return 0;
  }

LABEL_11:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore11CP_KeyValueV_Tt1g5(a1[2], a2[2]) & 1) == 0 || a1[3] != a2[3] || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v7 = *(type metadata accessor for CP_SubscribeResponse.TopicUpdate(0) + 32);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CP_TopicSubscribers.TopicSubscribersInfo.== infix(_:_:)(uint64_t *a1, void *a2)
{
  result = *a1;
  if (result != *a2 || a1[1] != a2[1])
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v6 = a1[2];
  v7 = a2[2];
  v8 = *(v6 + 16);
  if (v8 != *(v7 + 16))
  {
    return 0;
  }

  if (v8)
  {
    v9 = v6 == v7;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_15:
    v12 = *(type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo(0) + 24);
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  else
  {
    v10 = (v6 + 32);
    v11 = (v7 + 32);
    while (v8)
    {
      if (*v10 != *v11)
      {
        return 0;
      }

      ++v10;
      ++v11;
      if (!--v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized static CP_SubscribeRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v24 - v16, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v17[v18], &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v17, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for CP_SubscribeRequest(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17, v12, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
LABEL_6:
    outlined destroy of NSObject?(v17, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of CP_SequenceNumber(&v17[v18], v8, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  v21 = specialized static CP_SubscribeRequest.OneOf_Operation.== infix(_:_:)(v12, v8);
  outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static CP_SubscribeRequest.OneOf_Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v29 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationO_AEtMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v29 - v21;
  v23 = *(v20 + 56);
  outlined init with copy of CP_SequenceNumber(a1, &v29 - v21, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  outlined init with copy of CP_SequenceNumber(a2, &v22[v23], type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of CP_SequenceNumber(v22, v17, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of CP_SequenceNumber(&v22[v23], v10, type metadata accessor for CP_SubscribeRequest.Initialize);
      v25 = specialized static CP_SubscribeRequest.Initialize.== infix(_:_:)(v17, v10);
      outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_SubscribeRequest.Initialize);
      outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_SubscribeRequest.Initialize);
      outlined destroy of CP_SequenceNumber(v22, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
      return v25 & 1;
    }

    v26 = type metadata accessor for CP_SubscribeRequest.Initialize;
    v27 = v17;
    goto LABEL_9;
  }

  outlined init with copy of CP_SequenceNumber(v22, v15, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26 = type metadata accessor for CP_SubscribeRequest.RecordAck;
    v27 = v15;
LABEL_9:
    outlined destroy of CP_SequenceNumber(v27, v26);
    outlined destroy of NSObject?(v22, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationO_AEtMR);
LABEL_12:
    v25 = 0;
    return v25 & 1;
  }

  outlined init with take of CP_SequenceNumber(&v22[v23], v6, type metadata accessor for CP_SubscribeRequest.RecordAck);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore17CP_SequenceNumberV_Tt1g5(*v15, *v6) & 1) == 0 || (v24 = *(v30 + 20), type metadata accessor for UnknownStorage(), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeRequest.RecordAck);
    outlined destroy of CP_SequenceNumber(v15, type metadata accessor for CP_SubscribeRequest.RecordAck);
    outlined destroy of CP_SequenceNumber(v22, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    goto LABEL_12;
  }

  outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeRequest.RecordAck);
  outlined destroy of CP_SequenceNumber(v15, type metadata accessor for CP_SubscribeRequest.RecordAck);
  outlined destroy of CP_SequenceNumber(v22, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  v25 = 1;
  return v25 & 1;
}

uint64_t specialized static CP_SubscribeRequest.Initialize.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for CP_EncryptionID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd, &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore17CP_SequenceNumberV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_16;
  }

  v30 = v8;
  v29 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
  v17 = *(v29 + 40);
  v18 = *(v13 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v17, v16, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v17, &v16[v18], &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v12, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v25 = &v16[v18];
      v26 = v30;
      outlined init with take of CP_SequenceNumber(v25, v30, type metadata accessor for CP_EncryptionID);
      if (specialized static Data.== infix(_:_:)(*v12, *(v12 + 1), *v26, *(v26 + 8)))
      {
        v27 = *(v4 + 20);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CP_SequenceNumber(v26, type metadata accessor for CP_EncryptionID);
        outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_EncryptionID);
        outlined destroy of NSObject?(v16, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
        if (v28)
        {
          goto LABEL_8;
        }

LABEL_16:
        v21 = 0;
        return v21 & 1;
      }

      outlined destroy of CP_SequenceNumber(v26, type metadata accessor for CP_EncryptionID);
      outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_EncryptionID);
      v22 = &_s14CopresenceCore15CP_EncryptionIDVSgMd;
      v23 = &_s14CopresenceCore15CP_EncryptionIDVSgMR;
LABEL_15:
      outlined destroy of NSObject?(v16, v22, v23);
      goto LABEL_16;
    }

    outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_EncryptionID);
LABEL_14:
    v22 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd;
    v23 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR;
    goto LABEL_15;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  outlined destroy of NSObject?(v16, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
LABEL_8:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore15CP_EncryptionIDV_Tt1g5(a1[3], a2[3]) & 1) == 0 || a1[4] != a2[4] || a1[5] != a2[5])
  {
    goto LABEL_16;
  }

  v20 = *(v29 + 36);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static CP_PublishResponse.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v31 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSg_ADtMd, &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v17 = *a1;
  if (*(a1 + 8) == 1)
  {
    v17 = qword_1AEE179E0[v17];
  }

  v18 = *a2;
  if (!*(a2 + 8))
  {
    if (v17 == v18)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

  if (v18 <= 3)
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        if (v17 != 3)
        {
          goto LABEL_37;
        }
      }

      else if (v17 != 4)
      {
        goto LABEL_37;
      }

      goto LABEL_11;
    }

    if (v18)
    {
      if (v17 != 1)
      {
        goto LABEL_37;
      }

      goto LABEL_11;
    }

    if (!v17)
    {
      goto LABEL_11;
    }

LABEL_37:
    v23 = 0;
    return v23 & 1;
  }

  if (v18 <= 5)
  {
    if (v18 == 4)
    {
      if (v17 != 5)
      {
        goto LABEL_37;
      }
    }

    else if (v17 != 6)
    {
      goto LABEL_37;
    }
  }

  else if (v18 == 6)
  {
    if (v17 != 7)
    {
      goto LABEL_37;
    }
  }

  else if (v18 == 7)
  {
    if (v17 != 8)
    {
      goto LABEL_37;
    }
  }

  else if (v17 != 1000)
  {
    goto LABEL_37;
  }

LABEL_11:
  if ((a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  v31 = v8;
  v32 = type metadata accessor for CP_PublishResponse(0);
  v19 = *(v32 + 28);
  v20 = *(v13 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v19, v16, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v19, &v16[v20], &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v12, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    if (v21(&v16[v20], 1, v4) != 1)
    {
      v26 = &v16[v20];
      v27 = v31;
      outlined init with take of CP_SequenceNumber(v26, v31, type metadata accessor for CP_SequenceNumber);
      if (*v12 == *v27 && v12[1] == v27[1])
      {
        v28 = *(v4 + 24);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v29 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CP_SequenceNumber(v27, type metadata accessor for CP_SequenceNumber);
        if (v29)
        {
          outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_SequenceNumber);
          goto LABEL_16;
        }
      }

      else
      {
        outlined destroy of CP_SequenceNumber(v27, type metadata accessor for CP_SequenceNumber);
      }

      outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_SequenceNumber);
      v24 = &_s14CopresenceCore17CP_SequenceNumberVSgMd;
      v25 = &_s14CopresenceCore17CP_SequenceNumberVSgMR;
      goto LABEL_36;
    }

    outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_SequenceNumber);
LABEL_23:
    v24 = &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMd;
    v25 = &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMR;
LABEL_36:
    outlined destroy of NSObject?(v16, v24, v25);
    goto LABEL_37;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
    goto LABEL_23;
  }

LABEL_16:
  outlined destroy of NSObject?(v16, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v22 = *(v32 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static CP_PublishRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v24 - v16, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v17[v18], &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v17, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for CP_PublishRequest(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17, v12, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_PublishRequest.OneOf_Operation);
LABEL_6:
    outlined destroy of NSObject?(v17, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of CP_SequenceNumber(&v17[v18], v8, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  v21 = specialized static CP_PublishRequest.OneOf_Operation.== infix(_:_:)(v12, v8);
  outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static CP_PublishRequest.UpdatedEncryptionID.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for CP_EncryptionID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd, &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  v29 = v8;
  v30 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  v17 = *(v30 + 24);
  v18 = *(v13 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v17, v16, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v17, &v16[v18], &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v12, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v25 = &v16[v18];
      v26 = v29;
      outlined init with take of CP_SequenceNumber(v25, v29, type metadata accessor for CP_EncryptionID);
      if (specialized static Data.== infix(_:_:)(*v12, *(v12 + 1), *v26, *(v26 + 8)))
      {
        v27 = *(v4 + 20);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CP_SequenceNumber(v26, type metadata accessor for CP_EncryptionID);
        outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_EncryptionID);
        outlined destroy of NSObject?(v16, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
        if (v28)
        {
          goto LABEL_7;
        }

LABEL_12:
        v21 = 0;
        return v21 & 1;
      }

      outlined destroy of CP_SequenceNumber(v26, type metadata accessor for CP_EncryptionID);
      outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_EncryptionID);
      v22 = &_s14CopresenceCore15CP_EncryptionIDVSgMd;
      v23 = &_s14CopresenceCore15CP_EncryptionIDVSgMR;
LABEL_11:
      outlined destroy of NSObject?(v16, v22, v23);
      goto LABEL_12;
    }

    outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_EncryptionID);
LABEL_10:
    v22 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd;
    v23 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR;
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  outlined destroy of NSObject?(v16, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
LABEL_7:
  v20 = *(v30 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static CP_Record.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for CP_EncryptionID(0);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v54 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd, &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR);
  v11 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v13 = &v54 - v12;
  v14 = type metadata accessor for CP_SequenceNumber(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = (&v54 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSg_ADtMd, &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v54 - v25;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (specialized static Data.== infix(_:_:)(a1[2], a1[3], a2[2], a2[3]) & 1) == 0)
  {
    goto LABEL_24;
  }

  v54 = v7;
  v56 = v13;
  v27 = type metadata accessor for CP_Record(0);
  v61 = a2;
  v55 = v27;
  v28 = *(v27 + 36);
  v29 = *(v23 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v28, v26, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v30 = v61 + v28;
  v31 = v61;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v30, &v26[v29], &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v32 = *(v15 + 48);
  if (v32(v26, 1, v14) == 1)
  {
    if (v32(&v26[v29], 1, v14) == 1)
    {
      outlined destroy of NSObject?(v26, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v26, v22, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if (v32(&v26[v29], 1, v14) == 1)
  {
    outlined destroy of CP_SequenceNumber(v22, type metadata accessor for CP_SequenceNumber);
LABEL_16:
    v43 = &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMd;
    v44 = &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMR;
LABEL_22:
    v47 = v26;
LABEL_23:
    outlined destroy of NSObject?(v47, v43, v44);
    goto LABEL_24;
  }

  outlined init with take of CP_SequenceNumber(&v26[v29], v18, type metadata accessor for CP_SequenceNumber);
  if (*v22 != *v18 || v22[1] != v18[1])
  {
    outlined destroy of CP_SequenceNumber(v18, type metadata accessor for CP_SequenceNumber);
    outlined destroy of CP_SequenceNumber(v22, type metadata accessor for CP_SequenceNumber);
    v43 = &_s14CopresenceCore17CP_SequenceNumberVSgMd;
    v44 = &_s14CopresenceCore17CP_SequenceNumberVSgMR;
    goto LABEL_22;
  }

  v45 = *(v14 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v31 = v61;
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CP_SequenceNumber(v18, type metadata accessor for CP_SequenceNumber);
  outlined destroy of CP_SequenceNumber(v22, type metadata accessor for CP_SequenceNumber);
  outlined destroy of NSObject?(v26, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if ((v46 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_8:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[4], v31[4]) & 1) == 0)
  {
LABEL_24:
    v42 = 0;
    return v42 & 1;
  }

  v34 = v55;
  v33 = v56;
  v35 = *(v55 + 40);
  v36 = *(v58 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v35, v56, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v37 = v61 + v35;
  v38 = v61;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v37, v33 + v36, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v39 = v60;
  v40 = *(v59 + 48);
  if (v40(v33, 1, v60) == 1)
  {
    if (v40(v33 + v36, 1, v39) == 1)
    {
      outlined destroy of NSObject?(v33, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
      goto LABEL_12;
    }

    goto LABEL_28;
  }

  v49 = v57;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v33, v57, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  if (v40(v33 + v36, 1, v39) == 1)
  {
    outlined destroy of CP_SequenceNumber(v49, type metadata accessor for CP_EncryptionID);
LABEL_28:
    v43 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd;
    v44 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR;
    v47 = v33;
    goto LABEL_23;
  }

  v50 = v33 + v36;
  v51 = v54;
  outlined init with take of CP_SequenceNumber(v50, v54, type metadata accessor for CP_EncryptionID);
  if ((specialized static Data.== infix(_:_:)(*v49, *(v49 + 8), *v51, *(v51 + 8)) & 1) == 0)
  {
    outlined destroy of CP_SequenceNumber(v51, type metadata accessor for CP_EncryptionID);
    outlined destroy of CP_SequenceNumber(v49, type metadata accessor for CP_EncryptionID);
    v43 = &_s14CopresenceCore15CP_EncryptionIDVSgMd;
    v44 = &_s14CopresenceCore15CP_EncryptionIDVSgMR;
    v47 = v33;
    goto LABEL_23;
  }

  v52 = *(v39 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v38 = v61;
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CP_SequenceNumber(v51, type metadata accessor for CP_EncryptionID);
  outlined destroy of CP_SequenceNumber(v49, type metadata accessor for CP_EncryptionID);
  outlined destroy of NSObject?(v33, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  if ((v53 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if (a1[5] != v38[5])
  {
    goto LABEL_24;
  }

  v41 = *(v34 + 32);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v42 & 1;
}

uint64_t specialized static CP_PublishRequest.OneOf_Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CP_Record(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v31 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationO_AEtMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  outlined init with copy of CP_SequenceNumber(a1, &v31 - v22, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  outlined init with copy of CP_SequenceNumber(a2, &v23[v24], type metadata accessor for CP_PublishRequest.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of CP_SequenceNumber(v23, v16, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of CP_SequenceNumber(&v23[v24], v7, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
      v25 = specialized static CP_PublishRequest.UpdatedEncryptionID.== infix(_:_:)(v16, v7);
      outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
      v26 = v16;
      v27 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID;
LABEL_9:
      outlined destroy of CP_SequenceNumber(v26, v27);
      outlined destroy of CP_SequenceNumber(v23, type metadata accessor for CP_PublishRequest.OneOf_Operation);
      return v25 & 1;
    }

    v28 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID;
    v29 = v16;
  }

  else
  {
    outlined init with copy of CP_SequenceNumber(v23, v18, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of CP_SequenceNumber(&v23[v24], v11, type metadata accessor for CP_Record);
      v25 = specialized static CP_Record.== infix(_:_:)(v18, v11);
      outlined destroy of CP_SequenceNumber(v11, type metadata accessor for CP_Record);
      v26 = v18;
      v27 = type metadata accessor for CP_Record;
      goto LABEL_9;
    }

    v28 = type metadata accessor for CP_Record;
    v29 = v18;
  }

  outlined destroy of CP_SequenceNumber(v29, v28);
  outlined destroy of NSObject?(v23, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationO_AEtMR);
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static CP_SystemEvent.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v3 == 255)
  {
    if (v4 == 255)
    {
      goto LABEL_12;
    }
  }

  else if (v4 != 255)
  {
    v5 = *a1;
    if (v3)
    {
      if ((v4 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    if ((v4 & 1) == 0)
    {
LABEL_9:
      if ((v5 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

LABEL_12:
      v6 = *(type metadata accessor for CP_SystemEvent(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t specialized static CP_KeyValue.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (specialized static Data.== infix(_:_:)(a1[2], a1[3], a2[2], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for CP_KeyValue(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized CP_ResponseStatus.init(rawValue:)(uint64_t result)
{
  if (result > 5)
  {
    if (result > 7)
    {
      if (result == 8)
      {
        return 7;
      }

      else if (result == 1000)
      {
        return 8;
      }
    }

    else if (result == 6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else if (result > 3)
  {
    if (result == 4)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else if (result == 3)
  {
    return 2;
  }

  return result;
}

uint64_t outlined init with take of CP_SequenceNumber(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of CP_SequenceNumber(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CP_SequenceNumber(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined copy of CP_SystemEvent.OneOf_Event?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of CP_SystemEvent.OneOf_Event();
  }

  return result;
}

uint64_t outlined consume of CP_SystemEvent.OneOf_Event?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of CP_SystemEvent.OneOf_Event();
  }

  return result;
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

unint64_t lazy protocol witness table accessor for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason()
{
  result = lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason;
  if (!lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason;
  if (!lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason;
  if (!lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason;
  if (!lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus()
{
  result = lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus;
  if (!lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus;
  if (!lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus;
  if (!lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus;
  if (!lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent()
{
  result = lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory()
{
  result = lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory;
  if (!lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory;
  if (!lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory;
  if (!lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory;
  if (!lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory);
  }

  return result;
}

uint64_t keypath_set_22Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);

  result = outlined consume of CP_SystemEvent.OneOf_Event?(v9, v10, v11);
  *a2 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = a5;
  return result;
}

void type metadata completion function for CP_Record()
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for CP_SequenceNumber?, type metadata accessor for CP_SequenceNumber, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for CP_EncryptionID?, type metadata accessor for CP_EncryptionID, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for CP_SequenceNumber?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for CP_EncryptionID()
{
  return type metadata completion function for CP_EncryptionID();
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

void type metadata completion function for CP_TopicSubscribers()
{
  type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_TopicSubscribers.TopicSubscribersInfo], type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_TopicSubscribers.TerminateTopic], type metadata accessor for CP_TopicSubscribers.TerminateTopic, MEMORY[0x1E69E62F8]);
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

uint64_t __swift_get_extra_inhabitant_index_107Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_108Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CP_SystemEvent.OneOf_Event(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CP_SystemEvent.OneOf_Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for CP_TopicSubscribersRequest.OneOf_Operation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
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

void type metadata completion function for CP_SubscribeRequest.Initialize()
{
  type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_SequenceNumber], type metadata accessor for CP_SequenceNumber, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_EncryptionID], type metadata accessor for CP_EncryptionID, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for CP_EncryptionID?, type metadata accessor for CP_EncryptionID, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for CP_SubscribeResponse.OneOf_Operation()
{
  result = type metadata accessor for CP_SubscribeResponse.InitializeAck(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CP_Record(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for CP_SubscribeResponse.TopicUpdate(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void type metadata completion function for CP_SubscribeResponse.InitializeAck()
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_KeyValue], type metadata accessor for CP_KeyValue, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_SubscribeResponse.InitializeAck.MissingEncryptionID], type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary?, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for CP_SequenceNumber?, type metadata accessor for CP_SequenceNumber, MEMORY[0x1E69E6720]);
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

void type metadata completion function for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary()
{
  type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_SequenceNumber], type metadata accessor for CP_SequenceNumber, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for CP_SubscribeResponse.InitializeAck.MissingEncryptionID()
{
  type metadata completion function for CP_SubscribeResponse.InitializeAck.MissingEncryptionID();
}

{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for CP_EncryptionID?, type metadata accessor for CP_EncryptionID, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for CP_SubscribeResponse.TopicUpdate()
{
  type metadata completion function for CP_SubscribeResponse.TopicUpdate();
}

{
  type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_KeyValue], type metadata accessor for CP_KeyValue, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for CP_SystemEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for UnknownStorage();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for CP_TopicSubscribers.TopicSubscribersInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for UnknownStorage();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_295Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 24);
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

uint64_t __swift_store_extra_inhabitant_index_296Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
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

void type metadata completion function for CP_PublishResponse(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for CP_SequenceNumber?(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for CP_CreateTopicResponse.ClientTopicConfig()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for CP_FetchTopicsRequest()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for CP_FetchTopicsResponse()
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [UInt64](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t Publisher.waitUntilAvailable<A, B>(for:valueTimeout:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v49 = a8;
  v50 = a7;
  v40 = a4;
  v45 = a2;
  v46 = a3;
  v48 = a9;
  v47 = a12;
  v16 = *(a6 - 8);
  v42 = a1;
  v43 = v16;
  v17 = *(v16 + 64);
  v44 = a11;
  v41 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = &v39 - v24;
  v26 = *(a5 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v23);
  v30 = &v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v33 = &v39 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v13;
  v37 = v36;
  (*(v34 + 16))(v33, v35);
  (*(v26 + 16))(v30, v42, a5);
  (*(v21 + 16))(v25, v45, AssociatedTypeWitness);
  (*(v43 + 16))(v19, v46, a6);
  return Publishers.WaitUntilAvailable.init(_:_:_:_:)(v33, v30, v25, v19, v37, a5, a6, v48);
}

uint64_t Publishers.WaitUntilAvailable.init(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v12 = type metadata accessor for Publishers.WaitUntilAvailable();
  (*(*(a6 - 8) + 32))(a8 + v12[21], a2, a6);
  v13 = v12[23];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a8 + v13, a3, AssociatedTypeWitness);
  return (*(*(a7 - 8) + 32))(a8 + v12[22], a4, a7);
}

uint64_t Publishers.WaitUntilAvailable.valueTimeout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 92);
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t Publishers.WaitUntilAvailable.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v5 = *(a2 + 32);
  v38 = *(v5 - 8);
  v39 = a1;
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 56);
  swift_getAssociatedTypeWitness();
  v33 = v5;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v34 = &v32 - v13;
  v14 = *(a2 + 24);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 16);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v20;
  v43 = v14;
  v44 = v5;
  v45 = *(a2 + 40);
  v46 = v9;
  v47 = *(a2 + 64);
  v25 = type metadata accessor for Publishers.WaitUntilAvailable.Inner();
  v26 = v36;
  (*(v21 + 16))(v24, v36, v20);
  (*(v15 + 16))(v19, v26 + *(a2 + 84), v14);
  v27 = v34;
  (*(v10 + 16))(v34, v26 + *(a2 + 92), AssociatedTypeWitness);
  v28 = v37;
  (*(v38 + 16))(v37, v26 + *(a2 + 88), v33);
  v29 = *(v25 + 48);
  v30 = *(v25 + 52);
  swift_allocObject();
  v42 = Publishers.WaitUntilAvailable.Inner.init(upstream:available:valueTimeout:scheduler:)(v24, v19, v27, v28);
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
}

uint64_t Publishers.WaitUntilAvailable.Inner.__allocating_init(upstream:available:valueTimeout:scheduler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return Publishers.WaitUntilAvailable.Inner.init(upstream:available:valueTimeout:scheduler:)(a1, a2, a3, a4);
}

uint64_t associated type witness table accessor for Publisher.Failure : Error in Publishers.WaitUntilAvailable<A, B, C>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t type metadata completion function for Publishers.WaitUntilAvailable(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[7];
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        result = swift_getAssociatedTypeWitness();
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Publishers.WaitUntilAvailable(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v34 = a3[2];
  v37 = *(v34 - 8);
  v3 = *(v37 + 84);
  v32 = a3[3];
  v4 = *(v32 - 8);
  v35 = v3;
  v33 = *(v4 + 84);
  if (v33 > v3)
  {
    v3 = *(v4 + 84);
  }

  v5 = a3[4];
  v6 = *(v5 - 8);
  v31 = *(v6 + 84);
  if (v31 <= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v8 = a3[7];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v4 + 80);
  v11 = *(v4 + 64);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  if (*(v9 + 84) <= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v37 + 64) + v10;
  v17 = a1;
  if (a2 > v15)
  {
    v18 = ((v13 + v14 + ((v11 + v12 + (v16 & ~v10)) & ~v12)) & ~v14) + *(v9 + 64);
    v19 = 8 * v18;
    if (v18 <= 3)
    {
      v21 = ((a2 - v15 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v21))
      {
        v20 = *(a1 + v18);
        if (!v20)
        {
          goto LABEL_32;
        }

        goto LABEL_19;
      }

      if (v21 > 0xFF)
      {
        v20 = *(a1 + v18);
        if (!*(a1 + v18))
        {
          goto LABEL_32;
        }

        goto LABEL_19;
      }

      if (v21 < 2)
      {
LABEL_32:
        if (v15)
        {
          goto LABEL_33;
        }

        return 0;
      }
    }

    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_32;
    }

LABEL_19:
    v22 = (v20 - 1) << v19;
    if (v18 > 3)
    {
      v22 = 0;
    }

    if (v18)
    {
      if (v18 <= 3)
      {
        v23 = v18;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v24 = *a1;
        }
      }

      else if (v23 == 1)
      {
        v24 = *a1;
      }

      else
      {
        v24 = *a1;
      }
    }

    else
    {
      v24 = 0;
    }

    return v15 + (v24 | v22) + 1;
  }

LABEL_33:
  if (v35 == v15)
  {
    v25 = v34;
    v26 = *(v37 + 48);
    v27 = v35;

    return v26(v17, v27, v25);
  }

  v17 = ((a1 + v16) & ~v10);
  if (v33 == v15)
  {
    v26 = *(v4 + 48);
    v27 = v33;
    v25 = v32;

    return v26(v17, v27, v25);
  }

  v17 = ((v17 + v11 + v12) & ~v12);
  if (v31 == v15)
  {
    v26 = *(v6 + 48);
    v27 = v31;
    v25 = v5;

    return v26(v17, v27, v25);
  }

  v29 = *(v9 + 48);
  v30 = (v17 + v13 + v14) & ~v14;

  return v29(v30);
}

void storeEnumTagSinglePayload for Publishers.WaitUntilAvailable(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a4[2] - 8);
  v35 = v4;
  v5 = *(v4 + 84);
  v6 = *(a4[3] - 8);
  v37 = v6;
  v36 = v5;
  v34 = *(v6 + 84);
  if (v34 > v5)
  {
    v5 = *(v6 + 84);
  }

  v38 = *(a4[4] - 8);
  v33 = *(v38 + 84);
  if (v33 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v38 + 84);
  }

  v8 = a4[7];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v4 + 64);
  if (*(v9 + 84) <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v6 + 80);
  v14 = v11 + v13;
  v15 = *(v6 + 64);
  v16 = *(v38 + 80);
  v17 = (v15 + v16 + ((v11 + v13) & ~v13)) & ~v16;
  v18 = *(v38 + 64);
  v19 = *(v9 + 80);
  v20 = ((v18 + v19 + v17) & ~v19) + *(v9 + 64);
  if (a3 <= v12)
  {
    v23 = 0;
    v21 = a1;
    v22 = a2;
  }

  else
  {
    v21 = a1;
    v22 = a2;
    if (v20 <= 3)
    {
      v26 = ((a3 - v12 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
      if (HIWORD(v26))
      {
        v23 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v23 = v27;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  if (v12 < v22)
  {
    v24 = ~v12 + v22;
    if (v20 < 4)
    {
      v25 = (v24 >> (8 * v20)) + 1;
      if (v20)
      {
        v28 = v24 & ~(-1 << (8 * v20));
        bzero(v21, v20);
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *v21 = v28;
            if (v23 > 1)
            {
LABEL_55:
              if (v23 == 2)
              {
                *&v21[v20] = v25;
              }

              else
              {
                *&v21[v20] = v25;
              }

              return;
            }
          }

          else
          {
            *v21 = v24;
            if (v23 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *v21 = v28;
        v21[2] = BYTE2(v28);
      }

      if (v23 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(v21, v20);
      *v21 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v23)
    {
      v21[v20] = v25;
    }

    return;
  }

  if (v23 > 1)
  {
    if (v23 != 2)
    {
      *&v21[v20] = 0;
      if (!v22)
      {
        return;
      }

      goto LABEL_36;
    }

    *&v21[v20] = 0;
  }

  else if (v23)
  {
    v21[v20] = 0;
    if (!v22)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!v22)
  {
    return;
  }

LABEL_36:
  if (v36 == v12)
  {
    v29 = *(v35 + 56);
    v30 = v21;
    goto LABEL_40;
  }

  v30 = (&v21[v14] & ~v13);
  if (v34 == v12)
  {
    v29 = *(v37 + 56);
LABEL_40:

LABEL_42:
    v29(v30);
    return;
  }

  v30 = (&v30[v15 + v16] & ~v16);
  if (v33 == v12)
  {
    v29 = *(v38 + 56);

    goto LABEL_42;
  }

  v31 = *(v10 + 56);
  v32 = &v30[v18 + v19] & ~v19;

  v31(v32);
}

uint64_t type metadata completion function for Publishers.WaitUntilAvailable.Inner(void *a1)
{
  v2 = a1[10];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v13 = *(result - 8) + 64;
    v5 = a1[11];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v14 = *(result - 8) + 64;
      v7 = a1[12];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v15 = *(result - 8) + 64;
        v9 = a1[15];
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        result = swift_getAssociatedTypeWitness();
        if (v10 <= 0x3F)
        {
          v16 = *(result - 8) + 64;
          v11 = a1[14];
          swift_getAssociatedTypeWitness();
          result = type metadata accessor for Optional();
          if (v12 <= 0x3F)
          {
            v17 = *(result - 8) + 64;
            return swift_initClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t Publishers.WaitUntilAvailable.Inner.init(upstream:available:valueTimeout:scheduler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 176);
  v7 = *(*v4 + 128);
  v8 = *(*v4 + 104);
  v9 = *(*v4 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  *(v4 + v6) = Dictionary.init()();
  v10 = *(*v4 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11Cancellable_pMd, &_s7Combine11Cancellable_pMR);
  *(v4 + v10) = Dictionary.init()();
  v11 = *(*v4 + 192);
  v12 = v5[14];
  v13 = v5[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v4 + v11, 1, 1, AssociatedTypeWitness);
  v15 = *(*v4 + 200);
  type metadata accessor for Lock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *(v16 + 16) = v17;
  *v17 = 0;
  *(v4 + v15) = v16;
  (*(*(v9 - 8) + 32))(v4 + *(*v4 + 144), a1, v9);
  (*(*(v13 - 8) + 32))(v4 + *(*v4 + 152), a2, v13);
  v18 = *(*v4 + 168);
  v19 = v5[15];
  v20 = v5[12];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedTypeWitness();
  (*(*(v21 - 8) + 32))(v4 + v18, a3, v21);
  (*(*(v20 - 8) + 32))(v4 + *(*v4 + 160), a4, v20);
  return v4;
}

uint64_t Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v89 = a3;
  v100 = a2;
  v96 = a1;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v7 = *(*v3 + 104);
  v8 = type metadata accessor for Publishers.Filter();
  v98 = v6;
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Array();
  swift_getWitnessTable();
  v86 = v9;
  v95 = type metadata accessor for Publishers.Sequence();
  v99 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v111 = v95;
  v112 = AssociatedTypeWitness;
  v113 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = AssociatedConformanceWitness;
  type metadata accessor for Publishers.SetFailureType();
  v11 = v5;
  v12 = v5[11];
  v70 = v5;
  v83 = v5[14];
  v13 = v12;
  v14 = type metadata accessor for Publishers.SetFailureType();
  v85 = swift_getWitnessTable();
  v15 = v14;
  v72 = v14;
  v16 = type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  v88 = swift_getWitnessTable();
  v79 = v16;
  v17 = type metadata accessor for Publishers.FlatMap();
  v92 = swift_getWitnessTable();
  v91 = swift_getWitnessTable();
  v111 = v8;
  v112 = v17;
  v18 = v8;
  v77 = v8;
  v82 = v17;
  v113 = v92;
  AssociatedConformanceWitness = v91;
  v90 = type metadata accessor for Publishers.Merge();
  v93 = *(v90 - 8);
  v19 = *(v93 + 64);
  v20 = MEMORY[0x1EEE9AC00](v90);
  v87 = &v69 - v21;
  v73 = *(v15 - 8);
  v22 = *(v73 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v69 - v24;
  v81 = *(v16 - 8);
  v26 = *(v81 + 64);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v97 = &v69 - v28;
  v80 = *(v17 - 8);
  v29 = *(v80 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v78 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v74 = &v69 - v33;
  v76 = *(v18 - 8);
  v34 = *(v76 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v75 = &v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v71 = &v69 - v37;
  v38 = v11[18];
  v39 = swift_allocObject();
  v40 = v100;
  v41 = v89;
  v39[2] = v100;
  v39[3] = v41;
  v39[4] = v4;

  v42 = v98;
  Publisher.filter(_:)();

  v43 = v4 + *(*v4 + 152);
  v69 = v13;
  v44 = v83;
  Publisher<>.setFailureType<A>(to:)();
  v45 = swift_allocObject();
  v45[2] = v40;
  v45[3] = v41;
  v46 = v41;
  v45[4] = v4;

  v47 = v72;
  Publisher.map<A>(_:)();

  (*(v73 + 8))(v25, v47);
  v101 = v42;
  v102 = v13;
  v49 = v99;
  v50 = v100;
  v103 = v70[12];
  v48 = v103;
  v104 = v100;
  v105 = v99;
  v106 = v44;
  v107 = v70[15];
  v51 = v107;
  v108 = v46;
  v52 = v46;
  v109 = v70[16];
  v53 = v109;
  v110 = v70[17];
  v54 = v110;
  KeyPath = swift_getKeyPath();
  v56 = swift_allocObject();
  v57 = v69;
  v56[2] = v98;
  v56[3] = v57;
  v56[4] = v48;
  v56[5] = v50;
  v56[6] = v49;
  v56[7] = v44;
  v56[8] = v51;
  v56[9] = v52;
  v56[10] = v53;
  v56[11] = v54;
  v56[12] = KeyPath;
  static Subscribers.Demand.unlimited.getter();
  v58 = v74;
  v59 = v79;
  v60 = v97;
  Publisher.flatMap<A>(maxPublishers:_:)();

  (*(v81 + 8))(v60, v59);
  v61 = v76;
  v62 = v71;
  v63 = v77;
  (*(v76 + 16))(v75, v71, v77);
  v64 = v80;
  v65 = v82;
  (*(v80 + 16))(v78, v58, v82);
  v66 = v87;
  Publishers.Merge.init(_:_:)();
  v67 = v90;
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
  (*(v93 + 8))(v66, v67);
  (*(v64 + 8))(v58, v65);
  return (*(v61 + 8))(v62, v63);
}

unint64_t closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = a4;
  v106 = a3;
  v110 = a1;
  v97 = *a2;
  v5 = v97;
  v6 = v97[10];
  v105 = v97[13];
  v116 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = *(AssociatedTypeWitness - 8);
  v8 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v100 = v90 - v9;
  v10 = v97[12];
  v115 = v97[15];
  v104 = v10;
  v99 = swift_getAssociatedTypeWitness();
  v114 = *(v99 - 8);
  v11 = *(v114 + 64);
  v12 = MEMORY[0x1EEE9AC00](v99);
  v94 = v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v113 = v90 - v14;
  v15 = v5[11];
  v103 = v5[14];
  v102 = v15;
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = *(v16 - 8);
  v17 = *(AssociatedConformanceWitness + 64);
  MEMORY[0x1EEE9AC00](v16);
  v91 = v90 - v18;
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v90 - v22;
  v24 = v5[16];
  v25 = swift_getAssociatedTypeWitness();
  v108 = *(v25 - 8);
  v109 = v25;
  v26 = *(v108 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v93 = v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v111 = v90 - v30;
  v92 = v31;
  MEMORY[0x1EEE9AC00](v29);
  v33 = v90 - v32;
  os_unfair_lock_lock(*(*(a2 + v5[25]) + 16));
  v34 = AssociatedTypeWitness;
  v35 = AssociatedTypeWitness;
  v36 = AssociatedConformanceWitness;
  (*(v24 + 24))(v35, v24);
  v37 = *(*a2 + 192);
  swift_beginAccess();
  (*(v20 + 16))(v23, a2 + v37, v19);
  v38 = (*(v36 + 48))(v23, 1, v16);
  v98 = v34;
  v101 = v24;
  if (v38)
  {
    (*(v20 + 8))(v23, v19);
    v39 = v109;
  }

  else
  {
    v40 = v91;
    (*(v36 + 16))(v91, v23, v16);
    (*(v20 + 8))(v23, v19);
    v41 = v97[17];
    v39 = v109;
    v42 = *(swift_getAssociatedConformanceWitness() + 8);
    LOBYTE(v41) = Sequence<>.contains(_:)();
    (*(v36 + 8))(v40, v16);
    if (v41)
    {
      (*(v108 + 8))(v33, v39);
      os_unfair_lock_unlock(*(*(a2 + *(*a2 + 200)) + 16));
      return 1;
    }
  }

  AssociatedConformanceWitness = *(*a2 + 160);
  v44 = v94;
  v45 = v104;
  dispatch thunk of Scheduler.now.getter();
  v91 = *(*a2 + 168);
  v46 = v45;
  v47 = v99;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Strideable.advanced(by:)();
  v48 = *(v114 + 8);
  v114 += 8;
  v94 = v48;
  (v48)(v44, v47);
  v49 = v108;
  v50 = v108 + 16;
  v51 = *(v108 + 16);
  v112 = v33;
  v51(v111, v33, v39);
  v52 = swift_allocObject();
  swift_weakInit();
  v53 = v93;
  v90[1] = v50;
  v90[0] = v51;
  v51(v93, v33, v39);
  v54 = (*(v49 + 80) + 104) & ~*(v49 + 80);
  v55 = swift_allocObject();
  v56 = v115;
  v57 = v102;
  *(v55 + 2) = v116;
  *(v55 + 3) = v57;
  v58 = v106;
  *(v55 + 4) = v46;
  *(v55 + 5) = v58;
  v59 = v103;
  *(v55 + 6) = v105;
  *(v55 + 7) = v59;
  v60 = v107;
  *(v55 + 8) = v56;
  *(v55 + 9) = v60;
  v61 = v101;
  *(v55 + 10) = v101;
  v97 = v97[17];
  *(v55 + 11) = v97;
  *(v55 + 12) = v52;
  (*(v49 + 32))(&v55[v54], v53, v39);

  v62 = v56;
  Scheduler.schedule(after:interval:_:)();

  v63 = *(*a2 + 184);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine11Cancellable_pMd, &_s7Combine11Cancellable_pMR);
  v64 = v98;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  v65 = swift_allocObject();
  v66 = v102;
  v65[2] = v116;
  v65[3] = v66;
  v65[4] = v46;
  v67 = v106;
  v68 = v105;
  v65[5] = v106;
  v65[6] = v68;
  v69 = v103;
  v65[7] = v103;
  v65[8] = v62;
  v70 = v107;
  v65[9] = v107;
  v65[10] = v61;
  v71 = v97;
  v65[11] = v97;
  (*(v95 + 16))(v100, v110, v64);
  v72 = *(*a2 + 176);
  swift_beginAccess();
  v73 = swift_allocObject();
  v73[2] = v116;
  v73[3] = v66;
  v73[4] = v104;
  v73[5] = v67;
  v74 = AssociatedConformanceWitness;
  v73[6] = v68;
  v73[7] = v69;
  v75 = v109;
  v73[8] = v115;
  v73[9] = v70;
  v73[10] = v101;
  v73[11] = v71;
  v73[12] = partial apply for implicit closure #1 in closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:);
  v73[13] = v65;
  v76 = *(a2 + v72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v117 = *(a2 + v72);
  v78 = v117;
  *(a2 + v72) = 0x8000000000000000;
  result = __RawDictionaryStorage.find<A>(_:)(v112, v75, v74);
  v116 = result;
  v80 = *(v78 + 16);
  v81 = (v79 & 1) == 0;
  v82 = v80 + v81;
  if (__OFADD__(v80, v81))
  {
    __break(1u);
    return result;
  }

  v83 = v79;
  v115 = type metadata accessor for Array();
  type metadata accessor for _NativeDictionary();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v82))
  {
    goto LABEL_9;
  }

  v84 = v75;
  v116 = __RawDictionaryStorage.find<A>(_:)(v112, v75, v74);
  if ((v83 & 1) != (v85 & 1))
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_9:
    v84 = v75;
  }

  v86 = v117;
  *(a2 + v72) = v117;
  v87 = v116;
  if ((v83 & 1) == 0)
  {
    v88 = v73[13];
    v117 = (v73[12])();
    (v90[0])(v111, v112, v84);
    _NativeDictionary._insert(at:key:value:)();
  }

  v89 = *(v86 + 56) + 8 * v87;
  Array.append(_:)();
  swift_endAccess();
  (v94)(v113, v99);
  (*(v108 + 8))(v112, v84);
  os_unfair_lock_unlock(*(*(a2 + *(*a2 + 200)) + 16));

  return 0;
}

uint64_t closure #1 in closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + *(*result + 200));

    os_unfair_lock_lock(*(v5 + 16));
    closure #1 in closure #1 in closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(a1, a2);
    os_unfair_lock_unlock(*(v5 + 16));
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v14[-v6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v4 + 16))(v7, a2, AssociatedTypeWitness);
    v16 = 0;
    v10 = *(*v9 + 176);
    swift_beginAccess();
    type metadata accessor for Array();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    (*(v4 + 16))(v7, a2, AssociatedTypeWitness);
    v15 = 0;
    memset(&v14[32], 0, 32);
    v13 = *(*v12 + 184);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine11Cancellable_pMd, &_s7Combine11Cancellable_pMR);
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
  }

  return result;
}

void closure #2 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v24 = a5;
  v9 = *a2;
  v10 = *(*a2 + 112);
  v11 = v9[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  os_unfair_lock_lock(*(*(a2 + v9[25]) + 16));
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 16))(v17, a1, AssociatedTypeWitness);
  (*(v18 + 56))(v17, 0, 1, AssociatedTypeWitness);
  v19 = *(*a2 + 192);
  swift_beginAccess();
  (*(v14 + 40))(a2 + v19, v17, v13);
  swift_endAccess();
  v25 = a3;
  v26 = a4;
  v27 = a2;
  v20 = v9[13];
  v21 = v9[10];
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  v22 = v9[17];
  swift_getWitnessTable();
  *v24 = Sequence.flatMap<A>(_:)();
  os_unfair_lock_unlock(*(*(a2 + *(*a2 + 200)) + 16));
}

uint64_t closure #1 in closure #2 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a3;
  v5 = *a2;
  v6 = *(*a2 + 128);
  v7 = *(*a2 + 104);
  v8 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v10 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = v21 - v11;
  v12 = *(v5 + 176);
  swift_beginAccess();
  v13 = *(a2 + v12);
  v14 = type metadata accessor for Array();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v16 = a1;
  MEMORY[0x1B270FE60](v26, a1, v13, AssociatedTypeWitness, v14, AssociatedConformanceWitness);

  if (*&v26[0])
  {
    v21[1] = AssociatedConformanceWitness;
    v17 = v23;
    v18 = *(v22 + 16);
    v22 = *&v26[0];
    v18(v23, v16, AssociatedTypeWitness);
    v25 = 0;
    swift_beginAccess();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    v18(v17, v16, AssociatedTypeWitness);
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    v19 = *(*a2 + 184);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine11Cancellable_pMd, &_s7Combine11Cancellable_pMR);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    result = v22;
  }

  else
  {
    result = static Array._allocateUninitialized(_:)();
  }

  *v24 = result;
  return result;
}

uint64_t key path getter for Sequence.publisher : <A, B, C><A1>[A.Output](uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = *(a2 + a3 - 80);
  v5 = *(v3 - 48);
  v7 = *a1;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.publisher.getter();
}

uint64_t Publishers.WaitUntilAvailable.Inner.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 144));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 152), v1[11]);
  (*(*(v1[12] - 8) + 8))(v0 + *(*v0 + 160), v1[12]);
  v2 = *(*v0 + 168);
  v3 = v1[15];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);
  v5 = *(v0 + *(*v0 + 176));

  v6 = *(v0 + *(*v0 + 184));

  v7 = *(*v0 + 192);
  v8 = v1[14];
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  (*(*(v9 - 8) + 8))(v0 + v7, v9);
  v10 = *(v0 + *(*v0 + 200));

  return v0;
}

uint64_t Publishers.WaitUntilAvailable.Inner.__deallocating_deinit()
{
  v0 = *Publishers.WaitUntilAvailable.Inner.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t associated type witness table accessor for Publisher.Failure : Error in Publishers.WaitUntilAvailable<A, B, C>.Inner(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v3 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t partial apply for implicit closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(uint64_t *a1)
{
  v2 = *(v1 + 96);
  v4 = *a1;

  swift_getAtKeyPath();
}

uint64_t partial apply for closure #1 in closure #2 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in closure #2 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(a1, *(v2 + 32), a2);
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v9, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t partial apply for closure #1 in closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)()
{
  v1 = v0[2];
  v12 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v9 = v0[10];
  v8 = v0[11];
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  return closure #1 in closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(v0[12], v0 + ((*(v10 + 80) + 104) & ~*(v10 + 80)));
}

uint64_t partial apply for implicit closure #1 in closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  swift_getAssociatedTypeWitness();

  return static Array._allocateUninitialized(_:)();
}

BOOL one-time initialization function for identity()
{
  getpid();
  v0 = *MEMORY[0x1E69E9BD0];
  result = _cp_sandbox_check();
  static ConversationManagerInterface.identity = !result;
  return result;
}

uint64_t static ConversationManagerInterface.identity.getter@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static ConversationManagerInterface.identity;
  return result;
}

id closure #1 in variable initialization expression of static ConversationManagerInterface.hostObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  *(inited + 32) = v2;
  *(inited + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v3 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v6 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v6 forSelector:sel_addRemoteMembers_toConversationWithUUID_ argumentIndex:0 ofReply:0];

  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AEE07B10;
  *(v7 + 32) = v2;
  *(v7 + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipantPresentationContext, 0x1E69D8BA0);
  specialized _arrayForceCast<A, B>(_:)(v7);
  swift_setDeallocating();
  v8 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v11 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v11 forSelector:sel_updateConversationWith_participantPresentationContexts_ argumentIndex:1 ofReply:0];

  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AEE07B30;
  *(v12 + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  *(v12 + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v12 + 48) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  *(v12 + 56) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  specialized _arrayForceCast<A, B>(_:)(v12);
  swift_setDeallocating();
  v13 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v14 = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v13 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v16 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v16 forSelector:sel_includeMetricsReport_onConversationWithUUID_ argumentIndex:0 ofReply:0];

  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AEE07B20;
  v18 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  *(v17 + 32) = v18;
  specialized _arrayForceCast<A, B>(_:)(v17);
  swift_setDeallocating();
  v19 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v20 = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v19 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v22 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v22 forSelector:sel_advertiseGroupActivity_reply_ argumentIndex:0 ofReply:1];

  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1AEE07B20;
  *(v23 + 32) = v18;
  specialized _arrayForceCast<A, B>(_:)(v23);
  swift_setDeallocating();
  v24 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v25 = Array._bridgeToObjectiveC()().super.isa;

  v26 = [v24 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v27 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v27 forSelector:sel_stopAdvertisingGroupActivity_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

id closure #1 in variable initialization expression of static ConversationManagerInterface.clientObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE09B00;
  *(inited + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  *(inited + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  *(inited + 48) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v5 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v5 forSelector:sel_updateConversationContainersWithConversationContainersByGroupUUID_ argumentIndex:0 ofReply:0];

  return v0;
}

id static ConversationManagerInterface.hostObjectInterface.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t protocol witness for static XPCInterface.identity.getter in conformance ConversationManagerInterface@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static ConversationManagerInterface.identity;
  return result;
}

id protocol witness for static XPCInterface.hostObjectInterface.getter in conformance ConversationManagerInterface(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

uint64_t PeoplePickerClient.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for PeoplePickerClient.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PeoplePickerClient.delegate.getter()
{
  v1 = v0 + direct field offset for PeoplePickerClient.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t PeoplePickerClient.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for PeoplePickerClient.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PeoplePickerClient.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = direct field offset for PeoplePickerClient.delegate;
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

Swift::Void __swiftcall PeoplePickerClient.handleServerDisconnect()()
{
  v1 = v0 + direct field offset for PeoplePickerClient.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall PeoplePickerClient.dismissViewController(success:)(Swift::Bool success)
{
  v3 = v1 + direct field offset for PeoplePickerClient.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(success, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

void @objc PeoplePickerClient.dismissViewController(success:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = &a1[direct field offset for PeoplePickerClient.delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    v9 = a1;
    v8(a3, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

uint64_t PeoplePickerClient.requestActivity(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;

  v11 = v2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in PeoplePickerClient.requestActivity(completionHandler:), v10);
}

uint64_t closure #1 in PeoplePickerClient.requestActivity(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in PeoplePickerClient.requestActivity(completionHandler:), 0, 0);
}

uint64_t closure #1 in PeoplePickerClient.requestActivity(completionHandler:)()
{
  v1 = *(v0 + 56) + direct field offset for PeoplePickerClient.delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    *v7 = v0;
    v7[1] = closure #1 in PeoplePickerClient.requestActivity(completionHandler:);

    return v11(ObjectType, v3);
  }

  else
  {
    v9 = *(v0 + 48);
    (*(v0 + 40))();
    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);
  (*(v0 + 40))(v1);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *(v0 + 48);
  (*(v0 + 40))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in PeoplePickerClient.requestActivity(completionHandler:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 64);

    swift_unknownObjectRelease();
    v8 = closure #1 in PeoplePickerClient.requestActivity(completionHandler:);
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = closure #1 in PeoplePickerClient.requestActivity(completionHandler:);
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t partial apply for closure #1 in PeoplePickerClient.requestActivity(completionHandler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PeoplePickerClient.requestActivity(completionHandler:)(a1, v4, v5, v6, v7, v8);
}

uint64_t @objc PeoplePickerClient.requestActivity(completionHandler:)(void *a1, uint64_t a2, const void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned TUConversationActivity?) -> ();
  v12[5] = v10;
  v12[6] = a1;
  v13 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in PeoplePickerClient.requestActivity(completionHandler:)partial apply, v12);
}

id PeoplePickerClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeoplePickerClient.init()()
{
  ObjectType = swift_getObjectType();
  UUID.init()();
  *&v0[direct field offset for PeoplePickerClient.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id @objc PeoplePickerClient.init()(char *a1)
{
  ObjectType = swift_getObjectType();
  UUID.init()();
  *&a1[direct field offset for PeoplePickerClient.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = a1;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t PeoplePickerClient.__ivar_destroyer()
{
  v1 = direct field offset for PeoplePickerClient.id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + direct field offset for PeoplePickerClient.delegate;

  return outlined destroy of weak ActivitySessionManagerProtocol?(v3);
}

id PeoplePickerClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of PeoplePickerClientDelegate.requestActivity()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:);

  return v9(a1, a2);
}

uint64_t @objc PeoplePickerClient.__ivar_destroyer(uint64_t a1)
{
  v2 = direct field offset for PeoplePickerClient.id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = a1 + direct field offset for PeoplePickerClient.delegate;

  return outlined destroy of weak ActivitySessionManagerProtocol?(v4);
}

uint64_t type metadata accessor for PeoplePickerClient()
{
  result = type metadata singleton initialization cache for PeoplePickerClient;
  if (!type metadata singleton initialization cache for PeoplePickerClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PeoplePickerClient()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t closure #1 in PeoplePickerClient.requestActivity(completionHandler:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PeoplePickerClient.requestActivity(completionHandler:)(a1, v4, v5, v6, v7, v8);
}

uint64_t Date.sinceEpochMillis.getter()
{
  result = Date.timeIntervalSince1970.getter();
  v2 = v1 * 1000.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 1.84467441e19)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t key path setter for CurrentSubject.wrappedValue : <A>CurrentSubject<A>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v6 = *a2;
  type metadata accessor for CurrentSubject();

  specialized CurrentSubject.wrappedValue.setter();
}

void (*CurrentSubject.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *(a2 + 16);
  *v6 = v8;
  v9 = *(v8 - 8);
  v6[1] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = *v2;
  v7[3] = v11;
  v7[4] = v12;
  CurrentValueSubject.value.getter();
  return CurrentSubject.wrappedValue.modify;
}

void CurrentSubject.wrappedValue.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[2], v4, v7);

    CurrentValueSubject.send(_:)();
    v8 = *(v6 + 8);
    v8(v5, v7);

    v8(v4, v7);
  }

  else
  {
    v9 = (*a1)[4];

    CurrentValueSubject.send(_:)();
    (*(v6 + 8))(v4, v7);
  }

  free(v4);
  free(v5);

  free(v2);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

void IMUserNotification.init(identifier:timeout:alertLevel:displayFlags:displayInformation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = objc_opt_self();
  v14 = MEMORY[0x1B270FF70](a1, a2);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(a5);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v13 userNotificationWithIdentifier:v14 timeout:a3 alertLevel:a4 displayFlags:isa displayInformation:a6];

  if (v16)
  {

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v18, v19);
    swift_dynamicCast();
    (*(*(v6 - 8) + 32))(v19, v17, v6);
  }

  else
  {
    __break(1u);
  }
}

id static IMUserNotificationCenter.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static IMUserNotificationCenter.shared;

  return v0;
}

void static IMUserNotificationCenter.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static IMUserNotificationCenter.shared;
  static IMUserNotificationCenter.shared = a1;
}

uint64_t (*static IMUserNotificationCenter.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ActivitySession.audioSessionID.modify;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  outlined init with copy of Any((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    outlined init with take of Any(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return outlined destroy of NSObject?(v22, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    outlined init with copy of AnyHashable(*(v3 + 48) + 40 * v13, &v18);
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, v23);
    v24 = v18;
    v25 = v19;
    *&v26 = v20;
    result = outlined init with take of Any(v23, (&v26 + 8));
    v15 = *(&v25 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v17 = v1[5];
      v16 = v1[6];
      v18 = v24;
      *&v19 = v25;
      *(&v19 + 1) = v15;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17(&v18);
      return outlined destroy of NSObject?(&v18, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *specialized IMUserNotificationCenter.notification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    type metadata accessor for ActivityAuthorizationManager();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = objc_opt_self();

    v13 = [v12 bundleForClass_];
    v14 = MEMORY[0x1B270FF70](0x737465737341, 0xE600000000000000);
    v15 = MEMORY[0x1B270FF70](7496035, 0xE300000000000000);
    v16 = [v13 pathForResource:v14 ofType:v15];

    if (v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AEE07B10;
      *(inited + 32) = 0xD00000000000002DLL;
      v21 = MEMORY[0x1E69E6158];
      *(inited + 40) = 0x80000001AEE35AE0;
      *(inited + 48) = v17;
      *(inited + 56) = v19;
      *(inited + 72) = v21;
      *(inited + 80) = 0xD000000000000031;
      *(inited + 120) = v21;
      *(inited + 88) = 0x80000001AEE35B10;
      *(inited + 96) = 0x616C506572616853;
      *(inited + 104) = 0xE900000000000079;
      v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = a5;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v22, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v28);

      a5 = v28;
    }
  }

  else
  {
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotification, 0x1E69A6188);

  IMUserNotification.init(identifier:timeout:alertLevel:displayFlags:displayInformation:)(a1, a2, 3, 0, a5, 0.0);
  v25 = v24;
  [v24 setUsesNotificationCenter_];
  v26 = MEMORY[0x1B270FF70](a3, a4);
  [v25 setRepresentedApplicationBundle_];

  return v25;
}

void specialized IMUserNotificationCenter.postNotification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v10 = specialized IMUserNotificationCenter.notification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:)(a1, a2, a3, a4, a5, a6);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static IMUserNotificationCenter.shared;
  v12 = swift_allocObject();
  *(v12 + 16) = a7;
  *(v12 + 24) = a8;
  aBlock[4] = partial apply for closure #1 in IMUserNotificationCenter.postNotification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:completionHandler:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
  aBlock[3] = &block_descriptor_22;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v10;

  [v14 addUserNotification:v15 listener:0 completionHandler:v13];
  _Block_release(v13);
}

uint64_t partial apply for closure #1 in IMUserNotificationCenter.postNotification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:completionHandler:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (a1)
  {
    v4 = [a1 response];
  }

  else
  {
    v4 = 3;
  }

  return v2(v4);
}

uint64_t specialized Set.subtracting(_:)(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    specialized Set._subtract<A>(_:)(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14CopresenceCore17AddressableMemberC_Tt1g5(v5, v6);
LABEL_10:

  return specialized _NativeSet.subtracting<A>(_:)(a1, v2);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore23IDSGroupSessionProviderC11ParticipantVG_AF17AddressableMemberCs5NeverOTg504_s14d6Core23fgh77C28recomputeUnknownParticipants021_D1D34BE0B5DF16735B93L10C8E257E055LLyyFAA17jk5CAC11I6VXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v38 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 56;
    v5 = -1 << *(v1 + 32);
    v6 = _HashTable.startBucket.getter();
    v7 = *(v1 + 36);
    result = objc_opt_self();
    v35 = v1;
    v36 = result;
    v8 = 0;
    v31 = v1 + 64;
    v32 = v2;
    v33 = v7;
    v34 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v11 = (*(v1 + 48) + 24 * v6);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];

      v15 = MEMORY[0x1B270FF70](v13, v14);
      v16 = [v36 normalizedHandleWithDestinationID_];

      if (!v16)
      {
        v17 = objc_allocWithZone(MEMORY[0x1E69D8C00]);
        v18 = MEMORY[0x1B270FF70](v13, v14);
        v16 = [v17 initWithDestinationID_];
      }

      v19 = [objc_allocWithZone(MEMORY[0x1E69D8B90]) initWithIdentifier:v12 handle:v16];

      v20 = [v19 handle];
      v21 = type metadata accessor for AddressableMember();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] = v20;
      v37.receiver = v22;
      v37.super_class = v21;
      objc_msgSendSuper2(&v37, sel_init);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v23 = *(v38 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v1 = v35;
      v9 = 1 << *(v35 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v4 = v34;
      v24 = *(v34 + 8 * v10);
      if ((v24 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v7) = v33;
      if (v33 != *(v35 + 36))
      {
        goto LABEL_27;
      }

      v25 = v24 & (-2 << (v6 & 0x3F));
      if (v25)
      {
        v9 = __clz(__rbit64(v25)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v10 << 6;
        v27 = v10 + 1;
        v28 = (v31 + 8 * v10);
        while (v27 < (v9 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = outlined consume of Set<AddressableMember>.Index._Variant(v6, v33, 0);
            v9 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<AddressableMember>.Index._Variant(v6, v33, 0);
      }

LABEL_4:
      ++v8;
      v6 = v9;
      if (v8 == v32)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in Task<>.reportFailure(on:function:process:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v14;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v9 = type metadata accessor for Date();
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v11 = *(v10 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in Task<>.reportFailure(on:function:process:), 0, 0);
}

{
  v8[14] = a8;
  v8[15] = v14;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  v9 = type metadata accessor for Date();
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v11 = *(v10 + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in Task<>.reportFailure(on:function:process:), 0, 0);
}

uint64_t specialized closure #1 in Task<>.reportFailure(on:function:process:)()
{
  v1 = v0[16];
  Date.init()();
  v2 = *(MEMORY[0x1E69E86A8] + 4);
  v3 = swift_task_alloc();
  v0[17] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v3 = v0;
  v3[1] = specialized closure #1 in Task<>.reportFailure(on:function:process:);
  v5 = v0[7];
  v6 = MEMORY[0x1E69E7288];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v4, v5, v7, v4, v6);
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in Task<>.reportFailure(on:function:process:);
  }

  else
  {
    v3 = specialized closure #1 in Task<>.reportFailure(on:function:process:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  (*(v0[14] + 8))(v0[16], v0[13]);
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[1];

  return v3();
}

{
  v75 = v0;
  if (one-time initialization token for abcReporter != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  v0[19] = __swift_project_value_buffer(v2, static Log.abcReporter);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v74 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v74);
    _os_log_impl(&dword_1AEB26000, v3, v4, "Detected failure on function %s. Reporting!", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  if (v0[11])
  {
    v71 = v0[11];
    v70 = v0[10];
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
    v10 = [v9 bundleIdentifier];

    if (!v10)
    {
      v54 = v0[9];

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      v57 = os_log_type_enabled(v55, v56);
      v58 = v0[18];
      v59 = v0[16];
      v61 = v0[13];
      v60 = v0[14];
      if (v57)
      {
        v63 = v0[8];
        v62 = v0[9];
        v73 = v0[16];
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v74 = v65;
        *v64 = 136315394;
        *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, &v74);
        *(v64 + 12) = 2080;
        *(v64 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(7104878, 0xE300000000000000, &v74);
        _os_log_impl(&dword_1AEB26000, v55, v56, "Can't report failure on function %s because of missing processName %s", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v65, -1, -1);
        MEMORY[0x1B27120C0](v64, -1, -1);

        (*(v60 + 8))(v73, v61);
      }

      else
      {

        (*(v60 + 8))(v59, v61);
      }

      goto LABEL_22;
    }

    v11 = v0[11];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v12;
  }

  v13 = v0[18];
  v14 = v0[12];
  v16 = v0[8];
  v15 = v0[9];
  v18 = v14[3];
  v17 = v14[4];
  v69 = v14;
  __swift_project_boxed_opaque_existential_1(v14, v18);
  swift_getErrorValue();
  v19 = v0[2];
  v20 = v0[3];
  v21 = v0[4];

  v22 = Error.localizedDescription.getter();
  v24 = (*(v17 + 16))(v16, v15, v22, v23, v70, v71, v18, v17);
  v0[20] = v24;

  if (v24)
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v74 = v28;
      *v27 = 136315138;
      v29 = Dictionary.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v74);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1AEB26000, v25, v26, "Reporting signature %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1B27120C0](v28, -1, -1);
      MEMORY[0x1B27120C0](v27, -1, -1);
    }

    v33 = v0[15];
    v32 = v0[16];
    v34 = v0[13];
    v35 = v0[14];
    v36 = v69[3];
    v37 = v69[4];
    __swift_project_boxed_opaque_existential_1(v0[12], v36);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v39 = v38;
    v40 = *(v35 + 8);
    v0[21] = v40;
    v0[22] = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40(v33, v34);
    v41 = *(v37 + 24);
    v72 = (v41 + *v41);
    v42 = v41[1];
    v43 = swift_task_alloc();
    v0[23] = v43;
    *v43 = v0;
    v43[1] = specialized closure #1 in Task<>.reportFailure(on:function:process:);
    v44.n128_u64[0] = v39;

    return v72(v24, v36, v37, v44);
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v0[18];
  v50 = v0[16];
  v51 = v0[13];
  v52 = v0[14];
  if (v48)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1AEB26000, v46, v47, "Failed to convert signature payload", v53, 2u);
    MEMORY[0x1B27120C0](v53, -1, -1);
  }

  else
  {
  }

  (*(v52 + 8))(v50, v51);
LABEL_22:
  v67 = v0[15];
  v66 = v0[16];

  v68 = v0[1];

  return v68();
}

{
  v27 = v0;
  v1 = v0[24];
  v2 = v0[19];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v24 = v0[21];
    v25 = v0[22];
    v6 = v0[18];
    v7 = v0[16];
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    v0[6] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v26);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Received reporting response: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);

    v24(v7, v8);
  }

  else
  {
    v14 = v0[24];
    v16 = v0[21];
    v15 = v0[22];
    v17 = v0[18];
    v18 = v0[16];
    v19 = v0[13];

    v16(v18, v19);
  }

  v21 = v0[15];
  v20 = v0[16];

  v22 = v0[1];

  return v22();
}

{
  v1 = v0[19];
  Date.init()();
  v2 = *(MEMORY[0x1E69E86A8] + 4);
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v3 = v0;
  v3[1] = specialized closure #1 in Task<>.reportFailure(on:function:process:);
  v5 = v0[10];
  v6 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 2, v5, &type metadata for IDSGroupSessionProvider.Participant, v4, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = specialized closure #1 in Task<>.reportFailure(on:function:process:);
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = specialized closure #1 in Task<>.reportFailure(on:function:process:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  (*(v0[17] + 8))(v0[19], v0[16]);
  v2 = v0[18];
  v1 = v0[19];

  v3 = v0[1];

  return v3();
}

{
  v75 = v0;
  if (one-time initialization token for abcReporter != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  v0[22] = __swift_project_value_buffer(v2, static Log.abcReporter);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v74 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v74);
    _os_log_impl(&dword_1AEB26000, v3, v4, "Detected failure on function %s. Reporting!", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  if (v0[14])
  {
    v71 = v0[14];
    v70 = v0[13];
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
    v10 = [v9 bundleIdentifier];

    if (!v10)
    {
      v54 = v0[12];

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      v57 = os_log_type_enabled(v55, v56);
      v58 = v0[21];
      v59 = v0[19];
      v61 = v0[16];
      v60 = v0[17];
      if (v57)
      {
        v63 = v0[11];
        v62 = v0[12];
        v73 = v0[19];
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v74 = v65;
        *v64 = 136315394;
        *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, &v74);
        *(v64 + 12) = 2080;
        *(v64 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(7104878, 0xE300000000000000, &v74);
        _os_log_impl(&dword_1AEB26000, v55, v56, "Can't report failure on function %s because of missing processName %s", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v65, -1, -1);
        MEMORY[0x1B27120C0](v64, -1, -1);

        (*(v60 + 8))(v73, v61);
      }

      else
      {

        (*(v60 + 8))(v59, v61);
      }

      goto LABEL_22;
    }

    v11 = v0[14];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v12;
  }

  v13 = v0[21];
  v14 = v0[15];
  v16 = v0[11];
  v15 = v0[12];
  v18 = v14[3];
  v17 = v14[4];
  v69 = v14;
  __swift_project_boxed_opaque_existential_1(v14, v18);
  swift_getErrorValue();
  v19 = v0[5];
  v20 = v0[6];
  v21 = v0[7];

  v22 = Error.localizedDescription.getter();
  v24 = (*(v17 + 16))(v16, v15, v22, v23, v70, v71, v18, v17);
  v0[23] = v24;

  if (v24)
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v74 = v28;
      *v27 = 136315138;
      v29 = Dictionary.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v74);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1AEB26000, v25, v26, "Reporting signature %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1B27120C0](v28, -1, -1);
      MEMORY[0x1B27120C0](v27, -1, -1);
    }

    v33 = v0[18];
    v32 = v0[19];
    v34 = v0[16];
    v35 = v0[17];
    v36 = v69[3];
    v37 = v69[4];
    __swift_project_boxed_opaque_existential_1(v0[15], v36);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v39 = v38;
    v40 = *(v35 + 8);
    v0[24] = v40;
    v0[25] = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40(v33, v34);
    v41 = *(v37 + 24);
    v72 = (v41 + *v41);
    v42 = v41[1];
    v43 = swift_task_alloc();
    v0[26] = v43;
    *v43 = v0;
    v43[1] = specialized closure #1 in Task<>.reportFailure(on:function:process:);
    v44.n128_u64[0] = v39;

    return v72(v24, v36, v37, v44);
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v0[21];
  v50 = v0[19];
  v51 = v0[16];
  v52 = v0[17];
  if (v48)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1AEB26000, v46, v47, "Failed to convert signature payload", v53, 2u);
    MEMORY[0x1B27120C0](v53, -1, -1);
  }

  else
  {
  }

  (*(v52 + 8))(v50, v51);
LABEL_22:
  v67 = v0[18];
  v66 = v0[19];

  v68 = v0[1];

  return v68();
}

{
  v27 = v0;
  v1 = v0[27];
  v2 = v0[22];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v24 = v0[24];
    v25 = v0[25];
    v6 = v0[21];
    v7 = v0[19];
    v8 = v0[16];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    v0[9] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v26);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Received reporting response: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);

    v24(v7, v8);
  }

  else
  {
    v14 = v0[27];
    v16 = v0[24];
    v15 = v0[25];
    v17 = v0[21];
    v18 = v0[19];
    v19 = v0[16];

    v16(v18, v19);
  }

  v21 = v0[18];
  v20 = v0[19];

  v22 = v0[1];

  return v22();
}

uint64_t specialized closure #1 in Task<>.reportFailure(on:function:process:)(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 192) = a1;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in Task<>.reportFailure(on:function:process:), 0, 0);
}

{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 216) = a1;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in Task<>.reportFailure(on:function:process:), 0, 0);
}

uint64_t protocol witness for IDSServiceProtocol.accounts.getter in conformance IDSService()
{
  v1 = [*v0 accounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSAccount, 0x1E69A4828);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type IDSAccount and conformance NSObject, &lazy cache variable for type metadata for IDSAccount, 0x1E69A4828);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t protocol witness for IDSServiceProtocol.devices.getter in conformance IDSService()
{
  v1 = [*v0 devices];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSDevice, 0x1E69A4848);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id protocol witness for IDSServiceProtocol.iCloudAccount.getter in conformance IDSService()
{
  v1 = [*v0 iCloudAccount];

  return v1;
}

uint64_t protocol witness for IDSServiceProtocol.serviceIdentifier.getter in conformance IDSService()
{
  v1 = [*v0 serviceIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t IDSGroupSessionProvider.Participant.handle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

id IDSGroupSessionProvider.Participant.tuConversationParticipant.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = MEMORY[0x1B270FF70](a2, a3);
  v8 = [v6 normalizedHandleWithDestinationID_];

  if (!v8)
  {
    v9 = objc_allocWithZone(MEMORY[0x1E69D8C00]);
    v10 = MEMORY[0x1B270FF70](a2, a3);
    v8 = [v9 initWithDestinationID_];
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E69D8B90]) initWithIdentifier:a1 handle:v8];

  return v11;
}

uint64_t static IDSGroupSessionProvider.Participant.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t IDSGroupSessionProvider.Participant.hash(into:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1B2711210](a2);

  return String.hash(into:)();
}

Swift::Int IDSGroupSessionProvider.Participant.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2711210](a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IDSGroupSessionProvider.Participant()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1B2711210](v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance IDSGroupSessionProvider.Participant()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1B2711210](*v0);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IDSGroupSessionProvider.Participant()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1B2711210](v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance IDSGroupSessionProvider.Participant(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t IDSGroupSessionProvider.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t IDSGroupSessionProvider.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*IDSGroupSessionProvider.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_delegate;
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

uint64_t IDSGroupSessionProvider.groupID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID);
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID + 8);

  return v1;
}

uint64_t IDSGroupSessionProvider.members.didset(Swift::Int a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members;
  v4 = *(v1 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members);

  v6 = specialized Set.subtracting(_:)(v5, a1);

  if ((v6 & 0xC000000000000001) == 0)
  {
    v7 = &unk_1ED931000;
    if (*(v6 + 16))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v7 = &unk_1ED931000;
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v7[406] != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.service);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41[0] = v12;
    *v11 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore17AddressableMemberCGMd, &_sShy14CopresenceCore17AddressableMemberCGMR);
    v13 = String.init<A>(reflecting:)();
    v15 = a1;
    v16 = v3;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v41);

    *(v11 + 4) = v17;
    v3 = v16;
    a1 = v15;
    _os_log_impl(&dword_1AEB26000, v9, v10, "Removing members: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    v18 = v11;
    v7 = &unk_1ED931000;
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  IDSGroupSessionProvider.removeMembers(_:)(v6);

LABEL_10:
  v19 = *(v40 + v3);

  v20 = specialized Set.subtracting(_:)(a1, v19);
  v21 = v20;
  if ((v20 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_19;
    }
  }

  else if (!*(v20 + 16))
  {
    goto LABEL_19;
  }

  if (v7[406] != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.service);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v41[0] = v26;
    *v25 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore17AddressableMemberCGMd, &_sShy14CopresenceCore17AddressableMemberCGMR);
    v27 = String.init<A>(reflecting:)();
    v29 = v3;
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v41);

    *(v25 + 4) = v30;
    v3 = v29;
    _os_log_impl(&dword_1AEB26000, v23, v24, "Adding members: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1B27120C0](v26, -1, -1);
    MEMORY[0x1B27120C0](v25, -1, -1);
  }

  IDSGroupSessionProvider.addMembers(_:)(v21);
LABEL_19:

  v32 = MEMORY[0x1E69E7D40];
  v33 = (*((*MEMORY[0x1E69E7D40] & *v40) + 0x148))(v31);
  v34 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore23IDSGroupSessionProviderC11ParticipantVG_AF17AddressableMemberCs5NeverOTg504_s14d6Core23fgh77C28recomputeUnknownParticipants021_D1D34BE0B5DF16735B93L10C8E257E055LLyyFAA17jk5CAC11I6VXEfU_Tf1cn_n(v33);

  v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore17AddressableMemberC_SayAFGTt0g5Tf4g_n(v34);

  v36 = *(v40 + v3);

  v38 = specialized Set.subtracting(_:)(v37, v35);

  return (*((*v32 & *v40) + 0x168))(v38);
}

uint64_t IDSGroupSessionProvider.localMember.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember);
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember + 8);
  return swift_unknownObjectRetain();
}

void *IDSGroupSessionProvider.groupSession.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void IDSGroupSessionProvider.groupSession.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupSession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t IDSGroupSessionProvider.participantIdentifier.getter()
{
  v1 = ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))() + 16);
  if (*v1)
  {
    v2 = v1[2 * *v1 + 1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void IDSGroupSessionProvider.userDefaults.getter(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider____lazy_storage___userDefaults;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, &v10, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  if (v11)
  {
    outlined init with take of ContiguousBytes(&v10, a1);
  }

  else
  {
    v4 = v1;
    outlined destroy of NSObject?(&v10, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
    v5 = [objc_opt_self() mainBundle];
    v6 = [v5 bundleIdentifier];

    if (v6)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserDefaults, 0x1E695E000);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      static NSUserDefaults.classProtectedStorage(suiteName:)(v7, v9, a1);

      outlined init with copy of UserNotificationCenter(a1, &v10);
      swift_beginAccess();
      outlined assign with take of ProtectedStorage?(&v10, v4 + v3);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t outlined assign with take of ProtectedStorage?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t IDSGroupSessionProvider.userDefaults.setter(__int128 *a1)
{
  outlined init with take of ContiguousBytes(a1, v4);
  v2 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider____lazy_storage___userDefaults;
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(v4, v1 + v2);
  return swift_endAccess();
}

void (*IDSGroupSessionProvider.userDefaults.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  IDSGroupSessionProvider.userDefaults.getter(v3);
  return IDSGroupSessionProvider.userDefaults.modify;
}

void IDSGroupSessionProvider.userDefaults.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of UserNotificationCenter(*a1, (v2 + 5));
    v4 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider____lazy_storage___userDefaults;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v4);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    outlined init with take of ContiguousBytes(*a1, (v2 + 5));
    v5 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider____lazy_storage___userDefaults;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v5);
    swift_endAccess();
  }

  free(v2);
}

uint64_t IDSGroupSessionProvider.currentPlugins.getter()
{
  v1 = v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t IDSGroupSessionProvider.currentPlugins.setter(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v1[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins]);
  v12 = *(v11 + 1);

  *(v11 + 1) = a1;
  os_unfair_lock_unlock(v11);
  v13 = *&v1[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  aBlock[4] = partial apply for closure #2 in IDSGroupSessionProvider.currentPlugins.setter;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_23;
  v15 = _Block_copy(aBlock);
  v16 = v1;
  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v10, v6, v15);
  _Block_release(v15);
  (*(v20 + 8))(v6, v3);
  (*(v7 + 8))(v10, v19);
}

uint64_t closure #2 in IDSGroupSessionProvider.currentPlugins.setter(void *a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v9[3] = type metadata accessor for IDSGroupSessionProvider();
    v9[4] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type IDSGroupSessionProvider and conformance IDSGroupSessionProvider, v6, type metadata accessor for IDSGroupSessionProvider);
    v9[0] = a1;
    v7 = *(v4 + 40);
    v8 = a1;
    v7(v9, ObjectType, v4);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return result;
}

uint64_t (*IDSGroupSessionProvider.currentPlugins.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = v1 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins;
  os_unfair_lock_lock(v3);
  v4 = *(v3 + 8);

  os_unfair_lock_unlock(v3);
  *a1 = v4;
  return IDSGroupSessionProvider.currentPlugins.modify;
}

uint64_t IDSGroupSessionProvider.currentPlugins.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return IDSGroupSessionProvider.currentPlugins.setter(*a1);
  }

  v4 = *a1;

  IDSGroupSessionProvider.currentPlugins.setter(v5);
}

void *IDSGroupSessionProvider.virtualParticipant.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 16 + 16 * v2);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t IDSGroupSessionProvider.participants.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_participants;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x148))(v5);
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore23IDSGroupSessionProviderC11ParticipantVG_AF17AddressableMemberCs5NeverOTg504_s14d6Core23fgh77C28recomputeUnknownParticipants021_D1D34BE0B5DF16735B93L10C8E257E055LLyyFAA17jk5CAC11I6VXEfU_Tf1cn_n(v7);

  v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore17AddressableMemberC_SayAFGTt0g5Tf4g_n(v8);

  v10 = *(v1 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members);

  v12 = specialized Set.subtracting(_:)(v11, v9);

  return (*((*v6 & *v1) + 0x168))(v12);
}

uint64_t (*IDSGroupSessionProvider.participants.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IDSGroupSessionProvider.participants.modify;
}

uint64_t IDSGroupSessionProvider.participants.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = MEMORY[0x1E69E7D40];
    v7 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x148))(result);
    v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore23IDSGroupSessionProviderC11ParticipantVG_AF17AddressableMemberCs5NeverOTg504_s14d6Core23fgh77C28recomputeUnknownParticipants021_D1D34BE0B5DF16735B93L10C8E257E055LLyyFAA17jk5CAC11I6VXEfU_Tf1cn_n(v7);

    v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore17AddressableMemberC_SayAFGTt0g5Tf4g_n(v8);

    v10 = *(v5 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members);

    v12 = specialized Set.subtracting(_:)(v11, v9);

    return (*((*v6 & *v5) + 0x168))(v12);
  }

  return result;
}

uint64_t IDSGroupSessionProvider.unknownParticipants.didset(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = partial apply for closure #1 in IDSGroupSessionProvider.unknownParticipants.didset;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_108;
  v13 = _Block_copy(aBlock);

  v14 = v1;
  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

void closure #1 in IDSGroupSessionProvider.unknownParticipants.didset(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x160);
  v6 = v5();
  v7 = _sSh2eeoiySbShyxG_ABtFZ14CopresenceCore17AddressableMemberC_Tt1g5(a1, v6);

  if (v7)
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.service);
    v10 = a2;

    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v12 = 138412802;
      *(v12 + 4) = v10;
      *v13 = a2;
      *(v12 + 12) = 2080;
      v15 = v10;
      v5();
      type metadata accessor for AddressableMember();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, 255, type metadata accessor for AddressableMember);
      v16 = Set.description.getter();
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v30);

      *(v12 + 14) = v19;
      *(v12 + 22) = 2080;
      v20 = Set.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v30);

      *(v12 + 24) = v22;
      _os_log_impl(&dword_1AEB26000, oslog, v11, "%@ not notifying delegate of updated unknownParticipant list %s because it's the same as the oldValue: %s", v12, 0x20u);
      outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v13, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v14, -1, -1);
      MEMORY[0x1B27120C0](v12, -1, -1);
    }

    else
    {
    }
  }

  else if ((*((*v4 & *a2) + 0xC0))(v8))
  {
    v24 = v23;
    ObjectType = swift_getObjectType();
    v30[3] = type metadata accessor for IDSGroupSessionProvider();
    v30[4] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type IDSGroupSessionProvider and conformance IDSGroupSessionProvider, v26, type metadata accessor for IDSGroupSessionProvider);
    v30[0] = a2;
    v27 = a2;
    v28 = v5();
    (*(v24 + 32))(v30, v28, ObjectType, v24);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }
}

uint64_t IDSGroupSessionProvider.unknownParticipants.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_unknownParticipants;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  IDSGroupSessionProvider.unknownParticipants.didset(v4);
}

void (*IDSGroupSessionProvider.unknownParticipants.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_unknownParticipants;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return IDSGroupSessionProvider.unknownParticipants.modify;
}

void IDSGroupSessionProvider.unknownParticipants.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *v3;
  v7 = v2[4];
  if (a2)
  {

    IDSGroupSessionProvider.unknownParticipants.didset(v6);

    v8 = *v3;
  }

  else
  {
    IDSGroupSessionProvider.unknownParticipants.didset(v6);
  }

  free(v2);
}

uint64_t IDSGroupSessionProvider.abcReporter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_abcReporter;
  swift_beginAccess();
  return outlined init with copy of UserNotificationCenter(v1 + v3, a1);
}

uint64_t IDSGroupSessionProvider.abcReporter.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_abcReporter;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  outlined init with take of ContiguousBytes(a1, v1 + v3);
  return swift_endAccess();
}

void *IDSGroupSessionProvider.powerAssertion.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_powerAssertion;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void IDSGroupSessionProvider.powerAssertion.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_powerAssertion;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t IDSGroupSessionProvider.state.didset()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_state;
  swift_beginAccess();
  if (*(v1 + v10) != 1)
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.service);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1AEB26000, v12, v13, "IDSGroupSessionProvider getting rid of assertion", v14, 2u);
      MEMORY[0x1B27120C0](v14, -1, -1);
    }

    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x198))(0);
  }

  v15 = *(v1 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  aBlock[4] = partial apply for closure #1 in IDSGroupSessionProvider.state.didset;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_102;
  v17 = _Block_copy(aBlock);
  v18 = v1;
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v9, v5, v17);
  _Block_release(v17);
  (*(v21 + 8))(v5, v2);
  (*(v6 + 8))(v9, v20);
}

uint64_t closure #1 in IDSGroupSessionProvider.state.didset(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v11[3] = type metadata accessor for IDSGroupSessionProvider();
    v11[4] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type IDSGroupSessionProvider and conformance IDSGroupSessionProvider, v7, type metadata accessor for IDSGroupSessionProvider);
    v11[0] = a1;
    v8 = *((*v2 & *a1) + 0x1A8);
    v9 = a1;
    v10 = v8();
    (*(v5 + 8))(v11, v10, ObjectType, v5);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  return result;
}

uint64_t IDSGroupSessionProvider.state.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t IDSGroupSessionProvider.state.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_state;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return IDSGroupSessionProvider.state.didset();
}

uint64_t (*IDSGroupSessionProvider.state.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IDSGroupSessionProvider.state.modify;
}

uint64_t IDSGroupSessionProvider.state.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return IDSGroupSessionProvider.state.didset();
  }

  return result;
}

id IDSGroupSessionProvider.__allocating_init(groupID:members:localMember:service:targetQueue:abcReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v43 = a8;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v41 = *(v17 - 8);
  v42 = v17;
  v18 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v40 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OS_dispatch_queue.Attributes();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v39 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v44 = v9;
  v25 = objc_allocWithZone(v9);
  *&v25[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v25[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupSession] = 0;
  v26 = &v25[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider____lazy_storage___userDefaults];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  v27 = &v25[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins];
  v28 = MEMORY[0x1E69E7CC0];
  *v27 = 0;
  *(v27 + 1) = v28;
  v29 = MEMORY[0x1E69E7CD0];
  *&v25[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_participants] = MEMORY[0x1E69E7CD0];
  *&v25[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_unknownParticipants] = v29;
  *&v25[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_powerAssertion] = 0;
  v25[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_state] = 0;
  v30 = &v25[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID];
  *v30 = a1;
  v30[1] = a2;
  *&v25[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members] = a3;
  v31 = &v25[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember];
  *v31 = a4;
  v31[1] = a5;
  outlined init with copy of UserNotificationCenter(a6, &v25[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service]);
  v37[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *&v50 = 0;
  *(&v50 + 1) = 0xE000000000000000;
  v46 = a4;
  swift_unknownObjectRetain();

  _StringGuts.grow(_:)(29);
  MEMORY[0x1B2710020](0xD000000000000018, 0x80000001AEE35B70);
  MEMORY[0x1B2710020](a1, a2);

  MEMORY[0x1B2710020](45, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18IDSServiceProtocol_pMd, &_s14CopresenceCore18IDSServiceProtocol_pMR);
  v45 = a6;
  _print_unlocked<A, B>(_:_:)();
  v38 = a7;
  static DispatchQoS.unspecified.getter();
  *&v50 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v41 + 104))(v40, *MEMORY[0x1E69E8090], v42);
  v32 = v43;
  *&v25[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v32, &v48, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
  if (v49)
  {
    outlined init with take of ContiguousBytes(&v48, &v50);
  }

  else
  {
    v33 = type metadata accessor for ABCReporter();
    v34 = swift_allocObject();
    v34[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
    v34[3] = 0x636E795374736146;
    v34[4] = 0xE800000000000000;
    v34[5] = 0xD000000000000017;
    v34[6] = 0x80000001AEE17DD0;
    v51 = v33;
    v52 = &protocol witness table for ABCReporter;
    *&v50 = v34;
    if (v49)
    {
      outlined destroy of NSObject?(&v48, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
    }
  }

  outlined init with take of ContiguousBytes(&v50, &v25[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_abcReporter]);
  v47.receiver = v25;
  v47.super_class = v44;
  v35 = objc_msgSendSuper2(&v47, sel_init);
  outlined destroy of NSObject?(v32, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  swift_unknownObjectRelease();

  return v35;
}

id IDSGroupSessionProvider.init(groupID:members:localMember:service:targetQueue:abcReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, uint64_t a8)
{
  v9 = specialized IDSGroupSessionProvider.init(groupID:members:localMember:service:targetQueue:abcReporter:)(a1, a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease();
  return v9;
}

id IDSGroupSessionProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupSession;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    [v2 invalidate];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for IDSGroupSessionProvider();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IDSGroupSessionProvider.start()()
{
  v2 = IDSGroupSessionProvider.idsAccountForLocalMember()();
  if (!v1)
  {
    v3 = v2;
    v4 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))())
    {
      swift_unknownObjectRelease();
      IDSGroupSessionProvider.idsSessionCreationOptions()();
      v6 = v5;
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Log.service);
      v8 = v0;

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v67 = v10;
        v11 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v71 = v66;
        *v11 = 136315650;
        v12 = *(v8 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID + 8);
        v69 = *(v8 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID);
        v70 = v12;

        v13 = String.init<A>(reflecting:)();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v71);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2080;
        v69 = v6;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
        v16 = String.init<A>(reflecting:)();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v71);

        *(v11 + 14) = v18;
        *(v11 + 22) = 2080;
        v19 = *(v8 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 24);
        v20 = *(v8 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 32);
        __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service), v19);
        v21 = (*(v20 + 32))(v19, v20);
        if (v22)
        {
          v69 = v21;
          v70 = v22;
          v23 = String.init<A>(reflecting:)();
          v25 = v24;
        }

        else
        {
          v25 = 0xE300000000000000;
          v23 = 7104878;
        }

        v4 = MEMORY[0x1E69E7D40];
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v71);

        *(v11 + 24) = v31;
        _os_log_impl(&dword_1AEB26000, v9, v67, "Creating IDSGroupSession as LW with UUID %s using options %s on service %s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v66, -1, -1);
        MEMORY[0x1B27120C0](v11, -1, -1);
      }

      else
      {
      }

      v32 = objc_allocWithZone(MEMORY[0x1E69A4868]);
      v3 = v3;
      v33 = MEMORY[0x1E69E6158];
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v35 = [v32 initWithAccount:v3 options:isa];

      v36 = (*((*v4 & *v8) + 0xF8))(v35);
      v68 = *((*v4 & *v8) + 0xF0);
      v37 = (v68)(v36);
      if (v37)
      {
        v38 = v37;
        [v37 setDelegate:v8 queue:*(v8 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue)];
      }

      v39 = IDSGroupSessionProvider.idsJoinSessionOptions()();
      v40 = [objc_allocWithZone(CPFeatureFlags) init];
      v41 = [v40 wranglerEnabled];

      if (v41)
      {
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_1AEB26000, v42, v43, "Grabbing power assertion", v44, 2u);
          MEMORY[0x1B27120C0](v44, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AEE07B10;
        v46 = *MEMORY[0x1E69A6020];
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v47;
        AnyHashable.init<A>(_:)();
        v48 = [objc_opt_self() processInfo];
        [v48 processIdentifier];

        v49 = Int32._bridgeToObjectiveC()().super.super.isa;
        *(inited + 96) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
        *(inited + 72) = v49;
        v50 = *MEMORY[0x1E69A6008];
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v51;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = v33;
        *(inited + 144) = 0xD000000000000022;
        *(inited + 152) = 0x80000001AEE35BB0;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
        swift_arrayDestroy();
        v52 = objc_allocWithZone(MEMORY[0x1E69A6130]);
        v53 = MEMORY[0x1B270FF70](0xD000000000000018, 0x80000001AEE35B90);
        v54 = Dictionary._bridgeToObjectiveC()().super.isa;

        v55 = [v52 initWithIdentifier:v53 timeoutSec:v54 properties:0.0];

        (*((*MEMORY[0x1E69E7D40] & *v8) + 0x198))(v55);
      }

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v69 = v59;
        *v58 = 136315138;
        v71 = v39;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
        v60 = String.init<A>(reflecting:)();
        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v69);

        *(v58 + 4) = v62;
        _os_log_impl(&dword_1AEB26000, v56, v57, "Joining group session with options %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x1B27120C0](v59, -1, -1);
        MEMORY[0x1B27120C0](v58, -1, -1);
      }

      v63 = v68();
      if (v63)
      {
        v64 = v63;
        specialized _dictionaryUpCast<A, B, C, D>(_:)(v39);

        v65 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v64 joinWithOptions_];
      }

      else
      {
      }
    }

    else
    {
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Log.service);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1AEB26000, v27, v28, "IDSGroupSessionProvider start called before setting delegate", v29, 2u);
        MEMORY[0x1B27120C0](v29, -1, -1);
      }

      lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
      swift_allocError();
      *v30 = 2;
      swift_willThrow();
    }
  }
}

Swift::Void __swiftcall IDSGroupSessionProvider.leave()()
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.service);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x1E69E7D40];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    if ((*((*v6 & *v2) + 0xF0))())
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSGroupSession, 0x1E69A4868);
      v9 = String.init<A>(reflecting:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v15);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Leaving IDSGroupSession %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  else
  {
  }

  v14 = (*((*v6 & *v2) + 0xF0))(v12);
  [v14 leaveGroupSession];
}

void IDSGroupSessionProvider.addMembers(_:)(uint64_t a1, unsigned __int16 a2, const char *a3)
{
  v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xF0))();
  if (v8)
  {
    v9 = v8;
    v10 = specialized Sequence.compactMap<A>(_:)(a1);
    if (v4)
    {
    }

    else
    {
      specialized _arrayForceCast<A, B>(_:)(v10);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v9 manageDesignatedMembers:isa withType:a2];
    }
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.service);
    v12 = v3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      v17 = (v12 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service);
      v18 = *(v12 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 24);
      v19 = v17[4];
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v19 + 32))(v18, v19);
      if (v20)
      {
        v21 = String.init<A>(reflecting:)();
        v23 = v22;
      }

      else
      {
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v27);

      *(v15 + 4) = v25;
      _os_log_impl(&dword_1AEB26000, v13, v14, a3, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v26 = 4;
    swift_willThrow();
  }
}

void IDSGroupSessionProvider.updateMembers(_:)(uint64_t a1)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
  if (v4)
  {
    v5 = v4;
    v6 = *(v1 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members);
    *(v1 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members) = a1;

    IDSGroupSessionProvider.members.didset(v6);

    v7 = specialized Sequence.compactMap<A>(_:)(a1);
    if (v2)
    {
    }

    else
    {
      v21 = v7;
      IDSGroupSessionProvider.idsDestinationsForLocalMember()();
      if (!v22)
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      specialized Array.append<A>(contentsOf:)(v22);
      specialized _arrayForceCast<A, B>(_:)(v21);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 updateMembers:isa withContext:0 triggeredLocally:1];
    }
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.service);
    v9 = v1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136315138;
      v14 = (v9 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service);
      v15 = *(v9 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 24);
      v16 = v14[4];
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v16 + 32))(v15, v16);
      if (v17)
      {
        v18 = String.init<A>(reflecting:)();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v26);

      *(v12 + 4) = v24;
      _os_log_impl(&dword_1AEB26000, v10, v11, "Unable to update members, no session for service %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1B27120C0](v13, -1, -1);
      MEMORY[0x1B27120C0](v12, -1, -1);
    }

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v25 = 4;
    swift_willThrow();
  }
}

void IDSGroupSessionProvider.requestDataCryptor(forTopic:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v9 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xF0))();
  if (v9)
  {
    v10 = v9;
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.service);
    v12 = v10;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      osloga = a4;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v51 = v16;
      *v15 = 136315394;
      v17 = [v12 sessionID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = String.init<A>(reflecting:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v51);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      aBlock = a1;
      v46 = a2;

      v21 = String.init<A>(reflecting:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v51);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_1AEB26000, v13, v14, "Session, %s, fetching data cryptor for topic: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v16, -1, -1);
      v24 = v15;
      a4 = osloga;
      MEMORY[0x1B27120C0](v24, -1, -1);
    }

    v25 = MEMORY[0x1B270FF70](a1, a2);
    v26 = swift_allocObject();
    v26[2] = a1;
    v26[3] = a2;
    v26[4] = v12;
    v26[5] = a3;
    v26[6] = a4;
    v49 = partial apply for closure #1 in IDSGroupSessionProvider.requestDataCryptor(forTopic:completion:);
    v50 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IDSGroupSessionDataCryptor) -> ();
    v48 = &block_descriptor_6_3;
    v27 = _Block_copy(&aBlock);
    v28 = v12;

    [v28 requestDataCryptorForTopic:v25 completionHandler:v27];
    _Block_release(v27);
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Log.service);
    v30 = v4;
    oslog = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v51 = v33;
      *v32 = 136315138;
      v34 = (v30 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service);
      v35 = *(v30 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 24);
      v36 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v37 = (*(v36 + 32))(v35, v36);
      if (v38)
      {
        aBlock = v37;
        v46 = v38;
        v39 = String.init<A>(reflecting:)();
        v41 = v40;
      }

      else
      {
        v41 = 0xE300000000000000;
        v39 = 7104878;
      }

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v51);

      *(v32 + 4) = v42;
      _os_log_impl(&dword_1AEB26000, oslog, v31, "Unable to fetch data cryptor, no session for service %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1B27120C0](v33, -1, -1);
      MEMORY[0x1B27120C0](v32, -1, -1);
    }

    else
    {
    }
  }
}

void closure #1 in IDSGroupSessionProvider.requestDataCryptor(forTopic:completion:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void))
{
  v42[1] = &unk_1F24B5F08;
  v8 = swift_dynamicCastObjCProtocolConditional();
  v9 = one-time initialization token for service;
  if (v8)
  {
    v10 = v8;
    v11 = a1;
    if (v9 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.service);

    v13 = a4;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v41 = a5;
      v16 = swift_slowAlloc();
      v40 = v11;
      v17 = swift_slowAlloc();
      v42[0] = v17;
      *v16 = 136315394;

      v18 = String.init<A>(reflecting:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v42);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = [v13 sessionID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = String.init<A>(reflecting:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v42);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_1AEB26000, v14, v15, "Successfully fetched data cryptor for topic %s on session %s", v16, 0x16u);
      swift_arrayDestroy();
      v25 = v17;
      v11 = v40;
      MEMORY[0x1B27120C0](v25, -1, -1);
      v26 = v16;
      a5 = v41;
      MEMORY[0x1B27120C0](v26, -1, -1);
    }

    a5(v10);
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.service);

    v28 = a4;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42[0] = v32;
      *v31 = 136315394;

      v33 = String.init<A>(reflecting:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v42);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = [v28 sessionID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = String.init<A>(reflecting:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v42);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_1AEB26000, v29, v30, "Failed to fetch data cryptor for topic %s on session %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v32, -1, -1);
      MEMORY[0x1B27120C0](v31, -1, -1);
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IDSGroupSessionDataCryptor) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t IDSGroupSessionProvider.description.getter()
{
  BYTE8(v3) = 0;
  _StringGuts.grow(_:)(43);
  MEMORY[0x1B2710020](0xD000000000000020, 0x80000001AEE35C10);
  MEMORY[0x1B2710020](*(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID), *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID + 8));
  v1 = MEMORY[0x1B2710020](0x3A657461747320, 0xE700000000000000);
  *&v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1A8))(v1);
  _print_unlocked<A, B>(_:_:)();
  return *(&v3 + 1);
}

unint64_t IDSGroupSessionProvider.idsJoinSessionOptions()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  v2 = *MEMORY[0x1E69A5138];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  *(inited + 72) = MEMORY[0x1E6969080];
  *(inited + 48) = xmmword_1AEE0C200;
  v4 = *MEMORY[0x1E69A4DC0];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1AEE07B20;
  v7 = *MEMORY[0x1E69A4D30];
  *(v6 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v6 + 40) = v8;
  v9 = *MEMORY[0x1E69A4D80];
  *(v6 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v6 + 56) = v10;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v6);
  swift_setDeallocating();
  outlined destroy of NSObject?(v6 + 32, &_sSS_SStMd, &_sSS_SStMR);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  *(inited + 96) = v11;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  v13 = swift_arrayDestroy();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))(v25, v13);
  v14 = v26;
  v15 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v16 = MEMORY[0x1E69E6370];
  (*(v15 + 32))(v24, MEMORY[0x1E69E6370], 0xD000000000000010, 0x80000001AEE35FA0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6390], MEMORY[0x1E69E6378], v14, v15);
  v17 = v24[0];
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  if (v17)
  {
    v18 = *MEMORY[0x1E69A4D78];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    v26 = v16;
    LOBYTE(v25[0]) = 1;
    outlined init with take of Any(v25, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v19, v21, isUniquelyReferenced_nonNull_native);
  }

  return v12;
}

void IDSGroupSessionProvider.idsSessionCreationOptions()()
{
  IDSGroupSessionProvider.idsDestinationsForLocalMember()();
  if (v1)
  {
    return;
  }

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B30;
  v5 = *MEMORY[0x1E69A50C8];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = (inited + 32);
  *(inited + 40) = v7;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  v8 = *MEMORY[0x1E69A4D60];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v9;
  v10 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID);
  v11 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID + 8);
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = v10;
  *(inited + 104) = v11;
  v12 = *MEMORY[0x1E69A4D68];
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v13;
  v14 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members);

  v16 = specialized Sequence.compactMap<A>(_:)(v15);

  *&v46 = v16;

  specialized Array.append<A>(contentsOf:)(v17);
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo22IDSDestinationProtocol_pGMd, &_sSaySo22IDSDestinationProtocol_pGMR);
  *(inited + 144) = v16;
  v18 = *MEMORY[0x1E69A4D50];
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v19;
  *(inited + 216) = MEMORY[0x1E69E6370];
  *(inited + 192) = 1;
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v48 = v20;
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_21:

    return;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_21;
  }

LABEL_9:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1B2710B10](0, v3);
LABEL_12:

    v21 = [v6 destinationURIs];
    v22 = MEMORY[0x1E69E6158];
    v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = specialized Collection.first.getter(v23);
    v26 = v25;

    if (v26)
    {
      v27 = *MEMORY[0x1E69A4D58];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
      v31 = MEMORY[0x1B270FF70](v24, v26);

      v32 = [v31 _stripFZIDPrefix];

      if (v32)
      {
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v47 = v22;
        *&v46 = v33;
        *(&v46 + 1) = v35;
        outlined init with take of Any(&v46, v45);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v28, v30, isUniquelyReferenced_nonNull_native);

        swift_unknownObjectRelease();
        v48 = v20;
      }

      else
      {
        specialized Dictionary._Variant.removeValue(forKey:)(v28, v30, v45);
        swift_unknownObjectRelease();

        outlined destroy of NSObject?(v45, &_sypSgMd, &_sypSgMR);
      }

      return;
    }

    if (one-time initialization token for service == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 32);
    swift_unknownObjectRetain();
    goto LABEL_12;
  }

  __break(1u);
LABEL_24:
  swift_once();
LABEL_16:
  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Log.service);
  swift_unknownObjectRetain();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.fault.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v46 = v41;
    *v40 = 136315138;
    *&v45[0] = v6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22IDSDestinationProtocol_pMd, &_sSo22IDSDestinationProtocol_pMR);
    v42 = String.init<A>(reflecting:)();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v46);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1AEB26000, v38, v39, "Failed to find destinationURI for localMember's IDSDestination: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1B27120C0](v41, -1, -1);
    MEMORY[0x1B27120C0](v40, -1, -1);
  }

  swift_unknownObjectRelease();
}

void IDSGroupSessionProvider.idsDestinationsForLocalMember()()
{
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember + 8);
    type metadata accessor for AddressableMember();
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      v4 = AddressableMember.idsDestination.getter();
      if (!v1)
      {
        v5 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1AEE07B40;
        *(v6 + 32) = v5;
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_71;
    }

    type metadata accessor for AccountMember();
    if (!swift_dynamicCastClass())
    {
      v24 = one-time initialization token for service;
      swift_unknownObjectRetain();
      if (v24 == -1)
      {
LABEL_23:
        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static Log.service);
        v26 = v0;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v106._countAndFlagsBits = v30;
          *v29 = 136315138;
          v107 = v2;
          v108 = v3;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore6Member_pMd, &_s14CopresenceCore6Member_pMR);
          v31 = String.init<A>(reflecting:)();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v106._countAndFlagsBits);

          *(v29 + 4) = v33;
          _os_log_impl(&dword_1AEB26000, v27, v28, "Unknown type for localMember: %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
          MEMORY[0x1B27120C0](v30, -1, -1);
          MEMORY[0x1B27120C0](v29, -1, -1);
        }

        lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
        swift_allocError();
        v35 = 5;
LABEL_70:
        *v34 = v35;
        swift_willThrow();
LABEL_71:
        swift_unknownObjectRelease();
        return;
      }

LABEL_76:
      swift_once();
      goto LABEL_23;
    }

    v7 = (v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service);
    v8 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 24);
    v3 = *(v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service), v8);
    v9 = v3[3];
    swift_unknownObjectRetain();
    v10 = v9(v8, v3);
    if (!v10)
    {
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Log.service);
      v37 = v0;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = 7104878;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v106._countAndFlagsBits = v42;
        *v41 = 136315394;
        v43 = v7[3];
        v44 = v7[4];
        __swift_project_boxed_opaque_existential_1(v7, v43);
        v45 = (*(v44 + 32))(v43, v44);
        if (v46)
        {
          v107 = v45;
          v108 = v46;
          v47 = String.init<A>(reflecting:)();
          v49 = v48;
        }

        else
        {
          v49 = 0xE300000000000000;
          v47 = 7104878;
        }

        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v106._countAndFlagsBits);

        *(v41 + 4) = v80;
        *(v41 + 12) = 2080;
        v81 = v7[3];
        v82 = v7[4];
        __swift_project_boxed_opaque_existential_1(v7, v81);
        v83 = (*(v82 + 8))(v81, v82);
        if (v83)
        {
          v107 = v83;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo10IDSAccountCGMd, &_sShySo10IDSAccountCGMR);
          v40 = String.init<A>(reflecting:)();
          v85 = v84;
        }

        else
        {
          v85 = 0xE300000000000000;
        }

        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v85, &v106._countAndFlagsBits);

        *(v41 + 14) = v86;
        _os_log_impl(&dword_1AEB26000, v38, v39, "No iCloudAccount found while starting IDS Service service %s accounts %s", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v42, -1, -1);
        MEMORY[0x1B27120C0](v41, -1, -1);
      }

      else
      {
      }

      lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
      swift_allocError();
      v35 = 1;
      goto LABEL_70;
    }

    v102 = v10;
    v11 = [v10 handles];
    if (!v11)
    {
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Log.service);
      v52 = v102;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v107 = v56;
        *v55 = 136315138;
        v106._countAndFlagsBits = v52;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSAccount, 0x1E69A4828);
        v57 = v52;
        v58 = String.init<A>(reflecting:)();
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v107);

        *(v55 + 4) = v60;
        _os_log_impl(&dword_1AEB26000, v53, v54, "No handles on iCloudAccount %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        MEMORY[0x1B27120C0](v56, -1, -1);
        MEMORY[0x1B27120C0](v55, -1, -1);
      }

      lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
      swift_allocError();
      *v61 = 6;
      swift_willThrow();
      goto LABEL_92;
    }

    v12 = v11;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSHandle, 0x1E69A52A8);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v109 = MEMORY[0x1E69E7CC0];
    if (v13 >> 62)
    {
      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v2 = 0;
      v103 = *MEMORY[0x1E69A5630];
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1B2710B10](v2, v13);
        }

        else
        {
          if (v2 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_75;
          }

          v16 = *(v13 + 8 * v2 + 32);
        }

        v17 = v16;
        v3 = (v2 + 1);
        if (__OFADD__(v2, 1))
        {
          goto LABEL_74;
        }

        v18 = [v16 URI];
        v19 = [v18 prefixedURI];

        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v107 = v20;
        v108 = v22;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = String.lowercased()();

        v106 = v23;
        lazy protocol witness table accessor for type String and conformance String();
        v0 = &v107;
        LOBYTE(v19) = StringProtocol.contains<A>(_:)();

        if (v19)
        {
        }

        else
        {
          v0 = &v109;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v15 = *(v109 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v2;
        if (v3 == v14)
        {
          v50 = v109;
          v0 = MEMORY[0x1E69E7CC0];
          goto LABEL_39;
        }
      }
    }

    v50 = MEMORY[0x1E69E7CC0];
LABEL_39:

    v107 = v0;
    v62 = (v50 >> 62) & 1;
    if (v50 < 0)
    {
      LODWORD(v62) = 1;
    }

    v104 = v62;
    if (v62 == 1)
    {
      v2 = __CocoaSet.count.getter();
    }

    else
    {
      v2 = *(v50 + 16);
    }

    v0 = 0;
    v105 = MEMORY[0x1E69E7CC0];
    if (v2)
    {
      while (1)
      {
        if ((v50 & 0xC000000000000001) != 0)
        {
          v74 = MEMORY[0x1B2710B10](v0, v50);
        }

        else
        {
          if (v0 >= *(v50 + 16))
          {
            goto LABEL_73;
          }

          v74 = *(v50 + 8 * v0 + 32);
        }

        v75 = v74;
        v3 = (v0 + 1);
        if (__OFADD__(v0, 1))
        {
          break;
        }

        v76 = [v74 URI];
        v77 = [v76 prefixedURI];

        if (!v77)
        {
          v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = MEMORY[0x1B270FF70](v78);
        }

        v73 = [objc_opt_self() destinationWithStringURI:v77 isLightWeight:1];

        ++v0;
        if (v73)
        {
          MEMORY[0x1B2710150]();
          if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v79 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v105 = v107;
          v0 = v3;
          if (v2 == v3)
          {
            goto LABEL_44;
          }
        }

        else if (v2 == v0)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

LABEL_44:
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static Log.service);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v107 = v67;
      *v66 = 136315138;
      v106._countAndFlagsBits = v105;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14IDSDestinationCGMd, &_sSaySo14IDSDestinationCGMR);
      v68 = String.init<A>(reflecting:)();
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v107);

      *(v66 + 4) = v70;
      _os_log_impl(&dword_1AEB26000, v64, v65, "Filtered destinations: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x1B27120C0](v67, -1, -1);
      MEMORY[0x1B27120C0](v66, -1, -1);
    }

    if (v105 >> 62)
    {
      v71 = __CocoaSet.count.getter();
      if (v104)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v71 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v104)
      {
LABEL_50:
        v72 = __CocoaSet.count.getter();
LABEL_81:

        if (v71 == v72)
        {

          if (v105 >> 62)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22IDSDestinationProtocol_pMd, &_sSo22IDSDestinationProtocol_pMR);
            _bridgeCocoaArray<A>(_:)();
            swift_unknownObjectRelease();

            swift_bridgeObjectRelease_n();
          }

          else
          {
            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            swift_unknownObjectRelease();
          }

          return;
        }

        v52 = v102;
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v107 = v90;
          *v89 = 136315394;
          v91 = [v52 handles];
          if (v91)
          {
            v92 = v91;
            v93 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v106._countAndFlagsBits = v93;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9IDSHandleCGMd, &_sSaySo9IDSHandleCGMR);
            v94 = String.init<A>(reflecting:)();
            v96 = v95;
          }

          else
          {
            v94 = 7104878;
            v96 = 0xE300000000000000;
          }

          v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, &v107);

          *(v89 + 4) = v97;
          *(v89 + 12) = 2080;
          v106._countAndFlagsBits = v105;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14IDSDestinationCGMd, &_sSaySo14IDSDestinationCGMR);
          v98 = String.init<A>(reflecting:)();
          v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, &v107);

          *(v89 + 14) = v100;
          _os_log_impl(&dword_1AEB26000, v87, v88, "Mismatch during conversion: %s vs %s", v89, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v90, -1, -1);
          MEMORY[0x1B27120C0](v89, -1, -1);
        }

        else
        {
        }

        lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
        swift_allocError();
        *v101 = 5;
        swift_willThrow();
LABEL_92:
        swift_unknownObjectRelease();

        return;
      }
    }

    v72 = *(v50 + 16);
    goto LABEL_81;
  }
}

uint64_t AddressableMember.idsDestination.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle];
  v2 = TUCopyIDSCanonicalAddressForHandle();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() destinationWithStringURI:v2 isLightWeight:1];

    return v4;
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.service);
    v7 = v0;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      type metadata accessor for AddressableMember();
      v12 = v7;
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1AEB26000, v8, v9, "Failed to generate destination for %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1B27120C0](v11, -1, -1);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v16 = 5;
    return swift_willThrow();
  }
}

uint64_t IDSGroupSessionProvider.iCloudAccountForService()()
{
  v1 = &v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service];
  v2 = *&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 24];
  v3 = *&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service], v2);
  result = (*(v3 + 24))(v2, v3);
  if (!result)
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.service);
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = 7104878;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v10 = 136315394;
      v12 = *(v1 + 3);
      v13 = *(v1 + 4);
      __swift_project_boxed_opaque_existential_1(v1, v12);
      (*(v13 + 32))(v12, v13);
      if (v14)
      {
        v15 = String.init<A>(reflecting:)();
        v17 = v16;
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v25);

      *(v10 + 4) = v18;
      *(v10 + 12) = 2080;
      v19 = *(v1 + 3);
      v20 = *(v1 + 4);
      __swift_project_boxed_opaque_existential_1(v1, v19);
      if ((*(v20 + 8))(v19, v20))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo10IDSAccountCGMd, &_sShySo10IDSAccountCGMR);
        v9 = String.init<A>(reflecting:)();
        v22 = v21;
      }

      else
      {
        v22 = 0xE300000000000000;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v22, &v25);

      *(v10 + 14) = v23;
      _os_log_impl(&dword_1AEB26000, v7, v8, "No iCloudAccount found while starting session on service: %s accounts: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v11, -1, -1);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v24 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t IDSGroupSessionProvider.idsAccountForLocalMember()()
{
  v1 = *&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember];
  if (!v1)
  {
    return IDSGroupSessionProvider.iCloudAccountForService()();
  }

  v2 = *&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember + 8];
  type metadata accessor for AddressableMember();
  v100 = swift_dynamicCastClass();
  if (v100)
  {
    v3 = *&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 24];
    v4 = *&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service + 32];
    v89 = v0;
    v90 = &v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service];
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service], v3);
    v5 = *(v4 + 8);
    swift_unknownObjectRetain_n();
    result = v5(v3, v4);
    if (result)
    {
      v7 = result;
      if ((result & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSAccount, 0x1E69A4828);
        lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type IDSAccount and conformance NSObject, &lazy cache variable for type metadata for IDSAccount, 0x1E69A4828);
        Set.Iterator.init(_cocoa:)();
        v7 = v105[5];
        v8 = v105[6];
        v9 = v105[7];
        v10 = v105[8];
        v11 = v105[9];
      }

      else
      {
        v10 = 0;
        v13 = -1 << *(result + 32);
        v8 = result + 56;
        v14 = ~v13;
        v15 = -v13;
        if (v15 < 64)
        {
          v16 = ~(-1 << v15);
        }

        else
        {
          v16 = -1;
        }

        v11 = v16 & *(result + 56);
        v9 = v14;
      }

      v17 = (v9 + 64) >> 6;
      v18 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
      v95 = v7;
      v94 = v8;
      v91 = v17;
      if (v7 < 0)
      {
        goto LABEL_21;
      }

LABEL_15:
      v19 = v10;
      v20 = v11;
      v21 = v10;
      if (!v11)
      {
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v17)
          {
            goto LABEL_69;
          }

          v20 = *(v8 + 8 * v21);
          ++v19;
          if (v20)
          {
            goto LABEL_19;
          }
        }

LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

LABEL_19:
      v93 = (v20 - 1) & v20;
      v22 = *(*(v7 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
      if (!v22)
      {
LABEL_69:
        outlined consume of Set<String>.Iterator._Variant();
        if (one-time initialization token for service == -1)
        {
LABEL_70:
          v66 = type metadata accessor for Logger();
          __swift_project_value_buffer(v66, static Log.service);
          swift_unknownObjectRetain();
          v67 = v89;
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v68, v69))
          {
            v70 = 7104878;
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v106 = v72;
            *v71 = 136315650;
            outlined init with copy of UserNotificationCenter(v90, v105);
            outlined init with copy of ActivitySession.DomainAssertionWrapper?(v105, &v103, &_s14CopresenceCore18IDSServiceProtocol_pSgMd, &_s14CopresenceCore18IDSServiceProtocol_pSgMR);
            if (v104)
            {
              outlined init with take of ContiguousBytes(&v103, v102);
              outlined init with copy of UserNotificationCenter(v102, v101);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18IDSServiceProtocol_pMd, &_s14CopresenceCore18IDSServiceProtocol_pMR);
              v73 = String.init<A>(reflecting:)();
              v75 = v74;
              __swift_destroy_boxed_opaque_existential_1Tm(v102);
            }

            else
            {
              v75 = 0xE300000000000000;
              v73 = 7104878;
            }

            outlined destroy of NSObject?(v105, &_s14CopresenceCore18IDSServiceProtocol_pSgMd, &_s14CopresenceCore18IDSServiceProtocol_pSgMR);
            v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v106);

            *(v71 + 4) = v76;
            *(v71 + 12) = 2080;
            v77 = *(v90 + 3);
            v78 = *(v90 + 4);
            __swift_project_boxed_opaque_existential_1(v90, v77);
            v79 = (*(v78 + 8))(v77, v78);
            if (v79)
            {
              v105[0] = v79;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo10IDSAccountCGMd, &_sShySo10IDSAccountCGMR);
              v70 = String.init<A>(reflecting:)();
              v81 = v80;
            }

            else
            {
              v81 = 0xE300000000000000;
            }

            v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v81, &v106);

            *(v71 + 14) = v82;
            *(v71 + 22) = 2080;
            v105[0] = *(v100 + OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle);
            v83 = v105[0];
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
            v84 = v83;
            v85 = String.init<A>(reflecting:)();
            v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v106);

            *(v71 + 24) = v87;
            _os_log_impl(&dword_1AEB26000, v68, v69, "No iCloudAccount found while starting IDS Service service %s accounts %s idsDestination: %s", v71, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1B27120C0](v72, -1, -1);
            MEMORY[0x1B27120C0](v71, -1, -1);
          }

          else
          {
          }

          lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
          swift_allocError();
          *v88 = 1;
          swift_willThrow();
          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }

LABEL_88:
        swift_once();
        goto LABEL_70;
      }

      while (1)
      {
        v92 = v21;
        v99 = v22;
        result = [v22 v18[308]];
        if (!result)
        {
          break;
        }

        v24 = result;
        v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = 0;
        v27 = MEMORY[0x1E69E7CC0];
        v105[0] = MEMORY[0x1E69E7CC0];
        v28 = *(v25 + 16);
LABEL_25:
        v98 = v27;
        v29 = (v25 + 40 + 16 * v26);
        while (v28 != v26)
        {
          if (v26 >= *(v25 + 16))
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          ++v26;
          v30 = v29 + 2;
          v32 = *(v29 - 1);
          v31 = *v29;
          v33 = objc_opt_self();

          v34 = MEMORY[0x1B270FF70](v32, v31);
          v35 = [v33 normalizedHandleWithDestinationID_];

          v29 = v30;
          if (v35)
          {
            MEMORY[0x1B2710150]();
            if (*((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v36 = *((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v27 = v105[0];
            goto LABEL_25;
          }
        }

        result = [v99 pseudonyms];
        if (!result)
        {
          goto LABEL_90;
        }

        v37 = result;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSPseudonym, 0x1E69A5390);
        v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v105[0] = MEMORY[0x1E69E7CC0];
        if (v38 >> 62)
        {
          v39 = __CocoaSet.count.getter();
        }

        else
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v40 = 0;
        v97 = MEMORY[0x1E69E7CC0];
        if (v39)
        {
          while (1)
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v48 = MEMORY[0x1B2710B10](v40, v38);
            }

            else
            {
              if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_84;
              }

              v48 = *(v38 + 8 * v40 + 32);
            }

            v49 = v48;
            v50 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_83;
            }

            v51 = [v48 URI];
            v52 = [v51 prefixedURI];

            if (!v52)
            {
              v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v52 = MEMORY[0x1B270FF70](v53);
            }

            v47 = [objc_opt_self() normalizedHandleWithDestinationID_];

            ++v40;
            if (v47)
            {
              MEMORY[0x1B2710150]();
              if (*((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v54 = *((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v97 = v105[0];
              v40 = v50;
              if (v39 == v50)
              {
                break;
              }
            }

            else if (v39 == v40)
            {
              break;
            }
          }
        }

        v105[0] = v98;
        specialized Array.append<A>(contentsOf:)(v97);
        if (v98 >> 62)
        {
          v41 = __CocoaSet.count.getter();
        }

        else
        {
          v41 = *((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v42 = 0;
        v43 = OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle;
        while (v41 != v42)
        {
          if ((v98 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x1B2710B10](v42, v98);
          }

          else
          {
            if (v42 >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_86;
            }

            v44 = *(v98 + 8 * v42 + 32);
          }

          v45 = v44;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_85;
          }

          v46 = [v44 isEquivalentToHandle_];

          ++v42;
          if (v46)
          {
            swift_unknownObjectRelease();

            outlined consume of Set<String>.Iterator._Variant();
            swift_unknownObjectRelease();
            return v99;
          }
        }

        v10 = v92;
        v11 = v93;
        v7 = v95;
        v8 = v94;
        v17 = v91;
        v18 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
        if ((v95 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

LABEL_21:
        v23 = __CocoaSet.Iterator.next()();
        if (v23)
        {
          *&v103 = v23;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSAccount, 0x1E69A4828);
          swift_dynamicCast();
          v22 = v105[0];
          v21 = v10;
          v93 = v11;
          if (v105[0])
          {
            continue;
          }
        }

        goto LABEL_69;
      }

      __break(1u);
LABEL_90:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  type metadata accessor for AccountMember();
  if (!swift_dynamicCastClass())
  {
    v55 = one-time initialization token for service;
    swift_unknownObjectRetain();
    if (v55 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Log.service);
    v57 = v0;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v103 = v61;
      *v60 = 136315138;
      v105[0] = v1;
      v105[1] = v2;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore6Member_pMd, &_s14CopresenceCore6Member_pMR);
      v62 = String.init<A>(reflecting:)();
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v103);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_1AEB26000, v58, v59, "Unknown type for localMember: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x1B27120C0](v61, -1, -1);
      MEMORY[0x1B27120C0](v60, -1, -1);
    }

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v65 = 5;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  v12 = IDSGroupSessionProvider.iCloudAccountForService()();
  result = swift_unknownObjectRelease();
  if (!v96)
  {
    return v12;
  }

  return result;
}