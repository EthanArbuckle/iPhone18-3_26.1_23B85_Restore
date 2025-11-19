uint64_t sub_2556571D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255657250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

Swift::Int RequesterCredentials.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C3C4C0](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RequesterCredentials.Errors()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C3C4C0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RequesterCredentials.Errors()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C3C4C0](v1);
  return Hasher._finalize()();
}

uint64_t RequesterCredentials.localPublicKeyData.getter()
{
  v0 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v5 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  (*(v1 + 8))(v4, v0);
  return v5;
}

BOOL RequesterCredentials.isExhausted.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = type metadata accessor for RequestKeyAgreement();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC12JoinRequests20RequesterCredentials_keyAgreement;
  swift_beginAccess();
  outlined init with copy of RequestKeyAgreement(v0 + v12, v11);
  outlined init with copy of SymmetricKey?(v11, v7);
  v13 = type metadata accessor for SymmetricKey();
  v14 = *(*(v13 - 8) + 48);
  if (v14(v7, 1, v13) == 1)
  {
    outlined destroy of SymmetricKey?(v7, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    outlined init with copy of SymmetricKey?(&v11[*(v8 + 20)], v5);
    outlined destroy of RequestKeyAgreement(v11);
    v15 = v14(v5, 1, v13) == 1;
    v7 = v5;
  }

  else
  {
    outlined destroy of RequestKeyAgreement(v11);
    v15 = 0;
  }

  outlined destroy of SymmetricKey?(v7, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  return v15;
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

uint64_t outlined init with copy of RequestKeyAgreement(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestKeyAgreement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SymmetricKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RequestKeyAgreement(uint64_t a1)
{
  v2 = type metadata accessor for RequestKeyAgreement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RequesterCredentials.__allocating_init(ownerPublicKey:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  RequesterCredentials.init(ownerPublicKey:)(a1, a2);
  return v7;
}

uint64_t RequesterCredentials.init(ownerPublicKey:)(uint64_t a1, unint64_t a2)
{
  v41 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v38 = *(v41 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v41);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RequestKeyAgreement();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  v22 = OBJC_IVAR____TtC12JoinRequests20RequesterCredentials_localKey;
  v37 = v2;
  P256.KeyAgreement.PrivateKey.init(compactRepresentable:)();
  v39 = a1;
  v40 = a2;
  outlined copy of Data._Representation(a1, a2);
  v23 = v36;
  P256.KeyAgreement.PublicKey.init<A>(compactRepresentation:)();
  v35 = v22;
  if (v23)
  {

    (*(v15 + 56))(v13, 1, 1, v14);
    outlined destroy of SymmetricKey?(v13, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
    lazy protocol witness table accessor for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    outlined consume of Data._Representation(a1, a2);
    v25 = v37;
    (*(v38 + 8))(v37 + v35, v41);
    type metadata accessor for RequesterCredentials();
    v28 = *(*v25 + 48);
    v29 = *(*v25 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v32 = a1;
    v36 = a2;
    (*(v15 + 56))(v13, 0, 1, v14);
    (*(v15 + 32))(v21, v13, v14);
    (*(v15 + 16))(v19, v21, v14);
    v25 = v37;
    v26 = v37 + v22;
    v27 = v33;
    (*(v38 + 16))(v33, v26, v41);
    RequestKeyAgreement.init(publicKey:privateKey:)(v19, v27, v34);
    outlined consume of Data._Representation(v32, v36);
    (*(v15 + 8))(v21, v14);
    outlined init with take of RequestKeyAgreement(v34, v25 + OBJC_IVAR____TtC12JoinRequests20RequesterCredentials_keyAgreement);
  }

  return v25;
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

uint64_t outlined destroy of SymmetricKey?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors()
{
  result = lazy protocol witness table cache variable for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors;
  if (!lazy protocol witness table cache variable for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors;
  if (!lazy protocol witness table cache variable for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors);
  }

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

uint64_t type metadata accessor for RequesterCredentials()
{
  result = type metadata singleton initialization cache for RequesterCredentials;
  if (!type metadata singleton initialization cache for RequesterCredentials)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of RequestKeyAgreement(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestKeyAgreement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

NSObject *RequesterCredentials.encrypt(request:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = (*(*v2 + 120))();
  if (v8 >> 60 == 15)
  {
    if (one-time initialization token for credentials != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.credentials);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_255656000, v10, v11, "Failed to derive requester's public key from the locally-generated private key.", v12, 2u);
      MEMORY[0x259C3C770](v12, -1, -1);
    }

    lazy protocol witness table accessor for type RequesterCredentials.Errors and conformance RequesterCredentials.Errors();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

  else
  {
    v14 = v7;
    v15 = v8;
    swift_beginAccess();
    v16 = RequestKeyAgreement.encrypt(request:)(a1, a2);
    if (v3)
    {
      swift_endAccess();
      outlined consume of Data?(v14, v15);
    }

    else
    {
      v4 = v16;
      swift_endAccess();
    }
  }

  return v4;
}

uint64_t RequesterCredentials.decrypt(response:)(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v4 = RequestKeyAgreement.decrypt(response:)(a1, a2);
  swift_endAccess();
  return v4;
}

uint64_t RequesterCredentials.deinit()
{
  v1 = OBJC_IVAR____TtC12JoinRequests20RequesterCredentials_localKey;
  v2 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of RequestKeyAgreement(v0 + OBJC_IVAR____TtC12JoinRequests20RequesterCredentials_keyAgreement);
  return v0;
}

uint64_t RequesterCredentials.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12JoinRequests20RequesterCredentials_localKey;
  v2 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of RequestKeyAgreement(v0 + OBJC_IVAR____TtC12JoinRequests20RequesterCredentials_keyAgreement);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t variable initialization expression of RequestKeyAgreement.requestKey@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SymmetricKey();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t type metadata completion function for RequesterCredentials()
{
  result = type metadata accessor for P256.KeyAgreement.PrivateKey();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for RequestKeyAgreement();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequesterCredentials.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RequesterCredentials.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

BOOL Subsystem.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Subsystem.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Subsystem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Subsystem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Subsystem@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance Subsystem, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t Logger.init<A>(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  Logger.init(subsystem:category:)();
  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t one-time initialization function for credentials(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t Log.credentials.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static Log.credentials.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in >> prefix<A>(_:), v4, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in DefaultStringInterpolation.appendInterpolation<A>(_:), v6, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, &v7);
  if (v8)
  {
    v3 = v7;
  }

  else
  {
    v3 = 7104878;
  }

  if (v8)
  {
    v4 = v8;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x259C3C390](v3, v4);
}

uint64_t closure #1 in >> prefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = String.init<A>(reflecting:)();
  *a3 = result;
  a3[1] = v8;
  return result;
}

unint64_t lazy protocol witness table accessor for type Subsystem and conformance Subsystem()
{
  result = lazy protocol witness table cache variable for type Subsystem and conformance Subsystem;
  if (!lazy protocol witness table cache variable for type Subsystem and conformance Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Subsystem and conformance Subsystem);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Subsystem(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Subsystem(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

BOOL RequestKeyAgreement.isExhausted.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  outlined init with copy of SymmetricKey?(v0, &v14 - v6);
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v7, 1, v8);
  outlined destroy of SymmetricKey?(v7, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  if (v10 != 1)
  {
    return 0;
  }

  v11 = type metadata accessor for RequestKeyAgreement();
  outlined init with copy of SymmetricKey?(v0 + *(v11 + 20), v5);
  v12 = v9(v5, 1, v8) == 1;
  outlined destroy of SymmetricKey?(v5, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  return v12;
}

uint64_t type metadata accessor for RequestKeyAgreement()
{
  result = type metadata singleton initialization cache for RequestKeyAgreement;
  if (!type metadata singleton initialization cache for RequestKeyAgreement)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RequestKeyAgreement.init(publicKey:privateKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v29 - v8;
  v9 = type metadata accessor for SharedSecret();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SymmetricKey();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(a3, 1, 1, v13);
  v17 = *(type metadata accessor for RequestKeyAgreement() + 20);
  v43 = a3;
  v15(a3 + v17, 1, 1, v13);
  v18 = v39;
  P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  if (v18)
  {
    v19 = type metadata accessor for P256.KeyAgreement.PrivateKey();
    (*(*(v19 - 8) + 8))(a2, v19);
    v20 = type metadata accessor for P256.KeyAgreement.PublicKey();
    (*(*(v20 - 8) + 8))(a1, v20);
    return outlined destroy of RequestKeyAgreement(v43);
  }

  else
  {
    v30 = v17;
    v31 = v16;
    v32 = v13;
    v33 = v15;
    v34 = 0;
    v35 = a2;
    v39 = a1;
    type metadata accessor for SHA256();
    v29 = xmmword_25565EAD0;
    v42 = xmmword_25565EAD0;
    if (one-time initialization token for requestSharedInfo != -1)
    {
      swift_once();
    }

    v40 = static RequestKeyAgreement.requestSharedInfo;
    v41 = qword_27F7BCB50;
    outlined copy of Data._Representation(static RequestKeyAgreement.requestSharedInfo, qword_27F7BCB50);
    lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
    lazy protocol witness table accessor for type Data and conformance Data();
    v22 = v36;
    v23 = v12;
    SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
    outlined consume of Data._Representation(v40, v41);
    outlined consume of Data._Representation(v42, *(&v42 + 1));
    v25 = v32;
    v24 = v33;
    v33(v22, 0, 1, v32);
    v26 = v43;
    outlined assign with take of SymmetricKey?(v22, v43);
    v42 = v29;
    if (one-time initialization token for responseSharedInfo != -1)
    {
      swift_once();
    }

    v40 = static RequestKeyAgreement.responseSharedInfo;
    v41 = qword_27F7BCB60;
    outlined copy of Data._Representation(static RequestKeyAgreement.responseSharedInfo, qword_27F7BCB60);
    SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
    v27 = type metadata accessor for P256.KeyAgreement.PrivateKey();
    (*(*(v27 - 8) + 8))(v35, v27);
    v28 = type metadata accessor for P256.KeyAgreement.PublicKey();
    (*(*(v28 - 8) + 8))(v39, v28);
    outlined consume of Data._Representation(v40, v41);
    outlined consume of Data._Representation(v42, *(&v42 + 1));
    (*(v37 + 8))(v23, v38);
    v24(v22, 0, 1, v25);
    return outlined assign with take of SymmetricKey?(v22, v26 + v30);
  }
}

NSObject *RequestKeyAgreement.encrypt(request:)(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for AES.GCM.SealedBox();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v35 - v14;
  v16 = type metadata accessor for SymmetricKey();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v2;
  outlined init with copy of SymmetricKey?(v2, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of SymmetricKey?(v15, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    if (one-time initialization token for credentials != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.credentials);
    v22 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v2))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_255656000, v22, v2, "Cannot encrypt request data because request key was already used (exhausted).", v23, 2u);
      MEMORY[0x259C3C770](v23, -1, -1);
    }

    lazy protocol witness table accessor for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    v39 = a1;
    v40 = v38;
    v25 = type metadata accessor for AES.GCM.Nonce();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    lazy protocol witness table accessor for type Data and conformance Data();
    v26 = v41;
    static AES.GCM.seal<A>(_:using:nonce:)();
    if (v26)
    {
      outlined destroy of SymmetricKey?(v7, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
    }

    else
    {
      outlined destroy of SymmetricKey?(v7, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
      v2 = AES.GCM.SealedBox.combined.getter();
      v28 = v27;
      (*(v37 + 8))(v11, v8);
      if (v28 >> 60 != 15)
      {
        (*(v17 + 8))(v20, v16);
        v34 = v36;
        outlined destroy of SymmetricKey?(v36, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
        (*(v17 + 56))(v34, 1, 1, v16);
        return v2;
      }

      if (one-time initialization token for credentials != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Log.credentials);
      v2 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v2, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_255656000, v2, v30, "Failed to encrypt request.", v31, 2u);
        MEMORY[0x259C3C770](v31, -1, -1);
      }

      lazy protocol witness table accessor for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors();
      swift_allocError();
      *v32 = 2;
      swift_willThrow();
    }

    (*(v17 + 8))(v20, v16);
  }

  return v2;
}

uint64_t RequestKeyAgreement.decrypt(response:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AES.GCM.SealedBox();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for SymmetricKey();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for RequestKeyAgreement() + 20);
  v37 = v3;
  outlined init with copy of SymmetricKey?(v3 + v19, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of SymmetricKey?(v13, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    if (one-time initialization token for credentials != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.credentials);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_255656000, v21, v22, "Cannot decrypt response data because response key was already used (exhausted).", v23, 2u);
      MEMORY[0x259C3C770](v23, -1, -1);
    }

    lazy protocol witness table accessor for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    outlined copy of Data._Representation(a1, a2);
    v25 = v40;
    _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(a1, a2);
    v3 = v25;
    if (v25)
    {
      v26 = v18;
      if (one-time initialization token for credentials != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Log.credentials);
      MEMORY[0x259C3C6B0](v25);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        MEMORY[0x259C3C6B0](v25);
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 4) = v32;
        *v31 = v32;
        _os_log_impl(&dword_255656000, v28, v29, "Failed to decrypt response data with error: %@", v30, 0xCu);
        outlined destroy of SymmetricKey?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x259C3C770](v31, -1, -1);
        MEMORY[0x259C3C770](v30, -1, -1);
      }

      lazy protocol witness table accessor for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors();
      swift_allocError();
      *v33 = 3;
      swift_willThrow();

      (*(v15 + 8))(v26, v14);
    }

    else
    {
      v3 = static AES.GCM.open(_:using:)();
      (*(v38 + 8))(v9, v39);
      (*(v15 + 8))(v18, v14);
      v35 = v37;
      outlined destroy of SymmetricKey?(v37 + v19, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      (*(v15 + 56))(v35 + v19, 1, 1, v14);
    }
  }

  return v3;
}

Swift::Int RequestKeyAgreement.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C3C4C0](a1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for requestSharedInfo()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000001BLL, 0x800000025565EF80);
  static RequestKeyAgreement.requestSharedInfo = result;
  unk_27F7BCB50 = v1;
  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined assign with take of SymmetricKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of SymmetricKey?(__src, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data?(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t one-time initialization function for responseSharedInfo()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000001CLL, 0x800000025565EF60);
  static RequestKeyAgreement.responseSharedInfo = result;
  unk_27F7BCB60 = v1;
  return result;
}

unint64_t lazy protocol witness table accessor for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors()
{
  result = lazy protocol witness table cache variable for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors;
  if (!lazy protocol witness table cache variable for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors;
  if (!lazy protocol witness table cache variable for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors);
  }

  return result;
}

uint64_t _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v30[3] = MEMORY[0x277CC9318];
      v30[4] = MEMORY[0x277CC9300];
      v30[0] = a1;
      v30[1] = a2;
      v10 = __swift_project_boxed_opaque_existential_1(v30, MEMORY[0x277CC9318]);
      v11 = *v10;
      v12 = v10[1];
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 != 2)
        {
          memset(v28, 0, 14);
          v15 = v28;
          v14 = v28;
          goto LABEL_33;
        }

        v16 = *(v11 + 16);
        v17 = *(v11 + 24);
        v18 = __DataStorage._bytes.getter();
        if (v18)
        {
          v19 = __DataStorage._offset.getter();
          v11 = v16 - v19;
          if (__OFSUB__(v16, v19))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v18 += v11;
        }

        v5 = __OFSUB__(v17, v16);
        v20 = v17 - v16;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v28[0] = *v10;
        LOWORD(v28[1]) = v12;
        BYTE2(v28[1]) = BYTE2(v12);
        BYTE3(v28[1]) = BYTE3(v12);
        BYTE4(v28[1]) = BYTE4(v12);
        BYTE5(v28[1]) = BYTE5(v12);
        v14 = v28 + BYTE6(v12);
        v15 = v28;
LABEL_33:
        closure #1 in Data.init<A>(_:)(v15, v14, &v29);
        __swift_destroy_boxed_opaque_existential_1(v30);
        result = AES.GCM.SealedBox.init(combined:)();
        goto LABEL_34;
      }

      v21 = v11;
      v22 = v11 >> 32;
      v20 = v22 - v21;
      if (v22 >= v21)
      {
        v18 = __DataStorage._bytes.getter();
        if (!v18)
        {
LABEL_25:
          v24 = MEMORY[0x259C3C140]();
          if (v24 >= v20)
          {
            v25 = v20;
          }

          else
          {
            v25 = v24;
          }

          v26 = (v25 + v18);
          if (v18)
          {
            v14 = v26;
          }

          else
          {
            v14 = 0;
          }

          v15 = v18;
          goto LABEL_33;
        }

        v23 = __DataStorage._offset.getter();
        if (!__OFSUB__(v21, v23))
        {
          v18 += v21 - v23;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  outlined consume of Data._Representation(a1, a2);
  v7 = type metadata accessor for CryptoKitError();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  result = swift_willThrow();
LABEL_34:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RequestKeyAgreement.retrieveKeyPair()(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  outlined init with copy of SymmetricKey?(v2, &v30 - v10);
  v12 = type metadata accessor for SymmetricKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) == 1)
  {
    outlined destroy of SymmetricKey?(v11, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    if (one-time initialization token for credentials != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.credentials);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_255656000, v16, v17, "Cannot retrieve key pair because request key was already used (exhausted).", v18, 2u);
      MEMORY[0x259C3C770](v18, -1, -1);
    }

    lazy protocol witness table accessor for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }

  else
  {
    v30 = v3;
    v21 = a1;
    v22 = *(v13 + 32);
    v31 = v21;
    v22();
    v23 = *(type metadata accessor for RequestKeyAgreement() + 20);
    outlined init with copy of SymmetricKey?(v2 + v23, v9);
    if (v14(v9, 1, v12) == 1)
    {
      outlined destroy of SymmetricKey?(v9, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      if (one-time initialization token for credentials != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Log.credentials);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_255656000, v25, v26, "Cannot retrieve key pair because response key was already used (exhausted).", v27, 2u);
        MEMORY[0x259C3C770](v27, -1, -1);
      }

      lazy protocol witness table accessor for type RequestKeyAgreement.Errors and conformance RequestKeyAgreement.Errors();
      swift_allocError();
      *v28 = 1;
      swift_willThrow();
      return (*(v13 + 8))(v31, v12);
    }

    else
    {
      (v22)(v32, v9, v12);
      outlined destroy of SymmetricKey?(v2, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      v29 = *(v13 + 56);
      v29(v2, 1, 1, v12);
      outlined destroy of SymmetricKey?(v2 + v23, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      return (v29)(v2 + v23, 1, 1, v12);
    }
  }
}

void type metadata completion function for RequestKeyAgreement()
{
  type metadata accessor for SymmetricKey?();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for SymmetricKey?()
{
  if (!lazy cache variable for type metadata for SymmetricKey?)
  {
    type metadata accessor for SymmetricKey();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SymmetricKey?);
    }
  }
}

uint64_t getEnumTagSinglePayload for RequestKeyAgreement.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestKeyAgreement.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_25565EAD0;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_25565EAD0;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256(unint64_t *a1, void (*a2)(uint64_t))
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

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x259C3C140]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C3C3C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t outlined init with take of ContiguousBytes(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t JoinRequestError.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0x5564696C61566F6ELL;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance JoinRequestError(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000018;
  v4 = 0x800000025565EED0;
  if (v2 == 1)
  {
    v5 = 0x800000025565EED0;
  }

  else
  {
    v3 = 0x5564696C61566F6ELL;
    v5 = 0xEA00000000004952;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000018;
  if (*a2 != 1)
  {
    v8 = 0x5564696C61566F6ELL;
    v4 = 0xEA00000000004952;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance JoinRequestError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance JoinRequestError()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JoinRequestError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance JoinRequestError@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized JoinRequestError.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance JoinRequestError(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x800000025565EED0;
  v5 = 0xD000000000000018;
  if (v2 != 1)
  {
    v5 = 0x5564696C61566F6ELL;
    v4 = 0xEA00000000004952;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
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

uint64_t protocol witness for IDSServiceProtocol.accounts.getter in conformance IDSService()
{
  v1 = [*v0 accounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for IDSAccount();
  lazy protocol witness table accessor for type IDSAccount and conformance NSObject();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id protocol witness for IDSServiceProtocol.pseudonymProperties(withFeatureID:expiryDurationInSeconds:) in conformance IDSService(double a1)
{
  v3 = *v1;
  v4 = MEMORY[0x259C3C350]();
  v5 = [v3 pseudonymPropertiesWithFeatureID:v4 expiryDurationInSeconds:a1];

  return v5;
}

uint64_t protocol witness for IDSServiceProtocol.provisionPseudonym(for:with:completion:) in conformance IDSService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IDSPseudonym?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor;
  v8 = _Block_copy(v10);

  [v7 provisionPseudonymForURI:a1 withProperties:a2 completion:v8];
  _Block_release(v8);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IDSPseudonym?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

JoinRequests::JoinRequestProvider_optional __swiftcall JoinRequestProvider.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of JoinRequestProvider.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = JoinRequests_JoinRequestProvider_GroupTestService;
  }

  else
  {
    v4.value = JoinRequests_JoinRequestProvider_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JoinRequestProvider.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x72656C676E617257;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance JoinRequestProvider(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x72656C676E617257;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0x800000025565EF00;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x72656C676E617257;
  }

  if (*a2)
  {
    v7 = 0x800000025565EF00;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance JoinRequestProvider()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance JoinRequestProvider()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JoinRequestProvider()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance JoinRequestProvider@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of JoinRequestProvider.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance JoinRequestProvider(unint64_t *a1@<X8>)
{
  v2 = 0x800000025565EF00;
  v3 = 0x72656C676E617257;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t specialized JoinRequestError.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of JoinRequestError.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type JoinRequestError and conformance JoinRequestError()
{
  result = lazy protocol witness table cache variable for type JoinRequestError and conformance JoinRequestError;
  if (!lazy protocol witness table cache variable for type JoinRequestError and conformance JoinRequestError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JoinRequestError and conformance JoinRequestError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JoinRequestProvider and conformance JoinRequestProvider()
{
  result = lazy protocol witness table cache variable for type JoinRequestProvider and conformance JoinRequestProvider;
  if (!lazy protocol witness table cache variable for type JoinRequestProvider and conformance JoinRequestProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JoinRequestProvider and conformance JoinRequestProvider);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JoinRequestError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for JoinRequestError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for IDSAccount()
{
  result = lazy cache variable for type metadata for IDSAccount;
  if (!lazy cache variable for type metadata for IDSAccount)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for IDSAccount);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IDSAccount and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type IDSAccount and conformance NSObject;
  if (!lazy protocol witness table cache variable for type IDSAccount and conformance NSObject)
  {
    type metadata accessor for IDSAccount();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSAccount and conformance NSObject);
  }

  return result;
}

Swift::Int OwnerCredentials.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C3C4C0](a1);
  return Hasher._finalize()();
}

uint64_t OwnerCredentials.publicKeyData.getter()
{
  v0 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v5 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t OwnerCredentials.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  P256.KeyAgreement.PrivateKey.init(compactRepresentable:)();
  return v3;
}

uint64_t OwnerCredentials.init()()
{
  v1 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  P256.KeyAgreement.PrivateKey.init(compactRepresentable:)();
  (*(v2 + 32))(v0 + OBJC_IVAR____TtC12JoinRequests16OwnerCredentials_privateKey, v5, v1);
  return v0;
}

uint64_t OwnerCredentials.__allocating_init(privateKeyData:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 48);
  v12 = *(v2 + 52);
  v13 = swift_allocObject();
  v17[0] = a1;
  v17[1] = a2;
  P256.KeyAgreement.PrivateKey.init<A>(rawRepresentation:)();
  if (v3)
  {
    v14 = *(*v13 + 48);
    v15 = *(*v13 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v7 + 32))(v13 + OBJC_IVAR____TtC12JoinRequests16OwnerCredentials_privateKey, v10, v6);
  }

  return v13;
}

uint64_t OwnerCredentials.init(privateKeyData:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = a1;
  v14[1] = a2;
  P256.KeyAgreement.PrivateKey.init<A>(rawRepresentation:)();
  if (v3)
  {
    type metadata accessor for OwnerCredentials();
    v11 = *(*v2 + 48);
    v12 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v7 + 32))(v2 + OBJC_IVAR____TtC12JoinRequests16OwnerCredentials_privateKey, v10, v6);
  }

  return v2;
}

uint64_t type metadata accessor for OwnerCredentials()
{
  result = type metadata singleton initialization cache for OwnerCredentials;
  if (!type metadata singleton initialization cache for OwnerCredentials)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

NSObject *OwnerCredentials.decrypt(request:publicKey:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v72 = a4;
  v61 = a1;
  v62 = a2;
  v5 = type metadata accessor for AES.GCM.SealedBox();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v5);
  v63 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SymmetricKey();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v68 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v67 = &v57 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v66 = &v57 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - v16;
  v18 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v69 = *(v18 - 8);
  v70 = v18;
  v19 = *(v69 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for RequestKeyAgreement();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v57 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v57 - v35;
  v73 = a3;
  v74 = v72;
  outlined copy of Data._Representation(a3, v72);
  v37 = v75;
  P256.KeyAgreement.PublicKey.init<A>(compactRepresentation:)();
  if (v37)
  {
    if (one-time initialization token for credentials != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Log.credentials);
    MEMORY[0x259C3C6B0](v37);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      MEMORY[0x259C3C6B0](v37);
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&dword_255656000, v39, v40, "Failed to derive public key from requester public key data provided alongside request: %@", v41, 0xCu);
      outlined destroy of SymmetricKey?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x259C3C770](v42, -1, -1);
      MEMORY[0x259C3C770](v41, -1, -1);
    }

    lazy protocol witness table accessor for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();
  }

  else
  {
    v58 = v17;
    (*(v27 + 32))(v36, v34, v26);
    (*(v27 + 16))(v31, v36, v26);
    (*(v69 + 16))(v21, &v71[OBJC_IVAR____TtC12JoinRequests16OwnerCredentials_privateKey], v70);
    RequestKeyAgreement.init(publicKey:privateKey:)(v31, v21, v25);
    v45 = v67;
    v46 = v68;
    RequestKeyAgreement.retrieveKeyPair()(v67, v68);
    v71 = v36;
    v72 = v25;
    v75 = v26;
    v49 = v64;
    v48 = v65;
    v50 = *(v64 + 32);
    v51 = v58;
    v50(v58, v45, v65);
    v52 = v66;
    v50(v66, v46, v48);
    v54 = v61;
    v53 = v62;
    outlined copy of Data._Representation(v61, v62);
    v55 = v63;
    _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(v54, v53);
    v39 = static AES.GCM.open(_:using:)();
    (*(v59 + 8))(v55, v60);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v56 = *(v49 + 8);
    v56(v52, v48);
    v56(v51, v48);
    outlined destroy of RequestKeyAgreement(v72);
    (*(v27 + 8))(v71, v75);
  }

  return v39;
}

unint64_t lazy protocol witness table accessor for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors()
{
  result = lazy protocol witness table cache variable for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors;
  if (!lazy protocol witness table cache variable for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors;
  if (!lazy protocol witness table cache variable for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors);
  }

  return result;
}

NSObject *OwnerCredentials.encrypt(response:responseKeyData:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for AES.GCM.SealedBox();
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SymmetricKey();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a3;
  v36 = a4;
  outlined copy of Data._Representation(a3, a4);
  v21 = MEMORY[0x277CC9318];
  SymmetricKey.init<A>(data:)();
  v35 = a1;
  v36 = a2;
  v22 = type metadata accessor for AES.GCM.Nonce();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  lazy protocol witness table accessor for type Data and conformance Data();
  v23 = v37;
  static AES.GCM.seal<A>(_:using:nonce:)();
  if (v23)
  {
    outlined destroy of SymmetricKey?(v11, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
    (*(v17 + 8))(v20, v16);
  }

  else
  {
    v24 = v16;
    outlined destroy of SymmetricKey?(v11, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
    v21 = AES.GCM.SealedBox.combined.getter();
    v26 = v25;
    (*(v33 + 8))(v15, v34);
    if (v26 >> 60 == 15)
    {
      v27 = v17;
      if (one-time initialization token for credentials != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Log.credentials);
      v21 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_255656000, v21, v29, "Failed to encrypt response.", v30, 2u);
        MEMORY[0x259C3C770](v30, -1, -1);
      }

      lazy protocol witness table accessor for type OwnerCredentials.Errors and conformance OwnerCredentials.Errors();
      swift_allocError();
      *v31 = 2;
      swift_willThrow();
      (*(v27 + 8))(v20, v24);
    }

    else
    {
      (*(v17 + 8))(v20, v24);
    }
  }

  return v21;
}

uint64_t OwnerCredentials.deinit()
{
  v1 = OBJC_IVAR____TtC12JoinRequests16OwnerCredentials_privateKey;
  v2 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OwnerCredentials.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12JoinRequests16OwnerCredentials_privateKey;
  v2 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata completion function for OwnerCredentials()
{
  result = type metadata accessor for P256.KeyAgreement.PrivateKey();
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

uint64_t SymmetricKey.init<A>(rawRepresentation:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  SymmetricKey.init<A>(data:)();
  return (*(v4 + 8))(a1, a2);
}

uint64_t closure #1 in SymmetricKey.rawRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = specialized Data.InlineData.init(_:)(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = specialized Data.LargeSlice.init(_:)(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = specialized Data.InlineSlice.init(_:)(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t specialized Data.InlineData.init(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return __DataStorage.init(bytes:length:copy:deallocator:offset:)();
}