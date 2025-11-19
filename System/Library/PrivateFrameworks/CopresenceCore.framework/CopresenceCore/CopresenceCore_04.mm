unint64_t lazy protocol witness table accessor for type ActivitySession.Errors and conformance ActivitySession.Errors()
{
  result = lazy protocol witness table cache variable for type ActivitySession.Errors and conformance ActivitySession.Errors;
  if (!lazy protocol witness table cache variable for type ActivitySession.Errors and conformance ActivitySession.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivitySession.Errors and conformance ActivitySession.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivitySession.Errors and conformance ActivitySession.Errors;
  if (!lazy protocol witness table cache variable for type ActivitySession.Errors and conformance ActivitySession.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivitySession.Errors and conformance ActivitySession.Errors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities()
{
  result = lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities;
  if (!lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities;
  if (!lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities;
  if (!lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities;
  if (!lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities);
  }

  return result;
}

void type metadata completion function for ActivitySession()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    v2 = type metadata accessor for DateInterval();
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      type metadata accessor for ActivitySession.DomainAssertionWrapper?(319, &lazy cache variable for type metadata for ActivitySession.DomainAssertionWrapper?, type metadata accessor for ActivitySession.DomainAssertionWrapper);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        type metadata accessor for TUConversationActivityLifetimePolicy(319, &lazy cache variable for type metadata for Published<ActivitySession.State>, &type metadata for ActivitySession.State, MEMORY[0x1E695C070]);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          v8 = type metadata accessor for Date();
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            type metadata accessor for ActivitySession.DomainAssertionWrapper?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for ActivitySession.DomainAssertionWrapper?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ActivitySession.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivitySession.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_14CopresenceCore15ActivitySessionC5StateO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t getEnumTagSinglePayload for ActivitySession.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ActivitySession.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ActivitySession.State(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivitySession.State.InvalidationReason(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivitySession.State.InvalidationReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t getEnumTag for ActivitySession.State.InvalidationReason(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for ActivitySession.State.InvalidationReason(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivitySession.Capabilities(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivitySession.Capabilities(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t type metadata completion function for ActivitySession.DomainAssertionWrapper()
{
  result = type metadata accessor for NSObject(319, &lazy cache variable for type metadata for RBSAssertion, 0x1E69C7548);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t outlined consume of Set<TUConversationActivitySession>.Iterator?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined consume of Set<String>.Iterator._Variant();
  }

  return result;
}

uint64_t outlined init with copy of ActivitySession.DomainAssertionWrapper(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of ActivitySession.DomainAssertionWrapper(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type IDSGroupSessionProvider.Participant and conformance IDSGroupSessionProvider.Participant()
{
  result = lazy protocol witness table cache variable for type IDSGroupSessionProvider.Participant and conformance IDSGroupSessionProvider.Participant;
  if (!lazy protocol witness table cache variable for type IDSGroupSessionProvider.Participant and conformance IDSGroupSessionProvider.Participant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSGroupSessionProvider.Participant and conformance IDSGroupSessionProvider.Participant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IDSGroupSessionProvider.Participant and conformance IDSGroupSessionProvider.Participant;
  if (!lazy protocol witness table cache variable for type IDSGroupSessionProvider.Participant and conformance IDSGroupSessionProvider.Participant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSGroupSessionProvider.Participant and conformance IDSGroupSessionProvider.Participant);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of UserNotificationCenter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t partial apply for closure #2 in ActivitySession.listener(_:shouldAcceptNewConnection:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x410);
  v4 = v2;
  return v3(v2);
}

uint64_t outlined assign with take of ActivitySession.DomainAssertionWrapper?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of ActivitySession.DomainAssertionWrapper?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in ActivitySession.join(audioSessionID:completion:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0);
}

uint64_t objectdestroy_94Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

void type metadata accessor for TUConversationActivityLifetimePolicy(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OneShotCancellationBox.__deallocating_deinit()
{
  MEMORY[0x1B27120C0](*(v0 + 16), -1, -1);
  outlined consume of OneShotCancellationBox.State(*(v0 + 24));

  return swift_deallocClassInstance();
}

void OneShotCancellationBox.store(_:)(uint64_t a1)
{
  os_unfair_lock_lock(*(v1 + 16));
  v3 = *(v1 + 24);
  if (v3 != 1)
  {
    if (v3)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    *(v1 + 24) = a1;
  }

  v4 = *(v1 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t OneShotCancellationBox.cancel()()
{
  os_unfair_lock_lock(*(v0 + 16));
  v1 = *(v0 + 24);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0;
    }

    else
    {
      v3 = *(v0 + 24);

      AnyCancellable.cancel()();
      outlined consume of OneShotCancellationBox.State(v1);
      v4 = *(v0 + 24);
      v2 = 1;
      *(v0 + 24) = 1;
      outlined consume of OneShotCancellationBox.State(v4);
    }
  }

  else
  {
    v2 = 1;
    *(v0 + 24) = 1;
  }

  os_unfair_lock_unlock(*(v0 + 16));
  return v2;
}

uint64_t Publisher.sinkOnce(_:onError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for OneShotCancellationBox();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  v13 = swift_slowAlloc();
  *(v12 + 16) = v13;
  *v13 = 0;
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = v12;
  v14[5] = a3;
  v14[6] = a4;
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = v12;
  v15[5] = a1;
  v15[6] = a2;
  swift_retain_n();

  v16 = Publisher.sink(receiveCompletion:receiveValue:)();

  OneShotCancellationBox.store(_:)(v16);
}

uint64_t closure #1 in Publisher.sinkOnce(_:onError:)(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for Subscribers.Completion();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v17 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v17 - v14;
  (*(v7 + 16))(v11, a1, v6);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v7 + 8))(v11, v6);
  }

  (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
  if (OneShotCancellationBox.cancel()())
  {
    a3(v15);
  }

  return (*(v12 + 8))(v15, AssociatedTypeWitness);
}

uint64_t partial apply for closure #1 in Publisher.sinkOnce(_:onError:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  return closure #1 in Publisher.sinkOnce(_:onError:)(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t Publisher<>.sinkOnce(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OneShotCancellationBox();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v8;
  v10[5] = a1;
  v10[6] = a2;

  v11 = Publisher<>.sink(receiveValue:)();

  OneShotCancellationBox.store(_:)(v11);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t partial apply for closure #2 in Publisher.sinkOnce(_:onError:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[4];
  result = OneShotCancellationBox.cancel()();
  if (result)
  {
    return v3(a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CopresenceCore22OneShotCancellationBox33_F7658F7EEB60D7C4F9F7227BD41B3782LLC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for OneShotCancellationBox.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OneShotCancellationBox.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for OneShotCancellationBox.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t outlined consume of OneShotCancellationBox.State(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

id PresenceSessionConnectionInfo.__allocating_init(endpoint:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PresenceSessionConnectionInfo.init(endpoint:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PresenceSessionConnectionInfo();
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t PresenceSessionConnectionInfo.description.getter()
{
  _StringGuts.grow(_:)(43);

  v1 = [*(v0 + OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x1B2710020](v2, v4);

  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0xD000000000000028;
}

Swift::Void __swiftcall PresenceSessionConnectionInfo.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint);
  v4 = MEMORY[0x1B270FF70](0x746E696F70646E65, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id PresenceSessionConnectionInfo.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  type metadata accessor for NSXPCListenerEndpoint();
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v5)
  {
    *&v4[OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint] = v5;
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

id PresenceSessionConnectionInfo.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSXPCListenerEndpoint();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    *&v2[OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint] = v4;
    v7.receiver = v2;
    v7.super_class = type metadata accessor for PresenceSessionConnectionInfo();
    v5 = objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {

    type metadata accessor for PresenceSessionConnectionInfo();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

unint64_t type metadata accessor for NSXPCListenerEndpoint()
{
  result = lazy cache variable for type metadata for NSXPCListenerEndpoint;
  if (!lazy cache variable for type metadata for NSXPCListenerEndpoint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSXPCListenerEndpoint);
  }

  return result;
}

id PresenceSessionConnectionInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PresenceSessionConnectionInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresenceSessionConnectionInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PresenceSessionParticipant.__allocating_init(id:handle:isCurrentDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_id] = UUID._bridgeToObjectiveC()();
  v11 = MEMORY[0x1B270FF70](a2, a3);

  *&v10[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_handle] = v11;
  v10[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice] = a4;
  v15.receiver = v10;
  v15.super_class = v5;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

id PresenceSessionParticipant.init(id:handle:isCurrentDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  *&v5[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_id] = UUID._bridgeToObjectiveC()();
  v10 = MEMORY[0x1B270FF70](a2, a3);

  *&v5[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_handle] = v10;
  v5[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice] = a4;
  v14.receiver = v5;
  v14.super_class = type metadata accessor for PresenceSessionParticipant();
  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

uint64_t PresenceSessionParticipant.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(67);
  MEMORY[0x1B2710020](0xD00000000000001FLL, 0x80000001AEE30390);
  v2 = [*(v0 + OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_id) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1B2710020](v3, v5);

  MEMORY[0x1B2710020](0x656C646E6168202CLL, 0xEA0000000000203ALL);
  v6 = [*(v1 + OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_handle) description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  MEMORY[0x1B2710020](v7, v9);

  MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE303B0);
  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v10, v11);

  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall PresenceSessionParticipant.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_id);
  v4 = MEMORY[0x1B270FF70](25705, 0xE200000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_handle);
  v6 = MEMORY[0x1B270FF70](0x656C646E6168, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice);
  v8 = MEMORY[0x1B270FF70](0x6E65727275437369, 0xEF65636976654474);
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];
}

id PresenceSessionParticipant.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v5)
  {
    v6 = v5;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v7 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v7)
    {
      v8 = v7;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      v9 = NSCoder.decodeObject<A>(of:forKey:)();
      if (v9)
      {
        *&v4[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_id] = v6;
        *&v4[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_handle] = v8;
        v10 = v9;
        v11 = [v9 BOOLValue];

        v4[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice] = v11;
        v14.receiver = v4;
        v14.super_class = v2;
        v12 = objc_msgSendSuper2(&v14, sel_init);

        return v12;
      }

      v6 = v8;
    }
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id PresenceSessionParticipant.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    v5 = v4;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v6 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v6)
    {
      v7 = v6;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      v8 = NSCoder.decodeObject<A>(of:forKey:)();
      if (v8)
      {
        *&v2[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_id] = v5;
        *&v2[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_handle] = v7;
        v9 = v8;
        v10 = [v8 BOOLValue];

        v2[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice] = v10;
        v13.receiver = v2;
        v13.super_class = type metadata accessor for PresenceSessionParticipant();
        v11 = objc_msgSendSuper2(&v13, sel_init);

        return v11;
      }

      v5 = v7;
    }
  }

  type metadata accessor for PresenceSessionParticipant();
  swift_deallocPartialClassInstance();
  return 0;
}

id PresenceSessionParticipant.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PresenceSessionParticipant.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresenceSessionParticipant();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AttachmentLedgerClient.Config.participantIDSalt.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

CopresenceCore::AttachmentLedgerClient::Config __swiftcall AttachmentLedgerClient.Config.init(participantIDSalt:createTopicMaxAttempts:createTopicRpcRetryIntervalSeconds:)(Swift::String participantIDSalt, Swift::Int createTopicMaxAttempts, Swift::Double createTopicRpcRetryIntervalSeconds)
{
  *v3 = participantIDSalt;
  *(v3 + 16) = createTopicMaxAttempts;
  *(v3 + 24) = createTopicRpcRetryIntervalSeconds;
  result.participantIDSalt = participantIDSalt;
  result.createTopicRpcRetryIntervalSeconds = createTopicRpcRetryIntervalSeconds;
  result.createTopicMaxAttempts = createTopicMaxAttempts;
  return result;
}

uint64_t AttachmentLedgerClient.config.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  *a1 = v1[3];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t AttachmentLedgerClient.__allocating_init(serviceProvider:config:localParticipantID:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v10 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of ContiguousBytes(a1, v6 + 56);
  *(v6 + 24) = v10;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 96) = a3;
  return v6;
}

uint64_t AttachmentLedgerClient.init(serviceProvider:config:localParticipantID:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v8 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of ContiguousBytes(a1, v3 + 56);
  *(v3 + 24) = v8;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  *(v3 + 96) = a3;
  return v3;
}

uint64_t AttachmentLedgerClient.__allocating_init(client:config:localParticipantID:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v11 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = type metadata accessor for PluginAttachmentLedgerServiceProvider();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v15[3] = v8;
  v15[4] = &protocol witness table for PluginAttachmentLedgerServiceProvider;
  v15[0] = v9;
  v12 = v11;
  v13 = v6;
  v14 = v7;
  return (*(v3 + 136))(v15, &v12, a3);
}

uint64_t AttachmentLedgerClient.updateVirtualParticipant(_:localParticipantID:)(void *a1, uint64_t a2)
{
  v5 = v2[10];
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v5);
  return (*(v6 + 56))([a1 identifier], a2, v5, v6);
}

uint64_t AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v22 = a2;
  TopicRequest = type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  v5 = *(TopicRequest - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](TopicRequest - 8);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v2[10];
  v12 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v13);
  *v11 = (*(v12 + 8))(v13, v12);
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v14)
  {
    outlined init with copy of AttachmentLedger_CreateTopicRequest(v21, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AttachmentLedger_CreateTopicRequest);
    v16 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    outlined init with take of AttachmentLedger_CreateTopicRequest(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AttachmentLedger_CreateTopicRequest);
    *(v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicC13ConfigurationVSgs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicC13ConfigurationVSgs5Error_pGMR);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();

    return Future.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(void (*a1)(__int128 *), void (*a2)(__int128 *), void *a3, uint64_t *a4, uint64_t a5)
{
  v42 = a5;
  TopicRequest = type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  v10 = *(TopicRequest - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](TopicRequest - 8);
  v13 = v12;
  v14 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a4;
  v15 = a4[1];
  swift_beginAccess();
  v17 = a3[2];
  if (!*(v17 + 16))
  {
    goto LABEL_8;
  }

  v18 = a3[2];

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
  if ((v20 & 1) == 0)
  {

    goto LABEL_8;
  }

  v21 = *(*(v17 + 56) + 8 * v19);

  (*(*v21 + 288))(&v43, v22);
  if (!(v46 >> 62))
  {
    goto LABEL_12;
  }

  if (v46 >> 62 != 1)
  {
    v37 = v44 | *(&v43 + 1);
    if (v46 != 0x8000000000000000 || v37 | v43 | *(&v44 + 1) | v45 | v47)
    {
      v39 = v45 | v47;
      v40 = *(&v44 + 1);
      v41 = v43;
      v38 = v46;
      outlined consume of PluginAttachmentLedgerTopic.State(v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46);
      if (v38 != 0x8000000000000000 || v41 != 1 || v37 | v40 | v39)
      {
        goto LABEL_6;
      }

LABEL_13:
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      LOWORD(v46) = 1;
      a1(&v43);
    }

LABEL_12:
    outlined consume of PluginAttachmentLedgerTopic.State(v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46);
    goto LABEL_13;
  }

  outlined consume of PluginAttachmentLedgerTopic.State(v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46);
LABEL_6:

LABEL_8:
  v23 = a3[10];
  v24 = a3[11];
  __swift_project_boxed_opaque_existential_1(a3 + 7, v23);
  v41 = (*(v24 + 24))(a4, v23, v24);
  outlined init with copy of AttachmentLedger_CreateTopicRequest(a4, v14, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  v25 = a1;
  v26 = *(v10 + 80);
  v39 = a4;
  v40 = a3;
  v27 = a2;
  v28 = (v26 + 16) & ~v26;
  v29 = v14;
  v30 = (v13 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  outlined init with take of AttachmentLedger_CreateTopicRequest(v29, v31 + v28, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  v32 = (v31 + v30);
  *v32 = v25;
  v32[1] = v27;
  outlined init with copy of AttachmentLedger_CreateTopicRequest(v39, v29, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  v33 = (v26 + 48) & ~v26;
  v34 = swift_allocObject();
  v35 = v40;
  v34[2] = v42;
  v34[3] = v35;
  v34[4] = v25;
  v34[5] = v27;
  outlined init with take of AttachmentLedger_CreateTopicRequest(v29, v34 + v33, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  swift_retain_n();

  specialized Publisher.sinkOnce(_:onError:)(partial apply for closure #1 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:), v31, partial apply for closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:), v34);
}

void closure #1 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v90 = a2;
  TopicResponse = type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  v8 = *(*(TopicResponse - 8) + 64);
  MEMORY[0x1EEE9AC00](TopicResponse);
  v10 = (&v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore35AttachmentLedger_CreateTopicRequestVSgMd, &_s14CopresenceCore35AttachmentLedger_CreateTopicRequestVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v86 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v79 - v15;
  TopicRequest = type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  v85 = *(TopicRequest - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x1EEE9AC00](TopicRequest);
  v83 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v84 = &v79 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v79 - v21;
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v23 = *(Topic - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](Topic);
  v92 = (&v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v25);
  v89 = &v79 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v79 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v79 - v36;
  if (*(a1 + 8) == 1 && (*a1 - 1) <= 1)
  {
    v81 = a3;
    v82 = a4;
    v38 = *(TopicResponse + 28);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v38, &v79 - v36, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
    v39 = *(v23 + 48);
    v40 = v39(v37, 1, Topic);
    outlined destroy of NSObject?(v37, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
    if (v40 == 1)
    {
      v41 = 0;
      v42 = 0uLL;
      v43 = 0uLL;
      v44 = v81;
    }

    else
    {
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v38, v35, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
      if (v39(v35, 1, Topic) == 1)
      {
        v52 = v30;
        *v30 = 0;
        *(v30 + 1) = 0;
        *(v30 + 4) = 0;
        v53 = &v30[*(Topic + 36)];
        UnknownStorage.init()();
        v54 = v39(v35, 1, Topic);
        v44 = v81;
        if (v54 != 1)
        {
          outlined destroy of NSObject?(v35, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
        }
      }

      else
      {
        v52 = v30;
        outlined init with take of AttachmentLedger_CreateTopicRequest(v35, v30, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
        v44 = v81;
      }

      v55 = v89;
      if (one-time initialization token for attachmentLedgerService != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Log.attachmentLedgerService);
      outlined init with copy of AttachmentLedger_CreateTopicRequest(v52, v55, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
      v57 = v91;
      outlined init with copy of AttachmentLedger_CreateTopicRequest(v90, v91, type metadata accessor for AttachmentLedger_CreateTopicRequest);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        LODWORD(v81) = v59;
        LODWORD(v90) = v40;
        v60 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v93 = v80;
        *v60 = 136315394;
        lazy protocol witness table accessor for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse.ClientTopicConfig and conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
        v61 = Message.debugDescription.getter();
        v63 = v62;
        outlined destroy of AttachmentLedger_CreateTopicRequest(v55, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v93);

        *(v60 + 4) = v64;
        *(v60 + 12) = 2080;
        v65 = v88;
        outlined init with copy of AttachmentLedger_CreateTopicRequest(v57, v88, type metadata accessor for AttachmentLedger_CreateTopicRequest);
        v66 = v85;
        v67 = TopicRequest;
        (*(v85 + 56))(v65, 0, 1, TopicRequest);
        v68 = v86;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v65, v86, &_s14CopresenceCore35AttachmentLedger_CreateTopicRequestVSgMd, &_s14CopresenceCore35AttachmentLedger_CreateTopicRequestVSgMR);
        if ((*(v66 + 48))(v68, 1, v67) == 1)
        {
          v69 = 0xE300000000000000;
          v70 = 7104878;
        }

        else
        {
          v71 = v44;
          v72 = v58;
          v73 = v84;
          outlined init with take of AttachmentLedger_CreateTopicRequest(v68, v84, type metadata accessor for AttachmentLedger_CreateTopicRequest);
          outlined init with copy of AttachmentLedger_CreateTopicRequest(v73, v83, type metadata accessor for AttachmentLedger_CreateTopicRequest);
          v70 = String.init<A>(reflecting:)();
          v69 = v74;
          v75 = v73;
          v58 = v72;
          v44 = v71;
          outlined destroy of AttachmentLedger_CreateTopicRequest(v75, type metadata accessor for AttachmentLedger_CreateTopicRequest);
        }

        outlined destroy of NSObject?(v65, &_s14CopresenceCore35AttachmentLedger_CreateTopicRequestVSgMd, &_s14CopresenceCore35AttachmentLedger_CreateTopicRequestVSgMR);
        outlined destroy of AttachmentLedger_CreateTopicRequest(v57, type metadata accessor for AttachmentLedger_CreateTopicRequest);
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v69, v93);

        *(v60 + 14) = v76;
        _os_log_impl(&dword_1AEB26000, v58, v81, "[CreateTopic] Received server-specified topic-config, config=%s for request=%s", v60, 0x16u);
        v77 = v80;
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v77, -1, -1);
        MEMORY[0x1B27120C0](v60, -1, -1);

        v40 = v90;
      }

      else
      {

        outlined destroy of AttachmentLedger_CreateTopicRequest(v57, type metadata accessor for AttachmentLedger_CreateTopicRequest);
        outlined destroy of AttachmentLedger_CreateTopicRequest(v55, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
      }

      v78 = v92;
      outlined init with copy of AttachmentLedger_CreateTopicRequest(v52, v92, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
      PluginAttachmentLedgerTopic.Configuration.init(proto:)(v78, v93);
      outlined destroy of AttachmentLedger_CreateTopicRequest(v52, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
      v42 = *v93;
      v43 = *&v93[16];
      v41 = *&v93[32];
    }

    *v93 = v42;
    *&v93[16] = v43;
    *&v93[32] = v41;
    v94 = v40 == 1;
    v44(v93);
  }

  else
  {
    if (one-time initialization token for attachmentLedgerService != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Log.attachmentLedgerService);
    outlined init with copy of AttachmentLedger_CreateTopicRequest(a1, v10, type metadata accessor for AttachmentLedger_CreateTopicResponse);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      v49 = *v10;
      outlined destroy of AttachmentLedger_CreateTopicRequest(v10, type metadata accessor for AttachmentLedger_CreateTopicResponse);
      *(v48 + 4) = v49;
      _os_log_impl(&dword_1AEB26000, v46, v47, "[CreateTopic] Failed, unexpected response-status, code=%ld", v48, 0xCu);
      MEMORY[0x1B27120C0](v48, -1, -1);
    }

    else
    {
      outlined destroy of AttachmentLedger_CreateTopicRequest(v10, type metadata accessor for AttachmentLedger_CreateTopicResponse);
    }

    type metadata accessor for AttachmentLedgerTopicError(0);
    lazy protocol witness table accessor for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest(&lazy protocol witness table cache variable for type AttachmentLedgerTopicError and conformance AttachmentLedgerTopicError, type metadata accessor for AttachmentLedgerTopicError);
    v50 = swift_allocError();
    *v51 = 0xD000000000000017;
    v51[1] = 0x80000001AEE304C0;
    swift_storeEnumTagMultiPayload();
    *v93 = v50;
    memset(&v93[8], 0, 32);
    v94 = 256;
    a3(v93);
    outlined consume of Result<PluginAttachmentLedgerTopic.Configuration?, Error>(*v93, *&v93[8], *&v93[16], *&v93[24], *&v93[32], v94, SHIBYTE(v94));
  }
}

void closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id *), void (*a5)(id *), uint64_t a6)
{
  v87 = a6;
  v99 = a4;
  v100 = a5;
  v102 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v95 = *(v8 - 8);
  v96 = v8;
  v9 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for DispatchQoS();
  v92 = *(v94 - 8);
  v11 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TopicRequest = type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  v84 = *(TopicRequest - 8);
  v14 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](TopicRequest - 8);
  v85 = v15;
  v86 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchTimeInterval();
  v82 = *(v83 - 8);
  v16 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v81 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for DispatchTime();
  v89 = *(v18 - 8);
  v90 = v18;
  v19 = *(v89 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v97 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v88 = &v79 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v79 - v28;
  v30 = type metadata accessor for PluginRpcError();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v79 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v79 - v39;
  if (one-time initialization token for attachmentLedgerService != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Log.attachmentLedgerService);
  v101 = a1;
  outlined init with copy of AttachmentLedger_CreateTopicRequest(a1, v40, type metadata accessor for PluginRpcError);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  v44 = os_log_type_enabled(v42, v43);
  v98 = a2;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    aBlock = v80;
    *v45 = 136315138;
    outlined init with copy of AttachmentLedger_CreateTopicRequest(v40, v29, type metadata accessor for PluginRpcError);
    (*(v31 + 56))(v29, 0, 1, v30);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v29, v27, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
    if ((*(v31 + 48))(v27, 1, v30) == 1)
    {
      v46 = 0xE300000000000000;
      v47 = 7104878;
    }

    else
    {
      outlined init with take of AttachmentLedger_CreateTopicRequest(v27, v38, type metadata accessor for PluginRpcError);
      outlined init with copy of AttachmentLedger_CreateTopicRequest(v38, v35, type metadata accessor for PluginRpcError);
      v47 = String.init<A>(reflecting:)();
      v46 = v49;
      outlined destroy of AttachmentLedger_CreateTopicRequest(v38, type metadata accessor for PluginRpcError);
    }

    v48 = v102;
    outlined destroy of NSObject?(v29, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
    outlined destroy of AttachmentLedger_CreateTopicRequest(v40, type metadata accessor for PluginRpcError);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, &aBlock);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_1AEB26000, v42, v43, "Failed to CreateTopic due to error: %s", v45, 0xCu);
    v51 = v80;
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    MEMORY[0x1B27120C0](v51, -1, -1);
    MEMORY[0x1B27120C0](v45, -1, -1);

    a2 = v98;
  }

  else
  {

    outlined destroy of AttachmentLedger_CreateTopicRequest(v40, type metadata accessor for PluginRpcError);
    v48 = v102;
  }

  v52 = v101;
  if (*(v48 + 5) == a2)
  {
    type metadata accessor for AttachmentLedgerTopicError(0);
    lazy protocol witness table accessor for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest(&lazy protocol witness table cache variable for type AttachmentLedgerTopicError and conformance AttachmentLedgerTopicError, type metadata accessor for AttachmentLedgerTopicError);
    v53 = swift_allocError();
    outlined init with copy of AttachmentLedger_CreateTopicRequest(v52, v54, type metadata accessor for PluginRpcError);
    swift_storeEnumTagMultiPayload();
    aBlock = v53;
    v105 = 0u;
    v106 = 0u;
    LOWORD(v107) = 256;
    v99(&aBlock);
    outlined consume of Result<PluginAttachmentLedgerTopic.Configuration?, Error>(aBlock, v105, *(&v105 + 1), v106, *(&v106 + 1), v107, SBYTE1(v107));
    return;
  }

  v55 = *(v48 + 10);
  v56 = *(v48 + 11);
  __swift_project_boxed_opaque_existential_1(v48 + 7, v55);
  v57 = (*(v56 + 8))(v55, v56);
  static DispatchTime.now()();
  v58 = *(v48 + 6);
  if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v58 < 9.22337204e18)
  {
    v59 = v81;
    *v81 = v58;
    v60 = *MEMORY[0x1E69E7F48];
    v102 = v57;
    v61 = v82;
    v62 = v83;
    (*(v82 + 104))(v59, v60, v83);
    v63 = v88;
    v64 = v97;
    MEMORY[0x1B270FBE0](v97, v59);
    (*(v61 + 8))(v59, v62);
    v65 = v90;
    v66 = *(v89 + 8);
    v66(v64, v90);
    v67 = v86;
    outlined init with copy of AttachmentLedger_CreateTopicRequest(v87, v86, type metadata accessor for AttachmentLedger_CreateTopicRequest);
    v68 = (*(v84 + 80) + 24) & ~*(v84 + 80);
    v69 = (v85 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    *(v70 + 16) = v48;
    outlined init with take of AttachmentLedger_CreateTopicRequest(v67, v70 + v68, type metadata accessor for AttachmentLedger_CreateTopicRequest);
    v71 = v99;
    *(v70 + v69) = v98;
    v72 = (v70 + ((v69 + 15) & 0xFFFFFFFFFFFFFFF8));
    v73 = v100;
    *v72 = v71;
    v72[1] = v73;
    *(&v106 + 1) = partial apply for closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:);
    v107 = v70;
    aBlock = MEMORY[0x1E69E9820];
    *&v105 = 1107296256;
    *(&v105 + 1) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *&v106 = &block_descriptor_0;
    v74 = _Block_copy(&aBlock);

    v75 = v91;
    static DispatchQoS.unspecified.getter();
    v103 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v76 = v93;
    v77 = v96;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v78 = v102;
    MEMORY[0x1B2710670](v63, v75, v76, v74);
    _Block_release(v74);

    (*(v95 + 8))(v76, v77);
    (*(v92 + 8))(v75, v94);
    v66(v63, v65);

    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    (*(*result + 152))(a2, a3 + 1);
    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    *(v8 + 24) = a5;
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    *(v9 + 24) = a5;
    swift_retain_n();
    specialized Publisher.sinkOnce(_:onError:)(partial apply for closure #1 in closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:), v8, partial apply for closure #2 in closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:), v9);
  }

  return result;
}

void closure #2 in closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(id *a1, void (*a2)(id *))
{
  v9 = *a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 256;
  v3 = v9;
  a2(&v9);
  v4 = v9;
  v5 = v10;
  v6 = v11;
  v7 = HIBYTE(v12);
  v8 = v12;

  outlined consume of Result<PluginAttachmentLedgerTopic.Configuration?, Error>(v4, v5, *(&v5 + 1), v6, *(&v6 + 1), v8, v7);
}

uint64_t AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  TopicRequest = type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  v11 = *(*(TopicRequest - 8) + 64);
  MEMORY[0x1EEE9AC00](TopicRequest);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = a1;
  v27 = a2;
  lazy protocol witness table accessor for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  static Message.with(_:)();
  v14 = *(v4 + 80);
  v15 = *(v4 + 88);
  __swift_project_boxed_opaque_existential_1((v5 + 56), *(v5 + 80));
  v16 = (*(v15 + 8))(v14, v15);
  v20 = v5;
  v21 = a1;
  v22 = a2;
  v23 = v13;
  v24 = a3;
  v25 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR);
  OS_dispatch_queue.sync<A>(execute:)();

  v17 = v28;
  outlined destroy of AttachmentLedger_CreateTopicRequest(v13, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  return v17;
}

uint64_t closure #2 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v24 = a7;
  TopicRequest = type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  v14 = *(TopicRequest - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](TopicRequest - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_CreateTopicRequest(a4, v16, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  outlined init with copy of UserNotificationCenter(a5, v25);
  v17 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  outlined init with take of AttachmentLedger_CreateTopicRequest(v16, v19 + v17, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  outlined init with take of ContiguousBytes(v25, v19 + v18);
  *(v19 + ((v18 + 47) & 0xFFFFFFFFFFFFFFF8)) = a6;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();

  result = Future.init(_:)();
  *v24 = result;
  return result;
}

uint64_t closure #1 in closure #2 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)(void (*a1)(__int128 *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v39 = a1;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  swift_beginAccess();
  v17 = a3[2];
  v18 = *(v17 + 16);

  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
  if ((v20 & 1) == 0)
  {

    goto LABEL_8;
  }

  v21 = *(*(v17 + 56) + 8 * v19);

  (*(*v21 + 288))(&v40, v22);
  if (!(v44 >> 62))
  {
    goto LABEL_11;
  }

  if (v44 >> 62 == 1)
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v40, *(&v40 + 1), v41, v42, v43, v44);
LABEL_6:

LABEL_8:
    (*(*a3 + 152))(a6, 0);
    outlined init with copy of UserNotificationCenter(a7, &v40);
    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = a5;
    v23[5] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<PluginAttachmentLedgerTopic, Error>) -> ();
    v23[6] = v16;
    outlined init with take of ContiguousBytes(&v40, (v23 + 7));
    v23[12] = a8;
    v24 = swift_allocObject();
    *(v24 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<PluginAttachmentLedgerTopic, Error>) -> ();
    *(v24 + 24) = v16;

    specialized Publisher.sinkOnce(_:onError:)(partial apply for closure #1 in closure #1 in closure #2 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:), v23, partial apply for closure #2 in closure #1 in closure #2 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:), v24);
  }

  if (v44 != 0x8000000000000000 || v41 | *(&v40 + 1) | v40 | v42 | v43 | v45)
  {
    v35 = v43 | v45;
    v36 = v41 | *(&v40 + 1);
    v37 = v42;
    v38 = v40;
    v34 = v44;
    outlined consume of PluginAttachmentLedgerTopic.State(v40, *(&v40 + 1), v41, v42, v43, v44);
    if (v34 != 0x8000000000000000 || v38 != 1 || v36 | v37 | v35)
    {
      goto LABEL_6;
    }
  }

  else
  {
LABEL_11:
    outlined consume of PluginAttachmentLedgerTopic.State(v40, *(&v40 + 1), v41, v42, v43, v44);
  }

  if (one-time initialization token for attachmentLedgerService != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.attachmentLedgerService);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v40 = v30;
    *v29 = 136315138;
    v31 = PluginAttachmentLedgerTopic.description.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v40);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_1AEB26000, v27, v28, "[CreateTopic] Topic already exists. Returning %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1B27120C0](v30, -1, -1);
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  *&v40 = v21;
  BYTE8(v40) = 0;

  v39(&v40);
}

uint64_t closure #1 in closure #1 in closure #2 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, uint64_t a7, void *a8)
{
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  v18 = *(a1 + 40);
  swift_beginAccess();
  v19 = *(a2 + 16);
  if (!*(v19 + 16))
  {
LABEL_8:
    if (v18)
    {
      v13 = 2;
      v14 = 1.0;
      v25 = 3;
    }

    else
    {
      v25 = v15;
    }

    if (v18)
    {
      v17 = 1.0;
      v16 = 10.0;
    }

    outlined init with copy of UserNotificationCenter(a2 + 56, &v48);
    outlined init with copy of UserNotificationCenter(a7, v56);
    v55[0] = v13;
    *&v55[1] = v14;
    v55[2] = v25;
    *&v55[3] = v17;
    *&v55[4] = v16;
    v26 = *(a2 + 96);
    v27 = type metadata accessor for PluginAttachmentLedgerTopic(0);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();

    v23 = PluginAttachmentLedgerTopic.init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:)(a3, a4, &v48, v56, v55, v26, a8);
    swift_beginAccess();

    v30 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56[0] = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, a3, a4, isUniquelyReferenced_nonNull_native);

    *(a2 + 16) = v56[0];
    swift_endAccess();

    v32 = a5;
    goto LABEL_14;
  }

  v20 = *(a2 + 16);

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  if ((v22 & 1) == 0)
  {

    goto LABEL_8;
  }

  v23 = *(*(v19 + 56) + 8 * v21);

  (*(*v23 + 288))(&v48, v24);
  if (!(v53 >> 62))
  {
    goto LABEL_17;
  }

  if (v53 >> 62 == 1)
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v48, v49, v50, v51, v52, v53);
LABEL_6:

    goto LABEL_8;
  }

  if (v53 != 0x8000000000000000 || v50 | v49 | v48 | v51 | v52 | v54)
  {
    v43 = v52 | v54;
    v44 = v50 | v49;
    v45 = v51;
    v46 = v48;
    v42 = v53;
    outlined consume of PluginAttachmentLedgerTopic.State(v48, v49, v50, v51, v52, v53);
    if (v42 != 0x8000000000000000 || v46 != 1 || v44 | v45 | v43)
    {
      goto LABEL_6;
    }
  }

  else
  {
LABEL_17:
    outlined consume of PluginAttachmentLedgerTopic.State(v48, v49, v50, v51, v52, v53);
  }

  if (one-time initialization token for attachmentLedgerService != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Log.attachmentLedgerService);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v32 = a5;
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v48 = v38;
    *v37 = 136315138;
    v39 = PluginAttachmentLedgerTopic.description.getter();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v48);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_1AEB26000, v35, v36, "[CreateTopic] Topic already exists. Returning %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1B27120C0](v38, -1, -1);
    MEMORY[0x1B27120C0](v37, -1, -1);
  }

LABEL_14:
  v32(v23, 0);
}

void *AttachmentLedgerClient.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  return v0;
}

