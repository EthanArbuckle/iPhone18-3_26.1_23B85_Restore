uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoLinkConversationCancelResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoLinkConversationCancelResponse and conformance NCProtoLinkConversationCancelResponse, type metadata accessor for NCProtoLinkConversationCancelResponse);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoDeclineContinuityCallRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeclineContinuityCallRequest and conformance NCProtoDeclineContinuityCallRequest, type metadata accessor for NCProtoDeclineContinuityCallRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoDeclineContinuityCallRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeclineContinuityCallRequest and conformance NCProtoDeclineContinuityCallRequest, type metadata accessor for NCProtoDeclineContinuityCallRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoDeclineContinuityCallRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeclineContinuityCallRequest and conformance NCProtoDeclineContinuityCallRequest, type metadata accessor for NCProtoDeclineContinuityCallRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoDeclineContinuityCallResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeclineContinuityCallResponse and conformance NCProtoDeclineContinuityCallResponse, type metadata accessor for NCProtoDeclineContinuityCallResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoDeclineContinuityCallResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeclineContinuityCallResponse and conformance NCProtoDeclineContinuityCallResponse, type metadata accessor for NCProtoDeclineContinuityCallResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoDeclineContinuityCallResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeclineContinuityCallResponse and conformance NCProtoDeclineContinuityCallResponse, type metadata accessor for NCProtoDeclineContinuityCallResponse);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoGetAddressableContactsRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetAddressableContactsRequest and conformance NCProtoGetAddressableContactsRequest, type metadata accessor for NCProtoGetAddressableContactsRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoGetAddressableContactsRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetAddressableContactsRequest and conformance NCProtoGetAddressableContactsRequest, type metadata accessor for NCProtoGetAddressableContactsRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoGetAddressableContactsRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetAddressableContactsRequest and conformance NCProtoGetAddressableContactsRequest, type metadata accessor for NCProtoGetAddressableContactsRequest);

  return Message.hash(into:)();
}

uint64_t NCProtoGetAddressableContactsResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for NCProtoAddressableContact(0);
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddressableContact and conformance NCProtoAddressableContact, type metadata accessor for NCProtoAddressableContact);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        v3 = *(type metadata accessor for NCProtoGetAddressableContactsResponse(0) + 24);
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t NCProtoGetAddressableContactsResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for NCProtoAddressableContact(0), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddressableContact and conformance NCProtoAddressableContact, type metadata accessor for NCProtoAddressableContact), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    result = closure #1 in NCProtoGetAddressableContactsResponse.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for NCProtoGetAddressableContactsResponse(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in NCProtoGetAddressableContactsResponse.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoGetAddressableContactsResponse(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoGetAddressableContactsResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 20);
  result = UnknownStorage.init()();
  v6 = a2 + *(a1 + 24);
  *v6 = 0;
  v6[8] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoGetAddressableContactsResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetAddressableContactsResponse and conformance NCProtoGetAddressableContactsResponse, type metadata accessor for NCProtoGetAddressableContactsResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoGetAddressableContactsResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetAddressableContactsResponse and conformance NCProtoGetAddressableContactsResponse, type metadata accessor for NCProtoGetAddressableContactsResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoGetAddressableContactsResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetAddressableContactsResponse and conformance NCProtoGetAddressableContactsResponse, type metadata accessor for NCProtoGetAddressableContactsResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoGetImageForContactRequest.decodeMessage<A>(decoder:)()
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
        lazy protocol witness table accessor for type NCProtoContactImageType and conformance NCProtoContactImageType();
        dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t NCProtoGetImageForContactRequest.traverse<A>(visitor:)()
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
    if (!*(v0[2] + 16) || (lazy protocol witness table accessor for type NCProtoContactImageType and conformance NCProtoContactImageType(), result = dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)(), !v1))
    {
      v6 = v0 + *(type metadata accessor for NCProtoGetImageForContactRequest(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static NCProtoGetImageForContactRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit32NCProtoStartLagunaSessionRequestV19RecentCallFetchTypeO_Tt1g5Tm(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for NCProtoGetImageForContactRequest(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance NCProtoGetImageForContactRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoGetImageForContactRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetImageForContactRequest and conformance NCProtoGetImageForContactRequest, type metadata accessor for NCProtoGetImageForContactRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoGetImageForContactRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetImageForContactRequest and conformance NCProtoGetImageForContactRequest, type metadata accessor for NCProtoGetImageForContactRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoGetImageForContactRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetImageForContactRequest and conformance NCProtoGetImageForContactRequest, type metadata accessor for NCProtoGetImageForContactRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NCProtoGetImageForContactRequest(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit32NCProtoStartLagunaSessionRequestV19RecentCallFetchTypeO_Tt1g5Tm(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t NCProtoGetImageForContactResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        v11 = *(type metadata accessor for NCProtoGetImageForContactResponse(0) + 20);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 2)
      {
        closure #2 in NCProtoPullLagunaSessionToTVRequest.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for NCProtoGetImageForContactResponse, lazy protocol witness table accessor for type NCProtoContactImageType and conformance NCProtoContactImageType);
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in NCProtoPullLagunaSessionToTVRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void))
{
  v7 = *(a5(0) + 24);
  a6();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t NCProtoGetImageForContactResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in NCProtoGetImageForContactResponse.traverse<A>(visitor:)(v3);
  if (!v4)
  {
    closure #1 in NCProtoPullLagunaSessionToTVRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoGetImageForContactResponse, lazy protocol witness table accessor for type NCProtoContactImageType and conformance NCProtoContactImageType);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NCProtoGetImageForContactResponse.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoGetImageForContactResponse(0);
  v3 = a1 + *(result + 20);
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

uint64_t closure #1 in NCProtoPullLagunaSessionToTVRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t))
{
  result = a5(0);
  v10 = (a1 + *(result + 24));
  if ((*(v10 + 9) & 1) == 0)
  {
    v11 = *v10;
    v12 = v10[1] & 1;
    a6(result, v9);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

double protocol witness for Message.init() in conformance NCProtoGetImageForContactResponse@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = xmmword_2255D3AC0;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 256;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoGetImageForContactResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetImageForContactResponse and conformance NCProtoGetImageForContactResponse, type metadata accessor for NCProtoGetImageForContactResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoGetImageForContactResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetImageForContactResponse and conformance NCProtoGetImageForContactResponse, type metadata accessor for NCProtoGetImageForContactResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoGetImageForContactResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetImageForContactResponse and conformance NCProtoGetImageForContactResponse, type metadata accessor for NCProtoGetImageForContactResponse);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoAddConversationParticipantsRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddConversationParticipantsRequest and conformance NCProtoAddConversationParticipantsRequest, type metadata accessor for NCProtoAddConversationParticipantsRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoAddConversationParticipantsRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddConversationParticipantsRequest and conformance NCProtoAddConversationParticipantsRequest, type metadata accessor for NCProtoAddConversationParticipantsRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoAddConversationParticipantsRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddConversationParticipantsRequest and conformance NCProtoAddConversationParticipantsRequest, type metadata accessor for NCProtoAddConversationParticipantsRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoAddConversationParticipantsResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddConversationParticipantsResponse and conformance NCProtoAddConversationParticipantsResponse, type metadata accessor for NCProtoAddConversationParticipantsResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoAddConversationParticipantsResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddConversationParticipantsResponse and conformance NCProtoAddConversationParticipantsResponse, type metadata accessor for NCProtoAddConversationParticipantsResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoAddConversationParticipantsResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAddConversationParticipantsResponse and conformance NCProtoAddConversationParticipantsResponse, type metadata accessor for NCProtoAddConversationParticipantsResponse);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoGetCallDisplayDetailsRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetCallDisplayDetailsRequest and conformance NCProtoGetCallDisplayDetailsRequest, type metadata accessor for NCProtoGetCallDisplayDetailsRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoGetCallDisplayDetailsRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetCallDisplayDetailsRequest and conformance NCProtoGetCallDisplayDetailsRequest, type metadata accessor for NCProtoGetCallDisplayDetailsRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoGetCallDisplayDetailsRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetCallDisplayDetailsRequest and conformance NCProtoGetCallDisplayDetailsRequest, type metadata accessor for NCProtoGetCallDisplayDetailsRequest);

  return Message.hash(into:)();
}

uint64_t closure #1 in NCProtoGetCallDisplayDetailsResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoGetCallDisplayDetailsResponse(0) + 20);
  type metadata accessor for NCProtoCallInfo(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in NCProtoGetCallDisplayDetailsResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NCProtoCallInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NCProtoGetCallDisplayDetailsResponse(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v14 + 20), v8, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v8, v13, type metadata accessor for NCProtoCallInfo);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallInfo and conformance NCProtoCallInfo, type metadata accessor for NCProtoCallInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v13, type metadata accessor for NCProtoCallInfo);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoGetCallDisplayDetailsResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetCallDisplayDetailsResponse and conformance NCProtoGetCallDisplayDetailsResponse, type metadata accessor for NCProtoGetCallDisplayDetailsResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoGetCallDisplayDetailsResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetCallDisplayDetailsResponse and conformance NCProtoGetCallDisplayDetailsResponse, type metadata accessor for NCProtoGetCallDisplayDetailsResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoGetCallDisplayDetailsResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetCallDisplayDetailsResponse and conformance NCProtoGetCallDisplayDetailsResponse, type metadata accessor for NCProtoGetCallDisplayDetailsResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoDestinationCapabilities.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t NCProtoDestinationCapabilities.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
  {
    if (v0[1] != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
    {
      if (v0[2] != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
      {
        v3 = &v0[*(type metadata accessor for NCProtoDestinationCapabilities(0) + 28)];
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoDestinationCapabilities@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = 0;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoDestinationCapabilities(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDestinationCapabilities and conformance NCProtoDestinationCapabilities, type metadata accessor for NCProtoDestinationCapabilities);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoDestinationCapabilities(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDestinationCapabilities and conformance NCProtoDestinationCapabilities, type metadata accessor for NCProtoDestinationCapabilities);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoDestinationCapabilities()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDestinationCapabilities and conformance NCProtoDestinationCapabilities, type metadata accessor for NCProtoDestinationCapabilities);

  return Message.hash(into:)();
}

uint64_t NCProtoPullLagunaSessionToTVRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
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
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      closure #2 in NCProtoPullLagunaSessionToTVRequest.decodeMessage<A>(decoder:)(a1, v9, a2, a3, a4, a5);
    }
  }

  return result;
}

uint64_t NCProtoPullLagunaSessionToTVRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t (*a7)(void))
{
  v15 = *v7;
  v16 = v7[1];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v8))
  {
    result = closure #1 in NCProtoPullLagunaSessionToTVRequest.traverse<A>(visitor:)(v7, a1, a2, a3, a4, a5);
    if (!v8)
    {
      v19 = v7 + *(a7(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoPullLagunaSessionToTVRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v4 = a2 + *(a1 + 20);
  result = UnknownStorage.init()();
  v6 = a2 + *(a1 + 24);
  *v6 = 0;
  *(v6 + 4) = 256;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoGetDestinationCapabilitiesRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest and conformance NCProtoGetDestinationCapabilitiesRequest, type metadata accessor for NCProtoGetDestinationCapabilitiesRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoGetDestinationCapabilitiesRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest and conformance NCProtoGetDestinationCapabilitiesRequest, type metadata accessor for NCProtoGetDestinationCapabilitiesRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoGetDestinationCapabilitiesRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesRequest and conformance NCProtoGetDestinationCapabilitiesRequest, type metadata accessor for NCProtoGetDestinationCapabilitiesRequest);

  return Message.hash(into:)();
}

uint64_t closure #1 in NCProtoGetDestinationCapabilitiesResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoGetDestinationCapabilitiesResponse(0) + 20);
  type metadata accessor for NCProtoDestinationCapabilities(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDestinationCapabilities and conformance NCProtoDestinationCapabilities, type metadata accessor for NCProtoDestinationCapabilities);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in NCProtoGetDestinationCapabilitiesResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NCProtoDestinationCapabilities(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  DestinationCapabilitiesResponse = type metadata accessor for NCProtoGetDestinationCapabilitiesResponse(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(DestinationCapabilitiesResponse + 20), v8, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v8, v13, type metadata accessor for NCProtoDestinationCapabilities);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDestinationCapabilities and conformance NCProtoDestinationCapabilities, type metadata accessor for NCProtoDestinationCapabilities);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v13, type metadata accessor for NCProtoDestinationCapabilities);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoGetDestinationCapabilitiesResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesResponse and conformance NCProtoGetDestinationCapabilitiesResponse, type metadata accessor for NCProtoGetDestinationCapabilitiesResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoGetDestinationCapabilitiesResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesResponse and conformance NCProtoGetDestinationCapabilitiesResponse, type metadata accessor for NCProtoGetDestinationCapabilitiesResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoGetDestinationCapabilitiesResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoGetDestinationCapabilitiesResponse and conformance NCProtoGetDestinationCapabilitiesResponse, type metadata accessor for NCProtoGetDestinationCapabilitiesResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoIncomingCallBannerActionRequest.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          v3 = *(type metadata accessor for NCProtoIncomingCallBannerActionRequest(0) + 28);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          lazy protocol witness table accessor for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t NCProtoIncomingCallBannerActionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v12 = *v3, v13 = *(v3 + 8), lazy protocol witness table accessor for type NCProtoIncomingCallBannerActionRequest.Action and conformance NCProtoIncomingCallBannerActionRequest.Action(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v9 = *(v3 + 24);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      result = closure #2 in NCProtoActiveConversation.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoIncomingCallBannerActionRequest);
      if (!v4)
      {
        v11 = v3 + *(type metadata accessor for NCProtoIncomingCallBannerActionRequest(0) + 24);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoIncomingCallBannerActionRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  v4 = a2 + *(a1 + 24);
  result = UnknownStorage.init()();
  v6 = (a2 + *(a1 + 28));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NCProtoAddressableContact@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NCProtoAddressableContact(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoIncomingCallBannerActionRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest and conformance NCProtoIncomingCallBannerActionRequest, type metadata accessor for NCProtoIncomingCallBannerActionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoIncomingCallBannerActionRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest and conformance NCProtoIncomingCallBannerActionRequest, type metadata accessor for NCProtoIncomingCallBannerActionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoIncomingCallBannerActionRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionRequest and conformance NCProtoIncomingCallBannerActionRequest, type metadata accessor for NCProtoIncomingCallBannerActionRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoIncomingCallBannerActionResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionResponse and conformance NCProtoIncomingCallBannerActionResponse, type metadata accessor for NCProtoIncomingCallBannerActionResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoIncomingCallBannerActionResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionResponse and conformance NCProtoIncomingCallBannerActionResponse, type metadata accessor for NCProtoIncomingCallBannerActionResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoIncomingCallBannerActionResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIncomingCallBannerActionResponse and conformance NCProtoIncomingCallBannerActionResponse, type metadata accessor for NCProtoIncomingCallBannerActionResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoCallState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          closure #3 in NCProtoCallState.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for NCProtoCallState, lazy protocol witness table accessor for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode);
        }

        else if (result == 4)
        {
          v11 = v4;
          v14 = *(type metadata accessor for NCProtoCallState(0) + 32);
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = v4;
          v12 = *(type metadata accessor for NCProtoCallState(0) + 20);
LABEL_5:
          v4 = v11;
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_6;
        }

        if (result == 2)
        {
          v11 = v4;
          v13 = *(type metadata accessor for NCProtoCallState(0) + 24);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t NCProtoCallState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in NCProtoCallState.traverse<A>(visitor:)(v3);
  if (!v4)
  {
    closure #1 in NCProtoTransferActiveConversationRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoCallState);
    closure #3 in NCProtoCallState.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoCallState, lazy protocol witness table accessor for type NCProtoConversationAVMode and conformance NCProtoConversationAVMode);
    closure #4 in NCProtoCallState.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoCallState);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NCProtoCallState.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoCallState(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoCallState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 8) = 256;
  *(a2 + v6) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoCallState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoCallState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoCallState()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState);

  return Message.hash(into:)();
}

uint64_t NCProtoCallStateRequest.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v2 == v2 >> 32)
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

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = v0 + *(type metadata accessor for NCProtoCallStateRequest(0) + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t static NCProtoCallStateRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for NCProtoCallStateRequest(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance NCProtoCallStateRequest@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_2255D3AB0;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoCallStateRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallStateRequest and conformance NCProtoCallStateRequest, type metadata accessor for NCProtoCallStateRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoCallStateRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallStateRequest and conformance NCProtoCallStateRequest, type metadata accessor for NCProtoCallStateRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoCallStateRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallStateRequest and conformance NCProtoCallStateRequest, type metadata accessor for NCProtoCallStateRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NCProtoCallStateRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t NCProtoSuggestionAdvertisementDidChangeEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
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
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in NCProtoCallStateResponse.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoCallStateResponse(0) + 20);
  type metadata accessor for NCProtoCallState(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t NCProtoSuggestionAdvertisementDidChangeEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v4, a1, a2, a3);
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NCProtoCallStateResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for NCProtoCallStateResponse(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v14 + 20), v8, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v8, v13, type metadata accessor for NCProtoCallState);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v13, type metadata accessor for NCProtoCallState);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoCallStateResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallStateResponse and conformance NCProtoCallStateResponse, type metadata accessor for NCProtoCallStateResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoCallStateResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallStateResponse and conformance NCProtoCallStateResponse, type metadata accessor for NCProtoCallStateResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoCallStateResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallStateResponse and conformance NCProtoCallStateResponse, type metadata accessor for NCProtoCallStateResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoDeviceTokenRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        closure #2 in NCProtoDeviceTokenRequest.decodeMessage<A>(decoder:)();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          closure #3 in NCProtoDeviceTokenRequest.decodeMessage<A>(decoder:)();
          break;
        case 4:
          v3 = *(type metadata accessor for NCProtoDeviceTokenRequest(0) + 32);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 5:
          closure #5 in NCProtoDeviceTokenRequest.decodeMessage<A>(decoder:)();
          break;
      }
    }
  }

  return result;
}

