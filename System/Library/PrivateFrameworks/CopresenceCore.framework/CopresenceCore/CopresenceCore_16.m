void EntitlementTestingOverrides.definedSystemActivityIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(v1 + 32) = a1;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.definedSystemActivityIdentifiers.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 32);
  a1[1] = v1;

  return EntitlementTestingOverrides.definedSystemActivityIdentifiers.modify;
}

void EntitlementTestingOverrides.definedSystemActivityIdentifiers.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v3 + 32);
  if ((a2 & 1) == 0)
  {
    v10 = *(v3 + 32);

    v11 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v12 = NSClassFromString(v11);

    if (v12 || (v13 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v14 = NSClassFromString(v13), v13, v14))
    {
      *(v3 + 32) = v2;
      return;
    }

    goto LABEL_11;
  }

  v5 = *a1;

  v6 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v7 = NSClassFromString(v6);

  if (!v7)
  {
    v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v9 = NSClassFromString(v8);

    if (!v9)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }
  }

  *(v3 + 32) = v2;
}

void key path setter for EntitlementTestingOverrides.definedAccessActivityIdentifiers : EntitlementTestingOverrides(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 40);

  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (v6 || (v7 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v8 = NSClassFromString(v7), v7, v8))
  {
    *(a2 + 40) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.definedAccessActivityIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(v1 + 40) = a1;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.definedAccessActivityIdentifiers.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 40);
  a1[1] = v1;

  return EntitlementTestingOverrides.definedAccessActivityIdentifiers.modify;
}

void EntitlementTestingOverrides.definedAccessActivityIdentifiers.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v3 + 40);
  if ((a2 & 1) == 0)
  {
    v10 = *(v3 + 40);

    v11 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v12 = NSClassFromString(v11);

    if (v12 || (v13 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v14 = NSClassFromString(v13), v13, v14))
    {
      *(v3 + 40) = v2;
      return;
    }

    goto LABEL_11;
  }

  v5 = *a1;

  v6 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v7 = NSClassFromString(v6);

  if (!v7)
  {
    v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v9 = NSClassFromString(v8);

    if (!v9)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }
  }

  *(v3 + 40) = v2;
}

void key path setter for EntitlementTestingOverrides.isEntitledToAccessUnaliasedIdentifiers : EntitlementTestingOverrides(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 48) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToAccessUnaliasedIdentifiers.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 48) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.isEntitledToAccessUnaliasedIdentifiers.modify(uint64_t a1))(_BYTE *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 48);
  return EntitlementTestingOverrides.isEntitledToAccessUnaliasedIdentifiers.modify;
}

void EntitlementTestingOverrides.isEntitledToAccessUnaliasedIdentifiers.modify(_BYTE *a1, char a2)
{
  v4 = a1[8];
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    *(*a1 + 48) = v4;
    return;
  }

  __break(1u);
}

void key path setter for EntitlementTestingOverrides.isEntitledToUseGameCenter : EntitlementTestingOverrides(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 49) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToUseGameCenter.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 49) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.isEntitledToUseGameCenter.modify(uint64_t a1))(_BYTE *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 49);
  return EntitlementTestingOverrides.isEntitledToUseGameCenter.modify;
}

void EntitlementTestingOverrides.isEntitledToUseGameCenter.modify(_BYTE *a1, char a2)
{
  v4 = a1[8];
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    *(*a1 + 49) = v4;
    return;
  }

  __break(1u);
}

void key path setter for EntitlementTestingOverrides.isEntitledToProvideCustomEndpoint : EntitlementTestingOverrides(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 50) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToProvideCustomEndpoint.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 50) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.isEntitledToProvideCustomEndpoint.modify(uint64_t a1))(_BYTE *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 50);
  return EntitlementTestingOverrides.isEntitledToProvideCustomEndpoint.modify;
}

void EntitlementTestingOverrides.isEntitledToProvideCustomEndpoint.modify(_BYTE *a1, char a2)
{
  v4 = a1[8];
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    *(*a1 + 50) = v4;
    return;
  }

  __break(1u);
}

void key path setter for EntitlementTestingOverrides.stableAppIdentifier : EntitlementTestingOverrides(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 64);

  v6 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v7 = NSClassFromString(v6);

  if (v7 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
    *(a2 + 56) = v4;
    *(a2 + 64) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.stableAppIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  v6 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v7 = NSClassFromString(v6);

  if (v7 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.stableAppIdentifier.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v3;

  return EntitlementTestingOverrides.stableAppIdentifier.modify;
}

void EntitlementTestingOverrides.stableAppIdentifier.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 64);
  if ((a2 & 1) == 0)
  {
    v11 = *(v3 + 64);

    v12 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v13 = NSClassFromString(v12);

    if (v13 || (v14 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v15 = NSClassFromString(v14), v14, v15))
    {
      *(v3 + 56) = v4;
      *(v3 + 64) = v2;
      return;
    }

    goto LABEL_11;
  }

  v6 = a1[1];

  v7 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v8 = NSClassFromString(v7);

  if (!v8)
  {
    v9 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v10 = NSClassFromString(v9);

    if (!v10)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }
  }

  *(v3 + 56) = v4;
  *(v3 + 64) = v2;
}

void key path setter for EntitlementTestingOverrides.isEntitledToUseNearbyInvitationsOverride : EntitlementTestingOverrides(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(a2 + 72) = v3;
  }

  else
  {
    __break(1u);
  }
}

void EntitlementTestingOverrides.isEntitledToUseNearbyInvitationsOverride.setter(char a1)
{
  v3 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v4 = NSClassFromString(v3);

  if (v4 || (v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v6 = NSClassFromString(v5), v5, v6))
  {
    *(v1 + 72) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

void (*EntitlementTestingOverrides.isEntitledToUseNearbyInvitationsOverride.modify(uint64_t a1))(_BYTE *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 72);
  return EntitlementTestingOverrides.isEntitledToUseNearbyInvitationsOverride.modify;
}

void EntitlementTestingOverrides.isEntitledToUseNearbyInvitationsOverride.modify(_BYTE *a1, char a2)
{
  v4 = a1[8];
  v5 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v6 = NSClassFromString(v5);

  if (a2)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v7 = NSClassFromString(v6);

    if (v7)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (v6 || (v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v9 = NSClassFromString(v8), v8, v9))
  {
LABEL_7:
    *(*a1 + 72) = v4;
    return;
  }

  __break(1u);
}

uint64_t EntitlementTestingOverrides.init(isEntitledToUsePublicAPIOverride:isEntitledToUsePrivateAPIOverride:bundleIdentifierOverride:isEntitledToAccessAllSessions:isEntitledToForWebFallback:definedSystemActivityIdentifiers:definedAccessActivityIdentifiers:isEntitledToAccessUnaliasedIdentifiers:isEntitledToUseGameCenter:isEntitledToProvideCustomEndpoint:stableAppIdentifier:isEntitledToUseNearbyInvitationsOverride:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 25) = a6;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  *(a9 + 48) = a10;
  *(a9 + 49) = a11;
  *(a9 + 50) = a12;
  *(a9 + 56) = a13;
  *(a9 + 64) = a14;
  *(a9 + 72) = a15;
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EntitlementTestingOverrides(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EntitlementTestingOverrides(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DelegatesManager.__allocating_init()()
{
  v0 = swift_allocObject();
  DelegatesManager.init()();
  return v0;
}

uint64_t key path getter for Delegate.delegate : <A>Delegate<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + a3 - 8);
  v7 = type metadata accessor for Delegate();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t Delegate.delegate.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*Delegate.delegate.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return Delegate.delegate.modify;
}

uint64_t Delegate.delegate.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

BOOL Delegate.isValid.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t Delegate.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(v4 + 8);
    v11 = swift_allocObject();
    v11[2] = *(a3 + 16);
    v11[3] = a1;
    v11[4] = a2;
    v11[5] = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = partial apply for closure #1 in Delegate.perform(_:);
    *(v12 + 24) = v11;
    v14[4] = _sIg_Ieg_TRTA_0;
    v14[5] = v12;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed () -> ();
    v14[3] = &block_descriptor_20;
    v13 = _Block_copy(v14);
    swift_unknownObjectRetain();

    dispatch_sync(v10, v13);
    swift_unknownObjectRelease();
    _Block_release(v13);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Delegate.init(_:queue:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(a2 + 8) = a1;
  return result;
}

void *DelegatesManager.init()()
{
  v1 = *(*v0 + 80);
  type metadata accessor for Delegate();
  v0[2] = Array.init()();
  type metadata accessor for Lock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  v0[3] = v2;
  return v0;
}

void DelegatesManager.addDelegate(delegate:queue:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + 24);
  os_unfair_lock_lock(*(v5 + 16));
  closure #1 in DelegatesManager.addDelegate(delegate:queue:)(v2, a1, a2);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

uint64_t closure #1 in DelegatesManager.addDelegate(delegate:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*a1 + 80);
  swift_unknownObjectRetain();
  v6 = a3;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v9[5] = v6;
  v7 = (*(*a1 + 120))(v9);
  type metadata accessor for Delegate();
  type metadata accessor for Array();
  Array.append(_:)();
  return v7(v9, 0);
}

void DelegatesManager.removeDelegate(delegate:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(*(v1 + 16));
  closure #1 in DelegatesManager.removeDelegate(delegate:)(v0);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

uint64_t closure #1 in DelegatesManager.removeDelegate(delegate:)(uint64_t a1)
{
  v3 = *(*a1 + 80);
  v1 = (*(*a1 + 120))(v4);
  type metadata accessor for Delegate();
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection<>.removeAll(where:)();
  return v1(v4, 0);
}

uint64_t DelegatesManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t DelegatesManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t type metadata instantiation function for Delegate()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for closure #1 in closure #1 in DelegatesManager.removeDelegate(delegate:)()
{
  v1 = *(v0 + 24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRelease();
    return v3 == v1;
  }

  return result;
}

uint64_t DatagramClient.Configuration.endpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return outlined copy of DatagramEndpoint(v2, v3, v4, v5, v6);
}

uint64_t DatagramClient.Configuration.init(endpoint:establishChannelMaxAttempts:establishChannelRetryInterval:egressMessagePayloadMaxSizeBytes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v5 = *(result + 32);
  v6 = *(result + 16);
  *a4 = *result;
  *(a4 + 16) = v6;
  *(a4 + 32) = v5;
  *(a4 + 56) = a5;
  *(a4 + 40) = a3;
  *(a4 + 48) = a2;
  return result;
}

uint64_t EgressMessage.completion.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(*v2);
  return v3;
}

uint64_t EgressMessage.init(datagram:participantIDs:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = type metadata accessor for EgressMessage();
  *(a6 + *(result + 36)) = a2;
  v11 = (a6 + *(result + 40));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

Swift::Int EgressMessageError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

uint64_t DatagramClient.State.description.getter(char a1)
{
  if (!a1)
  {
    return 0x7964616552;
  }

  if (a1 == 1)
  {
    return 0x676E69736F6C43;
  }

  return 0x6465736F6C43;
}

Swift::Int DatagramClient.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DatagramClient.State()
{
  v1 = 0x676E69736F6C43;
  if (*v0 != 1)
  {
    v1 = 0x6465736F6C43;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7964616552;
  }
}

uint64_t DatagramClient.config.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v4 = v1[4];
  v8 = v1[3];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return outlined init with copy of DatagramClient.Configuration(v7, &v6);
}

uint64_t DatagramClient.state.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t DatagramClient.startDatagramChannelStream.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

void DatagramClient.startDatagramChannelStream.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);

  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(v1 + 96) = a1;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void (*DatagramClient.startDatagramChannelStream.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 96);

  return DatagramClient.startDatagramChannelStream.modify;
}

void DatagramClient.startDatagramChannelStream.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(v4 + 96);
  if ((a2 & 1) == 0)
  {
    v12 = *(v4 + 96);

    v13 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v14 = NSClassFromString(v13);

    if (v14 || (v15 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v16 = NSClassFromString(v15), v15, v16))
    {
      *(v2[4] + 96) = v3;
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v6 = *(*a1 + 24);

  v7 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v8 = NSClassFromString(v7);

  if (!v8)
  {
    v9 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v10 = NSClassFromString(v9);

    if (!v10)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  *(v2[4] + 96) = v3;
  v11 = v2[3];

LABEL_8:
  swift_endAccess();

  free(v2);
}

uint64_t key path getter for DatagramClient.datagramChannelStreams : DatagramClient@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DatagramClient.datagramChannelStreams : DatagramClient(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

uint64_t DatagramClient.datagramChannelStreams.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t DatagramClient.datagramChannelStreams.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*DatagramClient.datagramChannelStreams.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConversationManagerClient.activeSessionContainer.modify;
}

uint64_t key path setter for DatagramClient.$datagramChannelStreams : DatagramClient(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS14CopresenceCore24AnyDatagramChannelStream_pG_GMd, &_s7Combine9PublishedV9PublisherVySDySS14CopresenceCore24AnyDatagramChannelStream_pG_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 200))(v7);
}