uint64_t AttachmentLedgerClient.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(void (*a1)(__int128 *), void (*a2)(__int128 *))
{
  v5 = *(type metadata accessor for AttachmentLedger_CreateTopicRequest(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(a1, a2, v8, (v2 + v6), v7);
}

uint64_t partial apply for closure #1 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1[1];

  *a1 = v4;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AttachmentLedgerClient.Config(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for AttachmentLedgerClient.Config(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)(void (*a1)(__int128 *), uint64_t a2)
{
  v5 = *(type metadata accessor for AttachmentLedger_CreateTopicRequest(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = *(v2 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #2 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)(a1, a2, v8, v9, v10, v2 + v6, v2 + v7, v11);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<PluginAttachmentLedgerTopic, Error>) -> ()(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t partial apply for closure #2 in closure #1 in closure #2 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, 1);
}

uint64_t outlined consume of PluginAttachmentLedgerTopic.State(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >> 62 == 1)
  {
  }

  if (!(a6 >> 62))
  {
  }

  return result;
}

void partial apply for closure #1 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_CreateTopicRequest(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  closure #1 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(a1, v1 + v4, v6, v7);
}

void partial apply for closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_CreateTopicRequest(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)()
{
  v1 = *(type metadata accessor for AttachmentLedger_CreateTopicRequest(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(v4, v0 + v2, v5, v7, v8);
}

void outlined consume of Result<PluginAttachmentLedgerTopic.Configuration?, Error>(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v4;
  v10 = v5;
  v11 = 0;
  return v2(v8);
}

uint64_t outlined init with copy of AttachmentLedger_CreateTopicRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AttachmentLedger_CreateTopicRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of AttachmentLedger_CreateTopicRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t one-time initialization function for $traceID()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCy10Foundation4UUIDVSgGMd, &_ss9TaskLocalCy10Foundation4UUIDVSgGMR);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static AsyncSerialQueue.$traceID = result;
  return result;
}

uint64_t *AsyncSerialQueue.$traceID.unsafeMutableAddressor()
{
  if (one-time initialization token for $traceID != -1)
  {
    swift_once();
  }

  return &static AsyncSerialQueue.$traceID;
}

uint64_t static AsyncSerialQueue.$traceID.getter()
{
  if (one-time initialization token for $traceID != -1)
  {
    swift_once();
  }
}

uint64_t static AsyncSerialQueue.traceID.getter()
{
  if (one-time initialization token for $traceID != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t AsyncSerialQueue.traceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AsyncSerialQueue.init(priority:bufferingPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v57 = a1;
  v55 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v44 - v5;
  v54 = type metadata accessor for UUID();
  v58 = *(v54 - 8);
  v6 = *(v58 + 64);
  v7 = MEMORY[0x1EEE9AC00](v54);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyyyYaYbcGMd, &_sScSyyyYaYbcGMR);
  v48 = *(v50 - 8);
  v16 = *(v48 + 64);
  v17 = MEMORY[0x1EEE9AC00](v50);
  v45 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GSgMd, &_sScS12ContinuationVyyyYaYbc_GSgMR);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v44 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  v28 = *(v27 - 8);
  (*(v28 + 56))(v26, 1, 1, v27);
  v51 = v12;
  v52 = v11;
  (*(v12 + 16))(v15, v59, v11);
  v60 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syyYaYbcMd, &_syyYaYbcMR);
  v56 = v19;
  AsyncStream.init(_:bufferingPolicy:_:)();
  UUID.init()();
  v29 = *(v58 + 16);
  v30 = v55;
  v31 = v10;
  v32 = v54;
  v29();
  v46 = v26;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v26, v24, &_sScS12ContinuationVyyyYaYbc_GSgMd, &_sScS12ContinuationVyyyYaYbc_GSgMR);
  result = (*(v28 + 48))(v24, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v34 = type metadata accessor for AsyncSerialQueue();
    (*(v28 + 32))(v30 + *(v34 + 20), v24, v27);
    v35 = v53;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v57, v53, &_sScPSgMd, &_sScPSgMR);
    v36 = v49;
    v44 = v31;
    (v29)(v49, v31, v32);
    v37 = v48;
    v38 = v45;
    v39 = v50;
    (*(v48 + 16))(v45, v56, v50);
    v40 = v58;
    v41 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v42 = (v47 + *(v37 + 80) + v41) & ~*(v37 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    (*(v40 + 32))(v43 + v41, v36, v32);
    (*(v37 + 32))(v43 + v42, v38, v39);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v35, &async function pointer to partial apply for closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:), v43);

    (*(v51 + 8))(v59, v52);
    outlined destroy of NSObject?(v57, &_sScPSgMd, &_sScPSgMR);
    (*(v40 + 8))(v44, v32);
    (*(v37 + 8))(v56, v39);
    return outlined destroy of NSObject?(v46, &_sScS12ContinuationVyyyYaYbc_GSgMd, &_sScS12ContinuationVyyyYaYbc_GSgMR);
  }

  return result;
}