uint64_t closure #2 in NCProtoDeviceTokenRequest.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoDeviceTokenRequest(0) + 24);
  type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo and conformance NCProtoMemberAssociationPrimaryInfo, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in NCProtoDeviceTokenRequest.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoDeviceTokenRequest(0) + 28);
  type metadata accessor for NCProtoCallState(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #5 in NCProtoDeviceTokenRequest.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for NCProtoDeviceTokenRequest(0) + 36);
  lazy protocol witness table accessor for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t NCProtoDeviceTokenRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = closure #1 in NCProtoDeviceTokenRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in NCProtoDeviceTokenRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
      closure #4 in NCProtoCallState.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoDeviceTokenRequest);
      closure #4 in NCProtoDeviceTokenRequest.traverse<A>(visitor:)(v3);
      v12 = v3 + *(type metadata accessor for NCProtoDeviceTokenRequest(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in NCProtoDeviceTokenRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NCProtoDeviceTokenRequest(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v14 + 24), v8, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v8, v13, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo and conformance NCProtoMemberAssociationPrimaryInfo, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v13, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
}

uint64_t closure #2 in NCProtoDeviceTokenRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for NCProtoDeviceTokenRequest(0);
  outlined init with copy of NCProtoContactInfo?(a1 + *(v14 + 28), v8, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  }

  outlined init with take of NCProtoContactInfo(v8, v13, type metadata accessor for NCProtoCallState);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoCallState and conformance NCProtoCallState, type metadata accessor for NCProtoCallState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of NCProtoContactInfo(v13, type metadata accessor for NCProtoCallState);
}

uint64_t closure #4 in NCProtoCallState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in NCProtoDeviceTokenRequest.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoDeviceTokenRequest(0);
  v3 = (a1 + *(result + 36));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    lazy protocol witness table accessor for type NCProtoDeviceTokenRequest.ConversationHandoffType and conformance NCProtoDeviceTokenRequest.ConversationHandoffType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoDeviceTokenRequest@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[6];
  v6 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for NCProtoCallState(0);
  result = (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v10 = a1[9];
  a2[a1[8]] = 2;
  v11 = &a2[v10];
  *v11 = 0;
  *(v11 + 4) = 256;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoDeviceTokenRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest and conformance NCProtoDeviceTokenRequest, type metadata accessor for NCProtoDeviceTokenRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoDeviceTokenRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest and conformance NCProtoDeviceTokenRequest, type metadata accessor for NCProtoDeviceTokenRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoDeviceTokenRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeviceTokenRequest and conformance NCProtoDeviceTokenRequest, type metadata accessor for NCProtoDeviceTokenRequest);

  return Message.hash(into:)();
}

uint64_t NCProtoDeviceTokenResponse.decodeMessage<A>(decoder:)()
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
      v3 = *(type metadata accessor for NCProtoDeviceTokenResponse(0) + 24);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t NCProtoDeviceTokenResponse.traverse<A>(visitor:)()
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
    result = closure #1 in NCProtoDeviceTokenResponse.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      v6 = v0 + *(type metadata accessor for NCProtoDeviceTokenResponse(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in NCProtoDeviceTokenResponse.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoDeviceTokenResponse(0);
  v3 = a1 + *(result + 24);
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

double protocol witness for Message.init() in conformance NCProtoDeviceTokenResponse@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v4 = a2 + *(a1 + 20);
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 24)) = xmmword_2255D3AC0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoDeviceTokenResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeviceTokenResponse and conformance NCProtoDeviceTokenResponse, type metadata accessor for NCProtoDeviceTokenResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoDeviceTokenResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeviceTokenResponse and conformance NCProtoDeviceTokenResponse, type metadata accessor for NCProtoDeviceTokenResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoDeviceTokenResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDeviceTokenResponse and conformance NCProtoDeviceTokenResponse, type metadata accessor for NCProtoDeviceTokenResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoDisconnectRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          closure #3 in NCProtoCallState.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for NCProtoDisconnectRequest, lazy protocol witness table accessor for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason);
          break;
        case 2:
          v11 = *(type metadata accessor for NCProtoDisconnectRequest(0) + 24);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
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

uint64_t closure #3 in NCProtoCallState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void))
{
  v7 = *(a5(0) + 28);
  a6();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t NCProtoDisconnectRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  result = closure #1 in NCProtoTransferActiveConversationRequest.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoDisconnectRequest);
  if (!v4)
  {
    closure #3 in NCProtoCallState.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoDisconnectRequest, lazy protocol witness table accessor for type NCProtoDisconnectRequest.DisconnectReason and conformance NCProtoDisconnectRequest.DisconnectReason);
    v14 = v3 + *(type metadata accessor for NCProtoDisconnectRequest(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #3 in NCProtoCallState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t))
{
  result = a5(0);
  v10 = (a1 + *(result + 28));
  if ((*(v10 + 9) & 1) == 0)
  {
    v11 = *v10;
    v12 = v10[1] & 1;
    a6(result, v9);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoDisconnectRequest@<X0>(int *a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_2255D3AB0;
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  *(a2 + a1[6]) = 2;
  v7 = a2 + v6;
  *v7 = 0;
  *(v7 + 4) = 256;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoDisconnectRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDisconnectRequest and conformance NCProtoDisconnectRequest, type metadata accessor for NCProtoDisconnectRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoDisconnectRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDisconnectRequest and conformance NCProtoDisconnectRequest, type metadata accessor for NCProtoDisconnectRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoDisconnectRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDisconnectRequest and conformance NCProtoDisconnectRequest, type metadata accessor for NCProtoDisconnectRequest);

  return Message.hash(into:)();
}

uint64_t NCProtoDisconnectResponse.decodeMessage<A>(decoder:)()
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
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t NCProtoDisconnectResponse.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
  {
    v3 = &v0[*(type metadata accessor for NCProtoDisconnectResponse(0) + 20)];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static NCProtoDisconnectResponse.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(type metadata accessor for NCProtoDisconnectResponse(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance NCProtoDisconnectResponse@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v2 = &a2[*(a1 + 20)];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoDisconnectResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDisconnectResponse and conformance NCProtoDisconnectResponse, type metadata accessor for NCProtoDisconnectResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoDisconnectResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDisconnectResponse and conformance NCProtoDisconnectResponse, type metadata accessor for NCProtoDisconnectResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoDisconnectResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoDisconnectResponse and conformance NCProtoDisconnectResponse, type metadata accessor for NCProtoDisconnectResponse);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NCProtoDisconnectResponse(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t NCProtoRingtoneConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = closure #1 in NCProtoRingtoneConfiguration.traverse<A>(visitor:)(v4, a1, a2, a3, a4);
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoPrepareTransferRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPrepareTransferRequest and conformance NCProtoPrepareTransferRequest, type metadata accessor for NCProtoPrepareTransferRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoPrepareTransferRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPrepareTransferRequest and conformance NCProtoPrepareTransferRequest, type metadata accessor for NCProtoPrepareTransferRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoPrepareTransferRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPrepareTransferRequest and conformance NCProtoPrepareTransferRequest, type metadata accessor for NCProtoPrepareTransferRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoPrepareTransferResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPrepareTransferResponse and conformance NCProtoPrepareTransferResponse, type metadata accessor for NCProtoPrepareTransferResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoPrepareTransferResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPrepareTransferResponse and conformance NCProtoPrepareTransferResponse, type metadata accessor for NCProtoPrepareTransferResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoPrepareTransferResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoPrepareTransferResponse and conformance NCProtoPrepareTransferResponse, type metadata accessor for NCProtoPrepareTransferResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoEndedSessionEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
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
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t static NCProtoEndedSessionEvent.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoAudioRouteTransferRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAudioRouteTransferRequest and conformance NCProtoAudioRouteTransferRequest, type metadata accessor for NCProtoAudioRouteTransferRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoAudioRouteTransferRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAudioRouteTransferRequest and conformance NCProtoAudioRouteTransferRequest, type metadata accessor for NCProtoAudioRouteTransferRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoAudioRouteTransferRequest()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAudioRouteTransferRequest and conformance NCProtoAudioRouteTransferRequest, type metadata accessor for NCProtoAudioRouteTransferRequest);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NCProtoEndedSessionEvent(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return _NameMap.init()();
}

uint64_t static NCProtoLagunaConnectionResponse.== infix(_:_:)()
{
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoAudioRouteTransferResponse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAudioRouteTransferResponse and conformance NCProtoAudioRouteTransferResponse, type metadata accessor for NCProtoAudioRouteTransferResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoAudioRouteTransferResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAudioRouteTransferResponse and conformance NCProtoAudioRouteTransferResponse, type metadata accessor for NCProtoAudioRouteTransferResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoAudioRouteTransferResponse()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoAudioRouteTransferResponse and conformance NCProtoAudioRouteTransferResponse, type metadata accessor for NCProtoAudioRouteTransferResponse);

  return Message.hash(into:)();
}

uint64_t NCProtoMemberAssociationPrimaryInfo.decodeMessage<A>(decoder:)()
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
        if (result == 1)
        {
          v5 = v0;
          v7 = *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 24);
          goto LABEL_17;
        }

        if (result == 2)
        {
          v4 = *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 28);
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 32);
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            break;
          case 4:
            v5 = v0;
            v6 = *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 36);
LABEL_17:
            v0 = v5;
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 5:
            lazy protocol witness table accessor for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType();
            dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t NCProtoMemberAssociationPrimaryInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in NCProtoActiveConversation.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  if (!v4)
  {
    closure #1 in NCProtoNearbyCallStatusChangedEvent.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
    closure #3 in NCProtoMemberAssociationPrimaryInfo.traverse<A>(visitor:)(v3);
    closure #4 in NCProtoMemberAssociationPrimaryInfo.traverse<A>(visitor:)(v3);
    v10 = *v3;
    if (*(*v5 + 16))
    {
      lazy protocol witness table accessor for type NCProtoMemberAssociationPrimaryInfo.MemberAssociationType and conformance NCProtoMemberAssociationPrimaryInfo.MemberAssociationType();
      dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)();
    }

    v11 = v5 + *(type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NCProtoNearbyCallStatusChangedEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 28);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    outlined copy of Data._Representation(*v7, *(v7 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v9, v8);
  }

  return result;
}

uint64_t closure #3 in NCProtoMemberAssociationPrimaryInfo.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in NCProtoMemberAssociationPrimaryInfo.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

double protocol witness for Message.init() in conformance NCProtoMemberAssociationPrimaryInfo@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v4 = a2 + a1[5];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = (a2 + a1[6]);
  *v6 = 0;
  v6[1] = 0;
  result = 0.0;
  *(a2 + v5) = xmmword_2255D3AC0;
  v8 = a1[9];
  v9 = a2 + a1[8];
  *v9 = 0;
  v9[8] = 1;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoMemberAssociationPrimaryInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo and conformance NCProtoMemberAssociationPrimaryInfo, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoMemberAssociationPrimaryInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo and conformance NCProtoMemberAssociationPrimaryInfo, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoMemberAssociationPrimaryInfo()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoMemberAssociationPrimaryInfo and conformance NCProtoMemberAssociationPrimaryInfo, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);

  return Message.hash(into:)();
}