uint64_t DatagramClient.$datagramChannelStreams.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMd, &_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t DatagramClient.$datagramChannelStreams.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS14CopresenceCore24AnyDatagramChannelStream_pG_GMd, &_s7Combine9PublishedV9PublisherVySDySS14CopresenceCore24AnyDatagramChannelStream_pG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMd, &_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*DatagramClient.$datagramChannelStreams.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySS14CopresenceCore24AnyDatagramChannelStream_pG_GMd, &_s7Combine9PublishedV9PublisherVySDySS14CopresenceCore24AnyDatagramChannelStream_pG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CopresenceCore14DatagramClient__datagramChannelStreams;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMd, &_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivitySession.$state.modify;
}

uint64_t DatagramClient.__allocating_init(config:queue:)(_OWORD *a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  DatagramClient.init(config:queue:)(a1, a2);
  return v7;
}

_OWORD *DatagramClient.init(config:queue:)(_OWORD *a1, void *a2)
{
  v3 = v2;
  v41 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v40 = *(v41 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMd, &_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  v17 = MEMORY[0x1E69E7CC8];
  *(v2 + 96) = MEMORY[0x1E69E7CC8];
  v18 = OBJC_IVAR____TtC14CopresenceCore14DatagramClient__datagramChannelStreams;
  *&v48[0] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14CopresenceCore24AnyDatagramChannelStream_pGMd, &_sSDySS14CopresenceCore24AnyDatagramChannelStream_pGMR);
  Published.init(initialValue:)();
  (*(v13 + 32))(v2 + v18, v16, v12);
  v19 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v19;
  v20 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v20;
  if (a2)
  {
    v21 = a2;
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    static DispatchQoS.unspecified.getter();
    *&v48[0] = MEMORY[0x1E69E7CC0];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v40 + 104))(v39, *MEMORY[0x1E69E8090], v41);
    v21 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  }

  *(v2 + 80) = v21;
  *(v2 + 88) = 0;
  v22 = one-time initialization token for log;
  v23 = a2;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, log);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 136315138;
    v29 = v3[2];
    v48[0] = v3[1];
    v48[1] = v29;
    v30 = v3[4];
    v32 = v3[1];
    v31 = v3[2];
    v48[2] = v3[3];
    v48[3] = v30;
    v47 = v28;
    v43 = v32;
    v44 = v31;
    v33 = v3[4];
    v45 = v3[3];
    v46 = v33;
    outlined init with copy of DatagramClient.Configuration(v48, v42);
    v34 = String.init<A>(describing:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v47);

    *(v27 + 4) = v36;
    _os_log_impl(&dword_1AEB26000, v25, v26, "DatagramClient init, config=%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1B27120C0](v28, -1, -1);
    MEMORY[0x1B27120C0](v27, -1, -1);
  }

  return v3;
}

uint64_t DatagramClient.deinit()
{
  v1 = type metadata accessor for DatagramChannelError(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  (*(*v0 + 240))(v4);
  outlined destroy of DatagramChannelError(v4, type metadata accessor for DatagramChannelError);
  outlined consume of DatagramEndpoint(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  v5 = *(v0 + 96);

  v6 = OBJC_IVAR____TtC14CopresenceCore14DatagramClient__datagramChannelStreams;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMd, &_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMR);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t DatagramClient.__deallocating_deinit()
{
  v1 = type metadata accessor for DatagramChannelError(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  (*(*v0 + 240))(v4);
  outlined destroy of DatagramChannelError(v4, type metadata accessor for DatagramChannelError);
  outlined consume of DatagramEndpoint(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  v5 = *(v0 + 96);

  v6 = OBJC_IVAR____TtC14CopresenceCore14DatagramClient__datagramChannelStreams;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMd, &_s7Combine9PublishedVySDySS14CopresenceCore24AnyDatagramChannelStream_pGGMR);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t DatagramClient.channel<A, B>(definition:topic:input:inputBufferMaxQueueSize:traceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  v10 = v9;
  v39 = a6;
  v42 = a5;
  v40 = a4;
  v41 = a2;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v44 - 8);
  v14 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  v17 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v39 - v22;
  *&v52 = a7;
  *(&v52 + 1) = a8;
  v53 = a9;
  type metadata accessor for DatagramChannelStream();
  v24 = *(v10 + 32);
  v52 = *(v10 + 16);
  v53 = v24;
  v25 = *(v10 + 64);
  v27 = *(v10 + 16);
  v26 = *(v10 + 32);
  v54 = *(v10 + 48);
  v55 = v25;
  aBlock = v27;
  v49 = v26;
  v28 = *(v10 + 64);
  v50 = *(v10 + 48);
  v51 = v28;
  v29 = *(v10 + 80);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v39, v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v30 = v40;

  outlined init with copy of DatagramClient.Configuration(&v52, v47);
  v31 = v29;
  v32 = v41;
  v33 = DatagramChannelStream.__allocating_init(definition:topic:input:config:inputBufferMaxQueueSize:queue:traceId:)(v31, v41, a3, v30, &aBlock, v42, v31, v23);
  v34 = swift_allocObject();
  v34[2] = v10;
  v34[3] = v33;
  v34[4] = v32;
  v34[5] = a3;
  *&v50 = partial apply for closure #1 in DatagramClient.channel<A, B>(definition:topic:input:inputBufferMaxQueueSize:traceId:);
  *(&v50 + 1) = v34;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v49 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  *(&v49 + 1) = &block_descriptor_21;
  v35 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v47[0] = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v36 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v19, v16, v35);
  _Block_release(v35);
  (*(v46 + 8))(v16, v36);
  (*(v43 + 8))(v19, v45);

  *&aBlock = v33;
  swift_getWitnessTable();
  v37 = Publisher.eraseToAnyPublisher()();

  return v37;
}

uint64_t closure #1 in DatagramClient.channel<A, B>(definition:topic:input:inputBufferMaxQueueSize:traceId:)(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v88 = a2;
  v89 = a4;
  v5 = *a2;
  v86 = a3;
  v87 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v76 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGSo17OS_dispatch_queueCGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v76 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8MapErrorVy_AC9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore022DatagramChannelConnectD0OGSo17OS_dispatch_queueCGAM0mnD0OGMd, &_s7Combine10PublishersO8MapErrorVy_AC9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore022DatagramChannelConnectD0OGSo17OS_dispatch_queueCGAM0mnD0OGMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v76 - v18;
  v20 = type metadata accessor for DatagramChannelError(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*a1 + 120))(v22))
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, log);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1AEB26000, v26, v27, "DatagramClient already closed", v28, 2u);
      MEMORY[0x1B27120C0](v28, -1, -1);
    }

    v29 = v87[10];
    v30 = v87[11];
    v31 = v87[12];
    v32 = v87[13];
    default argument 0 of DatagramChannelStream.close(error:)();
    (*(*v88 + 480))(v24);
    return outlined destroy of DatagramChannelError(v24, type metadata accessor for DatagramChannelError);
  }

  else
  {
    v83 = v16;
    v77 = v24;
    v34 = v86;
    v85 = v20;
    v78 = v9;
    v79 = v14;
    v80 = v11;
    v81 = v10;
    v35 = (*(*a1 + 168))();
    v36 = *(v35 + 16);
    v37 = a1;
    v84 = v15;
    v82 = v19;
    if (v36 && (v38 = v34, v39 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v89), (v40 & 1) != 0))
    {
      v41 = (*(v35 + 56) + 16 * v39);
      v42 = *v41;
      v43 = v41[1];
      swift_unknownObjectRetain();

      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, log);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v93[0] = v48;
        *v47 = 136315138;
        *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v89, v93);
        _os_log_impl(&dword_1AEB26000, v45, v46, "Replacing existing channelStream for topic=%s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x1B27120C0](v48, -1, -1);
        MEMORY[0x1B27120C0](v47, -1, -1);
      }

      v34 = v38;
      ObjectType = swift_getObjectType();
      v50 = v77;
      swift_storeEnumTagMultiPayload();
      (*(v43 + 64))(v50, ObjectType, v43);
      swift_unknownObjectRelease();
      outlined destroy of DatagramChannelError(v50, type metadata accessor for DatagramChannelError);
    }

    else
    {
    }

    v51 = *(*v37 + 184);
    v52 = v89;

    v53 = v88;

    v54 = v51(v93);
    v56 = v55;
    v57 = *v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = *v56;
    *v56 = 0x8000000000000000;
    v59 = *(v87 + 6);
    v90 = *(v87 + 5);
    v91 = v59;
    v60 = type metadata accessor for DatagramChannelStream();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v53, v34, v52, isUniquelyReferenced_nonNull_native, &v92, v60, &protocol witness table for DatagramChannelStream<A, B>);

    *v56 = v92;
    v54(v93, 0);
    v61 = swift_allocObject();
    *(v61 + 16) = v37;
    *(v61 + 24) = v53;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMd, &_s7Combine6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMR);
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();

    v87 = Future.init(_:)();
    v93[0] = v87;
    *&v90 = v37[10];
    v65 = v90;
    v66 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v67 = v78;
    (*(*(v66 - 8) + 56))(v78, 1, 1, v66);
    type metadata accessor for OS_dispatch_queue();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Future<NWConnectionGroup, DatagramChannelConnectError> and conformance Future<A, B>, &_s7Combine6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMd, &_s7Combine6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMR);
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
    v68 = v65;
    v69 = v79;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSObject?(v67, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Future<NWConnectionGroup, DatagramChannelConnectError>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGSo17OS_dispatch_queueCGMR);
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type DatagramChannelError and conformance DatagramChannelError, type metadata accessor for DatagramChannelError);
    v70 = v81;
    v71 = v82;
    Publisher.mapError<A>(_:)();
    (*(v80 + 8))(v69, v70);
    v72 = swift_allocObject();
    v72[2] = v53;
    v72[3] = v37;
    v73 = v89;
    v72[4] = v86;
    v72[5] = v73;
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.MapError<Publishers.ReceiveOn<Future<NWConnectionGroup, DatagramChannelConnectError>, OS_dispatch_queue>, DatagramChannelError> and conformance Publishers.MapError<A, B>, &_s7Combine10PublishersO8MapErrorVy_AC9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore022DatagramChannelConnectD0OGSo17OS_dispatch_queueCGAM0mnD0OGMd, &_s7Combine10PublishersO8MapErrorVy_AC9ReceiveOnVy_AA6FutureCy7Network17NWConnectionGroupC14CopresenceCore022DatagramChannelConnectD0OGSo17OS_dispatch_queueCGAM0mnD0OGMR);
    swift_retain_n();

    v74 = v84;
    v75 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v83 + 8))(v71, v74);
    (*(*v53 + 352))(v75);
  }
}

uint64_t closure #1 in closure #1 in DatagramClient.channel<A, B>(definition:topic:input:inputBufferMaxQueueSize:traceId:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*a4 + 80);
  v11 = *(*a4 + 96);
  v8 = type metadata accessor for DatagramChannelStream();
  return specialized DatagramClient.createChannelGroup(channelStream:attempt:promise:)(a4, 1uLL, a1, a2, a3, v8, &protocol witness table for DatagramChannelStream<A, B>);
}