uint64_t closure #1 in AsyncSerialQueue.init(priority:bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of NSObject?(a2, &_sScS12ContinuationVyyyYaYbc_GSgMd, &_sScS12ContinuationVyyyYaYbc_GSgMR);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t type metadata accessor for AsyncSerialQueue()
{
  result = type metadata singleton initialization cache for AsyncSerialQueue;
  if (!type metadata singleton initialization cache for AsyncSerialQueue)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:), 0, 0);
}

uint64_t closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)()
{
  if (one-time initialization token for $traceID != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *(v6 + 16) = v2;
  v7 = *(MEMORY[0x1E69E8950] + 4);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:);
  v9 = v0[5];
  v10 = v0[2];

  return MEMORY[0x1EEE6DE98](v10, v9, &async function pointer to partial apply for closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:), v6, 0, 0, 0xD000000000000025, 0x80000001AEE304E0);
}

void closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 48);
    outlined destroy of NSObject?(*(v2 + 40), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t partial apply for closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyyyYaYbcGMd, &_sScSyyyYaYbcGMR) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVyyyYaYbc_GMd, &_sScS8IteratorVyyyYaYbc_GMR);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:), 0, 0);
}

uint64_t closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyyyYaYbcGMd, &_sScSyyyYaYbcGMR);
  AsyncStream.makeAsyncIterator()();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:);
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:), 0, 0);
}

{
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v6 = (v1 + *v1);
    v2 = v1[1];
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:);

    return v6();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v5 = v0[1];

    return v5();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *v0;

  _sxRi_zRi0_zlyytIseghHr_SgWOe(v4);
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v5;
  v7[1] = closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:);
  v8 = v1[7];
  v9 = v1[5];

  return MEMORY[0x1EEE6D9C8](v1 + 2, 0, 0, v9);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of NSObject?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of NSObject?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t AsyncSerialQueue.perform(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *(type metadata accessor for AsyncSerialQueue() + 20);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v12[0] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();
  v12[1] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](AsyncSerialQueue.performAndWaitFor<A>(_:), 0, 0);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](AsyncSerialQueue.performAndWaitFor<A>(_:), 0, 0);
}

uint64_t AsyncSerialQueue.performAndWaitFor<A>(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = AsyncSerialQueue.performAndWaitFor<A>(_:);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return withUnsafeContinuation<A>(isolation:_:)(v5, 0, 0, partial apply for closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:), v1);
}

{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = AsyncSerialQueue.performAndWaitFor<A>(_:);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return withUnsafeThrowingContinuation<A>(isolation:_:)(v5, 0, 0, partial apply for closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:), v1);
}

{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](AsyncSerialQueue.performAndWaitFor<A>(_:), 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t partial apply for closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1)
{
  return closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(a1, v1[3], v1[4], v1[5], v1[2], &unk_1F249EE60, &unk_1F249EE88, &async function pointer to partial apply for closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:), &thunk for @escaping @callee_guaranteed @Sendable @async () -> ()partial apply);
}

{
  return closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(a1, v1[3], v1[4], v1[5], v1[2], &unk_1F249EE10, &unk_1F249EE38, &async function pointer to partial apply for closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:), &thunk for @escaping @callee_guaranteed @Sendable @async () -> ()partial apply);
}

uint64_t closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = *(*(a4 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[4] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);

  return v11(v7);
}

{
  v4[3] = a1;
  v4[4] = a4;
  v6 = *(a4 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v4[6] = v8;
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  v4[7] = v10;
  *v10 = v4;
  v10[1] = closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);

  return v12(v8);
}

uint64_t closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:), 0, 0);
}

{
  (*(*(v0[3] - 8) + 32))(*(*(v0[2] + 64) + 40), v0[4]);
  swift_continuation_resume();

  v1 = v0[1];

  return v1();
}

{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  }

  else
  {
    v3 = closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[4];
  (*(v0[5] + 32))(*(*(v0[3] + 64) + 40), v0[6]);
  swift_continuation_throwingResume();
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  UnsafeContinuation.resume(throwing:)((v0 + 2), v1, v2, v3);
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t withUnsafeContinuation<A>(isolation:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](withUnsafeContinuation<A>(isolation:_:), v6, v8);
}

uint64_t withUnsafeContinuation<A>(isolation:_:)()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = withUnsafeContinuation<A>(isolation:_:);
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[0] = a8;
  v21[1] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a1;
  v18[4] = a3;
  v18[5] = a4;
  LODWORD(a5) = *(type metadata accessor for AsyncSerialQueue() + 20);
  v19 = swift_allocObject();
  *(v19 + 16) = v21[0];
  *(v19 + 24) = v18;
  v21[2] = a9;
  v21[3] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v14 + 8))(v17, v13);
}

uint64_t UnsafeContinuation.resume(throwing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v6, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t withUnsafeThrowingContinuation<A>(isolation:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](withUnsafeThrowingContinuation<A>(isolation:_:), v6, v8);
}

uint64_t withUnsafeThrowingContinuation<A>(isolation:_:)()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = withUnsafeThrowingContinuation<A>(isolation:_:);
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

Swift::Int AsyncSerialQueue.Condition.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AsyncSerialQueue.Condition and conformance AsyncSerialQueue.Condition()
{
  result = lazy protocol witness table cache variable for type AsyncSerialQueue.Condition and conformance AsyncSerialQueue.Condition;
  if (!lazy protocol witness table cache variable for type AsyncSerialQueue.Condition and conformance AsyncSerialQueue.Condition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AsyncSerialQueue.Condition and conformance AsyncSerialQueue.Condition);
  }

  return result;
}

void type metadata completion function for AsyncSerialQueue()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AsyncStream<@Sendable ()>.Continuation();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for AsyncStream<@Sendable ()>.Continuation()
{
  if (!lazy cache variable for type metadata for AsyncStream<@Sendable ()>.Continuation)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syyYaYbcMd, &_syyYaYbcMR);
    v0 = type metadata accessor for AsyncStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<@Sendable ()>.Continuation);
    }
  }
}

uint64_t getEnumTagSinglePayload for AsyncSerialQueue.Condition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AsyncSerialQueue.Condition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v6(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v5);
}

uint64_t partial apply for closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(v3, v5, v4, v2);
}

{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(v3, v5, v4, v2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t partial apply for closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)(a1, v4);
}

uint64_t specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);

  return v6();
}

{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);

  return v6(v2 + 16);
}

uint64_t specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  }

  else
  {
    v3 = specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 16);
  swift_continuation_throwingResume();
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_allocError();
  *v3 = v1;
  swift_continuation_throwingResumeWithError();
  v4 = v0[1];

  return v4();
}

{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  }

  else
  {
    v3 = specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  **(*(v0[3] + 64) + 40) = v0[2];
  swift_continuation_throwingResume();
  v1 = v0[1];

  return v1();
}

{
  v1 = v0[5];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_allocError();
  *v3 = v1;
  swift_continuation_throwingResumeWithError();
  v4 = v0[1];

  return v4();
}

uint64_t PresenceDataSource.assertPresence()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[5] = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceDataSource.assertPresence(), 0, 0);
}

uint64_t PresenceDataSource.assertPresence()()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];
  v14 = v0[3];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v2, AssociatedConformanceWitness);
  v5 = *(v14 + 64);
  v13 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = PresenceDataSource.assertPresence();
  v8 = v0[7];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return v13(v8, v11, v9);
}

{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  v6[9] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](AsyncSerialQueue.performAndWaitFor<A>(_:), 0, 0);
  }

  else
  {
    v7 = v6[7];

    v8 = v6[1];

    return v8();
  }
}

uint64_t PresenceConfiguration.presenceIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PresenceConfiguration.presenceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PresenceConfiguration.clientIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PresenceConfiguration.clientIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall PresenceConfiguration.init(presenceIdentifier:isPersonal:clientIdentifier:)(CopresenceCore::PresenceConfiguration *__return_ptr retstr, Swift::String presenceIdentifier, Swift::Bool isPersonal, Swift::String clientIdentifier)
{
  retstr->isPersonal = isPersonal;
  retstr->presenceIdentifier = presenceIdentifier;
  retstr->clientIdentifier = clientIdentifier;
}

uint64_t static PresenceConfiguration.meToMe(clientIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _StringGuts.grow(_:)(16);

  MEMORY[0x1B2710020](0x43654D6F54654D2ELL, 0xEE006C656E6E6168);
  *a3 = 1;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
}

uint64_t SKPresenceDataSource.members.didset(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;
  v9 = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in SKPresenceDataSource.members.didset, v8);
}

uint64_t closure #1 in SKPresenceDataSource.members.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in SKPresenceDataSource.members.didset, 0, 0);
}