uint64_t NCProtoIDSProxyMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #3 in NCProtoIDSProxyMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 2:
        closure #2 in NCProtoIDSProxyMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 1:
        closure #1 in NCProtoIDSProxyMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in NCProtoIDSProxyMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NCProtoIDSProxyMessage.RawData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of NCProtoContactInfo?(a1, v14, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NCProtoContactInfo?(v14, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v14, v22, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    outlined init with take of NCProtoContactInfo(v22, v20, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of NCProtoContactInfo(v20, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
      v33 = v48;
    }

    else
    {
      outlined destroy of NCProtoContactInfo?(v28, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMR);
      v35 = v43;
      outlined init with take of NCProtoContactInfo(v20, v43, type metadata accessor for NCProtoIDSProxyMessage.RawData);
      outlined init with take of NCProtoContactInfo(v35, v28, type metadata accessor for NCProtoIDSProxyMessage.RawData);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.RawData and conformance NCProtoIDSProxyMessage.RawData, type metadata accessor for NCProtoIDSProxyMessage.RawData);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NCProtoContactInfo?(v28, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMR);
  }

  outlined init with copy of NCProtoContactInfo?(v28, v36, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v28, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMR);
    return outlined destroy of NCProtoContactInfo?(v36, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMR);
  }

  else
  {
    v39 = v44;
    outlined init with take of NCProtoContactInfo(v36, v44, type metadata accessor for NCProtoIDSProxyMessage.RawData);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NCProtoContactInfo?(v28, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV7RawDataVSgMR);
    v40 = v42;
    outlined destroy of NCProtoContactInfo?(v42, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    outlined init with take of NCProtoContactInfo(v39, v40, type metadata accessor for NCProtoIDSProxyMessage.RawData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in NCProtoIDSProxyMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of NCProtoContactInfo?(a1, v14, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NCProtoContactInfo?(v14, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v14, v22, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    outlined init with take of NCProtoContactInfo(v22, v20, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NCProtoContactInfo?(v28, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMR);
      v35 = v44;
      outlined init with take of NCProtoContactInfo(v20, v44, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
      outlined init with take of NCProtoContactInfo(v35, v28, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of NCProtoContactInfo(v20, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.GroupUpdate and conformance NCProtoIDSProxyMessage.GroupUpdate, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NCProtoContactInfo?(v28, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMR);
  }

  outlined init with copy of NCProtoContactInfo?(v28, v36, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v28, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMR);
    return outlined destroy of NCProtoContactInfo?(v36, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of NCProtoContactInfo(v36, v43, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NCProtoContactInfo?(v28, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV11GroupUpdateVSgMR);
    v40 = v42;
    outlined destroy of NCProtoContactInfo?(v42, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    outlined init with take of NCProtoContactInfo(v39, v40, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #3 in NCProtoIDSProxyMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NCProtoIDSProxyMessage.Resource(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of NCProtoContactInfo?(a1, v14, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NCProtoContactInfo?(v14, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of NCProtoContactInfo(v14, v22, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    outlined init with take of NCProtoContactInfo(v22, v20, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of NCProtoContactInfo?(v28, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMR);
      v35 = v44;
      outlined init with take of NCProtoContactInfo(v20, v44, type metadata accessor for NCProtoIDSProxyMessage.Resource);
      outlined init with take of NCProtoContactInfo(v35, v28, type metadata accessor for NCProtoIDSProxyMessage.Resource);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of NCProtoContactInfo(v20, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
      v33 = v48;
    }
  }

  v36 = v46;
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.Resource and conformance NCProtoIDSProxyMessage.Resource, type metadata accessor for NCProtoIDSProxyMessage.Resource);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NCProtoContactInfo?(v28, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMR);
  }

  outlined init with copy of NCProtoContactInfo?(v28, v36, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v28, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMR);
    return outlined destroy of NCProtoContactInfo?(v36, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of NCProtoContactInfo(v36, v43, type metadata accessor for NCProtoIDSProxyMessage.Resource);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NCProtoContactInfo?(v28, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV8ResourceVSgMR);
    v40 = v42;
    outlined destroy of NCProtoContactInfo?(v42, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    outlined init with take of NCProtoContactInfo(v39, v40, type metadata accessor for NCProtoIDSProxyMessage.Resource);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t NCProtoIDSProxyMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of NCProtoContactInfo?(v3, &v16 - v10, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in NCProtoIDSProxyMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in NCProtoIDSProxyMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in NCProtoIDSProxyMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  if (!v4)
  {
LABEL_8:
    v15 = v3 + *(type metadata accessor for NCProtoIDSProxyMessage(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in NCProtoIDSProxyMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NCProtoIDSProxyMessage.RawData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo?(a1, v8, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of NCProtoContactInfo(v8, v12, type metadata accessor for NCProtoIDSProxyMessage.RawData);
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.RawData and conformance NCProtoIDSProxyMessage.RawData, type metadata accessor for NCProtoIDSProxyMessage.RawData);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoIDSProxyMessage.RawData);
  }

  result = outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #2 in NCProtoIDSProxyMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo?(a1, v8, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of NCProtoContactInfo(v8, v12, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.GroupUpdate and conformance NCProtoIDSProxyMessage.GroupUpdate, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
  }

  result = outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #3 in NCProtoIDSProxyMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NCProtoIDSProxyMessage.Resource(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NCProtoContactInfo?(a1, v8, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NCProtoContactInfo?(v8, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of NCProtoContactInfo(v8, v12, type metadata accessor for NCProtoIDSProxyMessage.Resource);
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.Resource and conformance NCProtoIDSProxyMessage.Resource, type metadata accessor for NCProtoIDSProxyMessage.Resource);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoIDSProxyMessage.Resource);
  }

  result = outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoIDSProxyMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoIDSProxyMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage and conformance NCProtoIDSProxyMessage, type metadata accessor for NCProtoIDSProxyMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoIDSProxyMessage(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage and conformance NCProtoIDSProxyMessage, type metadata accessor for NCProtoIDSProxyMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoIDSProxyMessage()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage and conformance NCProtoIDSProxyMessage, type metadata accessor for NCProtoIDSProxyMessage);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for protoMessageName(uint64_t a1)
{
  return one-time initialization function for protoMessageName(a1, 0x617461447761522ELL, 0xE800000000000000, static NCProtoIDSProxyMessage.RawData.protoMessageName, &static NCProtoIDSProxyMessage.RawData.protoMessageName[1]);
}

{
  return one-time initialization function for protoMessageName(a1, 0x6372756F7365522ELL, 0xE900000000000065, static NCProtoIDSProxyMessage.Resource.protoMessageName, &static NCProtoIDSProxyMessage.Resource.protoMessageName[1]);
}

{
  return one-time initialization function for protoMessageName(a1, 0x705570756F72472ELL, 0xEC00000065746164, static NCProtoIDSProxyMessage.GroupUpdate.protoMessageName, &static NCProtoIDSProxyMessage.GroupUpdate.protoMessageName[1]);
}

uint64_t NCProtoJoinEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a5(a1, v9, a2, a3);
        break;
      case 2:
        a4(v9 + 16, a2, a3);
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #3 in NCProtoIDSProxyMessage.RawData.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for Google_Protobuf_Value();
  v0 = MEMORY[0x277D215F0];
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, MEMORY[0x277D215F0]);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, v0);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t NCProtoIDSProxyMessage.RawData.traverse<A>(visitor:)()
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
    if (!*(v0[4] + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for Google_Protobuf_Value(), v10 = MEMORY[0x277D215F0], lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, MEMORY[0x277D215F0]), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, v10), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v1))
    {
      v11 = v0 + *(type metadata accessor for NCProtoIDSProxyMessage.RawData(0) + 28);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoIDSProxyMessage.RawData@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_2255D3AB0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21InternalSwiftProtobuf07Google_E6_ValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NCProtoContinuityFavorite@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NCProtoContinuityFavorite(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoIDSProxyMessage.RawData(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.RawData and conformance NCProtoIDSProxyMessage.RawData, type metadata accessor for NCProtoIDSProxyMessage.RawData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoIDSProxyMessage.RawData(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.RawData and conformance NCProtoIDSProxyMessage.RawData, type metadata accessor for NCProtoIDSProxyMessage.RawData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoIDSProxyMessage.RawData()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.RawData and conformance NCProtoIDSProxyMessage.RawData, type metadata accessor for NCProtoIDSProxyMessage.RawData);

  return Message.hash(into:)();
}

uint64_t NCProtoIDSProxyMessage.Resource.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 4)
      {
        closure #4 in NCProtoIDSProxyMessage.Resource.decodeMessage<A>(decoder:)();
      }
    }

    else if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t closure #4 in NCProtoIDSProxyMessage.Resource.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for Google_Protobuf_Value();
  v0 = MEMORY[0x277D215F0];
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, MEMORY[0x277D215F0]);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, v0);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t NCProtoIDSProxyMessage.Resource.traverse<A>(visitor:)()
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
  v13 = v0[5];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v0[4] & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    if (!*(v0[6] + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for Google_Protobuf_Value(), v15 = MEMORY[0x277D215F0], lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, MEMORY[0x277D215F0]), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, v15), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v1))
    {
      v16 = v0 + *(type metadata accessor for NCProtoIDSProxyMessage.Resource(0) + 32);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance NCProtoIDSProxyMessage.Resource@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_2255D3AB0;
  *(a2 + 16) = xmmword_2255D3AB0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21InternalSwiftProtobuf07Google_E6_ValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NCProtoContactHandleAnonym@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NCProtoContactHandleAnonym(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoIDSProxyMessage.Resource(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.Resource and conformance NCProtoIDSProxyMessage.Resource, type metadata accessor for NCProtoIDSProxyMessage.Resource);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoIDSProxyMessage.Resource(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.Resource and conformance NCProtoIDSProxyMessage.Resource, type metadata accessor for NCProtoIDSProxyMessage.Resource);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoIDSProxyMessage.Resource()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.Resource and conformance NCProtoIDSProxyMessage.Resource, type metadata accessor for NCProtoIDSProxyMessage.Resource);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for protoMessageName(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x22AA66730](a2, a3);
  *a4 = 0xD000000000000017;
  *a5 = 0x80000002255E0640;
  return result;
}

uint64_t NCProtoIDSProxyMessage.GroupUpdate.decodeMessage<A>(decoder:)()
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
      case 1:
      case 7:
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 2:
      case 4:
      case 13:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 3:
      case 5:
      case 6:
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        break;
      case 8:
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 9:
      case 10:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
      case 11:
        dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
        break;
      case 12:
        closure #12 in NCProtoIDSProxyMessage.GroupUpdate.decodeMessage<A>(decoder:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #12 in NCProtoIDSProxyMessage.GroupUpdate.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufString();
  type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.ParticipantIDList and conformance NCProtoIDSProxyMessage.ParticipantIDList, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.ParticipantIDList and conformance NCProtoIDSProxyMessage.ParticipantIDList, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t NCProtoIDSProxyMessage.GroupUpdate.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
  {
    v3 = *(v0 + 16);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (!*(v0 + 24) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
      {
        v5 = *(v0 + 40);
        v6 = HIBYTE(v5) & 0xF;
        if ((v5 & 0x2000000000000000) == 0)
        {
          v6 = *(v0 + 32) & 0xFFFFFFFFFFFFLL;
        }

        if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
        {
          if (!*(v0 + 48) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
          {
            if (!*(v0 + 56) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
            {
              if (*(v0 + 64) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
              {
                if (!*(v0 + 72) || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
                {
                  v7 = *(v0 + 80);
                  v8 = *(v0 + 88);
                  v9 = v8 >> 62;
                  if ((v8 >> 62) > 1)
                  {
                    if (v9 != 2)
                    {
                      goto LABEL_30;
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
                        goto LABEL_30;
                      }

                      goto LABEL_29;
                    }

                    v10 = v7;
                    v11 = v7 >> 32;
                  }

                  if (v10 == v11)
                  {
                    goto LABEL_30;
                  }

LABEL_29:
                  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
                  if (v1)
                  {
                    return result;
                  }

LABEL_30:
                  v12 = *(v0 + 96);
                  v13 = *(v0 + 104);
                  v14 = v13 >> 62;
                  if ((v13 >> 62) > 1)
                  {
                    if (v14 != 2)
                    {
                      goto LABEL_39;
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
LABEL_39:
                        if (!*(*(v0 + 112) + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v1))
                        {
                          if (!*(*(v0 + 120) + 16) || (type metadata accessor for ProtobufString(), type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList(0), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.ParticipantIDList and conformance NCProtoIDSProxyMessage.ParticipantIDList, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList), lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.ParticipantIDList and conformance NCProtoIDSProxyMessage.ParticipantIDList, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v1))
                          {
                            v17 = *(v0 + 136);
                            v18 = HIBYTE(v17) & 0xF;
                            if ((v17 & 0x2000000000000000) == 0)
                            {
                              v18 = *(v0 + 128) & 0xFFFFFFFFFFFFLL;
                            }

                            if (!v18 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
                            {
                              v19 = v0 + *(type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0) + 68);
                              return UnknownStorage.traverse<A>(visitor:)();
                            }
                          }
                        }

                        return result;
                      }

LABEL_38:
                      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
                      if (v1)
                      {
                        return result;
                      }

                      goto LABEL_39;
                    }

                    v15 = v12;
                    v16 = v12 >> 32;
                  }

                  if (v15 == v16)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_38;
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

uint64_t protocol witness for Message.init() in conformance NCProtoIDSProxyMessage.GroupUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
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
  v4 = MEMORY[0x277D84F90];
  *(a2 + 104) = 0xC000000000000000;
  *(a2 + 112) = v4;
  *(a2 + 120) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVTt0g5Tf4g_n(v4);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0xE000000000000000;
  v5 = a2 + *(a1 + 68);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance NCProtoIDSProxyMessage.GroupUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NCProtoIDSProxyMessage.GroupUpdate(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 68);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance NCProtoIDSProxyMessage.GroupUpdate(uint64_t a1, uint64_t a2))()
{
  result = NCProtoContactInfo.namePrefix.modify;
  v4 = v2 + *(a2 + 68);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoIDSProxyMessage.GroupUpdate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.GroupUpdate and conformance NCProtoIDSProxyMessage.GroupUpdate, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoIDSProxyMessage.GroupUpdate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.GroupUpdate and conformance NCProtoIDSProxyMessage.GroupUpdate, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoIDSProxyMessage.GroupUpdate()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.GroupUpdate and conformance NCProtoIDSProxyMessage.GroupUpdate, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for protoMessageName()
{
  result = MEMORY[0x22AA66730](0xD000000000000012, 0x80000002255E07A0);
  static NCProtoIDSProxyMessage.ParticipantIDList.protoMessageName = 0xD000000000000017;
  *algn_27D720628 = 0x80000002255E0640;
  return result;
}

uint64_t static NCProtoIDSProxyMessage.RawData.protoMessageName.getter(void *a1, void *a2, void *a3)
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

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2255D3B80;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  v14 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t static NCProtoConversationAVMode._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t NCProtoAddConversationParticipantsRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
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
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t NCProtoAddConversationParticipantsRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (!*(*v5 + 16) || (result = a4(), !v6))
  {
    v9 = v5 + *(a5(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static NCProtoIDSProxyMessage.ParticipantIDList.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    v8 = *(type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList(0) + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int NCProtoContactInfo.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Message.protoMessageName.getter in conformance NCProtoIDSProxyMessage.RawData(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
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

uint64_t protocol witness for Message.unknownFields.getter in conformance NCProtoActiveConversation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance NCProtoActiveConversation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance NCProtoIDSProxyMessage.ParticipantIDList(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.ParticipantIDList and conformance NCProtoIDSProxyMessage.ParticipantIDList, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance NCProtoConversationAVMode@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NCProtoIDSProxyMessage.ParticipantIDList(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.ParticipantIDList and conformance NCProtoIDSProxyMessage.ParticipantIDList, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NCProtoContactInfo()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NCProtoIDSProxyMessage.ParticipantIDList()
{
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type NCProtoIDSProxyMessage.ParticipantIDList and conformance NCProtoIDSProxyMessage.ParticipantIDList, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NCProtoContactInfo()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for NCProtoContactInfo(0) - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetSgMd, &_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v54 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v52 = a2;
  v53 = (&v50 - v16);
  v17 = 0;
  v51 = a1;
  v18 = *(a1 + 64);
  v50 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v55 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v17 << 6);
    v24 = v54;
LABEL_16:
    v29 = (*(v51 + 48) + 16 * v23);
    v30 = *v29;
    v31 = v29[1];
    outlined init with copy of NCProtoContactInfo(*(v51 + 56) + *(v4 + 72) * v23, v10, type metadata accessor for NCProtoContactInfo);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetMR);
    v33 = *(v32 + 48);
    *v24 = v30;
    v24[1] = v31;
    outlined init with take of NCProtoContactInfo(v10, v24 + v33, type metadata accessor for NCProtoContactInfo);
    (*(*(v32 - 8) + 56))(v24, 0, 1, v32);

LABEL_17:
    v34 = v53;
    outlined init with take of (key: String, value: NCProtoCallInfo)?(v24, v53, &_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetSgMd, &_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetSgMR);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetMR);
    v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = v10;
    v39 = v4;
    v40 = *(v35 + 48);
    v42 = *v34;
    v41 = v34[1];
    outlined init with take of NCProtoContactInfo(v34 + v40, v8, type metadata accessor for NCProtoContactInfo);
    v43 = v52;
    v44 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v41);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoContactInfo);
      return 0;
    }

    v47 = *(v43 + 56);
    v4 = v39;
    v10 = v38;
    outlined init with copy of NCProtoContactInfo(v47 + *(v39 + 72) * v44, v38, type metadata accessor for NCProtoContactInfo);
    v48 = specialized static NCProtoContactInfo.== infix(_:_:)(v38, v8);
    outlined destroy of NCProtoContactInfo(v38, type metadata accessor for NCProtoContactInfo);
    result = outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoContactInfo);
    v21 = v55;
    if ((v48 & 1) == 0)
    {
      return v37;
    }
  }

  if (v22 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v25 - 1;
  v24 = v54;
  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v22)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit18NCProtoContactInfoV5valuetMR);
      (*(*(v49 - 8) + 56))(v24, 1, 1, v49);
      v55 = 0;
      v17 = v26;
      goto LABEL_17;
    }

    v28 = *(v50 + 8 * v27);
    ++v17;
    if (v28)
    {
      v55 = (v28 - 1) & v28;
      v23 = __clz(__rbit64(v28)) | (v27 << 6);
      v17 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoCallInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v51 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetSgMd, &_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v55 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = a2;
  v54 = (&v51 - v17);
  v18 = 0;
  v52 = a1;
  v19 = *(a1 + 64);
  v51 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  while (v22)
  {
    v56 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v18 << 6);
    v25 = v55;
LABEL_16:
    v30 = (*(v52 + 48) + 16 * v24);
    v31 = *v30;
    v32 = v30[1];
    outlined init with copy of NCProtoContactInfo(*(v52 + 56) + *(v5 + 72) * v24, v11, type metadata accessor for NCProtoCallInfo);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetMR);
    v34 = *(v33 + 48);
    *v25 = v31;
    v25[1] = v32;
    outlined init with take of NCProtoContactInfo(v11, v25 + v34, type metadata accessor for NCProtoCallInfo);
    (*(*(v33 - 8) + 56))(v25, 0, 1, v33);

LABEL_17:
    v35 = v54;
    outlined init with take of (key: String, value: NCProtoCallInfo)?(v25, v54, &_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetSgMd, &_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetSgMR);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetMR);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = v11;
    v40 = v5;
    v41 = *(v36 + 48);
    v43 = *v35;
    v42 = v35[1];
    outlined init with take of NCProtoContactInfo(v35 + v41, v9, type metadata accessor for NCProtoCallInfo);
    v44 = v53;
    v45 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v42);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoCallInfo);
      return 0;
    }

    v48 = *(v44 + 56);
    v5 = v40;
    v11 = v39;
    outlined init with copy of NCProtoContactInfo(v48 + *(v40 + 72) * v45, v39, type metadata accessor for NCProtoCallInfo);
    v49 = specialized static NCProtoCallInfo.== infix(_:_:)(v39, v9);
    outlined destroy of NCProtoContactInfo(v39, type metadata accessor for NCProtoCallInfo);
    result = outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoCallInfo);
    v22 = v56;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v23 <= v18 + 1)
  {
    v26 = v18 + 1;
  }

  else
  {
    v26 = v23;
  }

  v27 = v26 - 1;
  v25 = v55;
  while (1)
  {
    v28 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit15NCProtoCallInfoV5valuetMR);
      (*(*(v50 - 8) + 56))(v25, 1, 1, v50);
      v56 = 0;
      v18 = v27;
      goto LABEL_17;
    }

    v29 = *(v51 + 8 * v28);
    ++v18;
    if (v29)
    {
      v56 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v18 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_21InternalSwiftProtobuf07Google_D6_ValueVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Google_Protobuf_Value();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetSgMd, &_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  result = MEMORY[0x28223BE20](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetMd, &_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetMR);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    outlined init with take of (key: String, value: NCProtoCallInfo)?(v22, v56, &_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetSgMd, &_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetSgMR);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetMd, &_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetMR);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type Google_Protobuf_Value and conformance Google_Protobuf_Value, MEMORY[0x277D215F0]);
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetMd, &_sSS3key_21InternalSwiftProtobuf07Google_D6_ValueV5valuetMR);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVTt1g5(uint64_t a1, uint64_t a2)
{
  v62 = type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList(0);
  v67 = *(v62 - 8);
  v4 = *(v67 + 64);
  v5 = MEMORY[0x28223BE20](v62);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v60 - v9;
  MEMORY[0x28223BE20](v8);
  v64 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetSgMd, &_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v66 = (&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v14);
  v65 = (&v60 - v17);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v18 = 0;
  v19 = *(a1 + 64);
  v60 = a1 + 64;
  v61 = a1;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  while (v22)
  {
    v63 = (v22 - 1) & v22;
    v26 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_17:
    v31 = *(a1 + 56);
    v32 = (*(a1 + 48) + 16 * v26);
    v34 = *v32;
    v33 = v32[1];
    v35 = v64;
    outlined init with copy of NCProtoContactInfo(v31 + *(v67 + 72) * v26, v64, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetMR);
    v37 = *(v36 + 48);
    v38 = v66;
    *v66 = v34;
    v38[1] = v33;
    v39 = v38;
    outlined init with take of NCProtoContactInfo(v35, v38 + v37, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
    (*(*(v36 - 8) + 56))(v39, 0, 1, v36);

LABEL_18:
    v40 = v39;
    v41 = v65;
    outlined init with take of (key: String, value: NCProtoCallInfo)?(v40, v65, &_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetSgMd, &_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetSgMR);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetMR);
    v43 = (*(*(v42 - 8) + 48))(v41, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v45 = v7;
    v46 = v67;
    v47 = *(v42 + 48);
    v48 = v41;
    v49 = *v41;
    v50 = v41[1];
    outlined init with take of NCProtoContactInfo(v48 + v47, v10, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v50);
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      goto LABEL_30;
    }

    v7 = v45;
    outlined init with copy of NCProtoContactInfo(*(a2 + 56) + *(v46 + 72) * v51, v45, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
    v54 = *v45;
    v55 = *v10;
    v56 = *(*v45 + 16);
    if (v56 != *(*v10 + 16))
    {
      goto LABEL_29;
    }

    if (v56 && v54 != v55)
    {
      v57 = (v54 + 32);
      v58 = (v55 + 32);
      while (*v57 == *v58)
      {
        ++v57;
        ++v58;
        if (!--v56)
        {
          goto LABEL_6;
        }
      }

LABEL_29:
      outlined destroy of NCProtoContactInfo(v45, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
LABEL_30:
      outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
      return 0;
    }

LABEL_6:
    v24 = *(v62 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of NCProtoContactInfo(v45, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
    result = outlined destroy of NCProtoContactInfo(v10, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
    a1 = v61;
    v22 = v63;
    if ((v25 & 1) == 0)
    {
      return v44;
    }
  }

  if (v23 <= v18 + 1)
  {
    v27 = v18 + 1;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 - 1;
  while (1)
  {
    v29 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v29 >= v23)
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetMd, &_sSS3key_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListV5valuetMR);
      v39 = v66;
      (*(*(v59 - 8) + 56))(v66, 1, 1, v59);
      v63 = 0;
      v18 = v28;
      goto LABEL_18;
    }

    v30 = *(v60 + 8 * v29);
    ++v18;
    if (v30)
    {
      v63 = (v30 - 1) & v30;
      v26 = __clz(__rbit64(v30)) | (v29 << 6);
      v18 = v29;
      goto LABEL_17;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
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
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
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
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x22AA661C0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x22AA661C0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoAddressableContactV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v5 = *(v4 - 8);
  v103 = v4;
  v104 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v88 - v10);
  v12 = type metadata accessor for NCProtoContactInfo(0);
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v88 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v102 = &v88 - v23;
  v24 = type metadata accessor for NCProtoAddressableContact(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v26);
  v105 = (&v88 - v31);
  v32 = *(a1 + 16);
  if (v32 != *(a2 + 16))
  {
LABEL_110:
    v84 = 0;
    return v84 & 1;
  }

  if (!v32 || a1 == a2)
  {
    v84 = 1;
    return v84 & 1;
  }

  v97 = *(a1 + 16);
  v98 = v29;
  v88 = 0;
  v89 = v16;
  v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v34 = a1 + v33;
  v94 = a2 + v33;
  v95 = v21;
  v92 = v12;
  v93 = (v13 + 48);
  v35 = 0;
  v36 = *(v30 + 72);
  v101 = v28;
  v37 = v105;
  v90 = v36;
  v91 = v34;
  while (1)
  {
    v38 = v36 * v35;
    result = outlined init with copy of NCProtoContactInfo(v34 + v36 * v35, v37, type metadata accessor for NCProtoAddressableContact);
    if (v35 == v97)
    {
      goto LABEL_114;
    }

    v96 = v35;
    outlined init with copy of NCProtoContactInfo(v94 + v38, v28, type metadata accessor for NCProtoAddressableContact);
    v40 = *(v98 + 28);
    v41 = *(v95 + 48);
    v42 = v102;
    outlined init with copy of NCProtoContactInfo?(v37 + v40, v102, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
    outlined init with copy of NCProtoContactInfo?(v28 + v40, v42 + v41, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
    v43 = *v93;
    if ((*v93)(v42, 1, v12) == 1)
    {
      if (v43(v42 + v41, 1, v12) != 1)
      {
        goto LABEL_107;
      }

      result = outlined destroy of NCProtoContactInfo?(v42, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
      goto LABEL_70;
    }

    outlined init with copy of NCProtoContactInfo?(v42, v20, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
    if (v43(v42 + v41, 1, v12) == 1)
    {
      outlined destroy of NCProtoContactInfo(v20, type metadata accessor for NCProtoContactInfo);
LABEL_107:
      v85 = &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMd;
      v86 = &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMR;
      v87 = v42;
      goto LABEL_108;
    }

    v44 = v89;
    outlined init with take of NCProtoContactInfo(v42 + v41, v89, type metadata accessor for NCProtoContactInfo);
    if ((*v20 != *v44 || v20[1] != v44[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v20[2] != v44[2] || v20[3] != v44[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v20[4] != v44[4] || v20[5] != v44[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v20[6] != v44[6] || v20[7] != v44[7]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v20[8] != v44[8] || v20[9] != v44[9]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((result = v20[10], result != v44[10]) || v20[11] != v44[11]) && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_105:
      outlined destroy of NCProtoContactInfo(v44, type metadata accessor for NCProtoContactInfo);
      outlined destroy of NCProtoContactInfo(v20, type metadata accessor for NCProtoContactInfo);
      v85 = &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd;
      v86 = &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR;
      v87 = v102;
LABEL_108:
      outlined destroy of NCProtoContactInfo?(v87, v85, v86);
LABEL_109:
      outlined destroy of NCProtoContactInfo(v101, type metadata accessor for NCProtoAddressableContact);
      outlined destroy of NCProtoContactInfo(v105, type metadata accessor for NCProtoAddressableContact);
      goto LABEL_110;
    }

    v46 = v20[12];
    v45 = v20[13];
    v48 = v44[12];
    v47 = v44[13];
    v49 = v45 >> 62;
    v50 = v47 >> 62;
    if (v45 >> 62 == 3)
    {
      v51 = 0;
      if (!v46 && v45 == 0xC000000000000000 && v47 >> 62 == 3)
      {
        v51 = 0;
        if (!v48 && v47 == 0xC000000000000000)
        {
          goto LABEL_55;
        }
      }
    }

    else if (v49)
    {
      if (v49 == 1)
      {
        LODWORD(v51) = HIDWORD(v46) - v46;
        if (__OFSUB__(HIDWORD(v46), v46))
        {
          goto LABEL_118;
        }

        v51 = v51;
      }

      else
      {
        v53 = *(v46 + 16);
        v52 = *(v46 + 24);
        v54 = __OFSUB__(v52, v53);
        v51 = v52 - v53;
        if (v54)
        {
          goto LABEL_117;
        }
      }
    }

    else
    {
      v51 = BYTE6(v45);
    }

    if (v50 <= 1)
    {
      if (v50)
      {
        LODWORD(v55) = HIDWORD(v48) - v48;
        if (__OFSUB__(HIDWORD(v48), v48))
        {
          goto LABEL_116;
        }

        v55 = v55;
      }

      else
      {
        v55 = BYTE6(v47);
      }

LABEL_50:
      if (v51 != v55)
      {
        goto LABEL_105;
      }

      if (v51 >= 1)
      {
        outlined copy of Data._Representation(v44[12], v44[13]);
        v58 = v47;
        v59 = v88;
        v60 = specialized Data.withUnsafeBytes<A>(_:)(v46, v45, v48, v58);
        v88 = v59;
        if ((v60 & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_55;
    }

    if (v50 == 2)
    {
      v57 = *(v48 + 16);
      v56 = *(v48 + 24);
      v54 = __OFSUB__(v56, v57);
      v55 = v56 - v57;
      if (v54)
      {
        goto LABEL_115;
      }

      goto LABEL_50;
    }

    if (v51)
    {
      goto LABEL_105;
    }

LABEL_55:
    v61 = v12[12];
    v62 = (v20 + v61);
    v63 = *(v20 + v61 + 8);
    v64 = (v44 + v61);
    v65 = v64[1];
    if (v63)
    {
      if (!v65 || (*v62 != *v64 || v63 != v65) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_105;
      }
    }

    else if (v65)
    {
      goto LABEL_105;
    }

    v66 = v12[13];
    v67 = (v20 + v66);
    v68 = *(v20 + v66 + 8);
    v69 = (v44 + v66);
    v70 = v69[1];
    if (v68)
    {
      if (!v70 || (*v67 != *v69 || v68 != v70) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_105;
      }
    }

    else if (v70)
    {
      goto LABEL_105;
    }

    v71 = v12[11];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v72 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of NCProtoContactInfo(v44, type metadata accessor for NCProtoContactInfo);
    outlined destroy of NCProtoContactInfo(v20, type metadata accessor for NCProtoContactInfo);
    result = outlined destroy of NCProtoContactInfo?(v102, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
    if ((v72 & 1) == 0)
    {
      goto LABEL_109;
    }

LABEL_70:
    v73 = *v105;
    v74 = *v101;
    v75 = *(*v105 + 16);
    if (v75 != *(*v101 + 16))
    {
      goto LABEL_109;
    }

    if (v75 && v73 != v74)
    {
      break;
    }

LABEL_97:
    if ((v105[1] != v101[1] || v105[2] != v101[2]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_109;
    }

    v83 = *(v98 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v37 = v105;
    v28 = v101;
    v84 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of NCProtoContactInfo(v28, type metadata accessor for NCProtoAddressableContact);
    outlined destroy of NCProtoContactInfo(v37, type metadata accessor for NCProtoAddressableContact);
    if (v84)
    {
      v35 = v96 + 1;
      v34 = v91;
      v12 = v92;
      v36 = v90;
      if (v96 + 1 != v97)
      {
        continue;
      }
    }

    return v84 & 1;
  }

  v76 = 0;
  v77 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v99 = v74 + v77;
  v100 = v73 + v77;
  while (v76 < *(v73 + 16))
  {
    v78 = *(v104 + 72) * v76;
    result = outlined init with copy of NCProtoContactInfo(v100 + v78, v11, type metadata accessor for NCProtoContactHandleAnonym);
    if (v76 >= *(v74 + 16))
    {
      goto LABEL_113;
    }

    outlined init with copy of NCProtoContactInfo(v99 + v78, v9, type metadata accessor for NCProtoContactHandleAnonym);
    if ((*v11 != *v9 || v11[1] != *(v9 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_104;
    }

    v79 = v11[2];
    v80 = *(v9 + 2);
    if (v9[24] == 1)
    {
      if (v80)
      {
        if (v80 == 1)
        {
          if (v79 != 1)
          {
            goto LABEL_104;
          }
        }

        else if (v79 != 2)
        {
          goto LABEL_104;
        }
      }

      else if (v79)
      {
        goto LABEL_104;
      }
    }

    else if (v79 != v80)
    {
      goto LABEL_104;
    }

    if ((v11[4] != *(v9 + 4) || v11[5] != *(v9 + 5)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v11[6] != *(v9 + 6) || v11[7] != *(v9 + 7)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_104:
      outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoContactHandleAnonym);
      outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoContactHandleAnonym);
      goto LABEL_109;
    }

    v81 = *(v103 + 32);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v82 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoContactHandleAnonym);
    result = outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoContactHandleAnonym);
    if ((v82 & 1) == 0)
    {
      goto LABEL_109;
    }

    if (v75 == ++v76)
    {
      goto LABEL_97;
    }
  }

  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit21NCProtoContinuityCallV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoContinuityCall(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of NCProtoContactInfo(v14, v11, type metadata accessor for NCProtoContinuityCall);
      outlined init with copy of NCProtoContactInfo(v15, v8, type metadata accessor for NCProtoContinuityCall);
      v17 = *(v4 + 20);
      v18 = *&v11[v17];
      v19 = *&v8[v17];
      if (v18 != v19)
      {
        v20 = *&v11[v17];

        v21 = closure #1 in static NCProtoContinuityCall.== infix(_:_:)(v18, v19);

        if (!v21)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoContinuityCall);
      outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoContinuityCall);
      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoContinuityCall);
    outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoContinuityCall);
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      while (1)
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v4 >> 62;
        v11 = *v5 >> 62;
        if (v10 == 3)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v20 = *(v7 + 16);
            v19 = *(v7 + 24);
            v17 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

          v13 = 0;
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

        else if (v10)
        {
          LODWORD(v13) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_64;
          }

          v13 = v13;
          if (v11 <= 1)
          {
LABEL_29:
            if (v11)
            {
              LODWORD(v18) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v8);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v13 = BYTE6(v6);
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

LABEL_22:
        if (v11 != 2)
        {
          if (v13)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_62;
        }

LABEL_33:
        if (v13 != v18)
        {
          goto LABEL_58;
        }

        if (v13 < 1)
        {
          goto LABEL_6;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v32 = v3;
            v21 = *(v7 + 16);
            v31 = *(v7 + 24);
            outlined copy of Data._Representation(v7, v6);
            outlined copy of Data._Representation(v9, v8);
            v22 = __DataStorage._bytes.getter();
            if (v22)
            {
              v23 = __DataStorage._offset.getter();
              if (__OFSUB__(v21, v23))
              {
                goto LABEL_67;
              }

              v22 += v21 - v23;
            }

            if (__OFSUB__(v31, v21))
            {
              goto LABEL_66;
            }

            MEMORY[0x22AA661C0]();
            v24 = v22;
            v25 = v9;
            v26 = v8;
            v3 = v32;
            goto LABEL_54;
          }

          memset(v34, 0, 14);
          outlined copy of Data._Representation(v7, v6);
          outlined copy of Data._Representation(v9, v8);
        }

        else
        {
          if (v10)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_65;
            }

            outlined copy of Data._Representation(v7, v6);
            outlined copy of Data._Representation(v9, v8);
            v27 = __DataStorage._bytes.getter();
            if (v27)
            {
              v28 = __DataStorage._offset.getter();
              if (__OFSUB__(v7, v28))
              {
                goto LABEL_68;
              }

              v27 += v7 - v28;
            }

            MEMORY[0x22AA661C0]();
            v24 = v27;
            v25 = v9;
            v26 = v8;
LABEL_54:
            closure #1 in static Data.== infix(_:_:)(v24, v25, v26, v34);
            outlined consume of Data._Representation(v9, v8);
            outlined consume of Data._Representation(v7, v6);
            if ((v34[0] & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_6;
          }

          v34[0] = *(v4 - 1);
          LOWORD(v34[1]) = v6;
          BYTE2(v34[1]) = BYTE2(v6);
          BYTE3(v34[1]) = BYTE3(v6);
          BYTE4(v34[1]) = BYTE4(v6);
          BYTE5(v34[1]) = BYTE5(v6);
          outlined copy of Data._Representation(v7, v6);
          outlined copy of Data._Representation(v9, v8);
        }

        closure #1 in static Data.== infix(_:_:)(v34, v9, v8, &v33);
        outlined consume of Data._Representation(v9, v8);
        outlined consume of Data._Representation(v7, v6);
        if (!v33)
        {
          goto LABEL_58;
        }

LABEL_6:
        v4 += 2;
        v5 += 2;
        if (!--v2)
        {
          goto LABEL_59;
        }
      }

      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *v5 >> 62 == 3;
      if (v14 && !v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_59:
    result = 1;
  }

  else
  {
LABEL_58:
    result = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoActiveConversationV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        outlined init with copy of NCProtoContactInfo(v21, v18, a4);
        outlined init with copy of NCProtoContactInfo(v22, v15, a4);
        v24 = a5(v18, v15);
        outlined destroy of NCProtoContactInfo(v15, a6);
        outlined destroy of NCProtoContactInfo(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit32NCProtoStartLagunaSessionRequestV19RecentCallFetchTypeO_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit26NCProtoContactHandleAnonymV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = (&v23 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_31:
    v21 = 0;
    return v21 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of NCProtoContactInfo(v14, v11, type metadata accessor for NCProtoContactHandleAnonym);
      outlined init with copy of NCProtoContactInfo(v15, v8, type metadata accessor for NCProtoContactHandleAnonym);
      v17 = *v11 == *v8 && v11[1] == *(v8 + 1);
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v18 = v11[2];
      v19 = *(v8 + 2);
      if (v8[24] == 1)
      {
        if (v19)
        {
          if (v19 == 1)
          {
            if (v18 != 1)
            {
              break;
            }
          }

          else if (v18 != 2)
          {
            break;
          }
        }

        else if (v18)
        {
          break;
        }
      }

      else if (v18 != v19)
      {
        break;
      }

      if ((v11[4] != *(v8 + 4) || v11[5] != *(v8 + 5)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v11[6] != *(v8 + 6) || v11[7] != *(v8 + 7)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v20 = *(v4 + 32);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoContactHandleAnonym);
      outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoContactHandleAnonym);
      if (v21)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoContactHandleAnonym);
    outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoContactHandleAnonym);
    goto LABEL_31;
  }

  v21 = 1;
  return v21 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(uint64_t result, uint64_t a2)
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

uint64_t specialized NCProtoContinuityCall._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v43 = &v39 - v4;
  *(v1 + 41) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 57) = 1;
  *(v1 + 72) = 0;
  *(v1 + 64) = 0;
  *(v1 + 80) = 514;
  v5 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  v42 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  v6 = type metadata accessor for NCProtoCallInfo(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = (v1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
  *v7 = 0;
  v7[1] = 0;
  v41 = (v1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData);
  *(v1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData) = xmmword_2255D3AC0;
  v8 = v1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service;
  v44 = v1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service;
  *v8 = 0;
  *(v8 + 8) = 256;
  v45 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__wantsHoldMusic;
  *(v1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__wantsHoldMusic) = 2;
  v46 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__isScreening;
  *(v1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__isScreening) = 2;
  swift_beginAccess();
  v9 = *(a1 + 16);
  v40 = *(a1 + 24);
  v10 = v40;
  swift_beginAccess();
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  swift_beginAccess();
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v11;
  *(v1 + 40) = v12;
  swift_beginAccess();
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 48) = v13;
  *(v1 + 56) = v14;
  *(v1 + 57) = v15;
  swift_beginAccess();
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v16;
  *(v1 + 72) = v17;
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 80) = v16;
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + 81);
  swift_beginAccess();
  *(v1 + 81) = v16;
  v18 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__info;
  swift_beginAccess();
  v19 = v43;
  outlined init with copy of NCProtoContactInfo?(a1 + v18, v43, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v20 = v42;
  swift_beginAccess();

  outlined assign with take of NCProtoCallInfo?(v19, v1 + v20, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  swift_endAccess();
  v21 = (a1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__callGroupUuidString);
  swift_beginAccess();
  v22 = *v21;
  v23 = v21[1];
  swift_beginAccess();
  v24 = v7[1];
  *v7 = v22;
  v7[1] = v23;

  v25 = (a1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__imageData);
  swift_beginAccess();
  v27 = *v25;
  v26 = v25[1];
  v28 = v41;
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];
  *v28 = v27;
  v28[1] = v26;
  outlined copy of Data?(v27, v26);
  outlined consume of Data?(v29, v30);
  v31 = (a1 + OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__service);
  swift_beginAccess();
  v32 = *v31;
  LOBYTE(v26) = *(v31 + 8);
  LOBYTE(v31) = *(v31 + 9);
  v33 = v44;
  swift_beginAccess();
  *v33 = v32;
  *(v33 + 8) = v26;
  *(v33 + 9) = v31;
  v34 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__wantsHoldMusic;
  swift_beginAccess();
  LOBYTE(v34) = *(a1 + v34);
  v35 = v45;
  swift_beginAccess();
  *(v1 + v35) = v34;
  v36 = OBJC_IVAR____TtCV27NeighborhoodActivityConduit21NCProtoContinuityCallP33_CB6A211CAF00535343C883FC296F066313_StorageClass__isScreening;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v36);
  v37 = v46;
  swift_beginAccess();
  *(v1 + v37) = a1;
  return v1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_27NeighborhoodActivityConduit18NCProtoContactInfoVtMd, &_sSS_27NeighborhoodActivityConduit18NCProtoContactInfoVtMR);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS27NeighborhoodActivityConduit18NCProtoContactInfoVGMd, &_ss18_DictionaryStorageCySS27NeighborhoodActivityConduit18NCProtoContactInfoVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of NCProtoContactInfo?(v10, v6, &_sSS_27NeighborhoodActivityConduit18NCProtoContactInfoVtMd, &_sSS_27NeighborhoodActivityConduit18NCProtoContactInfoVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for NCProtoContactInfo(0);
      result = outlined init with take of NCProtoContactInfo(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for NCProtoContactInfo);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_27NeighborhoodActivityConduit15NCProtoCallInfoVtMd, &_sSS_27NeighborhoodActivityConduit15NCProtoCallInfoVtMR);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS27NeighborhoodActivityConduit15NCProtoCallInfoVGMd, &_ss18_DictionaryStorageCySS27NeighborhoodActivityConduit15NCProtoCallInfoVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of NCProtoContactInfo?(v10, v6, &_sSS_27NeighborhoodActivityConduit15NCProtoCallInfoVtMd, &_sSS_27NeighborhoodActivityConduit15NCProtoCallInfoVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for NCProtoCallInfo(0);
      result = outlined init with take of NCProtoContactInfo(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for NCProtoCallInfo);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t outlined assign with take of NCProtoCallInfo?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21InternalSwiftProtobuf07Google_E6_ValueVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_21InternalSwiftProtobuf07Google_C6_ValueVtMd, &_sSS_21InternalSwiftProtobuf07Google_C6_ValueVtMR);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21InternalSwiftProtobuf07Google_E6_ValueVGMd, &_ss18_DictionaryStorageCySS21InternalSwiftProtobuf07Google_E6_ValueVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of NCProtoContactInfo?(v10, v6, &_sSS_21InternalSwiftProtobuf07Google_C6_ValueVtMd, &_sSS_21InternalSwiftProtobuf07Google_C6_ValueVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Google_Protobuf_Value();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVtMd, &_sSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVtMR);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVGMd, &_ss18_DictionaryStorageCySS27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of NCProtoContactInfo?(v10, v6, &_sSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVtMd, &_sSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList(0);
      result = outlined init with take of NCProtoContactInfo(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for NCProtoIDSProxyMessage.ParticipantIDList);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x22AA661C0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized static NCProtoSuggestionAdvertisementDidChangeEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoSuggestionAdvertisement(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSg_ADtMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v17, v16, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v17, &v16[v18], &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
LABEL_9:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of NCProtoContactInfo?(v16, v11, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoSuggestionAdvertisement);
LABEL_6:
    outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSg_ADtMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSg_ADtMR);
    goto LABEL_7;
  }

  v21 = v24[0];
  outlined init with take of NCProtoContactInfo(&v16[v18], v24[0], type metadata accessor for NCProtoSuggestionAdvertisement);
  v22 = specialized static NCProtoSuggestionAdvertisement.== infix(_:_:)(v11, v21);
  outlined destroy of NCProtoContactInfo(v21, type metadata accessor for NCProtoSuggestionAdvertisement);
  outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoSuggestionAdvertisement);
  outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMd, &_s27NeighborhoodActivityConduit30NCProtoSuggestionAdvertisementVSgMR);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static NCProtoGetDestinationCapabilitiesResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoDestinationCapabilities(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27[0] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSg_ADtMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v27 - v15;
  v17 = *(type metadata accessor for NCProtoGetDestinationCapabilitiesResponse(0) + 20);
  v18 = *(v13 + 56);
  v27[1] = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v17, v16, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v17, &v16[v18], &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of NCProtoContactInfo?(v16, v11, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v23 = v27[0];
      outlined init with take of NCProtoContactInfo(&v16[v18], v27[0], type metadata accessor for NCProtoDestinationCapabilities);
      if (*v11 == *v23 && v11[1] == v23[1] && v11[2] == v23[2])
      {
        v25 = *(v4 + 28);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of NCProtoContactInfo(v23, type metadata accessor for NCProtoDestinationCapabilities);
        if (v26)
        {
          outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoDestinationCapabilities);
          goto LABEL_3;
        }
      }

      else
      {
        outlined destroy of NCProtoContactInfo(v23, type metadata accessor for NCProtoDestinationCapabilities);
      }

      outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoDestinationCapabilities);
      v21 = &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd;
      v22 = &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR;
LABEL_12:
      outlined destroy of NCProtoContactInfo?(v16, v21, v22);
      v20 = 0;
      return v20 & 1;
    }

    outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoDestinationCapabilities);
LABEL_6:
    v21 = &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSg_ADtMd;
    v22 = &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSg_ADtMR;
    goto LABEL_12;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMd, &_s27NeighborhoodActivityConduit30NCProtoDestinationCapabilitiesVSgMR);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t specialized static NCProtoTransferActiveConversationRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  active = type metadata accessor for NCProtoTransferActiveConversationRequest(0);
  v6 = active[6];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = active[7];
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v10 ^ v11) & 1) != 0)
  {
    return 0;
  }

  v13 = active[5];
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoGetDestinationCapabilitiesRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    DestinationCapabilitiesRequest = type metadata accessor for NCProtoGetDestinationCapabilitiesRequest(0);
    v6 = *(DestinationCapabilitiesRequest + 24);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 9);
    v9 = a2 + v6;
    v10 = *(a2 + v6 + 9);
    if (v8)
    {
      if (v10)
      {
LABEL_8:
        v11 = *(DestinationCapabilitiesRequest + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
      }
    }

    else if ((v10 & 1) == 0)
    {
      v13 = *v7;
      v14 = *v9;
      if (v9[8])
      {
        if (v14)
        {
          if (v14 == 1)
          {
            if (v13 == 1)
            {
              goto LABEL_8;
            }
          }

          else if (v13 == 2)
          {
            goto LABEL_8;
          }
        }

        else if (!v13)
        {
          goto LABEL_8;
        }
      }

      else if (v13 == v14)
      {
        goto LABEL_8;
      }
    }
  }

  return 0;
}

uint64_t specialized static NCProtoGetRingtoneConfigurationResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoRingtoneConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v32[0] = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSg_ADtMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v32 - v15;
  v17 = *(type metadata accessor for NCProtoGetRingtoneConfigurationResponse(0) + 20);
  v18 = *(v13 + 56);
  v32[1] = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v17, v16, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v17, &v16[v18], &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of NCProtoContactInfo?(v16, v11, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoRingtoneConfiguration);
      goto LABEL_7;
    }

    v23 = v32[0];
    outlined init with take of NCProtoContactInfo(&v16[v18], v32[0], type metadata accessor for NCProtoRingtoneConfiguration);
    v24 = *(v4 + 20);
    v25 = &v11[v24];
    v26 = *&v11[v24 + 8];
    v27 = (v23 + v24);
    v28 = v27[1];
    if (v26)
    {
      if (v28)
      {
        v29 = *v25 == *v27 && v26 == v28;
        if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
LABEL_15:
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
          v30 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of NCProtoContactInfo(v23, type metadata accessor for NCProtoRingtoneConfiguration);
          outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoRingtoneConfiguration);
          outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
          if (v30)
          {
            goto LABEL_4;
          }

LABEL_20:
          v20 = 0;
          return v20 & 1;
        }
      }
    }

    else if (!v28)
    {
      goto LABEL_15;
    }

    outlined destroy of NCProtoContactInfo(v23, type metadata accessor for NCProtoRingtoneConfiguration);
    outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoRingtoneConfiguration);
    v21 = &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd;
    v22 = &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR;
    goto LABEL_19;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_7:
    v21 = &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSg_ADtMd;
    v22 = &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSg_ADtMR;