uint64_t closure #2 in closure #1 in DatagramClient.channel<A, B>(definition:topic:input:inputBufferMaxQueueSize:traceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DatagramChannelError(a1, a2, type metadata accessor for DatagramChannelConnectError);
  type metadata accessor for DatagramChannelError(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t closure #3 in closure #1 in DatagramClient.channel<A, B>(definition:topic:input:inputBufferMaxQueueSize:traceId:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v12 - v6, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
  v8 = type metadata accessor for DatagramChannelError(0);
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  result = outlined destroy of NSObject?(v7, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
  if (v9 != 1)
  {
    v11 = *(a2 + direct field offset for DatagramChannelStream.output);
    return PassthroughSubject.send(completion:)();
  }

  return result;
}

uint64_t closure #4 in closure #1 in DatagramClient.channel<A, B>(definition:topic:input:inputBufferMaxQueueSize:traceId:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = type metadata accessor for DatagramChannelError(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if ((*(*a3 + 120))(v13) == 1)
  {
    NWConnectionGroup.cancel()();
    v17 = v10[10];
    v18 = v10[11];
    v19 = v10[12];
    v20 = v10[13];
    default argument 0 of DatagramChannelStream.close(error:)();
    (*(*a2 + 480))(v15);
    return outlined destroy of DatagramChannelError(v15, type metadata accessor for DatagramChannelError);
  }

  v22 = (*(*a3 + 144))();
  if (!*(v22 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5), (v24 & 1) == 0))
  {

    return (*(*a2 + 472))(v16);
  }

  v25 = *(*(v22 + 56) + v23);

  if (v25)
  {
    return (*(*a2 + 472))(v16);
  }

  return result;
}

Swift::Void __swiftcall DatagramClient.close()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  v2 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 80);
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in DatagramClient.close();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_8;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v8, v4, v10);
  _Block_release(v10);
  (*(v13 + 8))(v4, v1);
  (*(v5 + 8))(v8, v12);
}

uint64_t closure #1 in DatagramClient.close()()
{
  v0 = type metadata accessor for DatagramChannelError(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_storeEnumTagMultiPayload();
    (*(*v5 + 240))(v3);

    return outlined destroy of DatagramChannelError(v3, type metadata accessor for DatagramChannelError);
  }

  return result;
}

uint64_t DatagramClient._close(error:)(uint64_t a1)
{
  v90 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v77 - v7;
  v9 = type metadata accessor for DatagramChannelError(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v77 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v77 - v19;
  v21 = *(*v1 + 120);
  v22 = *v1 + 120;
  result = v21(v18);
  if (!result)
  {
    v82 = v21;
    *&v83 = v20;
    v85 = v6;
    v86 = v9;
    v88 = v17;
    v89 = v14;
    v79 = v8;
    v80 = v10;
    v24 = v90;
    v81 = v22;
    v84 = v1;
    if (one-time initialization token for log != -1)
    {
LABEL_32:
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    v26 = __swift_project_value_buffer(v25, log);
    v27 = v83;
    outlined init with copy of DatagramChannelError(v24, v83, type metadata accessor for DatagramChannelError);
    v28 = v84;
    swift_retain_n();
    v87 = v26;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v89;
    v33 = v85;
    if (v31)
    {
      v34 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v91 = v78;
      *v34 = 136315650;
      v35 = v79;
      outlined init with copy of DatagramChannelError(v27, v79, type metadata accessor for DatagramChannelError);
      v36 = v80;
      v37 = v86;
      (*(v80 + 56))(v35, 0, 1, v86);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v35, v33, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
      v38 = (*(v36 + 48))(v33, 1, v37);
      LODWORD(v90) = v30;
      if (v38 == 1)
      {
        v39 = 0xE300000000000000;
        v40 = 7104878;
      }

      else
      {
        v41 = v88;
        outlined init with take of DatagramChannelError(v33, v88, type metadata accessor for DatagramChannelError);
        outlined init with copy of DatagramChannelError(v41, v32, type metadata accessor for DatagramChannelError);
        v40 = String.init<A>(reflecting:)();
        v39 = v42;
        v28 = v84;
        outlined destroy of DatagramChannelError(v41, type metadata accessor for DatagramChannelError);
      }

      outlined destroy of NSObject?(v35, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
      outlined destroy of DatagramChannelError(v27, type metadata accessor for DatagramChannelError);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v91);

      *(v34 + 4) = v43;
      *(v34 + 12) = 2048;
      v45 = *((*(*v28 + 168))(v44) + 16);

      *(v34 + 14) = v45;

      *(v34 + 22) = 2080;
      v47 = v82(v46);
      if (v47)
      {
        if (v47 == 1)
        {
          v48 = 0x676E69736F6C43;
        }

        else
        {
          v48 = 0x6465736F6C43;
        }

        if (v47 == 1)
        {
          v49 = 0xE700000000000000;
        }

        else
        {
          v49 = 0xE600000000000000;
        }
      }

      else
      {
        v49 = 0xE500000000000000;
        v48 = 0x7964616552;
      }

      v50 = v90;
      v24 = v78;
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v91);

      *(v34 + 24) = v51;
      _os_log_impl(&dword_1AEB26000, v29, v50, "Closing, error=%s topic-count=%ld state=%s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v24, -1, -1);
      MEMORY[0x1B27120C0](v34, -1, -1);
    }

    else
    {

      outlined destroy of DatagramChannelError(v27, type metadata accessor for DatagramChannelError);
    }

    v52 = *(*v28 + 128);
    v81 = *v28 + 128;
    v82 = v52;
    v53 = (v52)(1);
    v54 = (*(*v28 + 168))(v53);
    v56 = 0;
    v58 = v54 + 64;
    v57 = *(v54 + 64);
    v89 = v54;
    v59 = 1 << *(v54 + 32);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v61 = v60 & v57;
    v62 = (v59 + 63) >> 6;
    *&v55 = 136315138;
    v83 = v55;
    while (v61)
    {
LABEL_27:
      v65 = (v56 << 10) | (16 * __clz(__rbit64(v61)));
      v66 = (*(v89 + 6) + v65);
      v67 = *v66;
      v68 = v66[1];
      v69 = (*(v89 + 7) + v65);
      v70 = *v69;
      v90 = v69[1];

      swift_unknownObjectRetain();
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v85 = v70;
        v74 = v73;
        v75 = swift_slowAlloc();
        v91 = v75;
        *v74 = v83;
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v91);

        *(v74 + 4) = v76;
        _os_log_impl(&dword_1AEB26000, v71, v72, "Closing datagram-channel stream, topic=%s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        MEMORY[0x1B27120C0](v75, -1, -1);
        MEMORY[0x1B27120C0](v74, -1, -1);
      }

      else
      {
      }

      v61 &= v61 - 1;
      ObjectType = swift_getObjectType();
      v24 = v88;
      swift_storeEnumTagMultiPayload();
      (*(v90 + 64))(v24, ObjectType);
      swift_unknownObjectRelease();
      outlined destroy of DatagramChannelError(v24, type metadata accessor for DatagramChannelError);
    }

    while (1)
    {
      v64 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v64 >= v62)
      {
        break;
      }

      v61 = *(v58 + 8 * v64);
      ++v56;
      if (v61)
      {
        v56 = v64;
        goto LABEL_27;
      }
    }

    return (v82)(2);
  }

  return result;
}

uint64_t specialized static DatagramChannelError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = type metadata accessor for NWError();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DatagramChannelConnectError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DatagramChannelError(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20DatagramChannelErrorO_ACtMd, &_s14CopresenceCore20DatagramChannelErrorO_ACtMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v30 - v21;
  v23 = *(v20 + 56);
  outlined init with copy of DatagramChannelError(a1, &v30 - v21, type metadata accessor for DatagramChannelError);
  outlined init with copy of DatagramChannelError(v31, &v22[v23], type metadata accessor for DatagramChannelError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v25 = v6;
    v26 = v30;
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of DatagramChannelError(v22, v15, type metadata accessor for DatagramChannelError);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v26 + 8))(v15, v3);
        goto LABEL_16;
      }

      (*(v26 + 32))(v25, &v22[v23], v3);
      v27 = MEMORY[0x1B270FAF0](v15, v25);
      v28 = *(v26 + 8);
      v28(v25, v3);
      v28(v15, v3);
    }

    else
    {
      outlined init with copy of DatagramChannelError(v22, v17, type metadata accessor for DatagramChannelError);
      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of DatagramChannelError(v17, type metadata accessor for DatagramChannelConnectError);
        goto LABEL_16;
      }

      outlined init with take of DatagramChannelError(&v22[v23], v10, type metadata accessor for DatagramChannelConnectError);
      v27 = specialized static DatagramChannelConnectError.== infix(_:_:)(v17, v10);
      outlined destroy of DatagramChannelError(v10, type metadata accessor for DatagramChannelConnectError);
      outlined destroy of DatagramChannelError(v17, type metadata accessor for DatagramChannelConnectError);
    }

    outlined destroy of DatagramChannelError(v22, type metadata accessor for DatagramChannelError);
    return v27 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_12;
    }

LABEL_16:
    outlined destroy of NSObject?(v22, &_s14CopresenceCore20DatagramChannelErrorO_ACtMd, &_s14CopresenceCore20DatagramChannelErrorO_ACtMR);
    v27 = 0;
    return v27 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_16;
  }

LABEL_12:
  outlined destroy of DatagramChannelError(v22, type metadata accessor for DatagramChannelError);
  v27 = 1;
  return v27 & 1;
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type DatagramClient.State and conformance DatagramClient.State()
{
  result = lazy protocol witness table cache variable for type DatagramClient.State and conformance DatagramClient.State;
  if (!lazy protocol witness table cache variable for type DatagramClient.State and conformance DatagramClient.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatagramClient.State and conformance DatagramClient.State);
  }

  return result;
}

uint64_t type metadata completion function for DatagramChannelError()
{
  result = type metadata accessor for DatagramChannelConnectError();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NWError();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
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

uint64_t getEnumTagSinglePayload for DatagramClient.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 64))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for DatagramClient.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void type metadata completion function for EgressMessage(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for [UInt64]?(319, &lazy cache variable for type metadata for [UInt64]?, &_sSays6UInt64VGMd, &_sSays6UInt64VGMR, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      type metadata accessor for [UInt64]?(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR, MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for EgressMessage(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *storeEnumTagSinglePayload for EgressMessage(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void type metadata completion function for DatagramClient()
{
  type metadata accessor for [UInt64]?(319, &lazy cache variable for type metadata for Published<[String : AnyDatagramChannelStream]>, &_sSDySS14CopresenceCore24AnyDatagramChannelStream_pGMd, &_sSDySS14CopresenceCore24AnyDatagramChannelStream_pGMR, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for [UInt64]?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = v13[3];
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 < v19 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
      v23 = *a5;
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v20 & 1) != (v24 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v22 = v14;
      specialized _NativeDictionary.copy()();
      v14 = v22;
    }
  }

  v25 = *a5;
  if (v20)
  {
    v26 = (v25[7] + 16 * v14);
    v27 = *v26;
    *v26 = a1;
    v26[1] = a7;

    return swift_unknownObjectRelease();
  }

  v25[(v14 >> 6) + 8] |= 1 << v14;
  v29 = (v25[6] + 16 * v14);
  *v29 = a2;
  v29[1] = a3;
  v30 = (v25[7] + 16 * v14);
  *v30 = a1;
  v30[1] = a7;
  v31 = v25[2];
  v18 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v32;
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t outlined init with copy of DatagramChannelError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DatagramChannelError(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of DatagramChannelError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CP_ResponseStatus.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_1AEE179E0[result];
  }

  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance CP_ResponseStatus()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1AEE179E0[result];
  }

  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CP_ResponseStatus(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_1AEE179E0[v2];
  }

  *a1 = v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_ResponseStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CP_ResponseStatus(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1AEE179E0[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_1AEE179E0[v3];
  }

  return v2 == v3;
}

uint64_t CP_Record.seqNum.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for CP_Record(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 36), v6, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v8 = type metadata accessor for CP_SequenceNumber(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v6, a1, type metadata accessor for CP_SequenceNumber);
  }

  *a1 = 0;
  a1[1] = 0;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t key path getter for CP_Record.seqNum : CP_Record@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for CP_Record(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v8 + 36), v7, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v9 = type metadata accessor for CP_SequenceNumber(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_SequenceNumber);
  }

  *a2 = 0;
  a2[1] = 0;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t key path setter for CP_Record.seqNum : CP_Record(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v8, type metadata accessor for CP_SequenceNumber);
  v9 = *(type metadata accessor for CP_Record(0) + 36);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  outlined init with take of CP_SequenceNumber(v8, a2 + v9, type metadata accessor for CP_SequenceNumber);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t CP_Record.seqNum.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_Record(0) + 36);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1 + v3, type metadata accessor for CP_SequenceNumber);
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t CP_SequenceNumber.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for CP_SequenceNumber(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 24);
  return UnknownStorage.init()();
}

uint64_t (*CP_Record.seqNum.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CP_SequenceNumber(0);
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
  v15 = *(type metadata accessor for CP_Record(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_SequenceNumber);
  }

  return CP_Record.seqNum.modify;
}