uint64_t closure #1 in SKPresenceDataSource.members.didset()
{
  v60 = v0;
  v1 = *(v0 + 48);
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 40)) + 0x88))();
  *(v0 + 56) = v3;

  v4 = specialized Set.subtracting(_:)(v3, v1);
  v5 = v4;
  if ((v4 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 40);
      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Log.service);

      v8 = v6;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = *(v0 + 40);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v59[0] = v13;
        *v12 = 136315394;
        *(v0 + 32) = v5;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore17AddressableMemberCGMd, &_sShy14CopresenceCore17AddressableMemberCGMR);
        v14 = String.init<A>(reflecting:)();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v59);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2080;
        v17 = v11 + direct field offset for SKPresenceDataSource.presenceIdentifier;
        v2 = MEMORY[0x1E69E7D40];
        *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v17, *(v17 + 8), v59);
        _os_log_impl(&dword_1AEB26000, v9, v10, "Removing members: %s from presence for identifier: %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v13, -1, -1);
        MEMORY[0x1B27120C0](v12, -1, -1);
      }

      v18 = *(v0 + 40);
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore17AddressableMemberCG_SSs5NeverOTg504_s14d42Core20SKPresenceDataSourceC7membersShyAA17fG21CGvWyyYacfU_SSAFXEfU_Tf1cn_nTm(v5);
      v20 = v19;
      *(v0 + 64) = v19;

      v21 = *((*v2 & *v18) + 0xF8);
      v57 = (v21 + *v21);
      v22 = v21[1];
      v23 = swift_task_alloc();
      *(v0 + 72) = v23;
      *v23 = v0;
      v23[1] = closure #1 in SKPresenceDataSource.members.didset;
      v24 = *(v0 + 40);
      v25 = v20;
      v26 = v57;

      return v26(v25);
    }
  }

  else if (*(v4 + 16))
  {
    goto LABEL_3;
  }

  v28 = specialized Set.subtracting(_:)(*(v0 + 48), *(v0 + 56));
  v29 = v28;
  if ((v28 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_13:
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v30 = *(v0 + 40);
      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Log.service);
      v32 = v30;

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = *(v0 + 40);
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v59[0] = v37;
        *v36 = 136315394;
        *(v0 + 24) = v29;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore17AddressableMemberCGMd, &_sShy14CopresenceCore17AddressableMemberCGMR);
        v38 = String.init<A>(reflecting:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v59);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        *(v36 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v35 + direct field offset for SKPresenceDataSource.presenceIdentifier), *(v35 + direct field offset for SKPresenceDataSource.presenceIdentifier + 8), v59);
        _os_log_impl(&dword_1AEB26000, v33, v34, "Adding members: %s to presence for identifier: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v37, -1, -1);
        MEMORY[0x1B27120C0](v36, -1, -1);
      }

      v41 = *(v0 + 40);
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore17AddressableMemberCG_SSs5NeverOTg504_s14d42Core20SKPresenceDataSourceC7membersShyAA17fG21CGvWyyYacfU_SSAFXEfU_Tf1cn_nTm(v29);
      v43 = v42;
      *(v0 + 88) = v42;

      v44 = *((*v2 & *v41) + 0xE8);
      v58 = (v44 + *v44);
      v45 = v44[1];
      v46 = swift_task_alloc();
      *(v0 + 96) = v46;
      *v46 = v0;
      v46[1] = closure #1 in SKPresenceDataSource.members.didset;
      v47 = *(v0 + 40);
      v25 = v43;
      v26 = v58;

      return v26(v25);
    }
  }

  else if (*(v28 + 16))
  {
    goto LABEL_13;
  }

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 40);
  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Log.service);
  v50 = v48;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = *(v0 + 40);
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v59[0] = v55;
    *v54 = 136315138;
    *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v53 + direct field offset for SKPresenceDataSource.presenceIdentifier), *(v53 + direct field offset for SKPresenceDataSource.presenceIdentifier + 8), v59);
    _os_log_impl(&dword_1AEB26000, v51, v52, "Successfully updated members for identifier: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x1B27120C0](v55, -1, -1);
    MEMORY[0x1B27120C0](v54, -1, -1);
  }

  v56 = *(v0 + 8);

  return v56();
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = closure #1 in SKPresenceDataSource.members.didset;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = closure #1 in SKPresenceDataSource.members.didset;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v34 = v0;
  v1 = v0[10];
  v2 = specialized Set.subtracting(_:)(v0[6], v0[7]);
  v3 = v2;
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v4 = v0[5];
      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Log.service);
      v6 = v4;

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = v0[5];
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v33[0] = v11;
        *v10 = 136315394;
        v0[3] = v3;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore17AddressableMemberCGMd, &_sShy14CopresenceCore17AddressableMemberCGMR);
        v12 = String.init<A>(reflecting:)();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v33);

        *(v10 + 4) = v14;
        *(v10 + 12) = 2080;
        *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v9 + direct field offset for SKPresenceDataSource.presenceIdentifier), *(v9 + direct field offset for SKPresenceDataSource.presenceIdentifier + 8), v33);
        _os_log_impl(&dword_1AEB26000, v7, v8, "Adding members: %s to presence for identifier: %s", v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v11, -1, -1);
        MEMORY[0x1B27120C0](v10, -1, -1);
      }

      v15 = v0[5];
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore17AddressableMemberCG_SSs5NeverOTg504_s14d42Core20SKPresenceDataSourceC7membersShyAA17fG21CGvWyyYacfU_SSAFXEfU_Tf1cn_nTm(v3);
      v17 = v16;
      v0[11] = v16;

      v18 = *((*MEMORY[0x1E69E7D40] & *v15) + 0xE8);
      v32 = (v18 + *v18);
      v19 = v18[1];
      v20 = swift_task_alloc();
      v0[12] = v20;
      *v20 = v0;
      v20[1] = closure #1 in SKPresenceDataSource.members.didset;
      v21 = v0[5];

      return v32(v17);
    }
  }

  else if (*(v2 + 16))
  {
    goto LABEL_3;
  }

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v23 = v0[5];
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Log.service);
  v25 = v23;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v0[5];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v28 + direct field offset for SKPresenceDataSource.presenceIdentifier), *(v28 + direct field offset for SKPresenceDataSource.presenceIdentifier + 8), v33);
    _os_log_impl(&dword_1AEB26000, v26, v27, "Successfully updated members for identifier: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1B27120C0](v30, -1, -1);
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  v31 = v0[1];

  return v31();
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = closure #1 in SKPresenceDataSource.members.didset;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = closure #1 in SKPresenceDataSource.members.didset;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v12 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + direct field offset for SKPresenceDataSource.presenceIdentifier), *(v6 + direct field offset for SKPresenceDataSource.presenceIdentifier + 8), &v11);
    _os_log_impl(&dword_1AEB26000, v4, v5, "Successfully updated members for identifier: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9();
}

{
  v20 = v0;
  v1 = v0[7];

  v2 = v0[10];
  v3 = v0[8];

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.service);
  v6 = v4;
  v7 = v2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v10 + direct field offset for SKPresenceDataSource.presenceIdentifier), *(v10 + direct field offset for SKPresenceDataSource.presenceIdentifier + 8), &v19);
    *(v11 + 12) = 2080;
    v0[2] = v2;
    v13 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_1AEB26000, v8, v9, "Failed to update members for identifier: %s with error: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

{
  v19 = v0;
  v1 = v0[13];
  v2 = v0[11];

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v3 = v0[5];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.service);
  v5 = v3;
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v9 + direct field offset for SKPresenceDataSource.presenceIdentifier), *(v9 + direct field offset for SKPresenceDataSource.presenceIdentifier + 8), &v18);
    *(v10 + 12) = 2080;
    v0[2] = v1;
    v12 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_1AEB26000, v7, v8, "Failed to update members for identifier: %s with error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore17AddressableMemberCG_SSs5NeverOTg504_s14d42Core20SKPresenceDataSourceC7membersShyAA17fG21CGvWyyYacfU_SSAFXEfU_Tf1cn_nTm(uint64_t a1)
{
  v1 = a1;
  v37 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v44 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v39 = v44;
    if (v37)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v41 = v3;
    v42 = v4;
    v43 = v37 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v35 = v1 + 56;
      v34 = v1 + 64;
      v36 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_37;
        }

        v9 = v41;
        v10 = v43;
        v38 = v42;
        v11 = v1;
        specialized Set.subscript.getter(v41, v42, v43, v1);
        v13 = v12;
        v14 = OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle;
        v15 = [*&v12[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] normalizedValue];
        if (!v15)
        {
          v15 = [*&v13[v14] value];
        }

        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = v39;
        v44 = v39;
        v22 = *(v39 + 16);
        v21 = *(v39 + 24);
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v20 = v44;
        }

        *(v20 + 16) = v22 + 1;
        v23 = v20 + 16 * v22;
        *(v23 + 32) = v17;
        *(v23 + 40) = v19;
        v39 = v20;
        if (v37)
        {
          if (!v10)
          {
            goto LABEL_42;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy14CopresenceCore17AddressableMemberC_GMd, &_sSh5IndexVy14CopresenceCore17AddressableMemberC_GMR);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v40, 0);
          if (v6 == v36)
          {
LABEL_34:
            outlined consume of Set<AddressableMember>.Index._Variant(v41, v42, v43);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_43;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v1 = v11;
          v24 = 1 << *(v11 + 32);
          if (v9 >= v24)
          {
            goto LABEL_38;
          }

          v25 = v9 >> 6;
          v26 = *(v35 + 8 * (v9 >> 6));
          if (((v26 >> v9) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v11 + 36) != v38)
          {
            goto LABEL_40;
          }

          v27 = v26 & (-2 << (v9 & 0x3F));
          if (v27)
          {
            v24 = __clz(__rbit64(v27)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v36;
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (v34 + 8 * v25);
            v2 = v36;
            while (v29 < (v24 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                outlined consume of Set<AddressableMember>.Index._Variant(v9, v38, 0);
                v24 = __clz(__rbit64(v31)) + v28;
                goto LABEL_33;
              }
            }

            outlined consume of Set<AddressableMember>.Index._Variant(v9, v38, 0);
          }

LABEL_33:
          v33 = *(v11 + 36);
          v41 = v24;
          v42 = v33;
          v43 = 0;
          if (v6 == v2)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t SKPresenceDataSource.members.setter(uint64_t a1)
{
  v3 = direct field offset for SKPresenceDataSource.members;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  SKPresenceDataSource.members.didset(v4);
}

void (*SKPresenceDataSource.members.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = direct field offset for SKPresenceDataSource.members;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return SKPresenceDataSource.members.modify;
}

void SKPresenceDataSource.members.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    SKPresenceDataSource.members.setter(v5);
    v6 = *v3;
  }

  else
  {
    SKPresenceDataSource.members.setter(*v3);
  }

  free(v2);
}

uint64_t property wrapper backing initializer of SKPresenceDataSource.presentDevices@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1;
  swift_getExtendedExistentialTypeMetadata();
  v3 = type metadata accessor for Array();
  return CurrentSubject.init(wrappedValue:)(&v5, v3, a2);
}

uint64_t SKPresenceDataSource.presentDevices.getter()
{
  v3 = *(v0 + direct field offset for SKPresenceDataSource._presentDevices);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for Array();
  type metadata accessor for CurrentSubject();
  CurrentSubject.wrappedValue.getter();
  return v2;
}

uint64_t SKPresenceDataSource.presentDevices.setter()
{
  v3 = *(v0 + direct field offset for SKPresenceDataSource._presentDevices);
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);

  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for Array();
  type metadata accessor for CurrentSubject();
  specialized CurrentSubject.wrappedValue.setter();
}

uint64_t SKPresenceDataSource.$presentDevices.getter()
{
  v3 = *(v0 + direct field offset for SKPresenceDataSource._presentDevices);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for Array();
  type metadata accessor for CurrentSubject();
  protocol witness for FastSyncAnalyticsReporterProtocol.maxPartcipantsInSession.getter in conformance FastSyncAnalyticsReporter();
}

uint64_t SKPresenceDataSource.presentDevicesPublisher.getter()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0) + 184;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))();
  v4 = *(v1 - 104);
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for Array();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  v2 = Publisher.eraseToAnyPublisher()();

  return v2;
}

char *specialized SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(unsigned __int8 *a1, void *a2)
{
  return specialized SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(a1, a2, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMR, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMR);
}

{
  return specialized SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(a1, a2, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD27ActivityListPresenceContextV0L0AdEPRts_XPGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD27ActivityListPresenceContextV0L0AdEPRts_XPGs5NeverOGMR, &_s14CopresenceCore20SKPresenceDataSourceCyAA27ActivityListPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA27ActivityListPresenceContextVGMR);
}

char *specialized SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(unsigned __int8 *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v53 = a5;
  v54 = a6;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v50 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  *&v6[direct field offset for SKPresenceDataSource.members] = MEMORY[0x1E69E7CD0];
  v18 = direct field offset for SKPresenceDataSource._presentDevices;
  v19 = MEMORY[0x1E69E7CC0];
  v56 = MEMORY[0x1E69E7CC0];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = CurrentValueSubject.init(_:)();
  v45 = v6;
  *&v6[v18] = v23;
  v24 = *(a1 + 2);
  v48 = *(a1 + 1);
  v25 = &v6[direct field offset for SKPresenceDataSource.presenceIdentifier];
  *v25 = v48;
  v25[1] = v24;
  v44[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v56 = 0;
  v57 = 0xE000000000000000;

  _StringGuts.grow(_:)(21);

  v56 = 0xD000000000000013;
  v57 = 0x80000001AEE30510;
  v26 = *v25;
  v27 = v25[1];

  MEMORY[0x1B2710020](v26, v27);

  v49 = a2;
  static DispatchQoS.unspecified.getter();
  v56 = v19;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v51 + 104))(v50, *MEMORY[0x1E69E8090], v52);
  v28 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v29 = v45;
  *&v45[direct field offset for SKPresenceDataSource.queue] = v28;
  v31 = *(a1 + 3);
  v30 = *(a1 + 4);
  v32 = objc_allocWithZone(MEMORY[0x1E69D45F8]);
  v33 = MEMORY[0x1B270FF70](v31, v30);
  v34 = [v32 initWithServiceIdentifier_];

  [v34 setIsPersonal_];
  v35 = objc_allocWithZone(MEMORY[0x1E69D45F0]);
  v36 = MEMORY[0x1B270FF70](v48, v24);
  v37 = [v35 initWithPresenceIdentifier:v36 options:v34];

  *&v29[direct field offset for SKPresenceDataSource.presence] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v53, v54);
  v55.receiver = v29;
  v55.super_class = v38;
  v39 = objc_msgSendSuper2(&v55, sel_init);
  v40 = *&v39[direct field offset for SKPresenceDataSource.presence];
  v41 = *&v39[direct field offset for SKPresenceDataSource.queue];
  v42 = v39;
  [v40 addDelegate:v42 queue:v41];

  return v42;
}

char *SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v42 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v38 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  *&v3[direct field offset for SKPresenceDataSource.members] = MEMORY[0x1E69E7CD0];
  v15 = direct field offset for SKPresenceDataSource._presentDevices;
  v48 = *((v7 & v6) + 0x50);
  v45 = v48;
  swift_getExtendedExistentialTypeMetadata();
  v16 = static Array._allocateUninitialized(_:)();
  v46 = *((v7 & v6) + 0x58);
  property wrapper backing initializer of SKPresenceDataSource.presentDevices(v16, &v48);
  *&v3[v15] = v48;
  v37 = a1;
  v17 = *(a1 + 16);
  v39 = *(a1 + 8);
  v18 = &v3[direct field offset for SKPresenceDataSource.presenceIdentifier];
  *v18 = v39;
  *(v18 + 1) = v17;
  v36[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v48 = 0;
  v49 = 0xE000000000000000;

  _StringGuts.grow(_:)(21);

  v48 = 0xD000000000000013;
  v49 = 0x80000001AEE30510;
  v19 = *v18;
  v20 = *(v18 + 1);

  MEMORY[0x1B2710020](v19, v20);

  v41 = a2;
  static DispatchQoS.unspecified.getter();
  v48 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v43 + 104))(v42, *MEMORY[0x1E69E8090], v44);
  *&v3[direct field offset for SKPresenceDataSource.queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22 = *(v37 + 24);
  v21 = *(v37 + 32);
  v23 = v37;
  v24 = objc_allocWithZone(MEMORY[0x1E69D45F8]);
  v25 = MEMORY[0x1B270FF70](v22, v21);
  v26 = [v24 initWithServiceIdentifier_];

  [v26 setIsPersonal_];
  v27 = objc_allocWithZone(MEMORY[0x1E69D45F0]);
  v28 = MEMORY[0x1B270FF70](v39, v17);
  v29 = [v27 initWithPresenceIdentifier:v28 options:v26];

  *&v3[direct field offset for SKPresenceDataSource.presence] = v29;
  v30 = type metadata accessor for SKPresenceDataSource();
  v47.receiver = v3;
  v47.super_class = v30;
  v31 = objc_msgSendSuper2(&v47, sel_init);
  v32 = *&v31[direct field offset for SKPresenceDataSource.presence];
  v33 = *&v31[direct field offset for SKPresenceDataSource.queue];
  v34 = v31;
  [v32 addDelegate:v34 queue:v33];

  return v34;
}

id PresenceConfiguration.options.getter()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = objc_allocWithZone(MEMORY[0x1E69D45F8]);
  v4 = MEMORY[0x1B270FF70](v1, v2);
  v5 = [v3 initWithServiceIdentifier_];

  [v5 setIsPersonal_];
  return v5;
}

uint64_t SKPresenceDataSource.assertPresence(using:)(uint64_t a1)
{
  v2[50] = a1;
  v2[51] = v1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v2[52] = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *((v4 & v3) + 0x50);
  v2[53] = v5;
  v6 = type metadata accessor for Optional();
  v2[54] = v6;
  v7 = *(v6 - 8);
  v2[55] = v7;
  v8 = *(v7 + 64) + 15;
  v2[56] = swift_task_alloc();
  v9 = *(v5 - 8);
  v2[57] = v9;
  v10 = *(v9 + 64) + 15;
  v2[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](SKPresenceDataSource.assertPresence(using:), 0, 0);
}