LABEL_19:
    outlined destroy of NCProtoContactInfo?(v16, v21, v22);
    goto LABEL_20;
  }

  outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMd, &_s27NeighborhoodActivityConduit28NCProtoRingtoneConfigurationVSgMR);
LABEL_4:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t specialized static NCProtoIncomingCallBannerActionRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
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

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for NCProtoIncomingCallBannerActionRequest(0);
  v8 = *(v7 + 28);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v7;
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v7 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_23:
    v16 = *(v7 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (!v12)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t specialized static NCProtoGetAddressableContactsResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoAddressableContactV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  AddressableContactsResponse = type metadata accessor for NCProtoGetAddressableContactsResponse(0);
  v5 = *(AddressableContactsResponse + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v11 = *(AddressableContactsResponse + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoTransferContinuityCallRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NCProtoTransferContinuityCallRequest(0);
  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 != 2)
  {
    if (v8 != 2 && ((v7 ^ v8) & 1) == 0)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v8 != 2)
  {
    return 0;
  }

LABEL_12:
  v10 = *(v5 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoJoinActiveConversationRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for NCProtoJoinActiveConversationRequest(0);
  v5 = active[5];
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
      v11 = active;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      active = v11;
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

  v13 = active[6];
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

  v16 = active[7];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 == 2)
  {
    if (v18 == 2)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
  {
    return 0;
  }

LABEL_21:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoGetCallDisplayDetailsResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoCallInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (v24 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit15NCProtoCallInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for NCProtoGetCallDisplayDetailsResponse(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v17, v16, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v17, &v16[v18], &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
LABEL_9:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of NCProtoContactInfo?(v16, v11, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoCallInfo);
LABEL_6:
    outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSg_ADtMR);
    goto LABEL_7;
  }

  v21 = v24[0];
  outlined init with take of NCProtoContactInfo(&v16[v18], v24[0], type metadata accessor for NCProtoCallInfo);
  v22 = specialized static NCProtoCallInfo.== infix(_:_:)(v11, v21);
  outlined destroy of NCProtoContactInfo(v21, type metadata accessor for NCProtoCallInfo);
  outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoCallInfo);
  outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMd, &_s27NeighborhoodActivityConduit15NCProtoCallInfoVSgMR);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static NCProtoPullLagunaSessionToTVRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = type metadata accessor for NCProtoPullLagunaSessionToTVRequest(0);
    v6 = *(v5 + 24);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 9);
    v9 = a2 + v6;
    v10 = *(a2 + v6 + 9);
    if (v8)
    {
      if (v10)
      {
LABEL_8:
        v11 = *(v5 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
      }
    }

    else if ((v10 & 1) == 0)
    {
      v13 = *v7;
      v14 = *v9;
      if (v9[8])
      {
        if (v14 > 1)
        {
          if (v14 == 2)
          {
            if (v13 == 2)
            {
              goto LABEL_8;
            }
          }

          else if (v13 == 3)
          {
            goto LABEL_8;
          }
        }

        else if (v14)
        {
          if (v13 == 1)
          {
            goto LABEL_8;
          }
        }

        else if (!v13)
        {
          goto LABEL_8;
        }
      }

      else if (v13 == v14)
      {
        goto LABEL_8;
      }
    }
  }

  return 0;
}