BOOL CP_Record.hasSeqNum.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CP_Record(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v5 + 36), v4, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v6 = type metadata accessor for CP_SequenceNumber(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of NSObject?(v4, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  return v7;
}

Swift::Void __swiftcall CP_Record.clearSeqNum()()
{
  v1 = *(type metadata accessor for CP_Record(0) + 36);
  outlined destroy of NSObject?(v0 + v1, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v2 = type metadata accessor for CP_SequenceNumber(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t CP_EncryptionID.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  v1 = a1 + *(type metadata accessor for CP_EncryptionID(0) + 20);
  return UnknownStorage.init()();
}

uint64_t (*CP_Record.encryptionID.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CP_EncryptionID(0);
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
  v15 = *(type metadata accessor for CP_Record(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    v17 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_EncryptionID);
  }

  return CP_Record.encryptionID.modify;
}

uint64_t CP_Record.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_1AEE0C200;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  v2 = type metadata accessor for CP_Record(0);
  v3 = a1 + v2[8];
  UnknownStorage.init()();
  v4 = v2[9];
  v5 = type metadata accessor for CP_SequenceNumber(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[10];
  v7 = type metadata accessor for CP_EncryptionID(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t CP_KeyValue.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CP_KeyValue.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CP_KeyValue.dataValue.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t CP_KeyValue.dataValue.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CP_KeyValue.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_1AEE0C200;
  v1 = a1 + *(type metadata accessor for CP_KeyValue(0) + 24);
  return UnknownStorage.init()();
}

uint64_t CP_KeyValue.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CP_KeyValue.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t CP_EncryptionID.uuid.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t CP_EncryptionID.uuid.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t CP_TopicSubscribersRequest.topicTerminationAck.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v11 - v6, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
LABEL_5:
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v9 = a1 + *(type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0) + 20);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    goto LABEL_5;
  }

  return outlined init with take of CP_SequenceNumber(v7, a1, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
}

uint64_t key path getter for CP_TopicSubscribersRequest.topicTerminationAck : CP_TopicSubscribersRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v11 - v6, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
LABEL_5:
    *a2 = 0;
    a2[1] = 0xE000000000000000;
    v9 = a2 + *(type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0) + 20);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    goto LABEL_5;
  }

  return outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
}

uint64_t key path setter for CP_TopicSubscribersRequest.topicTerminationAck : CP_TopicSubscribersRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v7, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
  v8 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t CP_TopicSubscribersRequest.topicTerminationAck.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
  v3 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*CP_TopicSubscribersRequest.topicTerminationAck.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of CP_SequenceNumber(v8, v12, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
      return CP_TopicSubscribersRequest.topicTerminationAck.modify;
    }

    outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  }

  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v15 = v12 + *(v9 + 20);
  UnknownStorage.init()();
  return CP_TopicSubscribersRequest.topicTerminationAck.modify;
}

void CP_TopicSubscribersRequest.topicTerminationAck.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_TopicSubscribersRequest.topicTerminationRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v11 - v6, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of CP_SequenceNumber(v7, a1, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    }

    outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v10 = a1 + *(type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0) + 24);
  return UnknownStorage.init()();
}

uint64_t key path setter for CP_TopicSubscribersRequest.topicTerminationRequest : CP_TopicSubscribersRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v7, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  v8 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t CP_TopicSubscribersRequest.topicTerminationRequest.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  v3 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t CP_TopicSubscribersRequest.TopicTerminationRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v1 = a1 + *(type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0) + 24);
  return UnknownStorage.init()();
}

void (*CP_TopicSubscribersRequest.topicTerminationRequest.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v12 = 0;
    *(v12 + 8) = 0xE000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 24) = 1;
    v15 = v12 + *(v9 + 24);
    UnknownStorage.init()();
    return CP_TopicSubscribersRequest.topicTerminationRequest.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of CP_SequenceNumber(v8, v12, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  return CP_TopicSubscribersRequest.topicTerminationRequest.modify;
}

void CP_TopicSubscribersRequest.topicTerminationRequest.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_EncryptionID.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CP_EncryptionID.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t CP_TopicSubscribersRequest.TopicTerminationRequest.reason.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t CP_TopicSubscribersRequest.TopicTerminationRequest.reason.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

BOOL CP_TopicSubscribersRequest.TopicTerminationRequest.Reason.rawValue.getter(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t CP_TopicSubscribers.terminateTopic.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t CP_TopicSubscribersRequest.TopicTerminatedAck.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1(0) + 20);
  return UnknownStorage.init()();
}

uint64_t CP_SystemEvent.event.getter()
{
  v1 = *v0;
  outlined copy of CP_SystemEvent.OneOf_Event?(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t CP_SystemEvent.event.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = outlined consume of CP_SystemEvent.OneOf_Event?(*v3, *(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t CP_SystemEvent.topicCreated.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    return 0;
  }

  v3 = *v0;
  v4 = v0[1];
  outlined copy of CP_SystemEvent.OneOf_Event();
  return v3;
}

void (*CP_SystemEvent.topicCreated.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = v1[1];
  *(v3 + 32) = v6;
  v7 = *(v1 + 16);
  *(v3 + 40) = v7;
  if (v7 == 255 || (v7 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    outlined copy of CP_SystemEvent.OneOf_Event();
  }

  *v4 = v5;
  v4[1] = v6;
  return CP_SystemEvent.topicCreated.modify;
}

uint64_t CP_SystemEvent.topicDestroyed.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    return 0;
  }

  v2 = *v0;
  v3 = v0[1];
  outlined copy of CP_SystemEvent.OneOf_Event();
  return v2;
}

uint64_t CP_SystemEvent.topicCreated.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = outlined consume of CP_SystemEvent.OneOf_Event?(*v3, *(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

void (*CP_SystemEvent.topicDestroyed.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = v1[1];
  *(v3 + 32) = v6;
  v7 = *(v1 + 16);
  *(v3 + 40) = v7;
  if (v7 == 255 || (v7 & 1) == 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    outlined copy of CP_SystemEvent.OneOf_Event();
  }

  *v4 = v5;
  v4[1] = v6;
  return CP_SystemEvent.topicDestroyed.modify;
}

void CP_SystemEvent.topicCreated.modify(uint64_t **a1, char a2, char a3)
{
  v4 = *a1;
  v6 = **a1;
  v5 = (*a1)[1];
  v7 = *(*a1 + 40);
  v9 = (*a1)[3];
  v8 = (*a1)[4];
  v10 = (*a1)[2];
  if (a2)
  {
    v11 = (*a1)[1];

    outlined consume of CP_SystemEvent.OneOf_Event?(v9, v8, v7);
    *v10 = v6;
    *(v10 + 8) = v5;
    *(v10 + 16) = a3;
    v12 = v4[1];
  }

  else
  {
    outlined consume of CP_SystemEvent.OneOf_Event?((*a1)[3], v8, v7);
    *v10 = v6;
    *(v10 + 8) = v5;
    *(v10 + 16) = a3;
  }

  free(v4);
}

uint64_t CP_SystemEvent.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  v1 = a1 + *(type metadata accessor for CP_SystemEvent(0) + 20);
  return UnknownStorage.init()();
}

uint64_t CP_SubscribeRequest.initialize.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v15 - v6, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
LABEL_5:
    *a1 = 0;
    *(a1 + 1) = 0xE000000000000000;
    v9 = MEMORY[0x1E69E7CC0];
    *(a1 + 2) = MEMORY[0x1E69E7CC0];
    *(a1 + 3) = v9;
    v10 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
    *(a1 + 4) = 0;
    *(a1 + 5) = 0;
    v11 = &a1[*(v10 + 36)];
    UnknownStorage.init()();
    v12 = *(v10 + 40);
    v13 = type metadata accessor for CP_EncryptionID(0);
    return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    goto LABEL_5;
  }

  return outlined init with take of CP_SequenceNumber(v7, a1, type metadata accessor for CP_SubscribeRequest.Initialize);
}

uint64_t key path setter for CP_SubscribeRequest.initialize : CP_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v7, type metadata accessor for CP_SubscribeRequest.Initialize);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_SubscribeRequest.Initialize);
  v8 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t CP_SubscribeRequest.initialize.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_SubscribeRequest.Initialize);
  v3 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t CP_SubscribeRequest.Initialize.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 2) = MEMORY[0x1E69E7CC0];
  *(a1 + 3) = v2;
  v3 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  v4 = &a1[*(v3 + 36)];
  UnknownStorage.init()();
  v5 = *(v3 + 40);
  v6 = type metadata accessor for CP_EncryptionID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

void (*CP_SubscribeRequest.initialize.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR) - 8) + 64);
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
  v10 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of CP_SequenceNumber(v9, v13, type metadata accessor for CP_SubscribeRequest.Initialize);
      return CP_SubscribeRequest.initialize.modify;
    }

    outlined destroy of CP_SequenceNumber(v9, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  }

  v16 = MEMORY[0x1E69E7CC0];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  *(v13 + 2) = v16;
  *(v13 + 3) = v16;
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  v17 = &v13[*(v10 + 36)];
  UnknownStorage.init()();
  v18 = *(v10 + 40);
  v19 = type metadata accessor for CP_EncryptionID(0);
  (*(*(v19 - 8) + 56))(&v13[v18], 1, 1, v19);
  return CP_SubscribeRequest.initialize.modify;
}

void CP_SubscribeRequest.initialize.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_SubscribeRequest.Initialize);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_SubscribeRequest.Initialize);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeRequest.Initialize);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_SubscribeRequest.Initialize);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_SubscribeRequest.recordAck.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v11 - v6, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of CP_SequenceNumber(v7, a1, type metadata accessor for CP_SubscribeRequest.RecordAck);
    }

    outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(type metadata accessor for CP_SubscribeRequest.RecordAck(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for CP_SubscribeRequest.recordAck : CP_SubscribeRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v11 - v6, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_SubscribeRequest.RecordAck);
    }

    outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v10 = a2 + *(type metadata accessor for CP_SubscribeRequest.RecordAck(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path setter for CP_SubscribeRequest.recordAck : CP_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v7, type metadata accessor for CP_SubscribeRequest.RecordAck);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_SubscribeRequest.RecordAck);
  v8 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t CP_SubscribeRequest.recordAck.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_SubscribeRequest.RecordAck);
  v3 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t CP_SubscribeRequest.RecordAck.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for CP_SubscribeRequest.RecordAck(0) + 20);
  return UnknownStorage.init()();
}

void (*CP_SubscribeRequest.recordAck.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v15 = v12 + *(v9 + 20);
    UnknownStorage.init()();
    return CP_SubscribeRequest.recordAck.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of CP_SequenceNumber(v8, v12, type metadata accessor for CP_SubscribeRequest.RecordAck);
  return CP_SubscribeRequest.recordAck.modify;
}

void CP_SubscribeRequest.recordAck.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_SubscribeRequest.RecordAck);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_SubscribeRequest.RecordAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeRequest.RecordAck);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_SubscribeRequest.RecordAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static CP_SubscribeRequest.RecordAck.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore17CP_SequenceNumberV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for CP_SubscribeRequest.RecordAck(0) + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t CP_SubscribeRequest.Initialize.knownSeqNums.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t CP_Record.encryptionID.getter@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2 + *(v9 + 40), v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v10 = type metadata accessor for CP_EncryptionID(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v8, a2, type metadata accessor for CP_EncryptionID);
  }

  *a2 = xmmword_1AEE0C200;
  v12 = a2 + *(v10 + 20);
  UnknownStorage.init()();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path getter for CP_Record.encryptionID : CP_Record@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = a2(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v10 + 40), v9, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v11 = type metadata accessor for CP_EncryptionID(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v9, a3, type metadata accessor for CP_EncryptionID);
  }

  *a3 = xmmword_1AEE0C200;
  v13 = a3 + *(v11 + 20);
  UnknownStorage.init()();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v9, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path setter for CP_Record.encryptionID : CP_Record(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for CP_EncryptionID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v12, type metadata accessor for CP_EncryptionID);
  v13 = *(a5(0) + 40);
  outlined destroy of NSObject?(a2 + v13, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  outlined init with take of CP_SequenceNumber(v12, a2 + v13, type metadata accessor for CP_EncryptionID);
  return (*(v9 + 56))(a2 + v13, 0, 1, v8);
}

uint64_t CP_Record.encryptionID.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  outlined destroy of NSObject?(v2 + v4, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  outlined init with take of CP_SequenceNumber(a1, v2 + v4, type metadata accessor for CP_EncryptionID);
  v5 = type metadata accessor for CP_EncryptionID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*CP_SubscribeRequest.Initialize.localEncryptionID.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CP_EncryptionID(0);
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
  v15 = *(type metadata accessor for CP_SubscribeRequest.Initialize(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    v17 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_EncryptionID);
  }

  return CP_Record.encryptionID.modify;
}