uint64_t SKPresenceDataSource.assertPresence(using:)()
{
  v40 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[53];
  v4 = v0[50];
  v5 = v0[51];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.host);
  v7 = *(v2 + 16);
  v7(v1, v4, v3);
  v8 = v5;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[57];
  v13 = v0[58];
  if (v11)
  {
    v34 = v7;
    v38 = v10;
    v14 = v0[55];
    v15 = v0[56];
    v16 = v0[53];
    v35 = v0[54];
    log = v9;
    v17 = v0[51];
    v33 = v0[58];
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39[0] = v36;
    *v18 = 136315394;
    v19 = [*(v17 + direct field offset for SKPresenceDataSource.presence) presenceIdentifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v39);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v34(v15, v33, v16);
    (*(v12 + 56))(v15, 0, 1, v16);
    v24 = >> prefix<A>(_:)(v15, v16);
    v26 = v25;
    (*(v14 + 8))(v15, v35);
    (*(v12 + 8))(v33, v16);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v39);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_1AEB26000, log, v38, "Asserting presence for identifier: %s using context: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v36, -1, -1);
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  else
  {
    v28 = v0[53];

    (*(v12 + 8))(v13, v28);
  }

  static Task<>.checkCancellation()();
  v0[59] = 0;
  v29 = *(v0[51] + direct field offset for SKPresenceDataSource.presence);
  v0[60] = v29;
  v0[2] = v0;
  v0[3] = SKPresenceDataSource.assertPresence(using:);
  v30 = swift_continuation_init();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[61] = v31;
  v0[33] = v31;
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[29] = &block_descriptor_1;
  v0[30] = v30;
  [v29 retainTransientSubscriptionAssertionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 496) = v2;
  if (v2)
  {
    v3 = SKPresenceDataSource.assertPresence(using:);
  }

  else
  {
    v3 = SKPresenceDataSource.assertPresence(using:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[59];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0 + 10;
    v0[65] = v1;
    v3 = v0[60];
    v4 = v0[61];
    v0[10] = v0;
    v0[11] = SKPresenceDataSource.assertPresence(using:);
    v5 = swift_continuation_init();
    v0[41] = v4;
    v0[34] = MEMORY[0x1E69E9820];
    v0[35] = 1107296256;
    v0[36] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[37] = &block_descriptor_6;
    v0[38] = v5;
    [v3 releaseTransientSubscriptionAssertionWithCompletion_];
  }

  else
  {
    v2 = v0 + 18;
    v6 = v0[60];
    v7 = v0[61];
    v8 = v0[50];
    (*(*(*(v0[52] + 88) + 8) + 16))(v0[53]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v0[63] = isa;

    v0[18] = v0;
    v0[19] = SKPresenceDataSource.assertPresence(using:);
    v10 = swift_continuation_init();
    v0[49] = v7;
    v0[42] = MEMORY[0x1E69E9820];
    v0[43] = 1107296256;
    v0[44] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[45] = &block_descriptor_9;
    v0[46] = v10;
    [v6 assertPresenceWithPresencePayloadDictionary:isa completion:v0 + 42];
  }

  return MEMORY[0x1EEE6DEC8](v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 512) = v2;
  if (v2)
  {
    v3 = SKPresenceDataSource.assertPresence(using:);
  }

  else
  {
    v3 = SKPresenceDataSource.assertPresence(using:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 464);
  v2 = *(v0 + 448);

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = v0[62];
  swift_willThrow();
  v2 = v0[62];
  v3 = v0[58];
  v4 = v0[56];

  v5 = v0[1];

  return v5();
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 528) = v2;
  if (v2)
  {
    v3 = SKPresenceDataSource.assertPresence(using:);
  }

  else
  {
    v3 = SKPresenceDataSource.assertPresence(using:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[65];
  swift_willThrow();
  v2 = v0[65];
  v3 = v0[58];
  v4 = v0[56];

  v5 = v0[1];

  return v5();
}

{
  v2 = v0[63];
  v1 = v0[64];
  swift_willThrow();

  v0[65] = v0[64];
  v3 = v0[60];
  v4 = v0[61];
  v0[10] = v0;
  v0[11] = SKPresenceDataSource.assertPresence(using:);
  v5 = swift_continuation_init();
  v0[41] = v4;
  v0[34] = MEMORY[0x1E69E9820];
  v0[35] = 1107296256;
  v0[36] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[37] = &block_descriptor_6;
  v0[38] = v5;
  [v3 releaseTransientSubscriptionAssertionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

{
  v1 = v0[66];
  swift_willThrow();

  v2 = v0[65];
  swift_willThrow();
  v3 = v0[65];
  v4 = v0[58];
  v5 = v0[56];

  v6 = v0[1];

  return v6();
}

uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_allocError();
    *v5 = a2;
    v6 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

uint64_t SKPresenceDataSource.releasePresence()()
{
  *(v1 + 208) = v0;
  return MEMORY[0x1EEE6DFA0](SKPresenceDataSource.releasePresence(), 0, 0);
}

{
  v19 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = [*(v6 + direct field offset for SKPresenceDataSource.presence) presenceIdentifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Releasing presence for identifier: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v14 = *(v0[26] + direct field offset for SKPresenceDataSource.presence);
  v0[27] = v14;
  v0[2] = v0;
  v0[3] = SKPresenceDataSource.releasePresence();
  v15 = swift_continuation_init();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[28] = v16;
  v0[25] = v16;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[21] = &block_descriptor_13;
  v0[22] = v15;
  [v14 releasePresenceWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = SKPresenceDataSource.releasePresence();
  }

  else
  {
    v3 = SKPresenceDataSource.releasePresence();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[28];
  v0[10] = v0;
  v0[11] = SKPresenceDataSource.releasePresence();
  v3 = swift_continuation_init();
  v0[25] = v2;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[21] = &block_descriptor_16;
  v0[22] = v3;
  [v1 releaseTransientSubscriptionAssertionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = SKPresenceDataSource.releasePresence();
  }

  else
  {
    v3 = SKPresenceDataSource.releasePresence();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  v1 = v0[29];
  swift_willThrow();

  v2 = v0[27];
  v3 = v0[28];
  v0[10] = v0;
  v0[11] = SKPresenceDataSource.releasePresence();
  v4 = swift_continuation_init();
  v0[25] = v3;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[21] = &block_descriptor_16;
  v0[22] = v4;
  [v2 releaseTransientSubscriptionAssertionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

{
  v1 = *(v0 + 240);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t SKPresenceDataSource.inviteHandle(_:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](SKPresenceDataSource.inviteHandle(_:), 0, 0);
}

uint64_t SKPresenceDataSource.inviteHandle(_:)()
{
  v26 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v1 = v0[20];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.host);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[19];
    v8 = v0[20];
    v9 = v0[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v7, &v25);
    *(v10 + 12) = 2080;
    v12 = [*(v8 + direct field offset for SKPresenceDataSource.presence) presenceIdentifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v25);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Inviting handle %s to presence for identifier: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  v17 = v0[19];
  v18 = v0[18];
  v19 = *(v0[20] + direct field offset for SKPresenceDataSource.presence);
  v20 = objc_allocWithZone(MEMORY[0x1E69D45E8]);
  v21 = MEMORY[0x1B270FF70](v18, v17);
  v22 = [v20 initWithString_];
  v0[21] = v22;

  v0[2] = v0;
  v0[3] = SKPresenceDataSource.inviteHandle(_:);
  v23 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_19;
  v0[14] = v23;
  [v19 inviteHandleFromPrimaryAccountHandle:v22 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = SKPresenceDataSource.inviteHandle(_:);
  }

  else
  {
    v3 = SKPresenceDataSource.inviteHandle(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t SKPresenceDataSource.inviteHandles(_:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](SKPresenceDataSource.inviteHandles(_:), 0, 0);
}

uint64_t SKPresenceDataSource.inviteHandles(_:)()
{
  v32 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v3, static Log.host);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[18];
    v8 = v0[19];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315394;
    v11 = MEMORY[0x1B2710180](v7, MEMORY[0x1E69E6158]);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v31);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = [*(v8 + direct field offset for SKPresenceDataSource.presence) presenceIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v31);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Inviting handles %s to presence for identifier: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v19 = v0[18];
  v20 = *(v0[19] + direct field offset for SKPresenceDataSource.presence);
  v0[21] = v20;
  v21 = *(v19 + 16);
  if (v21)
  {
    v31 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v22 = (v19 + 40);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      v25 = objc_allocWithZone(MEMORY[0x1E69D45E8]);

      v26 = MEMORY[0x1B270FF70](v23, v24);

      [v25 initWithString_];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v27 = *(v31 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v22 += 2;
      --v21;
    }

    while (v21);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SKHandle, 0x1E69D45E8);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[22] = isa;

  v0[2] = v0;
  v0[3] = SKPresenceDataSource.inviteHandles(_:);
  v29 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_23;
  v0[14] = v29;
  [v20 inviteHandlesFromPrimaryAccountHandle:isa completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = SKPresenceDataSource.inviteHandles(_:);
  }

  else
  {
    v3 = SKPresenceDataSource.inviteHandles(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 168);
    v8 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    v11 = MEMORY[0x1B2710180](v8, MEMORY[0x1E69E6158]);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = [v7 presenceIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v21);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Successfully invited handles %s to %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t SKPresenceDataSource.removeHandle(_:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](SKPresenceDataSource.removeHandle(_:), 0, 0);
}

uint64_t SKPresenceDataSource.removeHandle(_:)()
{
  v26 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v1 = v0[20];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.host);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[19];
    v8 = v0[20];
    v9 = v0[18];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v7, &v25);
    *(v10 + 12) = 2080;
    v12 = [*(v8 + direct field offset for SKPresenceDataSource.presence) presenceIdentifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v25);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Removing handle %s from presence for identifier:  %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  v17 = v0[19];
  v18 = v0[18];
  v19 = *(v0[20] + direct field offset for SKPresenceDataSource.presence);
  v20 = objc_allocWithZone(MEMORY[0x1E69D45E8]);
  v21 = MEMORY[0x1B270FF70](v18, v17);
  v22 = [v20 initWithString_];
  v0[21] = v22;

  v0[2] = v0;
  v0[3] = SKPresenceDataSource.removeHandle(_:);
  v23 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_27;
  v0[14] = v23;
  [v19 removeInvitedHandle:v22 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = SKPresenceDataSource.removeHandle(_:);
  }

  else
  {
    v3 = SKPresenceDataSource.removeHandle(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t SKPresenceDataSource.removeHandles(_:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](SKPresenceDataSource.removeHandles(_:), 0, 0);
}

uint64_t SKPresenceDataSource.removeHandles(_:)()
{
  v32 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v3, static Log.host);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[18];
    v8 = v0[19];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315394;
    v11 = MEMORY[0x1B2710180](v7, MEMORY[0x1E69E6158]);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v31);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = [*(v8 + direct field offset for SKPresenceDataSource.presence) presenceIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v31);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Removing handles %s from presence for identifier:  %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v19 = v0[18];
  v20 = *(v0[19] + direct field offset for SKPresenceDataSource.presence);
  v0[21] = v20;
  v21 = *(v19 + 16);
  if (v21)
  {
    v31 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v22 = (v19 + 40);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      v25 = objc_allocWithZone(MEMORY[0x1E69D45E8]);

      v26 = MEMORY[0x1B270FF70](v23, v24);

      [v25 initWithString_];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v27 = *(v31 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v22 += 2;
      --v21;
    }

    while (v21);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SKHandle, 0x1E69D45E8);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[22] = isa;

  v0[2] = v0;
  v0[3] = SKPresenceDataSource.removeHandles(_:);
  v29 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_31;
  v0[14] = v29;
  [v20 removeInvitedHandles:isa completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = SKPresenceDataSource.removeHandles(_:);
  }

  else
  {
    v3 = SKPresenceDataSource.removeHandles(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 168);
    v8 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    v11 = MEMORY[0x1B2710180](v8, MEMORY[0x1E69E6158]);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = [v7 presenceIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v21);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Successfully removed handles %s to %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t SKPresenceDataSource.presentDevicesChanged(for:)(void *a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = [a1 presentDevices];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SKPresentDevice, 0x1E69D4608);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = *((v3 & v2) + 0x50);
  v6 = *((v3 & v2) + 0x58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15SKPresentDeviceCGMd, &_sSaySo15SKPresentDeviceCGMR);
  swift_getExtendedExistentialTypeMetadata();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [SKPresentDevice] and conformance [A], &_sSaySo15SKPresentDeviceCGMd, &_sSaySo15SKPresentDeviceCGMR);
  Sequence.compactMap<A>(_:)();

  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.sorted(by:)();

  return SKPresenceDataSource.presentDevices.setter();
}

uint64_t closure #2 in SKPresenceDataSource.presentDevicesChanged(for:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v34 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v35 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = *(v12 + 40);
  v38 = v14;
  v39 = v15;
  v40 = v12;
  v41 = v13;
  v36 = v12 + 40;
  v15(v13, v12);
  v17 = a2[3];
  v16 = a2[4];
  v42 = a2;
  v18 = __swift_project_boxed_opaque_existential_1(a2, v17);
  v19 = *(v16 + 40);
  v34[1] = v18;
  v37 = v17;
  v20 = v17;
  v21 = v16;
  v22 = v19;
  v19(v20, v21);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v5 + 8);
  v23(v9, v4);
  v23(v11, v4);
  if (a1)
  {
    v24 = v35[3];
    v25 = v35[4];
    __swift_project_boxed_opaque_existential_1(v35, v24);
    v26 = (*(v25 + 24))(v24, v25);
    v28 = v27;
    v29 = v42[3];
    v30 = v42[4];
    __swift_project_boxed_opaque_existential_1(v42, v29);
    if (v26 == (*(v30 + 24))(v29, v30) && v28 == v31)
    {

      v32 = 0;
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v39(v41, v40);
    v22(v37, v21);
    v32 = static Date.< infix(_:_:)();
    v23(v9, v4);
    v23(v11, v4);
  }

  return v32 & 1;
}

void @objc SKPresenceDataSource.presentDevicesChanged(for:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SKPresenceDataSource.presentDevicesChanged(for:)(v4);
}

void SKPresenceDataSource.invitedHandlesChanged(for:)(void *a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.host);
  v4 = a1;
  v5 = v1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315394;
    v9 = [v4 invitedHandles];
    v10 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SKHandle, 0x1E69D45E8);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = MEMORY[0x1B2710180](v11, v10);
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v17);

    *(v7 + 4) = v15;
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v5[direct field offset for SKPresenceDataSource.presenceIdentifier], *&v5[direct field offset for SKPresenceDataSource.presenceIdentifier + 8], &v17);
    _os_log_impl(&dword_1AEB26000, oslog, v6, "Presence updated invited handles: %s for identifier: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }
}

void @objc SKPresenceDataSource.invitedHandlesChanged(for:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SKPresenceDataSource.invitedHandlesChanged(for:)(v4);
}

void @objc SKPresenceDataSource.presenceDaemonDisconnected(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized SKPresenceDataSource.presenceDaemonDisconnected(_:)();
}

id SKPresenceDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SKPresenceDataSource.init()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  specialized SKPresenceDataSource.init()();
}

void @objc SKPresenceDataSource.init()(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  specialized SKPresenceDataSource.init()();
}

id SKPresenceDataSource.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SKPresenceDataSource();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t @objc SKPresenceDataSource.__ivar_destroyer(uint64_t a1)
{
  v2 = *(a1 + direct field offset for SKPresenceDataSource.presenceIdentifier + 8);

  v3 = *(a1 + direct field offset for SKPresenceDataSource.members);

  v4 = *(a1 + direct field offset for SKPresenceDataSource._presentDevices);
}

uint64_t (*protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

uint64_t protocol witness for PresenceDataSource.assertPresence(using:) in conformance SKPresenceDataSource<A>(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v8(a1);
}

uint64_t protocol witness for PresenceDataSource.releasePresence() in conformance SKPresenceDataSource<A>()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v6();
}

uint64_t SKPresenceDataSource<>.init(personalPresenceDataSourceUsingClientIdentifier:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(16);

  v8[0] = a1;

  MEMORY[0x1B2710020](0x43654D6F54654D2ELL, 0xEE006C656E6E6168);
  LOBYTE(v8[0]) = 1;
  v8[1] = a1;
  v8[2] = a2;
  v8[3] = a1;
  v8[4] = a2;
  return (*(v3 + 200))(v8, a3);
}

uint64_t PresenceController.__allocating_init(config:targetQueue:)(unsigned __int8 *a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMR));
  v7 = a2;
  v8 = specialized SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(a1, a2, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMR, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMR);
  v9 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SKPresenceDataSource<EmptyPresenceContext> and conformance SKPresenceDataSource<A>, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMR);
  v10 = *(v3 + 184);
  v11 = lazy protocol witness table accessor for type EmptyPresenceContext and conformance EmptyPresenceContext();
  v12 = v10(v8, v9, &type metadata for EmptyPresenceContext, v11);

  return v12;
}

uint64_t PersonalPresenceController.__allocating_init<A>(dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  v8 = swift_allocObject();
  PersonalPresenceController.init<A>(dataSource:)(a1, v9, a3);
  return v8;
}

uint64_t PersonalPresenceController.init<A>(dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for AsyncSerialQueue();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8650], v6);
  AsyncSerialQueue.init(priority:bufferingPolicy:)(v14, v10, v18);
  outlined init with take of AsyncSerialQueue(v18, v3 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_workQueue);
  v20 = (v3 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_personalPresenceDataSource);
  *v20 = a1;
  v20[1] = a3;
  *(v3 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_currentActivityIDs) = MEMORY[0x1E69E7CD0];
  return v3;
}

uint64_t PersonalPresenceController.updatePersonalPresenceDataSource()()
{
  *(v1 + 80) = v0;
  return MEMORY[0x1EEE6DFA0](PersonalPresenceController.updatePersonalPresenceDataSource(), 0, 0);
}

{
  v30 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315138;
    v8 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_currentActivityIDs;
    swift_beginAccess();
    v0[9] = *(v5 + v8);

    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v29);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Update personal presence data source with current activity IDs: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  v12 = v0[10];
  v13 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_currentActivityIDs;
  swift_beginAccess();
  v14 = *(v12 + v13);
  v0[11] = v14;
  v15 = *(v14 + 16);
  v16 = v12 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_personalPresenceDataSource;
  v18 = *(v12 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_personalPresenceDataSource);
  v17 = *(v16 + 8);
  ObjectType = swift_getObjectType();
  if (v15)
  {
    v0[8] = v14;
    v20 = *(v17 + 64);

    v27 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[13] = v22;
    *v22 = v0;
    v22[1] = PersonalPresenceController.updatePersonalPresenceDataSource();

    return (v27)(v0 + 8, ObjectType, v17);
  }

  else
  {
    v24 = *(v17 + 72);
    v28 = (v24 + *v24);
    v25 = v24[1];
    v26 = swift_task_alloc();
    v0[12] = v26;
    *v26 = v0;
    v26[1] = PersonalPresenceController.updatePersonalPresenceDataSource();

    return v28(ObjectType, v17);
  }
}