uint64_t specialized static NCProtoNearbyCallStatusChangedEvent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit21NCProtoContinuityCallV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for NCProtoNearbyCallStatusChangedEvent(0);
  v5 = *(v4 + 28);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 != 15)
  {
    if (v9 >> 60 != 15)
    {
      v11 = v4;
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      v12 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
      outlined consume of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
      if ((v12 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

LABEL_6:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    outlined consume of Data?(v10, v9);
    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_6;
  }

  v11 = v4;
  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
LABEL_8:
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1[1], a2[1]))
  {
    v13 = *(v11 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static NCProtoStartLagunaSessionResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt1g5(a1[1], a2[1]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoActiveConversationV_Tt1g5Tm(a1[2], a2[2], type metadata accessor for NCProtoActiveConversation, type metadata accessor for NCProtoActiveConversation, specialized static NCProtoActiveConversation.== infix(_:_:), type metadata accessor for NCProtoActiveConversation) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoActiveConversationV_Tt1g5Tm(a1[3], a2[3], type metadata accessor for NCProtoContinuityFavorite, type metadata accessor for NCProtoContinuityFavorite, specialized static NCProtoContinuityFavorite.== infix(_:_:), type metadata accessor for NCProtoContinuityFavorite) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit21NCProtoContinuityCallV_Tt1g5(a1[4], a2[4]) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt1g5(a1[5], a2[5]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for NCProtoStartLagunaSessionResponse(0) + 40);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoGetImageForContactResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  ImageForContactResponse = type metadata accessor for NCProtoGetImageForContactResponse(0);
  v5 = *(ImageForContactResponse + 20);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
      goto LABEL_8;
    }

LABEL_5:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    outlined consume of Data?(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  v12 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v13 = *(ImageForContactResponse + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 9);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 9);
  if ((v15 & 1) == 0)
  {
    if ((v17 & 1) == 0)
    {
      v18 = *v14;
      v19 = *v16;
      if (v16[1])
      {
        if (v19)
        {
          if (v19 == 1)
          {
            if (v18 == 1)
            {
              goto LABEL_10;
            }
          }

          else if (v18 == 2)
          {
            goto LABEL_10;
          }
        }

        else if (!v18)
        {
          goto LABEL_10;
        }
      }

      else if (v18 == v19)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoUpdateBlockedStateRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NCProtoSpamCallModelInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &updated - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &updated - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &updated - v16;
  v18 = *a1;
  v19 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v19)
    {
      if (v19 == 1)
      {
        if (v18 != 1)
        {
          goto LABEL_18;
        }
      }

      else if (v18 != 2)
      {
        goto LABEL_18;
      }
    }

    else if (v18)
    {
      goto LABEL_18;
    }
  }

  else if (v18 != v19)
  {
    goto LABEL_18;
  }

  v20 = v15;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(a1[2], a2[2]))
  {
    updated = type metadata accessor for NCProtoUpdateBlockedStateRequest(0);
    v21 = *(updated + 28);
    v22 = *(v20 + 48);
    outlined init with copy of NCProtoContactInfo?(a1 + v21, v17, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
    v30 = v22;
    outlined init with copy of NCProtoContactInfo?(a2 + v21, &v17[v22], &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
    v23 = *(v5 + 48);
    if (v23(v17, 1, v4) == 1)
    {
      if (v23(&v17[v30], 1, v4) == 1)
      {
        outlined destroy of NCProtoContactInfo?(v17, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
LABEL_21:
        v28 = *(updated + 24);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v25 & 1;
      }

      goto LABEL_17;
    }

    outlined init with copy of NCProtoContactInfo?(v17, v12, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
    v24 = v30;
    if (v23(&v17[v30], 1, v4) == 1)
    {
      outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoSpamCallModelInfo);
LABEL_17:
      outlined destroy of NCProtoContactInfo?(v17, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSg_ADtMR);
      goto LABEL_18;
    }

    outlined init with take of NCProtoContactInfo(&v17[v24], v8, type metadata accessor for NCProtoSpamCallModelInfo);
    v27 = specialized static NCProtoSpamCallModelInfo.== infix(_:_:)(v12, v8);
    outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoSpamCallModelInfo);
    outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoSpamCallModelInfo);
    outlined destroy of NCProtoContactInfo?(v17, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMd, &_s27NeighborhoodActivityConduit24NCProtoSpamCallModelInfoVSgMR);
    if (v27)
    {
      goto LABEL_21;
    }
  }

LABEL_18:
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static NCProtoRecentCallsDidChangeEvent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt1g5(a1[1], a2[1]) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for NCProtoRecentCallsDidChangeEvent(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoStartConversationRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for NCProtoStartConversationRequest(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 9);
  v7 = a2 + v4;
  v8 = *(a2 + v4 + 9);
  if (v6)
  {
    if (v8)
    {
LABEL_3:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  else if ((v8 & 1) == 0)
  {
    v10 = *v5;
    v11 = *v7;
    if (*(v7 + 8))
    {
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          if (v10 == 2)
          {
            goto LABEL_3;
          }
        }

        else if (v10 == 3)
        {
          goto LABEL_3;
        }
      }

      else if (v11)
      {
        if (v10 == 1)
        {
          goto LABEL_3;
        }
      }

      else if (!v10)
      {
        goto LABEL_3;
      }
    }

    else if (v10 == v11)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t specialized static NCProtoSuggestionAdvertisement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  if (*(a1 + 40))
  {
    v6 = v6 != 0;
  }

  if (*(a2 + 40) == 1)
  {
    if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v9 = *(type metadata accessor for NCProtoSuggestionAdvertisement(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoLagunaConnectionRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NCProtoCallState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit18NCProtoContactInfoVTt1g5(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = type metadata accessor for NCProtoLagunaConnectionRequest(0);
  v18 = *(v17 + 44);
  v19 = *(v13 + 48);
  v26 = v17;
  v27 = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v18, v16, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v18, &v16[v19], &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    outlined init with copy of NCProtoContactInfo?(v16, v12, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      outlined init with take of NCProtoContactInfo(&v16[v19], v8, type metadata accessor for NCProtoCallState);
      v21 = specialized static NCProtoCallState.== infix(_:_:)(v12, v8);
      outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoCallState);
      outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoCallState);
      outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
      if (v21)
      {
        goto LABEL_10;
      }

LABEL_15:
      v24 = 0;
      return v24 & 1;
    }

    outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoCallState);
LABEL_8:
    outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMR);
    goto LABEL_15;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
LABEL_10:
  v22 = v27;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoActiveConversationV_Tt1g5Tm(v27[2], a2[2], type metadata accessor for NCProtoActiveConversation, type metadata accessor for NCProtoActiveConversation, specialized static NCProtoActiveConversation.== infix(_:_:), type metadata accessor for NCProtoActiveConversation) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit25NCProtoActiveConversationV_Tt1g5Tm(v22[3], a2[3], type metadata accessor for NCProtoContinuityFavorite, type metadata accessor for NCProtoContinuityFavorite, specialized static NCProtoContinuityFavorite.== infix(_:_:), type metadata accessor for NCProtoContinuityFavorite) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit21NCProtoContinuityCallV_Tt1g5(v22[4], a2[4]) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit15NCProtoCallInfoVTt1g5(v22[5], a2[5]) & 1) == 0)
  {
    goto LABEL_15;
  }

  v23 = *(v26 + 40);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v24 & 1;
}

uint64_t specialized static NCProtoDestinationCapabilities.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v3 = *(type metadata accessor for NCProtoDestinationCapabilities(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoLinkConversationSendLetMeInRequest.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v9)
  {
LABEL_8:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static NCProtoStartedSessionEvent.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v39 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (specialized static Data.== infix(_:_:)(a1[2], a1[3], a2[2], a2[3]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v39 = v8;
  v40 = type metadata accessor for NCProtoStartedSessionEvent(0);
  v17 = v40[7];
  v18 = *(v13 + 48);
  outlined init with copy of NCProtoContactInfo?(a1 + v17, v16, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v17, &v16[v18], &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of NCProtoContactInfo?(v16, v12, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = &v16[v18];
      v23 = v39;
      outlined init with take of NCProtoContactInfo(v22, v39, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
      v24 = specialized static NCProtoMemberAssociationPrimaryInfo.== infix(_:_:)(v12, v23);
      outlined destroy of NCProtoContactInfo(v23, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
      outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
      outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
      if ((v24 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
LABEL_10:
    outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMR);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
LABEL_14:
  v25 = v40[8];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 9);
  v28 = a2 + v25;
  v29 = *(a2 + v25 + 9);
  if (v27)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v29)
    {
      goto LABEL_11;
    }

    v33 = *v26;
    v34 = *v28;
    if (v28[8])
    {
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          if (v33 != 2)
          {
            goto LABEL_11;
          }
        }

        else if (v33 != 3)
        {
          goto LABEL_11;
        }
      }

      else if (v34)
      {
        if (v33 != 1)
        {
          goto LABEL_11;
        }
      }

      else if (v33)
      {
        goto LABEL_11;
      }
    }

    else if (v33 != v34)
    {
      goto LABEL_11;
    }
  }

  v30 = v40[9];
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      goto LABEL_11;
    }
  }

  else if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
  {
    goto LABEL_11;
  }

  v35 = v40[10];
  v36 = *(a1 + v35);
  v37 = *(a2 + v35);
  if (v36 == 2)
  {
    if (v37 == 2)
    {
LABEL_34:
      v38 = v40[6];
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }
  }

  else if (v37 != 2 && ((v36 ^ v37) & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_11:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static NCProtoDeviceTokenResponse.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NCProtoDeviceTokenResponse(0);
  v6 = *(v5 + 24);
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v11 = *v9;
  v10 = v9[1];
  if (v7 >> 60 != 15)
  {
    if (v10 >> 60 != 15)
    {
      outlined copy of Data?(v8, v7);
      outlined copy of Data?(v11, v10);
      v13 = specialized static Data.== infix(_:_:)(v8, v7, v11, v10);
      outlined consume of Data?(v11, v10);
      outlined consume of Data?(v8, v7);
      if (v13)
      {
        goto LABEL_13;
      }

      return 0;
    }

LABEL_10:
    outlined copy of Data?(v8, v7);
    outlined copy of Data?(v11, v10);
    outlined consume of Data?(v8, v7);
    outlined consume of Data?(v11, v10);
    return 0;
  }

  if (v10 >> 60 != 15)
  {
    goto LABEL_10;
  }

  outlined copy of Data?(v8, v7);
  outlined copy of Data?(v11, v10);
  outlined consume of Data?(v8, v7);
LABEL_13:
  v14 = *(v5 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoMemberAssociationPrimaryInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v5 = v4[6];
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

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v13 = *(a1 + v11);
  v12 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v16 = *v14;
  v15 = v14[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 == 15)
    {
      outlined copy of Data?(v13, v12);
      outlined copy of Data?(v16, v15);
      outlined consume of Data?(v13, v12);
      goto LABEL_17;
    }

LABEL_14:
    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    outlined consume of Data?(v16, v15);
    return 0;
  }

  if (v15 >> 60 == 15)
  {
    goto LABEL_14;
  }

  outlined copy of Data?(v13, v12);
  outlined copy of Data?(v16, v15);
  v18 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
  outlined consume of Data?(v16, v15);
  outlined consume of Data?(v13, v12);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v19 = v4[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 8);
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = v4[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (!v26)
  {
    if (!v28)
    {
      goto LABEL_30;
    }

    return 0;
  }

  if (!v28 || (*v25 != *v27 || v26 != v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit32NCProtoStartLagunaSessionRequestV19RecentCallFetchTypeO_Tt1g5Tm(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v29 = v4[5];
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoDeviceTokenRequest.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for NCProtoCallState(0);
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v67 = &v61 - v13;
  v14 = type metadata accessor for NCProtoMemberAssociationPrimaryInfo(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v61 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v61 - v25;
  v27 = *a1;
  v28 = a1[1];
  v68 = a1;
  if ((v27 != *a2 || v28 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v61 = v7;
  v62 = v11;
  v63 = type metadata accessor for NCProtoDeviceTokenRequest(0);
  v29 = *(v63 + 24);
  v30 = *(v23 + 48);
  outlined init with copy of NCProtoContactInfo?(v68 + v29, v26, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  v31 = a2 + v29;
  v32 = a2;
  outlined init with copy of NCProtoContactInfo?(v31, &v26[v30], &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  v33 = *(v15 + 48);
  if (v33(v26, 1, v14) == 1)
  {
    if (v33(&v26[v30], 1, v14) == 1)
    {
      outlined destroy of NCProtoContactInfo?(v26, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
      goto LABEL_11;
    }

LABEL_9:
    v34 = &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMd;
    v35 = &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSg_ADtMR;
    v36 = v26;
LABEL_17:
    outlined destroy of NCProtoContactInfo?(v36, v34, v35);
    goto LABEL_18;
  }

  outlined init with copy of NCProtoContactInfo?(v26, v22, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  if (v33(&v26[v30], 1, v14) == 1)
  {
    outlined destroy of NCProtoContactInfo(v22, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
    goto LABEL_9;
  }

  outlined init with take of NCProtoContactInfo(&v26[v30], v18, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  v37 = specialized static NCProtoMemberAssociationPrimaryInfo.== infix(_:_:)(v22, v18);
  outlined destroy of NCProtoContactInfo(v18, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  outlined destroy of NCProtoContactInfo(v22, type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
  outlined destroy of NCProtoContactInfo?(v26, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMd, &_s27NeighborhoodActivityConduit35NCProtoMemberAssociationPrimaryInfoVSgMR);
  if ((v37 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v38 = v63;
  v39 = *(v63 + 28);
  v40 = *(v62 + 48);
  v41 = v67;
  outlined init with copy of NCProtoContactInfo?(v68 + v39, v67, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  outlined init with copy of NCProtoContactInfo?(v32 + v39, v41 + v40, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v42 = v66;
  v43 = *(v65 + 48);
  if (v43(v41, 1, v66) != 1)
  {
    v44 = v64;
    outlined init with copy of NCProtoContactInfo?(v41, v64, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
    if (v43(v41 + v40, 1, v42) != 1)
    {
      v47 = v41 + v40;
      v48 = v61;
      outlined init with take of NCProtoContactInfo(v47, v61, type metadata accessor for NCProtoCallState);
      v49 = specialized static NCProtoCallState.== infix(_:_:)(v44, v48);
      outlined destroy of NCProtoContactInfo(v48, type metadata accessor for NCProtoCallState);
      outlined destroy of NCProtoContactInfo(v44, type metadata accessor for NCProtoCallState);
      outlined destroy of NCProtoContactInfo?(v41, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
      if ((v49 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    outlined destroy of NCProtoContactInfo(v44, type metadata accessor for NCProtoCallState);
    goto LABEL_16;
  }

  if (v43(v41 + v40, 1, v42) != 1)
  {
LABEL_16:
    v34 = &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMd;
    v35 = &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMR;
    v36 = v41;
    goto LABEL_17;
  }

  outlined destroy of NCProtoContactInfo?(v41, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
LABEL_21:
  v50 = v38[8];
  v51 = *(v68 + v50);
  v52 = *(v32 + v50);
  if (v51 == 2)
  {
    if (v52 != 2)
    {
      goto LABEL_18;
    }
  }

  else if (v52 == 2 || ((v51 ^ v52) & 1) != 0)
  {
    goto LABEL_18;
  }

  v53 = v38[9];
  v54 = (v68 + v53);
  v55 = *(v68 + v53 + 9);
  v56 = v32 + v53;
  v57 = *(v32 + v53 + 9);
  if (v55)
  {
    if (v57)
    {
LABEL_28:
      v58 = v38[5];
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v45 & 1;
    }
  }

  else if ((v57 & 1) == 0)
  {
    v59 = *v54;
    v60 = *v56;
    if (v56[8])
    {
      if (v60 <= 1)
      {
        if (v60)
        {
          if (v59 == 1)
          {
            goto LABEL_28;
          }
        }

        else if (!v59)
        {
          goto LABEL_28;
        }
      }

      else if (v60 == 2)
      {
        if (v59 == 2)
        {
          goto LABEL_28;
        }
      }

      else if (v60 == 3)
      {
        if (v59 == 3)
        {
          goto LABEL_28;
        }
      }

      else if (v59 == 4)
      {
        goto LABEL_28;
      }
    }

    else if (v59 == v60)
    {
      goto LABEL_28;
    }
  }

LABEL_18:
  v45 = 0;
  return v45 & 1;
}

uint64_t specialized static NCProtoContactHandleAnonym.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (v5 != 1)
        {
          return 0;
        }
      }

      else if (v5 != 2)
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

  if (a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[6] == *(a2 + 48) && a1[7] == *(a2 + 56) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v7 = *(type metadata accessor for NCProtoContactHandleAnonym(0) + 32);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static NCProtoContinuityFavorite.== infix(_:_:)(void *a1, void *a2)
{
  v56 = a2;
  v3 = type metadata accessor for NCProtoContactHandleAnonym(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = (&v47 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSg_ADtMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSg_ADtMR);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for NCProtoContactInfo(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v47 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for NCProtoContinuityFavorite(0);
  v25 = *(v51 + 32);
  v26 = *(v21 + 56);
  v55 = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v25, v24, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  v27 = v56;
  outlined init with copy of NCProtoContactInfo?(v56 + v25, &v24[v26], &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      outlined destroy of NCProtoContactInfo?(v24, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMd;
    v30 = &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMR;
    v31 = v24;
LABEL_17:
    outlined destroy of NCProtoContactInfo?(v31, v29, v30);
    goto LABEL_18;
  }

  outlined init with copy of NCProtoContactInfo?(v24, v19, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    outlined destroy of NCProtoContactInfo(v19, type metadata accessor for NCProtoContactInfo);
    goto LABEL_6;
  }

  outlined init with take of NCProtoContactInfo(&v24[v26], v15, type metadata accessor for NCProtoContactInfo);
  v32 = specialized static NCProtoContactInfo.== infix(_:_:)(v19, v15);
  outlined destroy of NCProtoContactInfo(v15, type metadata accessor for NCProtoContactInfo);
  outlined destroy of NCProtoContactInfo(v19, type metadata accessor for NCProtoContactInfo);
  outlined destroy of NCProtoContactInfo?(v24, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  if ((v32 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v33 = v55;
  if ((*v55 != *v27 || v55[1] != v27[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = v51;
  v35 = *(v51 + 36);
  v36 = *(v50 + 48);
  v37 = v54;
  outlined init with copy of NCProtoContactInfo?(v33 + v35, v54, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  outlined init with copy of NCProtoContactInfo?(v27 + v35, v37 + v36, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) != 1)
  {
    v40 = v49;
    outlined init with copy of NCProtoContactInfo?(v37, v49, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
    if (v39(v37 + v36, 1, v38) != 1)
    {
      v43 = v37 + v36;
      v44 = v48;
      outlined init with take of NCProtoContactInfo(v43, v48, type metadata accessor for NCProtoContactHandleAnonym);
      v45 = specialized static NCProtoContactHandleAnonym.== infix(_:_:)(v40, v44);
      outlined destroy of NCProtoContactInfo(v44, type metadata accessor for NCProtoContactHandleAnonym);
      outlined destroy of NCProtoContactInfo(v40, type metadata accessor for NCProtoContactHandleAnonym);
      outlined destroy of NCProtoContactInfo?(v37, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
      if ((v45 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    outlined destroy of NCProtoContactInfo(v40, type metadata accessor for NCProtoContactHandleAnonym);
    goto LABEL_16;
  }

  if (v39(v37 + v36, 1, v38) != 1)
  {
LABEL_16:
    v29 = &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSg_ADtMd;
    v30 = &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSg_ADtMR;
    v31 = v37;
    goto LABEL_17;
  }

  outlined destroy of NCProtoContactInfo?(v37, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMd, &_s27NeighborhoodActivityConduit26NCProtoContactHandleAnonymVSgMR);
LABEL_21:
  if (v33[2] == v27[2] && v33[3] == v27[3] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v33[4] == v27[4] && v33[5] == v27[5] || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v46 = *(v34 + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v41 & 1;
  }

LABEL_18:
  v41 = 0;
  return v41 & 1;
}

uint64_t specialized static NCProtoAddressableContact.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NCProtoContactInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v26 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for NCProtoAddressableContact(0);
  v17 = *(v27 + 28);
  v18 = *(v13 + 56);
  v29 = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v17, v16, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v17, &v16[v18], &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of NCProtoContactInfo?(v16, v11, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      outlined init with take of NCProtoContactInfo(&v16[v18], v28, type metadata accessor for NCProtoContactInfo);
      v21 = specialized static NCProtoContactInfo.== infix(_:_:)(v11, v20);
      outlined destroy of NCProtoContactInfo(v20, type metadata accessor for NCProtoContactInfo);
      outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoContactInfo);
      outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      v24 = 0;
      return v24 & 1;
    }

    outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoContactInfo);
LABEL_6:
    outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSg_ADtMR);
    goto LABEL_13;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMd, &_s27NeighborhoodActivityConduit18NCProtoContactInfoVSgMR);
LABEL_8:
  v22 = v29;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ27NeighborhoodActivityConduit26NCProtoContactHandleAnonymV_Tt1g5(*v29, *a2) & 1) == 0 || (v22[1] != a2[1] || v22[2] != a2[2]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v23 = *(v27 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v24 & 1;
}

uint64_t specialized static NCProtoActiveConversation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  active = type metadata accessor for NCProtoActiveConversation(0);
  v5 = active[6];
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
      v11 = active;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      active = v11;
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

  v13 = active[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = active;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      active = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = active[8];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 9);
  v24 = a2 + v21;
  v25 = *(a2 + v21 + 9);
  if (v23)
  {
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v25)
    {
      return 0;
    }

    v31 = *v22;
    v32 = *v24;
    if (v24[8])
    {
      if (v32 > 1)
      {
        if (v32 == 2)
        {
          if (v31 != 2)
          {
            return 0;
          }
        }

        else if (v31 != 3)
        {
          return 0;
        }
      }

      else if (v32)
      {
        if (v31 != 1)
        {
          return 0;
        }
      }

      else if (v31)
      {
        return 0;
      }
    }

    else if (v31 != v32)
    {
      return 0;
    }
  }

  v26 = active[9];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v33 = active;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*a1, *a2))
  {
    v34 = v33[10];
    v35 = (a1 + v34);
    v36 = *(a1 + v34 + 9);
    v37 = a2 + v34;
    v38 = *(a2 + v34 + 9);
    if (v36)
    {
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v38)
      {
        return 0;
      }

      v50 = *v35;
      v51 = *v37;
      if (v37[8])
      {
        if (v51 > 2)
        {
          if (v51 == 3)
          {
            if (v50 != 3)
            {
              return 0;
            }
          }

          else if (v51 == 4)
          {
            if (v50 != 4)
            {
              return 0;
            }
          }

          else if (v50 != 5)
          {
            return 0;
          }
        }

        else if (v51)
        {
          if (v51 == 1)
          {
            if (v50 != 1)
            {
              return 0;
            }
          }

          else if (v50 != 2)
          {
            return 0;
          }
        }

        else if (v50)
        {
          return 0;
        }
      }

      else if (v50 != v51)
      {
        return 0;
      }
    }

    v39 = v33[11];
    v40 = (a1 + v39);
    v41 = *(a1 + v39 + 9);
    v42 = a2 + v39;
    v43 = *(a2 + v39 + 9);
    if (v41)
    {
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v43)
      {
        return 0;
      }

      v52 = *v40;
      v53 = *v42;
      if (v42[8])
      {
        if (v53 <= 1)
        {
          if (v53)
          {
            if (v52 != 1)
            {
              return 0;
            }
          }

          else if (v52)
          {
            return 0;
          }
        }

        else if (v53 == 2)
        {
          if (v52 != 2)
          {
            return 0;
          }
        }

        else if (v53 == 3)
        {
          if (v52 != 3)
          {
            return 0;
          }
        }

        else if (v52 != 4)
        {
          return 0;
        }
      }

      else if (v52 != v53)
      {
        return 0;
      }
    }

    v44 = v33[12];
    v46 = *(a1 + v44);
    v45 = *(a1 + v44 + 8);
    v47 = (a2 + v44);
    v49 = *v47;
    v48 = v47[1];
    if (v45 >> 60 == 15)
    {
      if (v48 >> 60 == 15)
      {
        outlined copy of Data?(v46, v45);
        outlined copy of Data?(v49, v48);
        outlined consume of Data?(v46, v45);
LABEL_75:
        v55 = v33[5];
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
      }

      goto LABEL_67;
    }

    if (v48 >> 60 == 15)
    {
LABEL_67:
      outlined copy of Data?(v46, v45);
      outlined copy of Data?(v49, v48);
      outlined consume of Data?(v46, v45);
      outlined consume of Data?(v49, v48);
      return 0;
    }

    outlined copy of Data?(v46, v45);
    outlined copy of Data?(v49, v48);
    v54 = specialized static Data.== infix(_:_:)(v46, v45, v49, v48);
    outlined consume of Data?(v49, v48);
    outlined consume of Data?(v46, v45);
    if (v54)
    {
      goto LABEL_75;
    }
  }

  return 0;
}

uint64_t specialized static NCProtoSpamCallModelInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for NCProtoSpamCallModelInfo(0);
  v5 = *(v4 + 40);
  v7 = *&a1[v5];
  v6 = *&a1[v5 + 8];
  v8 = &a2[v5];
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      v11 = v4;
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v9 >> 60 == 15)
  {
LABEL_5:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    outlined consume of Data?(v10, v9);
    return 0;
  }

  v11 = v4;
  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  v12 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  if (*a1 != *a2 || (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 3) != *(a2 + 3) || *(a1 + 4) != *(a2 + 4) || a1[40] != a2[40])
  {
    return 0;
  }

  v14 = *(v11 + 36);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoDisconnectRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for NCProtoDisconnectRequest(0);
  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[7];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 9);
  v11 = a2 + v8;
  v12 = *(a2 + v8 + 9);
  if ((v10 & 1) == 0)
  {
    if (v12)
    {
      return 0;
    }

    v15 = *v9;
    v16 = *v11;
    if (*(v11 + 8))
    {
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          if (v15 != 2)
          {
            return 0;
          }
        }

        else if (v15 != 3)
        {
          return 0;
        }
      }

      else
      {
        if (!v16)
        {
          if (!v15)
          {
            goto LABEL_9;
          }

          return 0;
        }

        if (v15 != 1)
        {
          return 0;
        }
      }
    }

    else if (v15 != v16)
    {
      return 0;
    }

LABEL_9:
    v13 = v4[5];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (v12)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t specialized static NCProtoCallStateResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoCallState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for NCProtoCallStateResponse(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  outlined init with copy of NCProtoContactInfo?(a1 + v17, v16, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  outlined init with copy of NCProtoContactInfo?(a2 + v17, &v16[v18], &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
LABEL_9:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of NCProtoContactInfo?(v16, v11, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoCallState);
LABEL_6:
    outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSg_ADtMR);
    goto LABEL_7;
  }

  v21 = v24[0];
  outlined init with take of NCProtoContactInfo(&v16[v18], v24[0], type metadata accessor for NCProtoCallState);
  v22 = specialized static NCProtoCallState.== infix(_:_:)(v11, v21);
  outlined destroy of NCProtoContactInfo(v21, type metadata accessor for NCProtoCallState);
  outlined destroy of NCProtoContactInfo(v11, type metadata accessor for NCProtoCallState);
  outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMd, &_s27NeighborhoodActivityConduit16NCProtoCallStateVSgMR);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static NCProtoAddMemberRequest.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        if (v6 != 3)
        {
          return 0;
        }
      }

      else if (v7 == 4)
      {
        if (v6 != 4)
        {
          return 0;
        }
      }

      else if (v6 != 5)
      {
        return 0;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = type metadata accessor for NCProtoAddMemberRequest(0);
  v9 = *(v8 + 32);
  v11 = *(a1 + v9);
  v10 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v14 = *v12;
  v13 = v12[1];
  if (v10 >> 60 != 15)
  {
    if (v13 >> 60 == 15)
    {
      goto LABEL_26;
    }

    outlined copy of Data?(v11, v10);
    outlined copy of Data?(v14, v13);
    v16 = specialized static Data.== infix(_:_:)(v11, v10, v14, v13);
    outlined consume of Data?(v14, v13);
    outlined consume of Data?(v11, v10);
    if (v16)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if (v13 >> 60 != 15)
  {
LABEL_26:
    outlined copy of Data?(v11, v10);
    outlined copy of Data?(v14, v13);
    outlined consume of Data?(v11, v10);
    outlined consume of Data?(v14, v13);
    return 0;
  }

  outlined copy of Data?(v11, v10);
  outlined copy of Data?(v14, v13);
  outlined consume of Data?(v11, v10);
LABEL_29:
  v17 = *(v8 + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoIDSProxyMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSg_AFtMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of NCProtoContactInfo?(a1, &v24 - v16, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  outlined init with copy of NCProtoContactInfo?(a2, &v17[v18], &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of NCProtoContactInfo?(v17, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
LABEL_9:
      v22 = *(type metadata accessor for NCProtoIDSProxyMessage(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of NCProtoContactInfo?(v17, v12, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
LABEL_6:
    outlined destroy of NCProtoContactInfo?(v17, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSg_AFtMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of NCProtoContactInfo(&v17[v18], v8, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  v21 = specialized static NCProtoIDSProxyMessage.OneOf_Message.== infix(_:_:)(v12, v8);
  outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  outlined destroy of NCProtoContactInfo?(v17, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0OSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static NCProtoIDSProxyMessage.Resource.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (specialized static Data.== infix(_:_:)(a1[2], a1[3], a2[2], a2[3]) & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_21InternalSwiftProtobuf07Google_D6_ValueVTt1g5(a1[6], a2[6]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for NCProtoIDSProxyMessage.Resource(0) + 32);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoIDSProxyMessage.GroupUpdate.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    v3 = a1;
    v4 = *(a1 + 1);
    v5 = a2;
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v5;
    v7 = v6;
    a1 = v3;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5))
  {
    v8 = a1;
    v9 = *(a1 + 4);
    v10 = a2;
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v10;
    v12 = v11;
    a1 = v8;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 6) != *(a2 + 6))
  {
    return 0;
  }

  if (*(a1 + 7) != *(a2 + 7))
  {
    return 0;
  }

  if (a1[64] != a2[64])
  {
    return 0;
  }

  if (*(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v13 = a1;
  v14 = a2;
  if ((specialized static Data.== infix(_:_:)(*(a1 + 10), *(a1 + 11), *(a2 + 10), *(a2 + 11)) & 1) == 0 || (specialized static Data.== infix(_:_:)(v13[12], v13[13], v14[12], v14[13]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v13[14], v14[14]) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV17ParticipantIDListVTt1g5(v13[15], v14[15]) & 1) == 0)
  {
    return 0;
  }

  if ((v13[16] != v14[16] || v13[17] != v14[17]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = *(type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0) + 68);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoContinuityCall.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for NCProtoContinuityCall(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = closure #1 in static NCProtoContinuityCall.== infix(_:_:)(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoContactInfo.== infix(_:_:)(void *a1, void *a2)
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

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (specialized static Data.== infix(_:_:)(a1[12], a1[13], a2[12], a2[13]) & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for NCProtoContactInfo(0);
  v7 = v6[12];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    if (*v8 != *v10 || v9 != v11)
    {
      v12 = v6;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v6 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v14 = v6[13];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (v18)
    {
      if (*v15 == *v17 && v16 == v18)
      {
        goto LABEL_36;
      }

      v19 = v6;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v6 = v19;
      if (v20)
      {
        goto LABEL_36;
      }
    }
  }

  else if (!v18)
  {
LABEL_36:
    v21 = v6[11];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static NCProtoJoinEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for NCProtoJoinEvent(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoCallState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NCProtoCallState(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 9);
  v14 = a2 + v11;
  v15 = *(a2 + v11 + 9);
  if (v13)
  {
    if (v15)
    {
      goto LABEL_13;
    }
  }

  else if ((v15 & 1) == 0)
  {
    v19 = *v12;
    v20 = *v14;
    if (*(v14 + 8))
    {
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          if (v19 != 2)
          {
            return 0;
          }
        }

        else if (v19 != 3)
        {
          return 0;
        }
      }

      else if (v20)
      {
        if (v19 != 1)
        {
          return 0;
        }
      }

      else if (v19)
      {
        return 0;
      }
    }

    else if (v19 != v20)
    {
      return 0;
    }

LABEL_13:
    v16 = v4[8];
    v17 = *(a1 + v16);
    v18 = *(a2 + v16);
    if (v17 == 2)
    {
      if (v18 != 2)
      {
        return 0;
      }
    }

    else if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
    {
      return 0;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static NCProtoCallInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NCProtoSenderIdentity(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v69 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSg_ADtMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v69 - v15;
  v17 = type metadata accessor for NCProtoCallInfo(0);
  v18 = v17[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_63;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_63;
  }

  v26 = v17[7];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_63;
    }

    if (*v27 != *v29 || v28 != v30)
    {
      v32 = v17;
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v32;
      if ((v33 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v30)
  {
    goto LABEL_63;
  }

  v34 = v17[8];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (!v38)
    {
      goto LABEL_63;
    }

    if (*v35 != *v37 || v36 != v38)
    {
      v39 = v17;
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v39;
      if ((v40 & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v38)
  {
    goto LABEL_63;
  }

  v41 = v17[9];
  v42 = *(a1 + v41);
  v43 = *(a2 + v41);
  if (v42 == 2)
  {
    if (v43 != 2)
    {
      goto LABEL_63;
    }
  }

  else if (v43 == 2 || ((v42 ^ v43) & 1) != 0)
  {
    goto LABEL_63;
  }

  v70 = v17;
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_63;
  }

  v44 = v70[10];
  v45 = *(v13 + 48);
  outlined init with copy of NCProtoContactInfo?(a1 + v44, v16, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  v46 = a2 + v44;
  v47 = v45;
  outlined init with copy of NCProtoContactInfo?(v46, &v16[v45], &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
  v48 = *(v5 + 48);
  if (v48(v16, 1, v4) != 1)
  {
    outlined init with copy of NCProtoContactInfo?(v16, v12, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
    if (v48(&v16[v47], 1, v4) != 1)
    {
      outlined init with take of NCProtoContactInfo(&v16[v47], v8, type metadata accessor for NCProtoSenderIdentity);
      if (*v12 == *v8 && v12[1] == v8[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v12[2] == v8[2] && v12[3] == v8[3] || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        v52 = *(v4 + 24);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v53 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoSenderIdentity);
        outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoSenderIdentity);
        outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
        if ((v53 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_46;
      }

      outlined destroy of NCProtoContactInfo(v8, type metadata accessor for NCProtoSenderIdentity);
      outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoSenderIdentity);
      v49 = &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd;
      v50 = &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR;
LABEL_38:
      outlined destroy of NCProtoContactInfo?(v16, v49, v50);
      v51 = 0;
      return v51 & 1;
    }

    outlined destroy of NCProtoContactInfo(v12, type metadata accessor for NCProtoSenderIdentity);
LABEL_37:
    v49 = &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSg_ADtMd;
    v50 = &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSg_ADtMR;
    goto LABEL_38;
  }

  if (v48(&v16[v47], 1, v4) != 1)
  {
    goto LABEL_37;
  }

  outlined destroy of NCProtoContactInfo?(v16, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMd, &_s27NeighborhoodActivityConduit21NCProtoSenderIdentityVSgMR);
LABEL_46:
  v54 = v70[11];
  v56 = *(a1 + v54);
  v55 = *(a1 + v54 + 8);
  v57 = (a2 + v54);
  v59 = *v57;
  v58 = v57[1];
  if (v55 >> 60 == 15)
  {
    if (v58 >> 60 == 15)
    {
      outlined copy of Data?(v56, v55);
      outlined copy of Data?(v59, v58);
      outlined consume of Data?(v56, v55);
LABEL_53:
      v61 = v70[12];
      v62 = *(a1 + v61);
      v63 = *(a2 + v61);
      if (v62 == 2)
      {
        if (v63 != 2)
        {
          goto LABEL_63;
        }
      }

      else if (v63 == 2 || ((v62 ^ v63) & 1) != 0)
      {
        goto LABEL_63;
      }

      v64 = v70[13];
      v65 = *(a1 + v64);
      v66 = *(a2 + v64);
      if (v65 == 2)
      {
        if (v66 == 2)
        {
LABEL_65:
          v68 = v70[5];
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
          v51 = dispatch thunk of static Equatable.== infix(_:_:)();
          return v51 & 1;
        }
      }

      else if (v66 != 2 && ((v65 ^ v66) & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_63:
      v51 = 0;
      return v51 & 1;
    }
  }

  else if (v58 >> 60 != 15)
  {
    outlined copy of Data?(v56, v55);
    outlined copy of Data?(v59, v58);
    v60 = specialized static Data.== infix(_:_:)(v56, v55, v59, v58);
    outlined consume of Data?(v59, v58);
    outlined consume of Data?(v56, v55);
    if ((v60 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_53;
  }

  outlined copy of Data?(v56, v55);
  outlined copy of Data?(v59, v58);
  outlined consume of Data?(v56, v55);
  outlined consume of Data?(v59, v58);
  v51 = 0;
  return v51 & 1;
}

uint64_t specialized static NCProtoIDSProxyMessage.RawData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_21InternalSwiftProtobuf07Google_D6_ValueVTt1g5(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for NCProtoIDSProxyMessage.RawData(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static NCProtoIDSProxyMessage.OneOf_Message.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = type metadata accessor for NCProtoIDSProxyMessage.Resource(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NCProtoIDSProxyMessage.RawData(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v38 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = (&v38 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0O_AEtMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0O_AEtMR);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v38 - v27;
  v29 = *(v26 + 56);
  outlined init with copy of NCProtoContactInfo(a1, &v38 - v27, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  outlined init with copy of NCProtoContactInfo(v39, &v28[v29], type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of NCProtoContactInfo(v28, v21, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of NCProtoContactInfo(&v28[v29], v9, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
        v31 = specialized static NCProtoIDSProxyMessage.GroupUpdate.== infix(_:_:)(v21, v9);
        v32 = type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate;
        outlined destroy of NCProtoContactInfo(v9, type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate);
        v33 = v21;
LABEL_13:
        outlined destroy of NCProtoContactInfo(v33, v32);
        outlined destroy of NCProtoContactInfo(v28, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
        return v31 & 1;
      }

      v34 = type metadata accessor for NCProtoIDSProxyMessage.GroupUpdate;
      v35 = v21;
    }

    else
    {
      outlined init with copy of NCProtoContactInfo(v28, v18, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v36 = v38;
        outlined init with take of NCProtoContactInfo(&v28[v29], v38, type metadata accessor for NCProtoIDSProxyMessage.Resource);
        v31 = specialized static NCProtoIDSProxyMessage.Resource.== infix(_:_:)(v18, v36);
        v32 = type metadata accessor for NCProtoIDSProxyMessage.Resource;
        outlined destroy of NCProtoContactInfo(v36, type metadata accessor for NCProtoIDSProxyMessage.Resource);
        v33 = v18;
        goto LABEL_13;
      }

      v34 = type metadata accessor for NCProtoIDSProxyMessage.Resource;
      v35 = v18;
    }
  }

  else
  {
    outlined init with copy of NCProtoContactInfo(v28, v23, type metadata accessor for NCProtoIDSProxyMessage.OneOf_Message);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of NCProtoContactInfo(&v28[v29], v13, type metadata accessor for NCProtoIDSProxyMessage.RawData);
      v31 = specialized static NCProtoIDSProxyMessage.RawData.== infix(_:_:)(v23, v13);
      v32 = type metadata accessor for NCProtoIDSProxyMessage.RawData;
      outlined destroy of NCProtoContactInfo(v13, type metadata accessor for NCProtoIDSProxyMessage.RawData);
      v33 = v23;
      goto LABEL_13;
    }

    v34 = type metadata accessor for NCProtoIDSProxyMessage.RawData;
    v35 = v23;
  }

  outlined destroy of NCProtoContactInfo(v35, v34);
  outlined destroy of NCProtoContactInfo?(v28, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0O_AEtMd, &_s27NeighborhoodActivityConduit22NCProtoIDSProxyMessageV06OneOf_F0O_AEtMR);
  v31 = 0;
  return v31 & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType()
{
  result = lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType;
  if (!lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType;
  if (!lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType;
  if (!lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType;
  if (!lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactHandleAnonym.AnonymType and conformance NCProtoContactHandleAnonym.AnonymType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NCProtoContactInfo and conformance NCProtoContactInfo(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType()
{
  result = lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType;
  if (!lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType;
  if (!lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType;
  if (!lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType;
  if (!lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoSuggestionAdvertisement.SuggestionType and conformance NCProtoSuggestionAdvertisement.SuggestionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext()
{
  result = lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext;
  if (!lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext;
  if (!lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext;
  if (!lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext;
  if (!lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoAddMemberRequest.NearbyConversationPullContext and conformance NCProtoAddMemberRequest.NearbyConversationPullContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType()
{
  result = lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType;
  if (!lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType;
  if (!lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType;
  if (!lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType;
  if (!lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoStartLagunaSessionRequest.RecentCallFetchType and conformance NCProtoStartLagunaSessionRequest.RecentCallFetchType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest()
{
  result = lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest;
  if (!lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest;
  if (!lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest;
  if (!lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest;
  if (!lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoUpdateBlockedStateRequest.BlockRequest and conformance NCProtoUpdateBlockedStateRequest.BlockRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NCProtoContactImageType and conformance NCProtoContactImageType()
{
  result = lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType;
  if (!lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType;
  if (!lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType;
  if (!lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType;
  if (!lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NCProtoContactImageType and conformance NCProtoContactImageType);
  }

  return result;
}