BOOL CP_Record.hasEncryptionID.getter(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = a1(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 40), v6, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v8 = type metadata accessor for CP_EncryptionID(0);
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  outlined destroy of NSObject?(v6, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  return v9;
}

uint64_t CP_Record.clearEncryptionID()(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 40);
  outlined destroy of NSObject?(v1 + v2, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v3 = type metadata accessor for CP_EncryptionID(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t CP_SubscribeRequest.Initialize.knownEncryptionIds.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t CP_SubscribeRequest.Initialize.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CP_SubscribeRequest.Initialize(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CP_SubscribeRequest.Initialize.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_SubscribeRequest.Initialize(0) + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CP_SubscribeRequest.RecordAck.seqNumsAck.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CP_TopicSubscribersRequest.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return UnknownStorage.init()();
}

uint64_t CP_SubscribeResponse.initializeAck.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v17 - v6, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of CP_SequenceNumber(v7, a1, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    }

    outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v9 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v9;
  *(a1 + 48) = v9;
  *(a1 + 56) = v9;
  v10 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  v11 = a1 + v10[10];
  UnknownStorage.init()();
  v12 = v10[11];
  v13 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v10[12];
  v15 = type metadata accessor for CP_SequenceNumber(0);
  return (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
}

uint64_t key path setter for CP_SubscribeResponse.initializeAck : CP_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v7, type metadata accessor for CP_SubscribeResponse.InitializeAck);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_SubscribeResponse.InitializeAck);
  v8 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t CP_SubscribeResponse.initializeAck.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_SubscribeResponse.InitializeAck);
  v3 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t CP_SubscribeResponse.InitializeAck.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = v2;
  v3 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  v4 = a1 + v3[10];
  UnknownStorage.init()();
  v5 = v3[11];
  v6 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v3[12];
  v8 = type metadata accessor for CP_SequenceNumber(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

void (*CP_SubscribeResponse.initializeAck.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR) - 8) + 64);
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
  v10 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of CP_SequenceNumber(v9, v13, type metadata accessor for CP_SubscribeResponse.InitializeAck);
      return CP_SubscribeResponse.initializeAck.modify;
    }

    outlined destroy of CP_SequenceNumber(v9, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  }

  *v13 = 0;
  *(v13 + 8) = 1;
  v16 = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = 0;
  *(v13 + 24) = 0xE000000000000000;
  *(v13 + 32) = v16;
  *(v13 + 40) = v16;
  *(v13 + 48) = v16;
  *(v13 + 56) = v16;
  v17 = v13 + v10[10];
  UnknownStorage.init()();
  v18 = v10[11];
  v19 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
  v20 = v10[12];
  v21 = type metadata accessor for CP_SequenceNumber(0);
  (*(*(v21 - 8) + 56))(v13 + v20, 1, 1, v21);
  return CP_SubscribeResponse.initializeAck.modify;
}

void CP_SubscribeResponse.initializeAck.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeResponse.InitializeAck);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_SubscribeResponse.record.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v16 - v6, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of CP_SequenceNumber(v7, a1, type metadata accessor for CP_Record);
    }

    outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_1AEE0C200;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  v10 = type metadata accessor for CP_Record(0);
  v11 = a1 + v10[8];
  UnknownStorage.init()();
  v12 = v10[9];
  v13 = type metadata accessor for CP_SequenceNumber(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v10[10];
  v15 = type metadata accessor for CP_EncryptionID(0);
  return (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
}

uint64_t key path setter for CP_SubscribeResponse.record : CP_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_Record(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v7, type metadata accessor for CP_Record);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_Record);
  v8 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t CP_SubscribeResponse.record.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_Record);
  v3 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*CP_SubscribeResponse.record.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR) - 8) + 64);
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
  v10 = type metadata accessor for CP_Record(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = xmmword_1AEE0C200;
    *(v13 + 32) = MEMORY[0x1E69E7CC0];
    *(v13 + 40) = 0;
    v16 = v13 + v10[8];
    UnknownStorage.init()();
    v17 = v10[9];
    v18 = type metadata accessor for CP_SequenceNumber(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    v19 = v10[10];
    v20 = type metadata accessor for CP_EncryptionID(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    return CP_SubscribeResponse.record.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of CP_SequenceNumber(v9, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of CP_SequenceNumber(v9, v13, type metadata accessor for CP_Record);
  return CP_SubscribeResponse.record.modify;
}

void CP_SubscribeResponse.record.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_Record);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_Record);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_Record);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_Record);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_SubscribeResponse.topicUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v11 - v6, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of CP_SequenceNumber(v7, a1, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    }

    outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v10 = a1 + *(type metadata accessor for CP_SubscribeResponse.TopicUpdate(0) + 32);
  return UnknownStorage.init()();
}

uint64_t key path setter for CP_SubscribeResponse.topicUpdate : CP_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v7, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
  v8 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t CP_SubscribeResponse.topicUpdate.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
  v3 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t CP_SubscribeResponse.TopicUpdate.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v1 = a1 + *(type metadata accessor for CP_SubscribeResponse.TopicUpdate(0) + 32);
  return UnknownStorage.init()();
}

void (*CP_SubscribeResponse.topicUpdate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
LABEL_15:
    *v12 = 0;
    *(v12 + 8) = 1;
    *(v12 + 16) = MEMORY[0x1E69E7CC0];
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    v15 = v12 + *(v9 + 32);
    UnknownStorage.init()();
    return CP_SubscribeResponse.topicUpdate.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of CP_SequenceNumber(v8, v12, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
  return CP_SubscribeResponse.topicUpdate.modify;
}

void CP_SubscribeResponse.topicUpdate.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_SubscribeResponse.InitializeAck.otherSubscriberParticipantIds.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t CP_SubscribeResponse.InitializeAck.metadata.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t CP_SubscribeResponse.InitializeAck.topicCatchupSummary.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 44), v6, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v8 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v6, a1, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v10;
  v11 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  }

  return result;
}

uint64_t key path getter for CP_SubscribeResponse.InitializeAck.topicCatchupSummary : CP_SubscribeResponse.InitializeAck@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v8 + 44), v7, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v9 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  }

  v11 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  a2[1] = v11;
  v12 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  }

  return result;
}

uint64_t key path setter for CP_SubscribeResponse.InitializeAck.topicCatchupSummary : CP_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v8, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  v9 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 44);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  outlined init with take of CP_SequenceNumber(v8, a2 + v9, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t CP_SubscribeResponse.InitializeAck.topicCatchupSummary.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 44);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1 + v3, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  v4 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t CP_TopicSubscribers.init()@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a3 = a1;
  a3[1] = v4;
  v5 = a3 + *(a2(0) + 24);
  return UnknownStorage.init()();
}

void (*CP_SubscribeResponse.InitializeAck.topicCatchupSummary.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
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
  v15 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 44);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = 0;
    v14[1] = v17;
    v18 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  }

  return CP_SubscribeResponse.InitializeAck.topicCatchupSummary.modify;
}

BOOL CP_SubscribeResponse.InitializeAck.hasTopicCatchupSummary.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v5 + 44), v4, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v6 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of NSObject?(v4, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  return v7;
}

Swift::Void __swiftcall CP_SubscribeResponse.InitializeAck.clearTopicCatchupSummary()()
{
  v1 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 44);
  outlined destroy of NSObject?(v0 + v1, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v2 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t CP_SubscribeResponse.InitializeAck.missingEncryptionIds.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t CP_SubscribeResponse.InitializeAck.subscriberSeqNum.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 48), v6, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v8 = type metadata accessor for CP_SequenceNumber(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v6, a1, type metadata accessor for CP_SequenceNumber);
  }

  *a1 = 0;
  a1[1] = 0;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t key path getter for CP_SubscribeResponse.InitializeAck.subscriberSeqNum : CP_SubscribeResponse.InitializeAck@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v8 + 48), v7, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v9 = type metadata accessor for CP_SequenceNumber(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_SequenceNumber);
  }

  *a2 = 0;
  a2[1] = 0;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t key path setter for CP_SubscribeResponse.InitializeAck.subscriberSeqNum : CP_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v8, type metadata accessor for CP_SequenceNumber);
  v9 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 48);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  outlined init with take of CP_SequenceNumber(v8, a2 + v9, type metadata accessor for CP_SequenceNumber);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t CP_SubscribeResponse.InitializeAck.subscriberSeqNum.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 48);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1 + v3, type metadata accessor for CP_SequenceNumber);
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CP_SubscribeResponse.InitializeAck.subscriberSeqNum.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CP_SequenceNumber(0);
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
  v15 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 48);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_SequenceNumber);
  }

  return CP_Record.seqNum.modify;
}

BOOL CP_SubscribeResponse.InitializeAck.hasSubscriberSeqNum.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v5 + 48), v4, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v6 = type metadata accessor for CP_SequenceNumber(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of NSObject?(v4, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  return v7;
}

Swift::Void __swiftcall CP_SubscribeResponse.InitializeAck.clearSubscriberSeqNum()()
{
  v1 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 48);
  outlined destroy of NSObject?(v0 + v1, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v2 = type metadata accessor for CP_SequenceNumber(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t CP_SubscribeResponse.InitializeAck.otherSaltVerifiedSubscriberParticipantIds.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t CP_SubscribeResponse.InitializeAck.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CP_SubscribeResponse.InitializeAck.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*CP_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CP_EncryptionID(0);
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
  v15 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    v17 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_EncryptionID);
  }

  return CP_Record.encryptionID.modify;
}

uint64_t CP_SubscribeResponse.InitializeAck.MissingEncryptionID.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v3 = &a1[*(v2 + 20)];
  UnknownStorage.init()();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for CP_EncryptionID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t CP_Record.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CP_Record.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent(uint64_t a1, uint64_t a2)
{
  updated = lazy protocol witness table accessor for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent();

  return MEMORY[0x1EEE15710](a1, a2, updated);
}

uint64_t CP_PublishRequest.record.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v16 - v6, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
LABEL_5:
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = xmmword_1AEE0C200;
    *(a1 + 32) = MEMORY[0x1E69E7CC0];
    *(a1 + 40) = 0;
    v9 = type metadata accessor for CP_Record(0);
    v10 = a1 + v9[8];
    UnknownStorage.init()();
    v11 = v9[9];
    v12 = type metadata accessor for CP_SequenceNumber(0);
    (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
    v13 = v9[10];
    v14 = type metadata accessor for CP_EncryptionID(0);
    return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    goto LABEL_5;
  }

  return outlined init with take of CP_SequenceNumber(v7, a1, type metadata accessor for CP_Record);
}