{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(v4 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PersonalPresenceController.updatePersonalPresenceDataSource(), 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

{
  v1 = *(v0 + 112);
  return (*(v0 + 8))();
}

uint64_t PersonalPresenceController.presentDevicePublisher(for:)(uint64_t a1)
{
  v33 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v31 = v6;
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH27ActivityListPresenceContextV0N0AhIPRts_XPGs5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH27ActivityListPresenceContextV0N0AhIPRts_XPGs5NeverOGGMR);
  v39 = *(v36 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAJ27ActivityListPresenceContextV0O0AjKPRts_XPGs5NeverOGGSayAjK_pAJ05EmptynO0VAPRS_XPGGMd, &_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAJ27ActivityListPresenceContextV0O0AjKPRts_XPGs5NeverOGGSayAjK_pAJ05EmptynO0VAPRS_XPGGMR);
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v27 - v13;
  v14 = *(v1 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_personalPresenceDataSource + 8);
  v15 = *(v1 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_personalPresenceDataSource);
  ObjectType = swift_getObjectType();
  v30 = (*(v14 + 24))(ObjectType, v14);
  v40 = v30;
  v32 = *(v4 + 16);
  v28 = v3;
  v32(v7, a1, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v29 = *(v4 + 32);
  v29(v18 + v17, v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD27ActivityListPresenceContextV0K0AdEPRts_XPGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD27ActivityListPresenceContextV0K0AdEPRts_XPGs5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[any PresentDevice<Self.PresentDevice.Context == ActivityListPresenceContext>], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD27ActivityListPresenceContextV0K0AdEPRts_XPGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD27ActivityListPresenceContextV0K0AdEPRts_XPGs5NeverOGMR);
  v19 = v34;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v20 = v28;
  v32(v7, v33, v28);
  v21 = swift_allocObject();
  v29(v21 + v17, v7, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore13PresentDevice_pAA20EmptyPresenceContextV0G0AaBPRts_XPGMd, &_sSay14CopresenceCore13PresentDevice_pAA20EmptyPresenceContextV0G0AaBPRts_XPGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<AnyPublisher<[any PresentDevice<Self.PresentDevice.Context == ActivityListPresenceContext>], Never>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH27ActivityListPresenceContextV0N0AhIPRts_XPGs5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH27ActivityListPresenceContextV0N0AhIPRts_XPGs5NeverOGGMR);
  v23 = v35;
  v22 = v36;
  Publisher.map<A>(_:)();

  (*(v39 + 8))(v19, v22);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Publishers.HandleEvents<AnyPublisher<[any PresentDevice<Self.PresentDevice.Context == ActivityListPresenceContext>], Never>>, [any PresentDevice<Self.PresentDevice.Context == EmptyPresenceContext>]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAJ27ActivityListPresenceContextV0O0AjKPRts_XPGs5NeverOGGSayAjK_pAJ05EmptynO0VAPRS_XPGGMd, &_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAJ27ActivityListPresenceContextV0O0AjKPRts_XPGs5NeverOGGSayAjK_pAJ05EmptynO0VAPRS_XPGGMR);
  v24 = v37;
  v25 = Publisher.eraseToAnyPublisher()();
  (*(v38 + 8))(v23, v24);
  return v25;
}

void closure #1 in PersonalPresenceController.presentDevicePublisher(for:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  (*(v5 + 16))(v8, a2, v4);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315394;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore13PresentDevice_pAA27ActivityListPresenceContextV0H0AaBPRts_XPMd, &_s14CopresenceCore13PresentDevice_pAA27ActivityListPresenceContextV0H0AaBPRts_XPMR);
    v16 = MEMORY[0x1B2710180](v9, v15);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v24);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v5 + 8))(v8, v4);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v24);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1AEB26000, v11, v12, "Filtering multiplexed devices: %s for presence identifier: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t closure #2 in PersonalPresenceController.presentDevicePublisher(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v14[2] = a2;

  v5 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in closure #2 in PersonalPresenceController.presentDevicePublisher(for:), v14, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v19;
    v8 = v5 + 32;
    do
    {
      outlined init with copy of UserNotificationCenter(v8, v15);
      v9 = v16;
      v10 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      PresentDevice.withoutContext()(v9, v10, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v19 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v12 + 1;
      outlined init with take of ContiguousBytes(v18, v7 + 40 * v12 + 32);
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v7;
  return result;
}

uint64_t closure #1 in closure #2 in PersonalPresenceController.presentDevicePublisher(for:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 48))(&v8, v3, v4);
  v7[2] = a2;
  v5 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v7, v8);

  return v5 & 1;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      outlined init with copy of UserNotificationCenter(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        outlined init with take of ContiguousBytes(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = outlined init with take of ContiguousBytes(v15, v9 + 40 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t PersonalPresenceController.assertPresence(for:)(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v2[19] = *(v7 + 64);
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PersonalPresenceController.assertPresence(for:), 0, 0);
}

uint64_t PersonalPresenceController.assertPresence(for:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[12];
  v6 = v0[13];
  v0[21] = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_workQueue;
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[22] = v9;
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v6;

  return MEMORY[0x1EEE6DFA0](PersonalPresenceController.assertPresence(for:), 0, 0);
}

{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[13] + v0[21];
  v0[2] = v0;
  v0[3] = PersonalPresenceController.assertPresence(for:);
  v6 = swift_continuation_init();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &async function pointer to partial apply for closure #1 in PersonalPresenceController.assertPresence(for:);
  v7[4] = v1;
  LODWORD(v6) = *(type metadata accessor for AsyncSerialQueue() + 20);
  v8 = swift_allocObject();
  *(v8 + 16) = &async function pointer to partial apply for specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  *(v8 + 24) = v7;
  v0[10] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();
  v0[11] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](PersonalPresenceController.assertPresence(for:), 0, 0);
  }

  else
  {
    v4 = v1[22];
    v5 = v1[20];
    v6 = v1[16];

    v7 = v2[1];

    return v7();
  }
}

{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[16];

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t closure #1 in PersonalPresenceController.assertPresence(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v7 = *(v6 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PersonalPresenceController.assertPresence(for:), 0, 0);
}

uint64_t closure #1 in PersonalPresenceController.assertPresence(for:)()
{
  v43 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];
  v39 = type metadata accessor for Logger();
  v0[18] = __swift_project_value_buffer(v39, static Log.host);
  v5 = *(v2 + 16);
  v0[19] = v5;
  v0[20] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v38 = v5;
  v5(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[17];
  v10 = v0[12];
  v11 = v0[13];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    *v12 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v36 = v7;
    v16 = *(v11 + 8);
    v17 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v9, v10);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v42);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1AEB26000, v6, v36, "Asserting presence for activity ID: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x1B27120C0](v37, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  else
  {

    v16 = *(v11 + 8);
    v17 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v9, v10);
  }

  v20 = v0[15];
  v19 = v0[16];
  v21 = v0[12];
  v22 = v0[9];
  v23 = v0[10];
  v24 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_currentActivityIDs;
  v0[21] = v16;
  v0[22] = v24;
  swift_beginAccess();
  v38(v20, v22, v21);
  v41 = *(v23 + v24);

  specialized Set._Variant.insert(_:)(v19, v20);
  v0[23] = v17;
  v16(v19, v21);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v0[24] = __swift_project_value_buffer(v39, static Log.service);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v40 = v23;
    v27 = v0[12];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v42 = v29;
    *v28 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v30 = Set.description.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v42);
    v23 = v40;

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1AEB26000, v25, v26, "Updating activity list context to current activities: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1B27120C0](v29, -1, -1);
    MEMORY[0x1B27120C0](v28, -1, -1);
  }

  *(v23 + v24) = v41;
  swift_endAccess();
  v33 = swift_task_alloc();
  v0[25] = v33;
  *v33 = v0;
  v33[1] = closure #1 in PersonalPresenceController.assertPresence(for:);
  v34 = v0[10];

  return PersonalPresenceController.updatePersonalPresenceDataSource()();
}

{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in PersonalPresenceController.assertPresence(for:), 0, 0);
  }

  else
  {
    v5 = v3[16];
    v4 = v3[17];
    v7 = v3[14];
    v6 = v3[15];
    v8 = v3[11];

    v9 = v3[1];

    return v9();
  }
}

{
  v50 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  (*(v0 + 152))(*(v0 + 112), *(v0 + 72), *(v0 + 96));
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 208);
    v46 = *(v0 + 168);
    v47 = *(v0 + 184);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v49[0] = v11;
    *v10 = 136315394;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v46(v8, v9);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v49);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v0 + 64) = v7;
    v16 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v49);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Error asserting presence for activity ID: %s error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  else
  {
    v20 = *(v0 + 184);
    v21 = *(v0 + 168);
    v22 = *(v0 + 112);
    v23 = *(v0 + 96);

    v21(v22, v23);
  }

  v24 = *(v0 + 192);
  v25 = *(v0 + 176);
  v26 = *(v0 + 80);
  v27 = *(v0 + 88);
  v28 = *(v0 + 72);
  swift_beginAccess();
  v48 = *(v26 + v25);

  specialized Set._Variant.remove(_:)(v28, v27);
  outlined destroy of UUID?(v27);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v0 + 96);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v49[0] = v33;
    *v32 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v34 = Set.description.getter();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v49);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_1AEB26000, v29, v30, "Updating activity list context to current activities: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1B27120C0](v33, -1, -1);
    MEMORY[0x1B27120C0](v32, -1, -1);
  }

  v37 = *(v0 + 208);
  v38 = *(v0 + 128);
  v39 = *(v0 + 136);
  v41 = *(v0 + 112);
  v40 = *(v0 + 120);
  v42 = *(v0 + 88);
  *(*(v0 + 80) + *(v0 + 176)) = v48;
  swift_endAccess();
  swift_willThrow();

  v43 = *(v0 + 8);
  v44 = *(v0 + 208);

  return v43();
}

uint64_t PersonalPresenceController.releasePresence(for:)(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v2[19] = *(v7 + 64);
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PersonalPresenceController.releasePresence(for:), 0, 0);
}

uint64_t PersonalPresenceController.releasePresence(for:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[12];
  v6 = v0[13];
  v0[21] = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_workQueue;
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[22] = v9;
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v6;

  return MEMORY[0x1EEE6DFA0](PersonalPresenceController.releasePresence(for:), 0, 0);
}

{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[13] + v0[21];
  v0[2] = v0;
  v0[3] = PersonalPresenceController.releasePresence(for:);
  v6 = swift_continuation_init();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &async function pointer to partial apply for closure #1 in PersonalPresenceController.releasePresence(for:);
  v7[4] = v1;
  LODWORD(v6) = *(type metadata accessor for AsyncSerialQueue() + 20);
  v8 = swift_allocObject();
  *(v8 + 16) = &closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)specialized partial apply;
  *(v8 + 24) = v7;
  v0[10] = &thunk for @escaping @callee_guaranteed @Sendable @async () -> ()partial apply;
  v0[11] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](PersonalPresenceController.releasePresence(for:), 0, 0);
  }

  else
  {
    v4 = v1[22];
    v5 = v1[20];
    v6 = v1[16];

    v7 = v2[1];

    return v7();
  }
}

uint64_t closure #1 in PersonalPresenceController.releasePresence(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v7 = *(v6 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PersonalPresenceController.releasePresence(for:), 0, 0);
}

uint64_t closure #1 in PersonalPresenceController.releasePresence(for:)()
{
  v41 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];
  v37 = type metadata accessor for Logger();
  v0[18] = __swift_project_value_buffer(v37, static Log.host);
  v5 = *(v2 + 16);
  v0[19] = v5;
  v0[20] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[17];
  v10 = &OBJC_INSTANCE_METHODS_TUContactsDataSource_0;
  v12 = v0[12];
  v11 = v0[13];
  if (v8)
  {
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40 = v36;
    *v13 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v9, v12);
    v18 = v14;
    v10 = &OBJC_INSTANCE_METHODS_TUContactsDataSource_0;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v16, &v40);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Releasing presence for activity ID: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1B27120C0](v36, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v9, v12);
  }

  v21 = v0[10];
  v20 = v0[11];
  v22 = v0[9];
  v23 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_currentActivityIDs;
  v0[21] = v17;
  v0[22] = v23;
  swift_beginAccess();
  v39 = *(v21 + v23);

  specialized Set._Variant.remove(_:)(v22, v20);
  outlined destroy of UUID?(v20);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v0[23] = __swift_project_value_buffer(v37, static Log.service);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v0[12];
    v27 = swift_slowAlloc();
    v38 = v21;
    v28 = swift_slowAlloc();
    v40 = v28;
    *v27 = v10[337];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v29 = Set.description.getter();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v40);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_1AEB26000, v24, v25, "Updating activity list context to current activities: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v32 = v28;
    v21 = v38;
    MEMORY[0x1B27120C0](v32, -1, -1);
    MEMORY[0x1B27120C0](v27, -1, -1);
  }

  *(v21 + v23) = v39;
  swift_endAccess();
  v33 = swift_task_alloc();
  v0[24] = v33;
  *v33 = v0;
  v33[1] = closure #1 in PersonalPresenceController.releasePresence(for:);
  v34 = v0[10];

  return PersonalPresenceController.updatePersonalPresenceDataSource()();
}

{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in PersonalPresenceController.releasePresence(for:), 0, 0);
  }

  else
  {
    v5 = v3[16];
    v4 = v3[17];
    v7 = v3[14];
    v6 = v3[15];
    v8 = v3[11];

    v9 = v3[1];

    return v9();
  }
}

{
  v55 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  (*(v0 + 152))(*(v0 + 128), *(v0 + 72), *(v0 + 96));
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 200);
    v50 = *(v0 + 168);
    v8 = *(v0 + 128);
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v54[0] = v51;
    *v11 = 136315394;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v50(v8, v9);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v54);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v0 + 64) = v7;
    v16 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v54);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Error releasing presence for activity ID: %s error: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v51, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  else
  {
    v20 = *(v0 + 168);
    v21 = *(v0 + 128);
    v22 = *(v0 + 96);
    v23 = *(v0 + 104);

    v20(v21, v22);
  }

  v24 = *(v0 + 176);
  v52 = *(v0 + 184);
  v26 = *(v0 + 160);
  v25 = *(v0 + 168);
  v27 = *(v0 + 152);
  v29 = *(v0 + 112);
  v28 = *(v0 + 120);
  v30 = *(v0 + 96);
  v31 = *(v0 + 72);
  v32 = *(v0 + 80);
  swift_beginAccess();
  v27(v29, v31, v30);
  v53 = *(v32 + v24);

  specialized Set._Variant.insert(_:)(v28, v29);
  v25(v28, v30);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v0 + 96);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v54[0] = v37;
    *v36 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v38 = Set.description.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v54);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_1AEB26000, v33, v34, "Updating activity list context to current activities: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x1B27120C0](v37, -1, -1);
    MEMORY[0x1B27120C0](v36, -1, -1);
  }

  v41 = *(v0 + 200);
  v42 = *(v0 + 128);
  v43 = *(v0 + 136);
  v45 = *(v0 + 112);
  v44 = *(v0 + 120);
  v46 = *(v0 + 88);
  *(*(v0 + 80) + *(v0 + 176)) = v53;
  swift_endAccess();
  swift_willThrow();

  v47 = *(v0 + 8);
  v48 = *(v0 + 200);

  return v47();
}

uint64_t PersonalPresenceController.deinit()
{
  outlined destroy of AsyncSerialQueue(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_workQueue);
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_personalPresenceDataSource);
  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_currentActivityIDs);

  return v0;
}

uint64_t PersonalPresenceController.__deallocating_deinit()
{
  outlined destroy of AsyncSerialQueue(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_workQueue);
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_personalPresenceDataSource);
  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_currentActivityIDs);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void PersonalPresenceDataSource.members.getter()
{
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo21TUExternalParticipantC_Tt0g5Tf4g_nTm(MEMORY[0x1E69E7CC0], &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMd, &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMR, type metadata accessor for AddressableMember);
    }
  }
}

void (*PersonalPresenceDataSource.members.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo21TUExternalParticipantC_Tt0g5Tf4g_nTm(MEMORY[0x1E69E7CC0], &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMd, &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMR, type metadata accessor for AddressableMember);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *a1 = v2;
  return PersonalPresenceDataSource.members.modify;
}

void PersonalPresenceDataSource.members.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;

    specialized PersonalPresenceDataSource.members.setter();
  }

  else
  {
    v4 = *a1;

    specialized PersonalPresenceDataSource.members.setter();
  }
}

uint64_t PersonalPresenceDataSource.presentDevices.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource__presentDevices);

  CurrentValueSubject.value.getter();

  return v3;
}

uint64_t PersonalPresenceDataSource.presentDevices.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource__presentDevices);

  CurrentValueSubject.send(_:)();
}

uint64_t (*PersonalPresenceDataSource.presentDevices.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = *(v1 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource__presentDevices);

  CurrentValueSubject.value.getter();
  return PersonalPresenceDataSource.presentDevices.modify;
}

uint64_t PersonalPresenceDataSource.presentDevices.modify(void *a1, char a2)
{
  a1[1] = *a1;
  v2 = a1[2];
  if (a2)
  {

    CurrentValueSubject.send(_:)();

    v4 = *a1;
  }

  else
  {
    CurrentValueSubject.send(_:)();
  }
}

uint64_t PersonalPresenceDataSource.presentDevicesPublisher.getter()
{
  (*(*v0 + 160))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[any PresentDevice<Self.PresentDevice.Context == EmptyPresenceContext>], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMR);
  v1 = Publisher.eraseToAnyPublisher()();

  return v1;
}

uint64_t PersonalPresenceDataSource.cancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_cancellables;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t PersonalPresenceDataSource.__allocating_init(activityID:personalPresenceController:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = specialized PersonalPresenceDataSource.init(activityID:personalPresenceController:)(a1, a2);

  return v7;
}

uint64_t PersonalPresenceDataSource.init(activityID:personalPresenceController:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized PersonalPresenceDataSource.init(activityID:personalPresenceController:)(a1, a2);

  return v2;
}

uint64_t PersonalPresenceDataSource.assertPresence(using:)()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PersonalPresenceDataSource.assertPresence(using:), 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_personalPresenceController);
  v3 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_activityID;
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = PersonalPresenceDataSource.assertPresence(using:);

  return PersonalPresenceController.assertPresence(for:)(v1 + v3);
}

{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t PersonalPresenceDataSource.releasePresence()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PersonalPresenceDataSource.releasePresence(), 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_personalPresenceController);
  v3 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_activityID;
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = PersonalPresenceDataSource.releasePresence();

  return PersonalPresenceController.releasePresence(for:)(v1 + v3);
}

uint64_t PersonalPresenceDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_activityID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_personalPresenceController);

  v4 = *(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource__presentDevices);

  v5 = *(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_cancellables);

  return v0;
}

uint64_t PersonalPresenceDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_activityID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_personalPresenceController);

  v4 = *(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource__presentDevices);

  v5 = *(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_cancellables);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for PresenceDataSource.members.modify in conformance PersonalPresenceDataSource(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 128))();
  return protocol witness for PresenceDataSource.members.modify in conformance PersonalPresenceDataSource;
}

void protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for PresenceDataSource.assertPresence(using:) in conformance PersonalPresenceDataSource()
{
  v2 = *(*v0 + 208);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v6();
}

uint64_t protocol witness for PresenceDataSource.releasePresence() in conformance PersonalPresenceDataSource()
{
  v2 = *(*v0 + 216);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v6();
}

unint64_t specialized PresenceConfiguration.description.getter(char a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(38);

  MEMORY[0x1B2710020](a2, a3);
  MEMORY[0x1B2710020](0x737265507369202CLL, 0xEE00203A6C616E6FLL);
  if (a1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (a1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v6, v7);

  return 0xD000000000000014;
}

uint64_t partial apply for closure #1 in SKPresenceDataSource.presentDevicesChanged(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *a1;
  return SKPresentDevice.context<A>(as:)(v3, *(v4 + 8), a2);
}