uint64_t key path setter for CP_PublishRequest.record : CP_PublishRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_Record(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v7, type metadata accessor for CP_Record);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_Record);
  v8 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t CP_PublishRequest.record.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_Record);
  v3 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*CP_PublishRequest.record.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR) - 8) + 64);
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
  v10 = type metadata accessor for CP_Record(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of CP_SequenceNumber(v9, v13, type metadata accessor for CP_Record);
      return CP_PublishRequest.record.modify;
    }

    outlined destroy of CP_SequenceNumber(v9, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  }

  *v13 = 0;
  *(v13 + 8) = 0xE000000000000000;
  *(v13 + 16) = xmmword_1AEE0C200;
  *(v13 + 32) = MEMORY[0x1E69E7CC0];
  *(v13 + 40) = 0;
  v16 = v13 + v10[8];
  UnknownStorage.init()();
  v17 = v10[9];
  v18 = type metadata accessor for CP_SequenceNumber(0);
  (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
  v19 = v10[10];
  v20 = type metadata accessor for CP_EncryptionID(0);
  (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
  return CP_PublishRequest.record.modify;
}

void CP_PublishRequest.record.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_Record);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_Record);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_Record);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_Record);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_PublishRequest.updatedEncryptionID.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v14 - v6, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of CP_SequenceNumber(v7, a1, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    }

    outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  v11 = &a1[*(v10 + 20)];
  UnknownStorage.init()();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for CP_EncryptionID(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t key path setter for CP_PublishRequest.updatedEncryptionID : CP_PublishRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v7, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  v8 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t CP_PublishRequest.updatedEncryptionID.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  v3 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t CP_PublishRequest.UpdatedEncryptionID.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  v3 = &a1[*(v2 + 20)];
  UnknownStorage.init()();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for CP_EncryptionID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

void (*CP_PublishRequest.updatedEncryptionID.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR) - 8) + 64);
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
  v10 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    v16 = &v13[*(v10 + 20)];
    UnknownStorage.init()();
    v17 = *(v10 + 24);
    v18 = type metadata accessor for CP_EncryptionID(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return CP_PublishRequest.updatedEncryptionID.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of CP_SequenceNumber(v9, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of CP_SequenceNumber(v9, v13, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  return CP_PublishRequest.updatedEncryptionID.modify;
}

void CP_PublishRequest.updatedEncryptionID.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID.getter@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2 + *(v9 + 24), v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v10 = type metadata accessor for CP_EncryptionID(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v8, a2, type metadata accessor for CP_EncryptionID);
  }

  *a2 = xmmword_1AEE0C200;
  v12 = a2 + *(v10 + 20);
  UnknownStorage.init()();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path getter for CP_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID : CP_SubscribeResponse.InitializeAck.MissingEncryptionID@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = a2(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v10 + 24), v9, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v11 = type metadata accessor for CP_EncryptionID(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v9, a3, type metadata accessor for CP_EncryptionID);
  }

  *a3 = xmmword_1AEE0C200;
  v13 = a3 + *(v11 + 20);
  UnknownStorage.init()();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v9, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path setter for CP_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID : CP_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for CP_EncryptionID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v12, type metadata accessor for CP_EncryptionID);
  v13 = *(a5(0) + 24);
  outlined destroy of NSObject?(a2 + v13, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  outlined init with take of CP_SequenceNumber(v12, a2 + v13, type metadata accessor for CP_EncryptionID);
  return (*(v9 + 56))(a2 + v13, 0, 1, v8);
}

uint64_t CP_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  outlined destroy of NSObject?(v2 + v4, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  outlined init with take of CP_SequenceNumber(a1, v2 + v4, type metadata accessor for CP_EncryptionID);
  v5 = type metadata accessor for CP_EncryptionID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*CP_PublishRequest.UpdatedEncryptionID.encryptionID.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CP_EncryptionID(0);
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
  v15 = *(type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    v17 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_EncryptionID);
  }

  return CP_PublishRequest.UpdatedEncryptionID.encryptionID.modify;
}

BOOL CP_SubscribeResponse.InitializeAck.MissingEncryptionID.hasEncryptionID.getter(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = a1(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 24), v6, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v8 = type metadata accessor for CP_EncryptionID(0);
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  outlined destroy of NSObject?(v6, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  return v9;
}

uint64_t CP_SubscribeResponse.InitializeAck.MissingEncryptionID.clearEncryptionID()(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 24);
  outlined destroy of NSObject?(v1 + v2, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v3 = type metadata accessor for CP_EncryptionID(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t CP_PublishResponse.status.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t CP_PublishResponse.status.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t CP_PublishResponse.error.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CP_PublishResponse.error.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CP_PublishResponse.seqNumAck.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for CP_PublishResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 28), v6, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v8 = type metadata accessor for CP_SequenceNumber(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v6, a1, type metadata accessor for CP_SequenceNumber);
  }

  *a1 = 0;
  a1[1] = 0;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t key path getter for CP_PublishResponse.seqNumAck : CP_PublishResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for CP_PublishResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v8 + 28), v7, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v9 = type metadata accessor for CP_SequenceNumber(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_SequenceNumber);
  }

  *a2 = 0;
  a2[1] = 0;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t key path setter for CP_PublishResponse.seqNumAck : CP_PublishResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v8, type metadata accessor for CP_SequenceNumber);
  v9 = *(type metadata accessor for CP_PublishResponse(0) + 28);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  outlined init with take of CP_SequenceNumber(v8, a2 + v9, type metadata accessor for CP_SequenceNumber);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t CP_PublishResponse.seqNumAck.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_PublishResponse(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1 + v3, type metadata accessor for CP_SequenceNumber);
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CP_PublishResponse.seqNumAck.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CP_SequenceNumber(0);
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
  v15 = *(type metadata accessor for CP_PublishResponse(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_SequenceNumber);
  }

  return CP_PublishResponse.seqNumAck.modify;
}

uint64_t CP_TopicSubscribers.TopicSubscribersInfo.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1(0) + 24);
  return UnknownStorage.init()();
}

uint64_t CP_UpsertTopicMetadataResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for CP_UpsertTopicMetadataResponse(0) + 24);
  return UnknownStorage.init()();
}

uint64_t CP_CreateTopicRequest.participantIdsalt.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t CP_CreateTopicRequest.participantIdsalt.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t CP_CreateTopicRequest.topicCategory.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t CP_CreateTopicRequest.topicCategory.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance CP_ResponseStatus@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CP_ResponseStatus@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_CreateTopicRequest.TopicCategory(uint64_t a1, uint64_t a2)
{
  Topic = lazy protocol witness table accessor for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory();

  return MEMORY[0x1EEE15710](a1, a2, Topic);
}

uint64_t CP_CreateTopicRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v1 = a1 + *(type metadata accessor for CP_CreateTopicRequest(0) + 32);
  return UnknownStorage.init()();
}

uint64_t CP_CreateTopicResponse.topicConfig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  TopicResponse = type metadata accessor for CP_CreateTopicResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(TopicResponse + 28), v6, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  Topic = type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  v9 = *(*(Topic - 8) + 48);
  if (v9(v6, 1, Topic) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v6, a1, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  }

  *(a1 + 28) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  v10 = a1 + *(Topic + 48);
  UnknownStorage.init()();
  result = (v9)(v6, 1, Topic);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for CP_CreateTopicResponse.topicConfig : CP_CreateTopicResponse(uint64_t a1, uint64_t a2)
{
  Topic = type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  v5 = *(Topic - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Topic);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v8, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  v9 = *(type metadata accessor for CP_CreateTopicResponse(0) + 28);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  outlined init with take of CP_SequenceNumber(v8, a2 + v9, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  return (*(v5 + 56))(a2 + v9, 0, 1, Topic);
}

uint64_t CP_CreateTopicResponse.topicConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_CreateTopicResponse(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1 + v3, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  Topic = type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  v5 = *(*(Topic - 8) + 56);

  return v5(v1 + v3, 0, 1, Topic);
}

uint64_t CP_CreateTopicResponse.ClientTopicConfig.init()@<X0>(_OWORD *a1@<X8>)
{
  Topic = type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 28) = 0u;
  v3 = a1 + *(Topic + 48);
  return UnknownStorage.init()();
}

void (*CP_CreateTopicResponse.topicConfig.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR) - 8) + 64);
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
  Topic = type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  v5[2] = Topic;
  v10 = *(Topic - 8);
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
  v15 = *(type metadata accessor for CP_CreateTopicResponse(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, Topic) == 1)
  {
    *(v14 + 28) = 0u;
    *v14 = 0u;
    v14[1] = 0u;
    v17 = v14 + *(Topic + 48);
    UnknownStorage.init()();
    if (v16(v8, 1, Topic) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  }

  return CP_CreateTopicResponse.topicConfig.modify;
}

void CP_Record.seqNum.modify(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber(v12, v11, a5);
    outlined destroy of NSObject?(v15 + v10, a3, a4);
    outlined init with take of CP_SequenceNumber(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    outlined destroy of CP_SequenceNumber(v12, a6);
  }

  else
  {
    outlined destroy of NSObject?(v15 + v10, a3, a4);
    outlined init with take of CP_SequenceNumber(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL CP_PublishResponse.hasSeqNumAck.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of NSObject?(v12, a1, a2);
  return v15;
}

uint64_t CP_PublishResponse.clearSeqNumAck()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  outlined destroy of NSObject?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t CP_CreateTopicResponse.ClientTopicConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0) + 48);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CP_CreateTopicResponse.ClientTopicConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0) + 48);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CP_PublishResponse.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  v5 = a1(0);
  v6 = a3 + *(v5 + 24);
  UnknownStorage.init()();
  v7 = *(v5 + 28);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a3 + v7, 1, 1, v8);
}

uint64_t CP_FetchTopicsRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CP_FetchTopicsRequest.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CP_FetchTopicsResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CP_FetchTopicsResponse(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CP_FetchTopicsResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_FetchTopicsResponse(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CP_FetchTopicsResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for CP_FetchTopicsResponse(0) + 28);
  return UnknownStorage.init()();
}

uint64_t CP_Record.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          dispatch thunk of Decoder.decodeRepeatedFixed64Field(value:)();
          break;
        case 5:
          closure #5 in CP_Record.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for CP_Record);
          break;
        case 6:
          dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
          break;
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
          closure #3 in CP_Record.decodeMessage<A>(decoder:)();
          break;
      }
    }
  }

  return result;
}