uint64_t partial apply for closure #2 in SKPresenceDataSource.presentDevicesChanged(for:)(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #2 in SKPresenceDataSource.presentDevicesChanged(for:)(a1, a2) & 1;
}

void specialized SKPresenceDataSource.presenceDaemonDisconnected(_:)()
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v2[direct field offset for SKPresenceDataSource.presenceIdentifier], *&v2[direct field offset for SKPresenceDataSource.presenceIdentifier + 8], &v7);
    _os_log_impl(&dword_1AEB26000, oslog, v3, "Presence daemon disconnected for identifier: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B27120C0](v5, -1, -1);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }
}

unint64_t lazy protocol witness table accessor for type EmptyPresenceContext and conformance EmptyPresenceContext()
{
  result = lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext;
  if (!lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext;
  if (!lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext;
  if (!lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext);
  }

  return result;
}

uint64_t outlined init with take of AsyncSerialQueue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncSerialQueue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in PersonalPresenceController.presentDevicePublisher(for:)(uint64_t *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  closure #1 in PersonalPresenceController.presentDevicePublisher(for:)(a1, v4);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #2 in PersonalPresenceController.presentDevicePublisher(for:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #2 in PersonalPresenceController.presentDevicePublisher(for:)(a1, v6, a2);
}

uint64_t partial apply for closure #1 in PersonalPresenceController.assertPresence(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PersonalPresenceController.assertPresence(for:)(a1, v1 + v5, v6);
}

uint64_t partial apply for specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(v2, v3);
}

{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(v2, v3);
}

uint64_t objectdestroy_37Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in PersonalPresenceController.releasePresence(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PersonalPresenceController.releasePresence(for:)(a1, v1 + v5, v6);
}

uint64_t closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)specialized partial apply()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(v2, v3);
}

uint64_t outlined destroy of AsyncSerialQueue(uint64_t a1)
{
  v2 = type metadata accessor for AsyncSerialQueue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo21TUExternalParticipantC_Tt0g5Tf4g_nTm(unint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a3;
    v10 = a2;
    v11 = __CocoaSet.count.getter();
    a2 = v10;
    a3 = v9;
    if (v11)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v6 = static _SetStorage.allocate(capacity:)();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = __CocoaSet.count.getter();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E69E7CD0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v12 = v6 + 56;
  v45 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v42 = v4;
    while (1)
    {
      v14 = MEMORY[0x1B2710B10](v13, v4);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        break;
      }

      v16 = v14;
      v17 = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v18 = -1 << *(v6 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *(v12 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        a4(0);
        while (1)
        {
          v24 = *(*(v6 + 48) + 8 * v19);
          v25 = static NSObject.== infix(_:_:)();

          if (v25)
          {
            break;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *(v12 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          if (((1 << v19) & v21) == 0)
          {
            v8 = v45;
            v4 = v42;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v45;
        v4 = v42;
        if (v13 == v45)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v12 + 8 * v20) = v22 | v21;
        *(*(v6 + 48) + 8 * v19) = v16;
        v26 = *(v6 + 16);
        v15 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v15)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v27;
        if (v13 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v28 = 0;
    v43 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v28 != v43)
    {
      v29 = *(v6 + 40);
      v30 = *(v4 + 32 + 8 * v28);
      v31 = NSObject._rawHashValue(seed:)(v29);
      v32 = -1 << *(v6 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v12 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        a4(0);
        while (1)
        {
          v38 = *(*(v6 + 48) + 8 * v33);
          v39 = static NSObject.== infix(_:_:)();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v12 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v12 + 8 * v34) = v36 | v35;
        *(*(v6 + 48) + 8 * v33) = v30;
        v40 = *(v6 + 16);
        v15 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v15)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v41;
      }

      if (++v28 == v45)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void specialized PersonalPresenceDataSource.members.setter()
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.host);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;
    type metadata accessor for AddressableMember();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember);
    v4 = Set.description.getter();
    v6 = v5;

    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_1AEB26000, oslog, v1, "Not adding additional remote members to personal presence data source: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1B27120C0](v3, -1, -1);
    MEMORY[0x1B27120C0](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t specialized PersonalPresenceDataSource.init(activityID:personalPresenceController:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource__presentDevices;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMR);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v2 + v6) = CurrentValueSubject.init(_:)();
  *(v2 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_cancellables) = MEMORY[0x1E69E7CD0];
  v10 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_activityID;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v3 + v10, a1, v11);
  *(v3 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_personalPresenceController) = a2;

  PersonalPresenceController.presentDevicePublisher(for:)(a1);
  (*(*v3 + 160))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[any PresentDevice<Self.PresentDevice.Context == EmptyPresenceContext>], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMR);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v12 + 8))(a1, v11);
  return v3;
}

uint64_t dispatch thunk of PresenceDataSource.assertPresence(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PresenceDataSource.releasePresence()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 72);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v9(a1, a2);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PresenceConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for PresenceConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of SKPresenceDataSource.__allocating_init(presenceConfiguration:targetQueue:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(v1 + 200);
  v7[0] = *a1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  return v5(v7);
}

uint64_t dispatch thunk of SKPresenceDataSource.assertPresence(using:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v8(a1);
}

uint64_t dispatch thunk of SKPresenceDataSource.releasePresence()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v6();
}

uint64_t dispatch thunk of SKPresenceDataSource.inviteHandle(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v10(a1, a2);
}

uint64_t dispatch thunk of SKPresenceDataSource.inviteHandles(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v8(a1);
}

uint64_t dispatch thunk of SKPresenceDataSource.removeHandle(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xF0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v10(a1, a2);
}

uint64_t dispatch thunk of SKPresenceDataSource.removeHandles(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v8(a1);
}

uint64_t type metadata completion function for PersonalPresenceController()
{
  result = type metadata accessor for AsyncSerialQueue();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for PersonalPresenceDataSource()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of PersonalPresenceDataSource.assertPresence(using:)()
{
  v2 = *(*v0 + 208);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v6();
}

uint64_t dispatch thunk of PersonalPresenceDataSource.releasePresence()()
{
  v2 = *(*v0 + 216);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v6();
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo20RBSProcessIdentifierC_Tt0g5Tf4g_nTm(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = __CocoaSet.count.getter();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = __CocoaSet.count.getter();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E7CD0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v47 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v43 = v5;
    while (1)
    {
      v15 = MEMORY[0x1B2710B10](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        type metadata accessor for NSObject(0, a4, a5);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v47;
            v5 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v47;
        v5 = v43;
        if (v14 == v47)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v44 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v44)
    {
      v30 = *(v7 + 40);
      v31 = *(v5 + 32 + 8 * v29);
      v32 = NSObject._rawHashValue(seed:)(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *(v13 + 8 * (v34 >> 6));
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        type metadata accessor for NSObject(0, a4, a5);
        while (1)
        {
          v39 = *(*(v7 + 48) + 8 * v34);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *(v13 + 8 * (v34 >> 6));
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v35) = v37 | v36;
        *(*(v7 + 48) + 8 * v34) = v31;
        v41 = *(v7 + 16);
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v42;
      }

      if (++v29 == v47)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)()
{
  v1 = *(v0 + 16);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in SKPresenceDataSource.members.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in SKPresenceDataSource.members.didset(a1, v4, v5, v7, v6);
}

uint64_t outlined consume of Set<AddressableMember>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t ActivitySession.SceneAssociationCoordinator.associatedScenes.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = atomic_load((v1 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch));
  if (v3 == -1)
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = [*(v1 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager) scenesInBranchWithIndex_];
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  result = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  a1[3] = v6;
  a1[4] = result;
  *a1 = v5;
  return result;
}

char *ActivitySession.SceneAssociationCoordinator.associatedBranchAppProvidedAssociation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations);
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v3 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch;
    v17 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager;

    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = (v18 + v3);
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B2710B10](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = atomic_load(v5);
      if (v9 == -1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = [*(v18 + v17) scenesInBranchWithIndex_];
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v19[4] = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v19[0] = v11;
      outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(v19, v20);
      v12 = v20[4];
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v13 = *&v7[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8];
      v19[0] = *&v7[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID];
      v19[1] = v13;
      v14 = *(*(v12 + 8) + 8);
      v15 = Sequence<>.contains(_:)();
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      if (v15)
      {

        return v7;
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_16:

  return 0;
}

Swift::Void __swiftcall ActivitySession.SceneAssociationCoordinator.disassociateAllScenes()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_didAssociateScene;
  swift_beginAccess();
  v1[v9] = 0;
  v10 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch;
  v11 = atomic_load(&v1[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
  if (v11 == -1)
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v12 = [*&v1[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager] scenesInBranchWithIndex_];
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v15 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v46 = v14;
  v47 = v15;
  v45[0] = v13;
  __swift_project_boxed_opaque_existential_1(v45, v14);
  v16 = *(v15 + 8);
  v17 = dispatch thunk of Collection.isEmpty.getter();
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  if (v17)
  {
    if (one-time initialization token for sceneAssociation == -1)
    {
LABEL_7:
      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Log.sceneAssociation);
      v19 = v1;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v45[0] = v23;
        *v22 = 136315138;
        type metadata accessor for UUID();
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v45);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_1AEB26000, v20, v21, "Tried to disassociate all scenes but no scenes are associated with %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x1B27120C0](v23, -1, -1);
        MEMORY[0x1B27120C0](v22, -1, -1);
      }

      return;
    }

LABEL_19:
    swift_once();
    goto LABEL_7;
  }

  if (one-time initialization token for sceneAssociation != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Log.sceneAssociation);
  v28 = v1;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v44 = v32;
    *v31 = 136315394;
    v33 = atomic_load(&v1[v10]);
    if (v33 == -1)
    {
      v35 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v34 = [*&v28[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager] scenesInBranchWithIndex_];
      v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v47 = v15;
    v45[0] = v35;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v36 = BidirectionalCollection<>.joined(separator:)();
    v38 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v44);

    *(v31 + 4) = v39;
    *(v31 + 12) = 2080;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v44);

    *(v31 + 14) = v42;
    _os_log_impl(&dword_1AEB26000, v29, v30, "Disassociating scenes: [%s] from %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v32, -1, -1);
    MEMORY[0x1B27120C0](v31, -1, -1);
  }

  atomic_store(0xFFFFFFFFFFFFFFFFLL, &v1[v10]);
  ActivitySession.SceneAssociationCoordinator.recalculateAssociatedScenes()();
}

id ActivitySession.SceneAssociationCoordinator.__allocating_init(sessionID:sceneAssociationBehavior:sceneObservationManager:queue:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = &v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged];
  *v11 = 0;
  v11[1] = 0;
  v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_didAssociateScene] = 0;
  *&v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch] = -1;
  v12 = &v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch];
  *v12 = 0;
  v12[8] = 1;
  *&v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations] = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sessionID;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v10[v13], a1, v14);
  *&v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue] = a4;
  *&v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneAssociationBehavior] = a2;
  *&v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager] = a3;
  v20.receiver = v10;
  v20.super_class = v5;
  v16 = a4;
  v17 = a2;
  swift_unknownObjectRetain();
  v18 = objc_msgSendSuper2(&v20, sel_init);
  [a3 addDelegate_];

  swift_unknownObjectRelease();
  (*(v15 + 8))(a1, v14);
  return v18;
}

uint64_t ActivitySession.SceneAssociationCoordinator.setAssociatedScenesChangedHandler(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for sceneAssociation != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.sceneAssociation);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001AEE306C0, &v15);
    _os_log_impl(&dword_1AEB26000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v11 = (v3 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged);
  v12 = *(v3 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged);
  v13 = *(v3 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged + 8);
  *v11 = a1;
  v11[1] = a2;

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v12);
}

Swift::Void __swiftcall ActivitySession.SceneAssociationCoordinator.setSystemAssociatedScene(to:)(Swift::String to)
{
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v1[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue];
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (one-time initialization token for sceneAssociation == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.sceneAssociation);

  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136446722;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000001AEE306F0, &v30);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v30);
    *(v15 + 22) = 2080;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v30);

    *(v15 + 24) = v19;
    _os_log_impl(&dword_1AEB26000, v13, v14, "%{public}s: %s on %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  v20 = *&v12[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager];
  v21 = MEMORY[0x1B270FF70](countAndFlagsBits, object);
  v22 = [v20 branchIndexForSceneID_];

  v23 = &v12[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch];
  *v23 = v22;
  v23[8] = 0;
  v24 = ActivitySession.SceneAssociationCoordinator.associatedBranchAppProvidedAssociation.getter();
  if (v24)
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v27 = 136446210;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000001AEE306F0, &v30);
      _os_log_impl(&dword_1AEB26000, v25, v26, "%{public}s: Associated scene has an app provided association. Ignoring system association.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1B27120C0](v28, -1, -1);
      MEMORY[0x1B27120C0](v27, -1, -1);
    }
  }

  else
  {
    atomic_store(v22, &v12[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
    ActivitySession.SceneAssociationCoordinator.recalculateAssociatedScenes()();
  }
}

uint64_t ActivitySession.SceneAssociationCoordinator.didAssociateScene.getter()
{
  v1 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_didAssociateScene;
  swift_beginAccess();
  return *(v0 + v1);
}

id ActivitySession.SceneAssociationCoordinator.init(sessionID:sceneAssociationBehavior:sceneObservationManager:queue:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = &v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged];
  *v9 = 0;
  v9[1] = 0;
  v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_didAssociateScene] = 0;
  *&v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch] = -1;
  v10 = &v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch];
  *v10 = 0;
  v10[8] = 1;
  *&v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations] = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sessionID;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v4[v11], a1, v12);
  *&v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue] = a4;
  *&v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneAssociationBehavior] = a2;
  *&v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager] = a3;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for ActivitySession.SceneAssociationCoordinator();
  v14 = a4;
  v15 = a2;
  swift_unknownObjectRetain();
  v16 = objc_msgSendSuper2(&v18, sel_init);
  [a3 addDelegate_];

  swift_unknownObjectRelease();
  (*(v13 + 8))(a1, v12);
  return v16;
}

id ActivitySession.SceneAssociationCoordinator.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager] removeDelegate_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySession.SceneAssociationCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ActivitySession.SceneAssociationCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ActivitySession.SceneAssociationCoordinator.recalculateAssociatedScenes()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))(result);
    if ((result & 1) == 0)
    {
      v10 = atomic_load((v1 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch));
      if (v10 == -1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v11 = [*(v1 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager) scenesInBranchWithIndex_];
        v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v14 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v23[3] = v13;
      v23[4] = v14;
      v23[0] = v12;
      __swift_project_boxed_opaque_existential_1(v23, v13);
      v15 = *(v14 + 8);
      v16 = dispatch thunk of Collection.isEmpty.getter();
      result = __swift_destroy_boxed_opaque_existential_1Tm(v23);
      if ((v16 & 1) == 0)
      {
        v17 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_didAssociateScene;
        result = swift_beginAccess();
        *(v1 + v17) = 1;
      }
    }

    v18 = v1 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged;
    v19 = *(v1 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged);
    if (v19)
    {
      v20 = *(v18 + 1);

      v19(v21);
      return _sxRi_zRi0_zlyytIseghHr_SgWOe(v19);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ActivitySession.SceneAssociationCoordinator.setGroupActivityAssociations(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue];
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (one-time initialization token for sceneAssociation == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.sceneAssociation);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v92 = v16;
    *v15 = 136446466;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001AEE30740, &v92);
    *(v15 + 12) = 2080;
    v17 = type metadata accessor for GroupActivityAssociation();
    v18 = MEMORY[0x1B2710180](a1._rawValue, v17);
    v2 = v19;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v92);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_1AEB26000, v13, v14, "%{public}s: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  v21 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations;
  v22 = *&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations];

  v23 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore24GroupActivityAssociationC_Tt1g5(a1._rawValue, v22);

  if ((v23 & 1) == 0)
  {
    v24 = *&v3[v21];
    if (v24 >> 62)
    {
      if (v24 < 0)
      {
        v27 = *&v3[v21];
      }

      v25 = __CocoaSet.count.getter();
      if (v25)
      {
LABEL_8:
        v26 = v25 - 1;
        if (__OFSUB__(v25, 1))
        {
          __break(1u);
        }

        else if ((v24 & 0xC000000000000001) == 0)
        {
          if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_57;
          }

          if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_60;
          }

          v2 = *(v24 + 8 * v26 + 32);
LABEL_19:
          v28 = *&v3[v21];
          *&v3[v21] = a1;

          if (a1._rawValue >> 62)
          {
            v29 = __CocoaSet.count.getter();
            if (v29)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v29 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v29)
            {
LABEL_21:
              v24 = v29 - 1;
              if (!__OFSUB__(v29, 1))
              {
                if ((a1._rawValue & 0xC000000000000001) == 0)
                {
                  if ((v24 & 0x8000000000000000) == 0)
                  {
                    if (v24 < *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      v30 = *(a1._rawValue + v24 + 4);

                      v31 = v30;
                      goto LABEL_26;
                    }

LABEL_61:
                    __break(1u);
                    return;
                  }

LABEL_60:
                  __break(1u);
                  goto LABEL_61;
                }

LABEL_58:

                v31 = MEMORY[0x1B2710B10](v24, a1._rawValue);
LABEL_26:
                v32 = v31;
                v33 = *&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager];
                v34 = *&v31[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID];
                v35 = *&v31[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8];

                v36 = MEMORY[0x1B270FF70](v34, v35);

                v37 = [v33 branchIndexForSceneID_];

                v38 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch;
                v39 = atomic_load(&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
                if (v39 != -1 && v37 == v39)
                {
                  if (v2)
                  {
                    type metadata accessor for GroupActivityAssociation();
                    v40 = v32;
                    v41 = v2;
                    v42 = static NSObject.== infix(_:_:)();

                    if (v42)
                    {

                      return;
                    }
                  }
                }

                v43 = v32;
                v44 = v3;
                v45 = Logger.logObject.getter();
                v46 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v45, v46))
                {
                  v47 = swift_slowAlloc();
                  v91 = v2;
                  v48 = v47;
                  v49 = swift_slowAlloc();
                  v88 = v49;
                  v89 = swift_slowAlloc();
                  v92 = v89;
                  *v48 = 136446722;
                  *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001AEE30740, &v92);
                  *(v48 + 12) = 2112;
                  *(v48 + 14) = v43;
                  *v49 = v43;
                  *(v48 + 22) = 2080;
                  type metadata accessor for UUID();
                  v90 = v37;
                  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
                  v50 = v43;
                  v51 = dispatch thunk of CustomStringConvertible.description.getter();
                  v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v92);

                  *(v48 + 24) = v53;
                  v37 = v90;
                  _os_log_impl(&dword_1AEB26000, v45, v46, "%{public}s: Associating new anchor: %@ with %s", v48, 0x20u);
                  v54 = v88;
                  outlined destroy of NSObject?(v88, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  MEMORY[0x1B27120C0](v54, -1, -1);
                  v55 = v89;
                  swift_arrayDestroy();
                  MEMORY[0x1B27120C0](v55, -1, -1);
                  v56 = v48;
                  v2 = v91;
                  MEMORY[0x1B27120C0](v56, -1, -1);
                }

                atomic_store(v37, &v3[v38]);
                ActivitySession.SceneAssociationCoordinator.recalculateAssociatedScenes()();

                goto LABEL_52;
              }

              __break(1u);