uint64_t closure #3 in CP_Record.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for CP_Record(0) + 36);
  type metadata accessor for CP_SequenceNumber(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t CP_Record.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          result = closure #1 in CP_Record.traverse<A>(visitor:)(v3, a1, a2, a3);
          if (!v4)
          {
            if (*(v3[4] + 16))
            {
              dispatch thunk of Visitor.visitPackedFixed64Field(value:fieldNumber:)();
            }

            closure #2 in CP_Record.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CP_Record, 5);
            if (v3[5])
            {
              dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
            }

            v17 = v3 + *(type metadata accessor for CP_Record(0) + 32);
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

uint64_t closure #1 in CP_Record.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CP_Record(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 36), v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  outlined init with take of CP_SequenceNumber(v8, v13, type metadata accessor for CP_SequenceNumber);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CP_SequenceNumber(v13, type metadata accessor for CP_SequenceNumber);
}

uint64_t protocol witness for Message.init() in conformance CP_Record@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_1AEE0C200;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  *(a2 + 40) = 0;
  v4 = a2 + a1[8];
  UnknownStorage.init()();
  v5 = a1[9];
  v6 = type metadata accessor for CP_SequenceNumber(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[10];
  v8 = type metadata accessor for CP_EncryptionID(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_Record(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_Record()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_Record(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_KeyValue.decodeMessage<A>(decoder:)()
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
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t CP_KeyValue.traverse<A>(visitor:)()
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
    v6 = v0[2];
    v7 = v0[3];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_14;
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
          goto LABEL_14;
        }

LABEL_13:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v1)
        {
          return result;
        }

        goto LABEL_14;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
      goto LABEL_13;
    }

LABEL_14:
    v11 = v0 + *(type metadata accessor for CP_KeyValue(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_KeyValue(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_KeyValue()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_KeyValue(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_SequenceNumber.decodeMessage<A>(decoder:)()
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
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t CP_SequenceNumber.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for CP_SequenceNumber(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static CP_SequenceNumber.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for CP_SequenceNumber(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance CP_SequenceNumber@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SequenceNumber(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SequenceNumber()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SequenceNumber(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CP_SequenceNumber(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t CP_EncryptionID.traverse<A>(visitor:)()
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
  v6 = v0 + *(type metadata accessor for CP_EncryptionID(0) + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t static CP_EncryptionID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for CP_EncryptionID(0) + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_EncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_EncryptionID()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_EncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CP_EncryptionID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t closure #1 in CP_TopicSubscribersRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMR);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v14, v22, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v22, v20, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of CP_SequenceNumber(v20, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
      v33 = v48;
    }

    else
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMR);
      v35 = v44;
      outlined init with take of CP_SequenceNumber(v20, v44, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
      outlined init with take of CP_SequenceNumber(v35, v28, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminatedAck and conformance CP_TopicSubscribersRequest.TopicTerminatedAck, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of CP_SequenceNumber(v36, v43, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v39, v40, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in CP_TopicSubscribersRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMR);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v14, v22, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v22, v20, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMR);
      v35 = v44;
      outlined init with take of CP_SequenceNumber(v20, v44, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
      outlined init with take of CP_SequenceNumber(v35, v28, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of CP_SequenceNumber(v20, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest and conformance CP_TopicSubscribersRequest.TopicTerminationRequest, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of CP_SequenceNumber(v36, v43, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v39, v40, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t CP_TopicSubscribersRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v15 - v10, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in CP_TopicSubscribersRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in CP_TopicSubscribersRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of CP_SequenceNumber(v11, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for CP_TopicSubscribersRequest(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CP_TopicSubscribersRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of CP_SequenceNumber(v8, v12, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminatedAck and conformance CP_TopicSubscribersRequest.TopicTerminatedAck, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
  }

  result = outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in CP_TopicSubscribersRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of CP_SequenceNumber(v8, v12, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest and conformance CP_TopicSubscribersRequest.TopicTerminationRequest, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  }

  result = outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_TopicSubscribersRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest, type metadata accessor for CP_TopicSubscribersRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_TopicSubscribersRequest()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest, type metadata accessor for CP_TopicSubscribersRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_TopicSubscribersRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest, type metadata accessor for CP_TopicSubscribersRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *CP_TopicSubscribersRequest.TopicTerminatedAck.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_TopicSubscribersRequest.TopicTerminatedAck.protoMessageName;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_TopicSubscribersRequest.TopicTerminatedAck(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminatedAck and conformance CP_TopicSubscribersRequest.TopicTerminatedAck, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_TopicSubscribersRequest.TopicTerminatedAck()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminatedAck and conformance CP_TopicSubscribersRequest.TopicTerminatedAck, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_TopicSubscribersRequest.TopicTerminatedAck(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminatedAck and conformance CP_TopicSubscribersRequest.TopicTerminatedAck, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *CP_TopicSubscribersRequest.TopicTerminationRequest.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_TopicSubscribersRequest.TopicTerminationRequest.protoMessageName;
}

uint64_t CP_TopicSubscribersRequest.TopicTerminationRequest.decodeMessage<A>(decoder:)()
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
        lazy protocol witness table accessor for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CP_TopicSubscribersRequest.TopicTerminationRequest.traverse<A>(visitor:)()
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
    if (!v0[2] || (v7 = v0[2], v8 = *(v0 + 24), lazy protocol witness table accessor for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
    {
      v6 = v0 + *(type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_TopicSubscribersRequest.TopicTerminationRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_TopicSubscribersRequest.TopicTerminationRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest and conformance CP_TopicSubscribersRequest.TopicTerminationRequest, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_TopicSubscribersRequest.TopicTerminationRequest()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest and conformance CP_TopicSubscribersRequest.TopicTerminationRequest, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_TopicSubscribersRequest.TopicTerminationRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest and conformance CP_TopicSubscribersRequest.TopicTerminationRequest, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_TopicSubscribers.decodeMessage<A>(decoder:)()
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

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        type metadata accessor for CP_TopicSubscribers.TerminateTopic(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TerminateTopic and conformance CP_TopicSubscribers.TerminateTopic, type metadata accessor for CP_TopicSubscribers.TerminateTopic);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v3 = v0;
    type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo(0);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TopicSubscribersInfo and conformance CP_TopicSubscribers.TopicSubscribersInfo, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo);
LABEL_5:
    v0 = v3;
    dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t CP_TopicSubscribers.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TopicSubscribersInfo and conformance CP_TopicSubscribers.TopicSubscribersInfo, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for CP_TopicSubscribers.TerminateTopic(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TerminateTopic and conformance CP_TopicSubscribers.TerminateTopic, type metadata accessor for CP_TopicSubscribers.TerminateTopic), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for CP_TopicSubscribers(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static CP_TopicSubscribers.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore19CP_TopicSubscribersV0eF4InfoV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore19CP_TopicSubscribersV09TerminateE0V_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CP_TopicSubscribers(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance CP_TopicSubscribers@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v2;
  v3 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_TopicSubscribers(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers and conformance CP_TopicSubscribers, type metadata accessor for CP_TopicSubscribers);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_TopicSubscribers()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers and conformance CP_TopicSubscribers, type metadata accessor for CP_TopicSubscribers);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_TopicSubscribers(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers and conformance CP_TopicSubscribers, type metadata accessor for CP_TopicSubscribers);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CP_TopicSubscribers(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore19CP_TopicSubscribersV0eF4InfoV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore19CP_TopicSubscribersV09TerminateE0V_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t *CP_TopicSubscribers.TopicSubscribersInfo.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_TopicSubscribers.TopicSubscribersInfo.protoMessageName;
}

uint64_t CP_TopicSubscribers.TopicSubscribersInfo.decodeMessage<A>(decoder:)()
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
      dispatch thunk of Decoder.decodeRepeatedFixed64Field(value:)();
    }
  }

  return result;
}

uint64_t CP_TopicSubscribers.TopicSubscribersInfo.traverse<A>(visitor:)()
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
    if (!*(v0[2] + 16) || (result = dispatch thunk of Visitor.visitPackedFixed64Field(value:fieldNumber:)(), !v1))
    {
      v6 = v0 + *(type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_TopicSubscribers.TopicSubscribersInfo(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TopicSubscribersInfo and conformance CP_TopicSubscribers.TopicSubscribersInfo, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_TopicSubscribers.TopicSubscribersInfo()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TopicSubscribersInfo and conformance CP_TopicSubscribers.TopicSubscribersInfo, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_TopicSubscribers.TopicSubscribersInfo(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TopicSubscribersInfo and conformance CP_TopicSubscribers.TopicSubscribersInfo, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *CP_TopicSubscribers.TerminateTopic.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_TopicSubscribers.TerminateTopic.protoMessageName;
}

uint64_t CP_EncryptionID.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
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

uint64_t CP_TopicSubscribersRequest.TopicTerminatedAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t static CP_TopicSubscribersRequest.TopicTerminatedAck.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3(0) + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_TopicSubscribers.TerminateTopic(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TerminateTopic and conformance CP_TopicSubscribers.TerminateTopic, type metadata accessor for CP_TopicSubscribers.TerminateTopic);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_TopicSubscribers.TerminateTopic()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TerminateTopic and conformance CP_TopicSubscribers.TerminateTopic, type metadata accessor for CP_TopicSubscribers.TerminateTopic);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_TopicSubscribers.TerminateTopic(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TerminateTopic and conformance CP_TopicSubscribers.TerminateTopic, type metadata accessor for CP_TopicSubscribers.TerminateTopic);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CP_TopicSubscribersRequest.TopicTerminatedAck(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t CP_SystemEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in CP_SystemEvent.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 0);
    }

    else if (result == 2)
    {
      closure #1 in CP_SystemEvent.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 1);
    }
  }

  return result;
}

uint64_t closure #1 in CP_SystemEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  if (v5)
  {
  }

  if (v12)
  {
    if (*(a2 + 16) == 255)
    {
      v9 = -1;
    }

    else
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
      v9 = *(a2 + 16);
    }

    v10 = *a2;
    v11 = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = v12;
    *(a2 + 16) = a5;
    return outlined consume of CP_SystemEvent.OneOf_Event?(v10, v11, v9);
  }

  return result;
}

uint64_t CP_SystemEvent.traverse<A>(visitor:)()
{
  v2 = *(v0 + 16);
  if (v2 == 255)
  {
    goto LABEL_4;
  }

  if (v2)
  {
    result = closure #2 in CP_SystemEvent.traverse<A>(visitor:)(v0);
    if (v1)
    {
      return result;
    }

    goto LABEL_4;
  }

  result = closure #1 in CP_SystemEvent.traverse<A>(visitor:)(v0);
  if (!v1)
  {
LABEL_4:
    v4 = v0 + *(type metadata accessor for CP_SystemEvent(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CP_SystemEvent.traverse<A>(visitor:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    v2 = *(result + 8);
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in CP_SystemEvent.traverse<A>(visitor:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    v2 = *(result + 8);
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_SystemEvent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SystemEvent(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SystemEvent and conformance CP_SystemEvent, type metadata accessor for CP_SystemEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SystemEvent()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SystemEvent and conformance CP_SystemEvent, type metadata accessor for CP_SystemEvent);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SystemEvent(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SystemEvent and conformance CP_SystemEvent, type metadata accessor for CP_SystemEvent);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t closure #1 in CP_SubscribeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMR);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v14, v22, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v22, v20, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of CP_SequenceNumber(v20, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
      v33 = v48;
    }

    else
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMR);
      v35 = v44;
      outlined init with take of CP_SequenceNumber(v20, v44, type metadata accessor for CP_SubscribeRequest.Initialize);
      outlined init with take of CP_SequenceNumber(v35, v28, type metadata accessor for CP_SubscribeRequest.Initialize);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.Initialize and conformance CP_SubscribeRequest.Initialize, type metadata accessor for CP_SubscribeRequest.Initialize);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of CP_SequenceNumber(v36, v43, type metadata accessor for CP_SubscribeRequest.Initialize);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v39, v40, type metadata accessor for CP_SubscribeRequest.Initialize);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in CP_SubscribeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMR);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v14, v22, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v22, v20, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMR);
      v35 = v44;
      outlined init with take of CP_SequenceNumber(v20, v44, type metadata accessor for CP_SubscribeRequest.RecordAck);
      outlined init with take of CP_SequenceNumber(v35, v28, type metadata accessor for CP_SubscribeRequest.RecordAck);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of CP_SequenceNumber(v20, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.RecordAck and conformance CP_SubscribeRequest.RecordAck, type metadata accessor for CP_SubscribeRequest.RecordAck);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of CP_SequenceNumber(v36, v43, type metadata accessor for CP_SubscribeRequest.RecordAck);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v39, v40, type metadata accessor for CP_SubscribeRequest.RecordAck);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t CP_SubscribeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v15 - v10, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in CP_SubscribeRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in CP_SubscribeRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of CP_SequenceNumber(v11, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for CP_SubscribeRequest(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CP_SubscribeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of CP_SequenceNumber(v8, v12, type metadata accessor for CP_SubscribeRequest.Initialize);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.Initialize and conformance CP_SubscribeRequest.Initialize, type metadata accessor for CP_SubscribeRequest.Initialize);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_SubscribeRequest.Initialize);
  }

  result = outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in CP_SubscribeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of CP_SequenceNumber(v8, v12, type metadata accessor for CP_SubscribeRequest.RecordAck);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.RecordAck and conformance CP_SubscribeRequest.RecordAck, type metadata accessor for CP_SubscribeRequest.RecordAck);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_SubscribeRequest.RecordAck);
  }

  result = outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_TopicSubscribersRequest@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest and conformance CP_SubscribeRequest, type metadata accessor for CP_SubscribeRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeRequest()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest and conformance CP_SubscribeRequest, type metadata accessor for CP_SubscribeRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest and conformance CP_SubscribeRequest, type metadata accessor for CP_SubscribeRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

void *CP_SubscribeRequest.Initialize.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return static CP_SubscribeRequest.Initialize.protoMessageName;
}

uint64_t CP_SubscribeRequest.Initialize.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 3)
      {
        if (result == 4)
        {
          v11 = v4;
          type metadata accessor for CP_EncryptionID(0);
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID);
LABEL_18:
          v4 = v11;
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 5 || result == 6)
        {
          dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
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
            v11 = v4;
            type metadata accessor for CP_SequenceNumber(0);
            _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);
            goto LABEL_18;
          case 3:
            closure #5 in CP_Record.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for CP_SubscribeRequest.Initialize);
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #5 in CP_Record.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 40);
  type metadata accessor for CP_EncryptionID(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t CP_SubscribeRequest.Initialize.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (!*(v3[2] + 16) || (type metadata accessor for CP_SequenceNumber(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      result = closure #2 in CP_Record.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CP_SubscribeRequest.Initialize, 3);
      if (!v4)
      {
        if (*(v3[3] + 16))
        {
          type metadata accessor for CP_EncryptionID(0);
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID);
          dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        }

        if (v3[4])
        {
          dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
        }

        if (v3[5])
        {
          dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
        }

        v12 = v3 + *(type metadata accessor for CP_SubscribeRequest.Initialize(0) + 36);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #2 in CP_Record.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for CP_EncryptionID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v17 + 40), v11, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of NSObject?(v11, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  }

  outlined init with take of CP_SequenceNumber(v11, v16, type metadata accessor for CP_EncryptionID);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CP_SequenceNumber(v16, type metadata accessor for CP_EncryptionID);
}

uint64_t protocol witness for Message.init() in conformance CP_SubscribeRequest.Initialize@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = v4;
  *(a2 + 3) = v4;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v5 = &a2[*(a1 + 36)];
  UnknownStorage.init()();
  v6 = *(a1 + 40);
  v7 = type metadata accessor for CP_EncryptionID(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeRequest.Initialize(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.Initialize and conformance CP_SubscribeRequest.Initialize, type metadata accessor for CP_SubscribeRequest.Initialize);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeRequest.Initialize()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.Initialize and conformance CP_SubscribeRequest.Initialize, type metadata accessor for CP_SubscribeRequest.Initialize);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeRequest.Initialize(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.Initialize and conformance CP_SubscribeRequest.Initialize, type metadata accessor for CP_SubscribeRequest.Initialize);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

void *CP_SubscribeRequest.RecordAck.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return static CP_SubscribeRequest.RecordAck.protoMessageName;
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
  *(v11 + 16) = xmmword_1AEE07B20;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v14 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t CP_SubscribeRequest.RecordAck.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CP_SequenceNumber(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CP_SubscribeRequest.RecordAck.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for CP_SequenceNumber(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for CP_SubscribeRequest.RecordAck(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_SubscribeRequest.RecordAck@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeRequest.RecordAck(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.RecordAck and conformance CP_SubscribeRequest.RecordAck, type metadata accessor for CP_SubscribeRequest.RecordAck);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeRequest.RecordAck()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.RecordAck and conformance CP_SubscribeRequest.RecordAck, type metadata accessor for CP_SubscribeRequest.RecordAck);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeRequest.RecordAck(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.RecordAck and conformance CP_SubscribeRequest.RecordAck, type metadata accessor for CP_SubscribeRequest.RecordAck);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CP_SubscribeRequest.RecordAck(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore17CP_SequenceNumberV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t CP_SubscribeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        closure #3 in CP_SubscribeResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 2:
        closure #2 in CP_SubscribeResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 1:
        closure #1 in CP_SubscribeResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in CP_SubscribeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMR);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v14, v22, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v22, v20, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of CP_SequenceNumber(v20, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
      v33 = v48;
    }

    else
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMR);
      v35 = v43;
      outlined init with take of CP_SequenceNumber(v20, v43, type metadata accessor for CP_SubscribeResponse.InitializeAck);
      outlined init with take of CP_SequenceNumber(v35, v28, type metadata accessor for CP_SubscribeResponse.InitializeAck);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck and conformance CP_SubscribeResponse.InitializeAck, type metadata accessor for CP_SubscribeResponse.InitializeAck);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMR);
  }

  else
  {
    v39 = v44;
    outlined init with take of CP_SequenceNumber(v36, v44, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v39, v40, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in CP_SubscribeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for CP_Record(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v14, v22, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v22, v20, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
      v35 = v44;
      outlined init with take of CP_SequenceNumber(v20, v44, type metadata accessor for CP_Record);
      outlined init with take of CP_SequenceNumber(v35, v28, type metadata accessor for CP_Record);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of CP_SequenceNumber(v20, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of CP_SequenceNumber(v36, v43, type metadata accessor for CP_Record);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v39, v40, type metadata accessor for CP_Record);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #3 in CP_SubscribeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMR);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v14, v22, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v22, v20, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMR);
      v35 = v44;
      outlined init with take of CP_SequenceNumber(v20, v44, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
      outlined init with take of CP_SequenceNumber(v35, v28, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of CP_SequenceNumber(v20, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate and conformance CP_SubscribeResponse.TopicUpdate, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of CP_SequenceNumber(v36, v43, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v39, v40, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t CP_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v16 - v10, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in CP_SubscribeResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in CP_SubscribeResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in CP_SubscribeResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of CP_SequenceNumber(v11, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  if (!v4)
  {
LABEL_8:
    v15 = v3 + *(type metadata accessor for CP_SubscribeResponse(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CP_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of CP_SequenceNumber(v8, v12, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck and conformance CP_SubscribeResponse.InitializeAck, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_SubscribeResponse.InitializeAck);
  }

  result = outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in CP_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CP_Record(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of CP_SequenceNumber(v8, v12, type metadata accessor for CP_Record);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_Record);
  }

  result = outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #3 in CP_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of CP_SequenceNumber(v8, v12, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate and conformance CP_SubscribeResponse.TopicUpdate, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
  }

  result = outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse and conformance CP_SubscribeResponse, type metadata accessor for CP_SubscribeResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeResponse()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse and conformance CP_SubscribeResponse, type metadata accessor for CP_SubscribeResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse and conformance CP_SubscribeResponse, type metadata accessor for CP_SubscribeResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *CP_SubscribeResponse.InitializeAck.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_SubscribeResponse.InitializeAck.protoMessageName;
}

uint64_t CP_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)()
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

      if (result > 4)
      {
        if (result > 6)
        {
          if (result != 7)
          {
            if (result != 8)
            {
              goto LABEL_5;
            }

            goto LABEL_22;
          }

          closure #7 in CP_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)();
        }

        else
        {
          if (result != 5)
          {
            v3 = v0;
            type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
            _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
LABEL_17:
            v0 = v3;
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            goto LABEL_5;
          }

          closure #5 in CP_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
            v3 = v0;
            type metadata accessor for CP_KeyValue(0);
            _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue);
            goto LABEL_17;
          }

LABEL_22:
          dispatch thunk of Decoder.decodeRepeatedFixed64Field(value:)();
          goto LABEL_5;
        }

        if (result == 1)
        {
          lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #5 in CP_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 44);
  type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.TopicCatchupSummary and conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #7 in CP_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 48);
  type metadata accessor for CP_SequenceNumber(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t CP_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v12 = *v3, v13 = *(v3 + 8), lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v9 = *(v3 + 24);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      if (!*(*(v3 + 32) + 16) || (result = dispatch thunk of Visitor.visitPackedFixed64Field(value:fieldNumber:)(), !v4))
      {
        if (!*(*(v3 + 40) + 16) || (type metadata accessor for CP_KeyValue(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
        {
          result = closure #1 in CP_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(v3, a1, a2, a3);
          if (!v4)
          {
            if (*(*(v3 + 48) + 16))
            {
              type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
              _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
              dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
            }

            closure #2 in CP_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(v3, a1, a2, a3);
            if (*(*(v3 + 56) + 16))
            {
              dispatch thunk of Visitor.visitPackedFixed64Field(value:fieldNumber:)();
            }

            v11 = v3 + *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 40);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in CP_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 44), v8, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  }

  outlined init with take of CP_SequenceNumber(v8, v13, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.TopicCatchupSummary and conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CP_SequenceNumber(v13, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
}

uint64_t closure #2 in CP_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 48), v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  outlined init with take of CP_SequenceNumber(v8, v13, type metadata accessor for CP_SequenceNumber);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CP_SequenceNumber(v13, type metadata accessor for CP_SequenceNumber);
}

uint64_t protocol witness for Message.init() in conformance CP_SubscribeResponse.InitializeAck@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = v4;
  *(a2 + 40) = v4;
  *(a2 + 48) = v4;
  *(a2 + 56) = v4;
  v5 = a2 + a1[10];
  UnknownStorage.init()();
  v6 = a1[11];
  v7 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[12];
  v9 = type metadata accessor for CP_SequenceNumber(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance CP_SubscribeResponse.InitializeAck@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance CP_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance CP_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for ActivitySession.Errors;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck and conformance CP_SubscribeResponse.InitializeAck, type metadata accessor for CP_SubscribeResponse.InitializeAck);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeResponse.InitializeAck()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck and conformance CP_SubscribeResponse.InitializeAck, type metadata accessor for CP_SubscribeResponse.InitializeAck);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck and conformance CP_SubscribeResponse.InitializeAck, type metadata accessor for CP_SubscribeResponse.InitializeAck);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *CP_SubscribeResponse.InitializeAck.TopicCatchupSummary.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_SubscribeResponse.InitializeAck.TopicCatchupSummary.protoMessageName;
}

uint64_t CP_SubscribeResponse.InitializeAck.TopicCatchupSummary.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CP_SequenceNumber(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CP_SubscribeResponse.InitializeAck.TopicCatchupSummary.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for CP_SequenceNumber(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static CP_SubscribeResponse.InitializeAck.TopicCatchupSummary.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore17CP_SequenceNumberV_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  a2[1] = v2;
  v3 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.TopicCatchupSummary and conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.TopicCatchupSummary and conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.TopicCatchupSummary and conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore17CP_SequenceNumberV_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t *CP_SubscribeResponse.InitializeAck.MissingEncryptionID.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_SubscribeResponse.InitializeAck.MissingEncryptionID.protoMessageName;
}

uint64_t CP_SubscribeResponse.InitializeAck.MissingEncryptionID.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
    }

    else if (result == 2)
    {
      closure #2 in CP_SubscribeResponse.InitializeAck.MissingEncryptionID.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
    }
  }

  return result;
}

uint64_t CP_SubscribeResponse.InitializeAck.MissingEncryptionID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in CP_SubscribeResponse.InitializeAck.MissingEncryptionID.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for CP_EncryptionID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

void *CP_SubscribeResponse.TopicUpdate.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return static CP_SubscribeResponse.TopicUpdate.protoMessageName;
}

uint64_t CP_SubscribeResponse.TopicUpdate.decodeMessage<A>(decoder:)()
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
          dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1)
      {
        lazy protocol witness table accessor for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
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

uint64_t CP_SubscribeResponse.TopicUpdate.traverse<A>(visitor:)()
{
  v2 = v1;
  if (*v0)
  {
    v6 = *v0;
    v7 = *(v0 + 8);
    lazy protocol witness table accessor for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[2] + 16))
  {
    type metadata accessor for CP_KeyValue(0);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue);
    v4 = v2;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }

    if (!v0[3])
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  v4 = v2;
  if (v0[3])
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(v0 + 32) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    v5 = v0 + *(type metadata accessor for CP_SubscribeResponse.TopicUpdate(0) + 32);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_SubscribeResponse.TopicUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeResponse.TopicUpdate(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate and conformance CP_SubscribeResponse.TopicUpdate, type metadata accessor for CP_SubscribeResponse.TopicUpdate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeResponse.TopicUpdate()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate and conformance CP_SubscribeResponse.TopicUpdate, type metadata accessor for CP_SubscribeResponse.TopicUpdate);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeResponse.TopicUpdate(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate and conformance CP_SubscribeResponse.TopicUpdate, type metadata accessor for CP_SubscribeResponse.TopicUpdate);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_TopicSubscribersRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t closure #1 in CP_PublishRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for CP_Record(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v14, v22, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v22, v20, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of CP_SequenceNumber(v20, type metadata accessor for CP_PublishRequest.OneOf_Operation);
      v33 = v48;
    }

    else
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
      v35 = v44;
      outlined init with take of CP_SequenceNumber(v20, v44, type metadata accessor for CP_Record);
      outlined init with take of CP_SequenceNumber(v35, v28, type metadata accessor for CP_Record);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of CP_SequenceNumber(v36, v43, type metadata accessor for CP_Record);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v39, v40, type metadata accessor for CP_Record);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in CP_PublishRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMd, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMR);
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
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v14, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    outlined destroy of NSObject?(v14, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v14, v22, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v22, v20, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v28, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMd, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMR);
      v35 = v44;
      outlined init with take of CP_SequenceNumber(v20, v44, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
      outlined init with take of CP_SequenceNumber(v35, v28, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of CP_SequenceNumber(v20, type metadata accessor for CP_PublishRequest.OneOf_Operation);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest.UpdatedEncryptionID and conformance CP_PublishRequest.UpdatedEncryptionID, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return outlined destroy of NSObject?(v28, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMd, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v36, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMd, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    outlined destroy of NSObject?(v28, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMd, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMR);
    return outlined destroy of NSObject?(v36, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMd, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMR);
  }

  else
  {
    v39 = v43;
    outlined init with take of CP_SequenceNumber(v36, v43, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v28, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMd, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMR);
    v40 = v42;
    outlined destroy of NSObject?(v42, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v39, v40, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t CP_PublishRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v15 - v10, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in CP_PublishRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in CP_PublishRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of CP_SequenceNumber(v11, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for CP_PublishRequest(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CP_PublishRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CP_Record(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of CP_SequenceNumber(v8, v12, type metadata accessor for CP_Record);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_Record);
  }

  result = outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in CP_PublishRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v8, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of CP_SequenceNumber(v8, v12, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest.UpdatedEncryptionID and conformance CP_PublishRequest.UpdatedEncryptionID, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  }

  result = outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_PublishRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest and conformance CP_PublishRequest, type metadata accessor for CP_PublishRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_PublishRequest()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest and conformance CP_PublishRequest, type metadata accessor for CP_PublishRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_PublishRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest and conformance CP_PublishRequest, type metadata accessor for CP_PublishRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *CP_PublishRequest.UpdatedEncryptionID.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_PublishRequest.UpdatedEncryptionID.protoMessageName;
}

uint64_t CP_PublishRequest.UpdatedEncryptionID.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      closure #2 in CP_SubscribeResponse.InitializeAck.MissingEncryptionID.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    }
  }

  return result;
}