LABEL_57:
              __break(1u);
              goto LABEL_58;
            }
          }

          if (v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch + 8] == 1)
          {
          }

          else
          {
            v57 = *&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch];
            v58 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch;
            v59 = atomic_load(&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);

            if ((v59 == -1 || v57 != v59) && ([*&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager] isBranchEmptyWithIndex_] & 1) == 0)
            {
              v77 = v3;
              v78 = Logger.logObject.getter();
              v79 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v78, v79))
              {
                v80 = swift_slowAlloc();
                v81 = swift_slowAlloc();
                v91 = v2;
                v92 = v81;
                v82 = v81;
                *v80 = 136446466;
                *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001AEE30740, &v92);
                *(v80 + 12) = 2080;
                type metadata accessor for UUID();
                lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
                v83 = dispatch thunk of CustomStringConvertible.description.getter();
                v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v92);

                *(v80 + 14) = v85;
                _os_log_impl(&dword_1AEB26000, v78, v79, "%{public}s: Associating system-associated scene with activity %s", v80, 0x16u);
                swift_arrayDestroy();
                v86 = v82;
                v2 = v91;
                MEMORY[0x1B27120C0](v86, -1, -1);
                MEMORY[0x1B27120C0](v80, -1, -1);
              }

              atomic_store(v57, &v3[v58]);
              goto LABEL_51;
            }
          }

          v60 = *&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneAssociationBehavior];
          if (!v60 || ([v60 shouldAssociateScene] & 1) != 0)
          {
            v61 = v3;
            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              v92 = v65;
              *v64 = 136446466;
              *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001AEE30740, &v92);
              *(v64 + 12) = 2080;
              type metadata accessor for UUID();
              lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
              v66 = dispatch thunk of CustomStringConvertible.description.getter();
              v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v92);

              *(v64 + 14) = v68;
              _os_log_impl(&dword_1AEB26000, v62, v63, "%{public}s: Persisting association from removed spatial template anchor for activity: %s", v64, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1B27120C0](v65, -1, -1);
              MEMORY[0x1B27120C0](v64, -1, -1);
            }

            goto LABEL_52;
          }

          v69 = v3;
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v92 = v73;
            *v72 = 136446466;
            *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001AEE30740, &v92);
            *(v72 + 12) = 2080;
            type metadata accessor for UUID();
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
            v74 = dispatch thunk of CustomStringConvertible.description.getter();
            v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v92);

            *(v72 + 14) = v76;
            _os_log_impl(&dword_1AEB26000, v70, v71, "%{public}s: Clearing associated scene for activity %s", v72, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1B27120C0](v73, -1, -1);
            MEMORY[0x1B27120C0](v72, -1, -1);
          }

          atomic_store(0xFFFFFFFFFFFFFFFFLL, &v69[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
LABEL_51:
          ActivitySession.SceneAssociationCoordinator.recalculateAssociatedScenes()();
LABEL_52:

          return;
        }

        v2 = MEMORY[0x1B2710B10](v26, v24);

        goto LABEL_19;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_8;
      }
    }

    v2 = 0;
    goto LABEL_19;
  }
}

Swift::Void __swiftcall ActivitySession.SceneAssociationCoordinator._sceneWasDiscarded(_:effectedBranch:)(Swift::String _, Swift::Int effectedBranch)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (one-time initialization token for sceneAssociation == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_86;
  }

  while (1)
  {
    __break(1u);
LABEL_86:
    swift_once();
LABEL_3:
    v13 = type metadata accessor for Logger();
    v14 = __swift_project_value_buffer(v13, static Log.sceneAssociation);

    v15 = v2;
    v73 = v14;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v75 = v19;
      *v18 = 136446722;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001AEE30770, &v75);
      *(v18 + 12) = 2080;
      *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v75);
      *(v18 + 22) = 2080;
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v75);

      *(v18 + 24) = v22;
      _os_log_impl(&dword_1AEB26000, v16, v17, "%{public}s: discarded tracked and associated scene %s on %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v19, -1, -1);
      MEMORY[0x1B27120C0](v18, -1, -1);
    }

    v71 = *&v15[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager];
    v23 = [v71 isBranchEmptyWithIndex_];
    v74 = v15;
    if (v23)
    {
      break;
    }

    v2 = *&v15[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations];
    if (v2 >> 62)
    {
      effectedBranch = __CocoaSet.count.getter();
    }

    else
    {
      effectedBranch = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = 0;
    while (1)
    {
      if (effectedBranch == v24)
      {

        goto LABEL_78;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1B2710B10](v24, v2);
      }

      else
      {
        if (v24 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v25 = *(v2 + 8 * v24 + 32);
      }

      v26 = v25;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (*&v25[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID] == countAndFlagsBits && *&v25[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8] == object)
      {

        goto LABEL_23;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v24;
      if (v28)
      {

LABEL_23:
        v15 = v74;
        goto LABEL_24;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

LABEL_24:
  v2 = *&v15[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations];
  v72 = v2 >> 62;
  if (v2 >> 62)
  {
    effectedBranch = __CocoaSet.count.getter();
  }

  else
  {
    effectedBranch = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = v2 & 0xC000000000000001;
  v30 = v2 + 32;
  swift_bridgeObjectRetain_n();

  v31 = 0;
  while (1)
  {
    if (effectedBranch == v31)
    {
      goto LABEL_40;
    }

    if (v29)
    {
      v33 = MEMORY[0x1B2710B10](v31, v2);
    }

    else
    {
      if (v31 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v33 = *(v2 + 8 * v31 + 32);
    }

    v34 = v33;
    if (*&v33[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID] != countAndFlagsBits || *&v33[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8] != object)
    {
      break;
    }

LABEL_28:
    v32 = __OFADD__(v31++, 1);
    if (v32)
    {
      goto LABEL_80;
    }
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_28;
  }

  effectedBranch = v31;
LABEL_40:
  if (v72)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      v31 = v2;
    }

    else
    {
      v31 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    if (effectedBranch != __CocoaSet.count.getter())
    {
      v37 = __CocoaSet.count.getter();
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  v37 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (effectedBranch == v37)
  {
LABEL_47:
    swift_bridgeObjectRelease_n();

    v38 = v74;
    if (v74[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch + 8])
    {
      v39 = -1;
    }

    else
    {
      v39 = *&v74[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch];
    }

    atomic_store(v39, &v74[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
    v44 = v38;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v75 = v48;
      *v47 = 136446466;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001AEE30770, &v75);
      *(v47 + 12) = 2080;
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v75);

      *(v47 + 14) = v51;
      _os_log_impl(&dword_1AEB26000, v45, v46, "SceneMonitorDelegate.%{public}s: No remaining anchors, attempting to associate originally auto-associated scene with %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v48, -1, -1);
      MEMORY[0x1B27120C0](v47, -1, -1);
    }

    goto LABEL_78;
  }

LABEL_50:
  if (!v37)
  {
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  effectedBranch = v37 - 1;
  if (__OFSUB__(v37, 1))
  {
    do
    {
      __break(1u);
LABEL_54:

LABEL_55:
      v32 = __OFSUB__(effectedBranch--, 1);
    }

    while (v32);
  }

  if (v29)
  {
    v40 = MEMORY[0x1B2710B10](effectedBranch, v2);
    goto LABEL_61;
  }

  if (effectedBranch < 0)
  {
    goto LABEL_81;
  }

  if (effectedBranch >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v40 = *(v30 + 8 * effectedBranch);
LABEL_61:
  v31 = v40;
  if (*&v40[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID] == countAndFlagsBits && *&v40[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8] == object)
  {
    goto LABEL_54;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
    goto LABEL_55;
  }

  if (v29)
  {
    v43 = MEMORY[0x1B2710B10](effectedBranch, v2);
    goto LABEL_75;
  }

  if (effectedBranch < 0)
  {
    goto LABEL_90;
  }

  if (effectedBranch >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_91:
    __break(1u);
    return;
  }

  v43 = *(v30 + 8 * effectedBranch);
LABEL_75:
  v52 = v43;

  swift_bridgeObjectRelease_n();
  v53 = v52;
  v54 = v74;
  v55 = v53;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v75 = v60;
    *v58 = 136446722;
    *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001AEE30770, &v75);
    *(v58 + 12) = 2112;
    *(v58 + 14) = v55;
    *v59 = v55;
    *(v58 + 22) = 2080;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v61 = v55;
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v75);

    *(v58 + 24) = v64;
    _os_log_impl(&dword_1AEB26000, v56, v57, "SceneMonitorDelegate.%{public}s: Associating branch with next spatial template anchor %@ on %s", v58, 0x20u);
    outlined destroy of NSObject?(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v59, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v60, -1, -1);
    MEMORY[0x1B27120C0](v58, -1, -1);
  }

  v65 = v71;
  v66 = *&v55[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID];
  v67 = *&v55[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8];

  v68 = MEMORY[0x1B270FF70](v66, v67);

  v69 = [v65 branchIndexForSceneID_];

  atomic_store(v69, &v54[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
LABEL_78:
  ActivitySession.SceneAssociationCoordinator.recalculateAssociatedScenes()();
}

Swift::Void __swiftcall ActivitySession.SceneAssociationCoordinator.sceneWasDiscarded(_:branchIndex:)(Swift::String _, Swift::Int branchIndex)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = atomic_load(&v2[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
  if (v17 != -1 && v17 == branchIndex)
  {
    v22[1] = *&v2[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue];
    v23 = v14;
    v19 = swift_allocObject();
    v19[2] = v2;
    v19[3] = countAndFlagsBits;
    v19[4] = object;
    v19[5] = branchIndex;
    aBlock[4] = partial apply for closure #1 in ActivitySession.SceneAssociationCoordinator.sceneWasDiscarded(_:branchIndex:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_2;
    v20 = _Block_copy(aBlock);
    v21 = v2;

    static DispatchQoS.unspecified.getter();
    v24 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v16, v10, v20);
    _Block_release(v20);
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v16, v23);
  }
}

Swift::Void __swiftcall ActivitySession.SceneAssociationCoordinator.scenesInBranchDidChange(branchIndex:)(Swift::Int branchIndex)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = atomic_load(&v2[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
  if (v15 != -1 && v15 == branchIndex)
  {
    v27 = v12;
    v28 = v5;
    if (one-time initialization token for sceneAssociation != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.sceneAssociation);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001AEE307A0, aBlock);
      _os_log_impl(&dword_1AEB26000, v18, v19, "%{public}s: Scenes in associated branch did change.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1B27120C0](v21, -1, -1);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    v22 = *&v2[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue];
    v23 = swift_allocObject();
    *(v23 + 16) = v2;
    aBlock[4] = partial apply for closure #1 in ActivitySession.SceneAssociationCoordinator.scenesInBranchDidChange(branchIndex:);
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_6_0;
    v24 = _Block_copy(aBlock);
    v25 = v2;
    static DispatchQoS.unspecified.getter();
    v29 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v14, v8, v24);
    _Block_release(v24);
    (*(v28 + 8))(v8, v4);
    (*(v10 + 8))(v14, v27);
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore017AttachmentLedger_D12AuthGetTokenV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v47[3] = *MEMORY[0x1E69E9840];
  Token = type metadata accessor for AttachmentLedger_AttachmentAuthGetToken(0);
  v4 = *(*(Token - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](Token);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v41 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      v43 = 0;
      v44 = v15;
      while (1)
      {
        outlined init with copy of CP_KeyValue(v13, v10, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
        outlined init with copy of CP_KeyValue(v14, v7, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
        v16 = *v10;
        v17 = v10[1];
        v18 = *v7;
        v19 = v7[1];
        v20 = v17 >> 62;
        v21 = v19 >> 62;
        if (v17 >> 62 == 3)
        {
          break;
        }

        if (v20 > 1)
        {
          if (v20 == 2)
          {
            v28 = *(v16 + 16);
            v27 = *(v16 + 24);
            v25 = __OFSUB__(v27, v28);
            v22 = v27 - v28;
            if (v25)
            {
              goto LABEL_70;
            }

            goto LABEL_21;
          }

          v22 = 0;
          if (v21 <= 1)
          {
            goto LABEL_22;
          }
        }

        else if (v20)
        {
          LODWORD(v22) = HIDWORD(v16) - v16;
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_69;
          }

          v22 = v22;
          if (v21 <= 1)
          {
LABEL_22:
            if (v21)
            {
              LODWORD(v26) = HIDWORD(v18) - v18;
              if (__OFSUB__(HIDWORD(v18), v18))
              {
                goto LABEL_68;
              }

              v26 = v26;
            }

            else
            {
              v26 = BYTE6(v19);
            }

            goto LABEL_28;
          }
        }

        else
        {
          v22 = BYTE6(v17);
          if (v21 <= 1)
          {
            goto LABEL_22;
          }
        }

LABEL_15:
        if (v21 != 2)
        {
          if (v22)
          {
            goto LABEL_65;
          }

          goto LABEL_54;
        }

        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        v25 = __OFSUB__(v23, v24);
        v26 = v23 - v24;
        if (v25)
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
        }

LABEL_28:
        if (v22 != v26)
        {
          goto LABEL_65;
        }

        if (v22 < 1)
        {
          goto LABEL_54;
        }

        if (v20 > 1)
        {
          if (v20 != 2)
          {
            memset(v47, 0, 14);
LABEL_50:
            v35 = v43;
            closure #1 in static Data.== infix(_:_:)(v47, v18, v19, &v46);
            v43 = v35;
            if (!v46)
            {
              goto LABEL_65;
            }

            goto LABEL_54;
          }

          v29 = *(v16 + 16);
          v41 = *(v16 + 24);
          v42 = v18;
          v30 = __DataStorage._bytes.getter();
          if (v30)
          {
            v31 = __DataStorage._offset.getter();
            if (__OFSUB__(v29, v31))
            {
              goto LABEL_73;
            }

            v30 += v29 - v31;
          }

          if (__OFSUB__(v41, v29))
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (!v20)
          {
            v47[0] = *v10;
            LOWORD(v47[1]) = v17;
            BYTE2(v47[1]) = BYTE2(v17);
            BYTE3(v47[1]) = BYTE3(v17);
            BYTE4(v47[1]) = BYTE4(v17);
            BYTE5(v47[1]) = BYTE5(v17);
            goto LABEL_50;
          }

          v42 = *v7;
          v32 = v16;
          if (v16 >> 32 < v16)
          {
            goto LABEL_71;
          }

          v33 = __DataStorage._bytes.getter();
          if (v33)
          {
            v41 = v33;
            v34 = __DataStorage._offset.getter();
            if (__OFSUB__(v32, v34))
            {
              goto LABEL_74;
            }

            v30 = v32 - v34 + v41;
          }

          else
          {
            v30 = 0;
          }
        }

        MEMORY[0x1B270E950]();
        v36 = v43;
        closure #1 in static Data.== infix(_:_:)(v30, v42, v19, v47);
        v43 = v36;
        if ((v47[0] & 1) == 0)
        {
          goto LABEL_65;
        }

LABEL_54:
        if ((v10[2] != v7[2] || v10[3] != v7[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v10[4] != v7[4] || v10[5] != v7[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v10[6] != v7[6])
        {
LABEL_65:
          outlined destroy of CP_KeyValue(v7, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
          outlined destroy of CP_KeyValue(v10, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
          goto LABEL_66;
        }

        v37 = *(Token + 32);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CP_KeyValue(v7, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
        outlined destroy of CP_KeyValue(v10, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
        if (v38)
        {
          v14 += v44;
          v13 += v44;
          if (--v11)
          {
            continue;
          }
        }

        goto LABEL_67;
      }

      v22 = 0;
      if (!v16 && v17 == 0xC000000000000000 && v19 >> 62 == 3)
      {
        v22 = 0;
        if (!v18 && v19 == 0xC000000000000000)
        {
          goto LABEL_54;
        }
      }

LABEL_21:
      if (v21 <= 1)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v38 = 1;
  }

  else
  {
LABEL_66:
    v38 = 0;
  }

LABEL_67:
  v39 = *MEMORY[0x1E69E9840];
  return v38 & 1;
}