uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Result<A, B><>.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Result<>.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance Result<A, B><>.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x65736E6F70736572;
  if (*v1)
  {
    v2 = 0x726F727265;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Result<A, B><>.CodingKeys()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 0x65736E6F70736572;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Result<A, B><>.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Result<>.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Result<A, B><>.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys(&lazy protocol witness table cache variable for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys);

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Result<A, B><>.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys(&lazy protocol witness table cache variable for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys);

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Result<>.populate(xpcDict:)(uint64_t *a1)
{
  v3 = v1;
  outlined init with copy of Result<Response, CryptexErrorMessage>(v3, v20);
  if (v22)
  {
    v5 = *a1;
    swift_getObjectType();
    v18 = &type metadata for CryptexErrorMessage;
    v19 = &protocol witness table for CryptexErrorMessage;
    v6 = swift_allocObject();
    v17[0] = v6;
    v7 = *v21;
    v6[3] = v20[2];
    v6[4] = v7;
    *(v6 + 73) = *&v21[9];
    v8 = v20[1];
    v6[1] = v20[0];
    v6[2] = v8;
    type metadata accessor for Result<Response, CryptexErrorMessage><>.CodingKeys();
    v16[3] = v9;
    v16[4] = lazy protocol witness table accessor for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys(&lazy protocol witness table cache variable for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys);
    LOBYTE(v16[0]) = 1;
    OS_xpc_object.encode(_:forKey:)(v17, v16);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    outlined init with take of Response(v20, v17);
    v10 = *a1;
    v12 = v18;
    v11 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v13 = (*(*(v11[1] + 1) + 16))(v12);
    if (!v2)
    {
      v14 = v13;
      swift_getObjectType();
      LOBYTE(v16[0]) = 0;
      type metadata accessor for Result<Response, CryptexErrorMessage><>.CodingKeys();
      lazy protocol witness table accessor for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys(&lazy protocol witness table cache variable for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys);
      OS_xpc_object.set<A>(_:forKey:)(v14);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t outlined init with copy of Result<Response, CryptexErrorMessage>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Result<Response, CryptexErrorMessage><>.CodingKeys()
{
  if (!lazy cache variable for type metadata for Result<Response, CryptexErrorMessage><>.CodingKeys)
  {
    v0 = type metadata accessor for Result<>.CodingKeys();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Result<Response, CryptexErrorMessage><>.CodingKeys);
    }
  }
}

uint64_t static Result<>.from<A>(xpc:responseType:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v40 = a3;
  v38 = type metadata accessor for CryptexError();
  v5 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38, v6);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Optional();
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  v10 = MEMORY[0x28223BE20](v41, v9);
  v12 = &v37 - v11;
  v43 = *(a1 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v10, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  type metadata accessor for Result<Response, CryptexErrorMessage><>.CodingKeys();
  v19 = v18;
  *(&v50 + 1) = v18;
  v20 = lazy protocol witness table accessor for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys(&lazy protocol witness table cache variable for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys);
  *&v51 = v20;
  LOBYTE(v48) = 0;
  v21 = v44;
  OS_xpc_object.decode<A>(_:forKey:)(&v48, a1, *(*(a2 + 8) + 8), v12);
  result = __swift_destroy_boxed_opaque_existential_0(&v48);
  if (!v21)
  {
    v37 = ObjectType;
    v44 = a2;
    v24 = v41;
    v23 = v42;
    if ((*(v43 + 48))(v12, 1, a1) == 1)
    {
      (*(v39 + 8))(v12, v24);
      v47[3] = v19;
      v47[4] = v20;
      LOBYTE(v47[0]) = 1;
      OS_xpc_object.decode<A>(_:forKey:)(v47, &type metadata for CryptexErrorMessage, &protocol witness table for CryptexErrorMessage, &v48);
      result = __swift_destroy_boxed_opaque_existential_0(v47);
      v25 = v49;
      if (v49)
      {
        v26 = v40;
        *v40 = v48;
        v26[1] = v25;
        v27 = v51;
        *(v26 + 1) = v50;
        *(v26 + 2) = v27;
        *(v26 + 3) = v52[0];
        *(v26 + 57) = *(v52 + 9);
        *(v26 + 73) = 1;
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v45 = 0;
        v46 = 0xE000000000000000;
        _StringGuts.grow(_:)(35);

        v45 = 0xD00000000000001BLL;
        v46 = 0x8000000226117410;
        v53 = 0;
        lazy protocol witness table accessor for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys(&lazy protocol witness table cache variable for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x22AA74CD0](v32);

        MEMORY[0x22AA74CD0](544370464, 0xE400000000000000);
        v53 = 1;
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x22AA74CD0](v33);

        v34 = v45;
        v35 = v46;
        lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
        swift_allocError();
        static CryptexError.error(_:_:file:function:lineNumber:)(v23, v34, v35, 0xD000000000000019, 0x8000000226117430, 0xD000000000000017, 0x8000000226117450, 30, v36);

        outlined destroy of CryptexError(v23);
        return swift_willThrow();
      }
    }

    else
    {
      v28 = *(v43 + 32);
      v28(v16, v12, a1);
      v29 = v40;
      v30 = v44;
      v40[3] = a1;
      v29[4] = v30;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
      result = (v28)(boxed_opaque_existential_1, v16, a1);
      *(v29 + 73) = 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Result<Response, CryptexErrorMessage><>.CodingKeys();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

const UInt8 *OpaquePointer.init(from:options:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for CryptexTrustOptions();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CryptexTrustOptions(a2, v13);
  cryptex_signing_service_flags_t.init(from:)(v13);
  v14 = cryptex_signing_service_create();
  v27 = v14;
  outlined init with copy of URL?(a1, v8);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    outlined destroy of URL?(v8);
  }

  else
  {
    URL.absoluteString.getter();
    (*(v16 + 8))(v8, v15);
    String.utf8CString.getter();

    cryptex_signing_service_set_tss_url();
  }

  v17 = a2 + *(v9 + 20);
  v18 = URL.absoluteString.getter();
  v20 = v19;

  specialized String.withCString<A>(_:)(v18, v20, &v27);
  v21 = (a1 + *(type metadata accessor for CryptexSigningService() + 20));
  v22 = *v21;
  v23 = v21[1];
  v24.super.isa = Data._bridgeToObjectiveC()().super.isa;
  result = CFDataGetBytePtr(v24.super.isa);
  if (result)
  {

    CFDataGetLength(v24.super.isa);
    cryptex_signing_service_set_image_bytes();

    outlined destroy of CryptexTrustOptions(a2, type metadata accessor for CryptexTrustOptions);
    outlined destroy of CryptexTrustOptions(a1, type metadata accessor for CryptexSigningService);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of CryptexTrustOptions(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptexTrustOptions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    v3 = *a3;
    String.count.getter();
    cryptex_signing_service_set_image_bytes();
  }

  else
  {
    _StringGuts._slowWithCString<A>(_:)();
  }
}

uint64_t outlined destroy of CryptexTrustOptions(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in OpaquePointer.init(from:options:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = **(v0 + 16);
  String.count.getter();
  return cryptex_signing_service_set_image_bytes();
}

uint64_t FilePath.lexicallyEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for FilePath();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v21 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v21 - v15;
  v17 = v4[2];
  v17(v13, v1, v3);
  FilePath.lexicallyNormalized()();
  v17(v9, a1, v3);
  FilePath.lexicallyNormalized()();
  v18 = static FilePath.== infix(_:_:)();
  v19 = v4[1];
  v19(v13, v3);
  v19(v16, v3);
  return v18 & 1;
}

uint64_t RawCryptex.format.getter@<X0>(char *a1@<X8>)
{
  result = cryptex_get_image_type();
  if (result > 1)
  {
    if (result == 2)
    {
      v3 = 2;
      goto LABEL_8;
    }

    if (result == 3)
    {
      _StringGuts.grow(_:)(33);
      MEMORY[0x22AA74CD0](0xD00000000000001FLL, 0x80000002261174A0);
      type metadata accessor for cryptex_image_type_t();
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    if (!result)
    {
      v3 = 0;
LABEL_8:
      *a1 = v3;
      return result;
    }

    if (result == 1)
    {
      v3 = 1;
      goto LABEL_8;
    }
  }

  type metadata accessor for cryptex_image_type_t();
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void type metadata accessor for cryptex_image_type_t()
{
  if (!lazy cache variable for type metadata for cryptex_image_type_t)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for cryptex_image_type_t);
    }
  }
}

uint64_t getEnumTagSinglePayload for RawCryptex(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for RawCryptex(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void RequestInstall.options.getter(_BYTE *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  *a1 = v1[8];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

CryptexKit::RequestInstall::CodingKeys_optional __swiftcall RequestInstall.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestInstall.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CryptexKit_RequestInstall_CodingKeys_options;
  }

  else
  {
    v4.value = CryptexKit_RequestInstall_CodingKeys_unknownDefault;
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

CryptexKit::RequestInstall::CodingKeys_optional __swiftcall RequestInstall.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestInstall.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CryptexKit_RequestInstall_CodingKeys_options;
  }

  else
  {
    v4.value = CryptexKit_RequestInstall_CodingKeys_unknownDefault;
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

uint64_t RequestInstall.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x737465737361;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RequestInstall.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x736E6F6974706FLL;
  }

  else
  {
    v4 = 0x737465737361;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x736E6F6974706FLL;
  }

  else
  {
    v6 = 0x737465737361;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RequestInstall.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RequestInstall.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RequestInstall.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RequestInstall.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestInstall.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance RequestInstall.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x737465737361;
  if (*v1)
  {
    v2 = 0x736E6F6974706FLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RequestInstall.CodingKeys()
{
  if (*v0)
  {
    result = 0x736E6F6974706FLL;
  }

  else
  {
    result = 0x737465737361;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RequestInstall.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestInstall.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestInstall.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestInstall.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestInstall.init(assets:options:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  *a3 = result;
  *(a3 + 8) = v3;
  *(a3 + 9) = v4;
  *(a3 + 10) = v5;
  *(a3 + 11) = v6;
  return result;
}

uint64_t static RequestInstall.from(xpc:)@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10CryptexKit0A9AssetTypeOAA0aC0CGMd, &_sSDy10CryptexKit0A9AssetTypeOAA0aC0CGMR);
  v14 = &type metadata for RequestInstall.CodingKeys;
  v5 = lazy protocol witness table accessor for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  v6 = lazy protocol witness table accessor for type [CryptexAssetType : CryptexAsset] and conformance <> [A : B]();
  OS_xpc_object.decodeRequiredObject<A>(_:forKey:)(v4, v13, ObjectType, v4, v6);
  result = __swift_destroy_boxed_opaque_existential_0(v13);
  if (!v1)
  {
    v8 = v16;
    v14 = &type metadata for RequestInstall.CodingKeys;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    OS_xpc_object.decodeRequiredObject<A>(_:forKey:)(&type metadata for Cryptex.InstallOptions, v13, ObjectType, &type metadata for Cryptex.InstallOptions, &protocol witness table for Cryptex.InstallOptions);
    result = __swift_destroy_boxed_opaque_existential_0(v13);
    v9 = v16;
    v10 = BYTE1(v16);
    v11 = BYTE2(v16);
    v12 = BYTE3(v16);
    *a1 = v8;
    *(a1 + 8) = v9;
    *(a1 + 9) = v10;
    *(a1 + 10) = v11;
    *(a1 + 11) = v12;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys);
  }

  return result;
}

uint64_t RequestInstall.populate(xpcDict:)(uint64_t *a1)
{
  v3 = *v1;
  v16 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = *(v1 + 10);
  v6 = *(v1 + 11);
  v7 = *a1;
  swift_getObjectType();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10CryptexKit0A9AssetTypeOAA0aC0CGMd, &_sSDy10CryptexKit0A9AssetTypeOAA0aC0CGMR);
  v15 = lazy protocol witness table accessor for type [CryptexAssetType : CryptexAsset] and conformance <> [A : B]();
  v13[0] = v3;
  v11 = &type metadata for RequestInstall.CodingKeys;
  v8 = lazy protocol witness table accessor for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys();
  v12 = v8;
  LOBYTE(v10[0]) = 0;

  OS_xpc_object.encode(_:forKey:)(v13, v10);
  __swift_destroy_boxed_opaque_existential_0(v10);
  result = __swift_destroy_boxed_opaque_existential_0(v13);
  if (!v2)
  {
    v14 = &type metadata for Cryptex.InstallOptions;
    v15 = &protocol witness table for Cryptex.InstallOptions;
    LOBYTE(v13[0]) = v16;
    BYTE1(v13[0]) = v4;
    BYTE2(v13[0]) = v5;
    BYTE3(v13[0]) = v6;
    v11 = &type metadata for RequestInstall.CodingKeys;
    v12 = v8;
    LOBYTE(v10[0]) = 1;
    OS_xpc_object.encode(_:forKey:)(v13, v10);
    __swift_destroy_boxed_opaque_existential_0(v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RequestInstall.checkEntitlement(entitlements:)(Swift::OpaquePointer entitlements)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = *(v1 + 10);
  v6 = *(v1 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_226115B70;
  v8._countAndFlagsBits = 0x6C6C6174736E69;
  v8._object = 0xE700000000000000;
  *(v7 + 32) = Request.entitlementString(_:)(v8);
  v9._countAndFlagsBits = 0x6C6C6174736E69;
  v9._object = 0xE700000000000000;
  *(v7 + 48) = Request.packageEntitlementString(_:)(v9);
  Request.checkEntitlement(approvedList:_:)(entitlements._rawValue, v7);
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RequestInstall(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestInstall(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.exists()()
{
  v1 = type metadata accessor for FilePath();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  FileStat.init(_:)(v5, v10);
  if (v0)
  {
    *&v10[0] = v0;
    v7 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      if (v9[3] == 2)
      {
      }
    }
  }

  return v0 == 0;
}

uint64_t FilePath.fileExists()(uint64_t (*a1)(uint64_t))
{
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v1);
  v10 = FileStat.init(_:)(v8, v15);
  if (v2)
  {
    *&v15[0] = v2;
    v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = swift_dynamicCast();
    if (v12 && LODWORD(v14[0]) == 2)
    {

      LOBYTE(v12) = 0;
    }
  }

  else
  {
    v14[6] = v15[6];
    v14[7] = v15[7];
    v14[8] = v15[8];
    v14[2] = v15[2];
    v14[3] = v15[3];
    v14[4] = v15[4];
    v14[5] = v15[5];
    v14[0] = v15[0];
    v14[1] = v15[1];
    LOBYTE(v12) = a1(v10);
  }

  return v12 & 1;
}

uint64_t closure #1 in ResponseInstalledInfoPlists.infoPlists.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for CryptexError();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = NSFileHandle.readToEnd()();
  if (v11 >> 60 != 15)
  {
    v16 = v10;
    v17 = v11;
    v18 = objc_opt_self();
    v19 = v16;
    v20 = v17;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v30[0] = 0;
    v22 = [v18 propertyListWithData:isa options:0 format:0 error:v30];

    if (v22)
    {
      v23 = v30[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        result = outlined consume of Data?(v19, v20);
        v25 = 0;
        v13 = v29[1];
        goto LABEL_2;
      }

      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      v13 = swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)(v8, 0xD00000000000002BLL, 0x8000000226117510, 0xD00000000000002BLL, 0x80000002261174E0, 0x73696C506F666E69, 0xEA00000000007374, 38, v28);
      outlined destroy of CryptexError(v8);
    }

    else
    {
      v27 = v30[0];
      v13 = _convertNSErrorToError(_:)();
    }

    swift_willThrow();
    result = outlined consume of Data?(v19, v20);
    v25 = 1;
    goto LABEL_2;
  }

  lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
  v13 = swift_allocError();
  v15 = v14;
  NSFileHandle.path.getter();
  v24 = type metadata accessor for FilePath();
  v25 = 1;
  (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
  swift_storeEnumTagMultiPayload();
  result = swift_willThrow();
LABEL_2:
  *a2 = v13;
  *(a2 + 8) = v25;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ResponseInstalledInfoPlists.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  v11 = PropertyListDecoder.init()();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v11;
  v12[5] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVySaySo12NSFileHandleCGGMd, &_ss12LazySequenceVySaySo12NSFileHandleCGGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for Result();
  lazy protocol witness table accessor for type LazySequence<[NSFileHandle]> and conformance LazySequence<A>();
  LazySequenceProtocol.map<A>(_:)();

  return v14;
}

uint64_t closure #1 in ResponseInstalledInfoPlists.decode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v8;
  v12 = NSFileHandle.readToEnd()();
  if (v13 >> 60 == 15)
  {
    type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    v15 = swift_allocError();
    v17 = v16;
    NSFileHandle.path.getter();
    v20 = type metadata accessor for FilePath();
    (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    *a4 = v15;
  }

  else
  {
    v18 = v12;
    v19 = v13;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v18, v19);
    (*(v6 + 32))(a4, v10, a3);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

uint64_t partial apply for closure #1 in ResponseInstalledInfoPlists.decode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[5];
  return closure #1 in ResponseInstalledInfoPlists.decode<A>(_:)(a1, v2[4], v2[2], a2);
}

unint64_t lazy protocol witness table accessor for type LazySequence<[NSFileHandle]> and conformance LazySequence<A>()
{
  result = lazy protocol witness table cache variable for type LazySequence<[NSFileHandle]> and conformance LazySequence<A>;
  if (!lazy protocol witness table cache variable for type LazySequence<[NSFileHandle]> and conformance LazySequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss12LazySequenceVySaySo12NSFileHandleCGGMd, &_ss12LazySequenceVySaySo12NSFileHandleCGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazySequence<[NSFileHandle]> and conformance LazySequence<A>);
  }

  return result;
}

BOOL ResponseInstalledInfoPlists.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ResponseInstalledInfoPlists.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

BOOL ResponseInstalledInfoPlists.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ResponseInstalledInfoPlists.CodingKeys.init(stringValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ResponseInstalledInfoPlists.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResponseInstalledInfoPlists.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ResponseInstalledInfoPlists.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance ResponseInstalledInfoPlists.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ResponseInstalledInfoPlists.CodingKeys(uint64_t a1@<X8>)
{
  strcpy(a1, "infoPlistFDs");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResponseInstalledInfoPlists.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance ResponseInstalledInfoPlists.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResponseInstalledInfoPlists.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResponseInstalledInfoPlists.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static ResponseInstalledInfoPlists.from(xpc:)@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for CryptexError();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSFileHandleCGMd, &_sSaySo12NSFileHandleCGMR);
  v16[3] = &type metadata for ResponseInstalledInfoPlists.CodingKeys;
  v16[4] = lazy protocol witness table accessor for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys();
  v9 = lazy protocol witness table accessor for type [NSFileHandle] and conformance <A> [A]();
  OS_xpc_object.decode<A>(_:forKey:)(v16, v8, v9, &v17);
  result = __swift_destroy_boxed_opaque_existential_0(v16);
  if (!v1)
  {
    if (v17)
    {
      *a1 = v17;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      strcpy(v16, "Missing key ");
      BYTE5(v16[1]) = 0;
      HIWORD(v16[1]) = -5120;
      lazy protocol witness table accessor for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys();
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA74CD0](v11);

      v12 = v16[0];
      v13 = v16[1];
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)(v7, v12, v13, 0xD00000000000002BLL, 0x80000002261174E0, 0x637078286D6F7266, 0xEA0000000000293ALL, 73, v14);

      outlined destroy of CryptexError(v7);
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [NSFileHandle] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [NSFileHandle] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [NSFileHandle] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo12NSFileHandleCGMd, &_sSaySo12NSFileHandleCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [NSFileHandle] and conformance <A> [A]);
  }

  return result;
}

uint64_t ResponseInstalledInfoPlists.populate(xpcDict:)(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  swift_getObjectType();
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSFileHandleCGMd, &_sSaySo12NSFileHandleCGMR);
  v6[4] = lazy protocol witness table accessor for type [NSFileHandle] and conformance <A> [A]();
  v6[0] = v2;
  v5[3] = &type metadata for ResponseInstalledInfoPlists.CodingKeys;
  v5[4] = lazy protocol witness table accessor for type ResponseInstalledInfoPlists.CodingKeys and conformance ResponseInstalledInfoPlists.CodingKeys();

  OS_xpc_object.encode(_:forKey:)(v6, v5);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InstallOptionsCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InstallOptionsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InstallOptionsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Cryptex.InstallOptions.populate(xpcDict:)(uint64_t *a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v8 = type metadata accessor for PropertyListEncoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  LOBYTE(v17[0]) = v4;
  BYTE1(v17[0]) = v5;
  BYTE2(v17[0]) = v6;
  BYTE3(v17[0]) = v7;
  lazy protocol witness table accessor for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions();
  v11 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v13 = v12;

  if (!v2)
  {
    v15 = *a1;
    swift_getObjectType();
    v17[3] = MEMORY[0x277CC9318];
    v17[4] = &protocol witness table for Data;
    v17[0] = v11;
    v17[1] = v13;
    v16[3] = &unk_2839565F8;
    v16[4] = lazy protocol witness table accessor for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys();
    outlined copy of Data._Representation(v11, v13);
    OS_xpc_object.encode(_:forKey:)(v17, v16);
    outlined consume of Data._Representation(v11, v13);
    __swift_destroy_boxed_opaque_existential_0(v16);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions()
{
  result = lazy protocol witness table cache variable for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions;
  if (!lazy protocol witness table cache variable for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions;
  if (!lazy protocol witness table cache variable for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys()
{
  result = lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys;
  if (!lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys;
  if (!lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys;
  if (!lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys;
  if (!lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys);
  }

  return result;
}

uint64_t static Cryptex.InstallOptions.from(xpc:)()
{
  ObjectType = swift_getObjectType();
  v8[3] = &unk_2839565F8;
  v8[4] = lazy protocol witness table accessor for type InstallOptionsCodingKeys and conformance InstallOptionsCodingKeys();
  OS_xpc_object.decodeRequiredObject<A>(_:forKey:)(MEMORY[0x277CC9318], v8, ObjectType, MEMORY[0x277CC9318], &protocol witness table for Data);
  result = __swift_destroy_boxed_opaque_existential_0(v8);
  if (!v0)
  {
    v3 = v8[5];
    v4 = v8[6];
    v5 = type metadata accessor for PropertyListDecoder();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    lazy protocol witness table accessor for type Cryptex.InstallOptions and conformance Cryptex.InstallOptions();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    return outlined consume of Data._Representation(v3, v4);
  }

  return result;
}

uint64_t protocol witness for static XpcCodable.from(xpc:) in conformance UInt@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static UInt.from(xpc:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t specialized static UInt.from(xpc:)(void *a1)
{
  v2 = type metadata accessor for CryptexError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x22AA75EA0](a1);
  if (v7 == XPC_TYPE_UINT64.getter())
  {
    return xpc_uint64_get_value(a1);
  }

  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  swift_allocError();
  static CryptexError.error(_:_:file:function:lineNumber:)(v6, 0xD000000000000013, 0x8000000226117540, 0xD000000000000020, 0x8000000226117560, 0x637078286D6F7266, 0xEA0000000000293ALL, 13, v8);
  outlined destroy of CryptexError(v6);
  return swift_willThrow();
}

id SendableXPCObj.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10CryptexKit14SendableXPCObj_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SendableXPCObj.init(_:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10CryptexKit14SendableXPCObj_value] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SendableXPCObj();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SendableXPCObj.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SendableXPCObj.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SendableXPCObj();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Image4PropertySpec._4ccStr.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Image4PropertySpec._4cc.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = String.utf8CString.getter();
  v4 = _str24cc((v3 + 32));

  return v4;
}

uint64_t Image4PropertySpec.init(_4ccStr:trustSection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void static Image4PropertySpec.type.getter(void *a1@<X8>)
{
  *a1 = 1701869940;
  a1[1] = 0xE400000000000000;
  v1 = MEMORY[0x277D84D38];
  a1[2] = 1;
  a1[3] = v1;
}

void static Image4PropertySpec.subType.getter(void *a1@<X8>)
{
  *a1 = 1887007859;
  a1[1] = 0xE400000000000000;
  v1 = MEMORY[0x277D84D38];
  a1[2] = 1;
  a1[3] = v1;
}

void static Image4PropertySpec.dataOnly.getter(void *a1@<X8>)
{
  *a1 = 1635017060;
  a1[1] = 0xE400000000000000;
  v1 = MEMORY[0x277D839B0];
  a1[2] = 1;
  a1[3] = v1;
}

BOOL static Image4PropertySpec.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v4 && v3 == v5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v7)
  {
    return v2 == v4 && v3 == v5;
  }

  return result;
}

uint64_t Image4Auth.read(property:from:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];

  result = specialized Image4Auth.evaluate(ticketData:type:configure:)(a2, a3, MEMORY[0x277D829D0]);
  if (!v3)
  {
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];

  result = specialized Image4Auth.evaluate(ticketData:type:configure:)(a2, a3, MEMORY[0x277D829D0]);
  if (!v3)
  {
    result = 2;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized Image4Auth.evaluate(ticketData:type:configure:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!image4_environment_new())
  {
    type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_31:

    v22 = *MEMORY[0x277D85DE8];
    return result;
  }

  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      if (a3)
      {
        goto LABEL_25;
      }

      goto LABEL_40;
    }

    v7 = *(a1 + 16);
    v8 = __DataStorage._bytes.getter();
    if (!v8)
    {
LABEL_37:
      MEMORY[0x22AA74760]();
      if (!a3)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    v9 = v8;
    v10 = __DataStorage._offset.getter();
    v11 = __OFSUB__(v7, v10);
    v12 = v7 - v10;
    if (v11)
    {
      goto LABEL_33;
    }

    MEMORY[0x22AA74760]();
    if (!a3)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (!(v12 + v9))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      result = MEMORY[0x22AA74760]();
      if (!a3)
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
LABEL_21:
      if (image4_trust_new())
      {
        v18 = String.utf8CString.getter();
        _str24cc((v18 + 32));

        image4_trust_record_property_integer();
        type metadata accessor for CryptexError();
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        v19 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        image4_trust_evaluate();
        if (v19)
        {
          goto LABEL_27;
        }

        goto LABEL_29;
      }

LABEL_28:
      type metadata accessor for CryptexError();
      lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
LABEL_30:
      image4_environment_destroy();
      goto LABEL_31;
    }

    __break(1u);
  }

  else if (!v6)
  {
    if (a3)
    {
LABEL_25:
      if (image4_trust_new())
      {
        v20 = String.utf8CString.getter();
        _str24cc((v20 + 32));

        image4_trust_record_property_integer();
        type metadata accessor for CryptexError();
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        v21 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        image4_trust_evaluate();
        if (v21)
        {
LABEL_27:
          swift_willThrow();
        }

LABEL_29:
        image4_trust_destroy();
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (a1 > a1 >> 32)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v13 = __DataStorage._bytes.getter();
  if (!v13)
  {
    goto LABEL_41;
  }

  v14 = v13;
  v15 = __DataStorage._offset.getter();
  v16 = a1 - v15;
  if (__OFSUB__(a1, v15))
  {
    goto LABEL_34;
  }

  result = MEMORY[0x22AA74760]();
  if (!a3)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v16 + v14)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_21;
    }

LABEL_35:
    __break(1u);
  }

LABEL_43:
  __break(1u);
  return result;
}

{
  v23 = *MEMORY[0x277D85DE8];
  if (!image4_environment_new())
  {
    type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_31:

    v22 = *MEMORY[0x277D85DE8];
    return result;
  }

  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      if (a3)
      {
        goto LABEL_25;
      }

      goto LABEL_40;
    }

    v7 = *(a1 + 16);
    v8 = __DataStorage._bytes.getter();
    if (!v8)
    {
LABEL_37:
      MEMORY[0x22AA74760]();
      if (!a3)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    v9 = v8;
    v10 = __DataStorage._offset.getter();
    v11 = __OFSUB__(v7, v10);
    v12 = v7 - v10;
    if (v11)
    {
      goto LABEL_33;
    }

    MEMORY[0x22AA74760]();
    if (!a3)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (!(v12 + v9))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      result = MEMORY[0x22AA74760]();
      if (!a3)
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
LABEL_21:
      if (image4_trust_new())
      {
        v18 = String.utf8CString.getter();
        _str24cc((v18 + 32));

        image4_trust_record_property_BOOL();
        type metadata accessor for CryptexError();
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        v19 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        image4_trust_evaluate();
        if (v19)
        {
          goto LABEL_27;
        }

        goto LABEL_29;
      }

LABEL_28:
      type metadata accessor for CryptexError();
      lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
LABEL_30:
      image4_environment_destroy();
      goto LABEL_31;
    }

    __break(1u);
  }

  else if (!v6)
  {
    if (a3)
    {
LABEL_25:
      if (image4_trust_new())
      {
        v20 = String.utf8CString.getter();
        _str24cc((v20 + 32));

        image4_trust_record_property_BOOL();
        type metadata accessor for CryptexError();
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        v21 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        image4_trust_evaluate();
        if (v21)
        {
LABEL_27:
          swift_willThrow();
        }

LABEL_29:
        image4_trust_destroy();
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (a1 > a1 >> 32)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v13 = __DataStorage._bytes.getter();
  if (!v13)
  {
    goto LABEL_41;
  }

  v14 = v13;
  v15 = __DataStorage._offset.getter();
  v16 = a1 - v15;
  if (__OFSUB__(a1, v15))
  {
    goto LABEL_34;
  }

  result = MEMORY[0x22AA74760]();
  if (!a3)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v16 + v14)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_21;
    }

LABEL_35:
    __break(1u);
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t specialized Image4Auth.evaluate(ticketData:type:configure:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!image4_environment_new())
  {
    type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_36:
    v28 = a5;
LABEL_37:
    outlined consume of Data._Representation(v28, a6);

    v29 = *MEMORY[0x277D85DE8];
    return result;
  }

  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      if (a3)
      {
LABEL_25:
        v24 = image4_trust_new();
        if (!v24)
        {
          type metadata accessor for CryptexError();
          lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          goto LABEL_35;
        }

        closure #1 in Image4Auth.authenticate(fileData:with4cc:against:)(v24, a5, a6);
        if (v6)
        {
          image4_trust_destroy();
LABEL_35:
          image4_environment_destroy();
          goto LABEL_36;
        }

        v25 = a5;
        type metadata accessor for CryptexError();
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        v26 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        image4_trust_evaluate();
        if (v26)
        {
          swift_willThrow();
          image4_trust_destroy();
          a5 = v25;
          goto LABEL_35;
        }

        image4_trust_destroy();
        v30 = v25;
LABEL_40:
        image4_environment_destroy();
        v28 = v30;
        goto LABEL_37;
      }

      goto LABEL_49;
    }

    v32 = a5;
    v31 = a6;
    v13 = *(a1 + 16);
    v14 = __DataStorage._bytes.getter();
    if (!v14)
    {
LABEL_46:
      MEMORY[0x22AA74760]();
      if (!a3)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    v15 = v14;
    v16 = __DataStorage._offset.getter();
    v17 = __OFSUB__(v13, v16);
    a6 = v13 - v16;
    if (v17)
    {
      goto LABEL_42;
    }

    a5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    MEMORY[0x22AA74760]();
    if (!a3)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (!(a6 + v15))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      result = MEMORY[0x22AA74760]();
      if (!a3)
      {
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
LABEL_21:
      v23 = image4_trust_new();
      a6 = v31;
      if (v23)
      {
        closure #1 in Image4Auth.authenticate(fileData:with4cc:against:)(v23, v32, v31);
        if (v6)
        {
          image4_trust_destroy();
        }

        else
        {
          type metadata accessor for CryptexError();
          lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
          v27 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          image4_trust_evaluate();
          if (!v27)
          {
            image4_trust_destroy();
            v30 = v32;
            goto LABEL_40;
          }

          swift_willThrow();
          image4_trust_destroy();
        }
      }

      else
      {
        type metadata accessor for CryptexError();
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      a5 = v32;
      goto LABEL_35;
    }

    __break(1u);
  }

  else if (!v12)
  {
    if (a3)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_46;
  }

  v32 = a5;
  v31 = a6;
  if (a1 > a1 >> 32)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v18 = __DataStorage._bytes.getter();
  if (!v18)
  {
    goto LABEL_50;
  }

  v19 = v18;
  v20 = __DataStorage._offset.getter();
  v21 = a1 - v20;
  if (__OFSUB__(a1, v20))
  {
    goto LABEL_43;
  }

  result = MEMORY[0x22AA74760]();
  if (!a3)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v21 + v19)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_21;
    }

LABEL_44:
    __break(1u);
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t Image4Auth.evaluate(ticketData:type:configure:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void))
{
  v25 = *MEMORY[0x277D85DE8];
  if (!image4_environment_new())
  {
    type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
LABEL_34:
    v23 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      if (a3)
      {
        goto LABEL_24;
      }

      goto LABEL_44;
    }

    v24 = a4;
    v11 = *(a1 + 16);
    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
LABEL_41:
      MEMORY[0x22AA74760]();
      if (!a3)
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v13 = v12;
    v14 = __DataStorage._offset.getter();
    v15 = __OFSUB__(v11, v14);
    v16 = v11 - v14;
    if (!v15)
    {
      MEMORY[0x22AA74760]();
      if (!a3)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (!(v16 + v13))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        result = MEMORY[0x22AA74760]();
        if (!a3)
        {
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
      {
LABEL_20:
        if (image4_trust_new())
        {
          v24();
          if (v4)
          {
            goto LABEL_32;
          }

          type metadata accessor for CryptexError();
          lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
          v22 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          image4_trust_evaluate();
          if (!v22)
          {
            goto LABEL_32;
          }

LABEL_31:
          swift_willThrow();
LABEL_32:
          image4_trust_destroy();
          goto LABEL_33;
        }

LABEL_27:
        type metadata accessor for CryptexError();
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
LABEL_33:
        result = image4_environment_destroy();
        goto LABEL_34;
      }

      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (!v9)
  {
    if (a3)
    {
LABEL_24:
      if (image4_trust_new())
      {
        a4();
        if (v4)
        {
          goto LABEL_32;
        }

        type metadata accessor for CryptexError();
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        v21 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        image4_trust_evaluate();
        if (!v21)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_41;
  }

  v24 = a4;
  if (a1 > a1 >> 32)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = __DataStorage._bytes.getter();
  if (!v17)
  {
    goto LABEL_45;
  }

  v18 = v17;
  v19 = __DataStorage._offset.getter();
  v20 = a1 - v19;
  if (__OFSUB__(a1, v19))
  {
    goto LABEL_37;
  }

  result = MEMORY[0x22AA74760]();
  if (!a3)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v20 + v18)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_20;
    }

LABEL_39:
    __break(1u);
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t Image4Auth.authenticate(fileData:with4cc:against:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  outlined copy of Data._Representation(a1, a2);

  return specialized Image4Auth.evaluate(ticketData:type:configure:)(a5, a6, MEMORY[0x277D829C0], v10, a1, a2);
}

uint64_t closure #1 in Image4Auth.authenticate(fileData:with4cc:against:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v4)
    {
      goto LABEL_21;
    }

    if (a2 <= a2 >> 32)
    {
      v11 = __DataStorage._bytes.getter();
      if (v11)
      {
        v12 = __DataStorage._offset.getter();
        if (__OFSUB__(a2, v12))
        {
          goto LABEL_26;
        }

        v11 += a2 - v12;
      }

      MEMORY[0x22AA74760]();
      v13 = String.utf8CString.getter();
      _str24cc((v13 + 32));

      if (v11)
      {
        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          v14 = *MEMORY[0x277D85DE8];
          goto LABEL_18;
        }

        goto LABEL_24;
      }

LABEL_28:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v4 != 2)
  {
LABEL_21:
    v15 = String.utf8CString.getter();
    _str24cc((v15 + 32));

    result = image4_trust_set_payload();
    v16 = *MEMORY[0x277D85DE8];
    return result;
  }

  v5 = *(a2 + 16);
  v6 = __DataStorage._bytes.getter();
  if (v6)
  {
    v7 = __DataStorage._offset.getter();
    if (__OFSUB__(v5, v7))
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
    }

    v6 += v5 - v7;
  }

  MEMORY[0x22AA74760]();
  v8 = String.utf8CString.getter();
  _str24cc((v8 + 32));

  if (!v6)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (__OFSUB__(*(a2 + 24), *(a2 + 16)))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = *MEMORY[0x277D85DE8];
LABEL_18:

  return image4_trust_set_payload();
}

uint64_t protocol witness for AssetAuthenticatorProtocol.authenticate(fileData:with4cc:against:) in conformance Image4Auth(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  outlined copy of Data._Representation(a1, a2);

  return specialized Image4Auth.evaluate(ticketData:type:configure:)(a5, a6, MEMORY[0x277D829C0], v10, a1, a2);
}

uint64_t protocol witness for AssetAuthenticatorProtocol.read(property:from:) in conformance Image4Auth(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  result = Image4Auth.read(property:from:)(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

{
  return Image4Auth.read(property:from:)(a1, a2, a3);
}

uint64_t dispatch thunk of AssetAuthenticatorProtocol.read(property:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))();
}

{
  return (*(a5 + 24))();
}

uint64_t type metadata instantiation function for Image4PropertySpec()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Image4PropertySpec(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Image4PropertySpec(uint64_t result, int a2, int a3)
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

void type metadata accessor for image4_trust_section_t()
{
  if (!lazy cache variable for type metadata for image4_trust_section_t)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for image4_trust_section_t);
    }
  }
}

void specialized closure #1 in closure #1 in closure #1 in Image4Auth.evaluate(ticketData:type:configure:)(int a1, void **a2)
{
  if (a2)
  {
    if (!a1)
    {
      v16 = *a2;
      *a2 = 0;

      goto LABEL_10;
    }

    type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    v4 = swift_allocError();
    v6 = v5;
    v7 = POSIXErrorCode.init(rawValue:)();
    *v6 = v7;
    *(v6 + 4) = BYTE4(v7) & 1;
    swift_storeEnumTagMultiPayload();
    v8 = *a2;
    *a2 = v4;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v10))
    {
LABEL_8:
      v16 = oslog;

LABEL_10:

      return;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    if (strerror(a1))
    {
      v13 = String.init(cString:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_2260DF000, oslog, v10, "Authentication failed: %s\n", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x22AA75CB0](v12, -1, -1);
      MEMORY[0x22AA75CB0](v11, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t _img4_nonce.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for CryptexError();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMd, &_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMR);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = (&v38 - v15);
  v17 = (a2 >> 62);
  if ((a2 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(a1 + 16);
      v18 = *(a1 + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_47;
      }

      if (v21 == 48)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (!v17)
    {
      if (BYTE6(a2) != 48)
      {
        goto LABEL_14;
      }

LABEL_8:
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      v40 = v14;
      if (v17 == 2)
      {
        goto LABEL_24;
      }

      if (v17 != 1)
      {
        HIDWORD(v46) = BYTE6(a2);
        goto LABEL_31;
      }

      LODWORD(v22) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v22 = v22;
        goto LABEL_25;
      }

      goto LABEL_49;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_48;
    }

    if (HIDWORD(a1) - a1 == 48)
    {
      goto LABEL_8;
    }
  }

LABEL_14:
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_44;
  }

LABEL_15:
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, logger);
  outlined copy of Data._Representation(a1, a2);
  v16 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v16, v24))
  {
    outlined consume of Data._Representation(a1, a2);
LABEL_41:

    _s10CryptexKit0A5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
    swift_allocError();
    outlined init with copy of CryptexError(v10, v36);
    swift_willThrow();
    outlined consume of Data._Representation(a1, a2);
    result = outlined destroy of CryptexError(v10);
    goto LABEL_42;
  }

  v25 = swift_slowAlloc();
  *v25 = 134218240;
  if (v17 <= 1)
  {
    if (v17)
    {
      LODWORD(v26) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_51;
      }

      v26 = v26;
    }

    else
    {
      v26 = BYTE6(a2);
    }

    goto LABEL_40;
  }

  if (v17 != 2)
  {
    v26 = 0;
LABEL_40:
    *(v25 + 4) = v26;
    v35 = v25;
    outlined consume of Data._Representation(a1, a2);
    *(v35 + 12) = 1024;
    *(v35 + 14) = 48;
    _os_log_impl(&dword_2260DF000, v16, v24, "Nonce length (%ld) != expected (%u)", v35, 0x12u);
    MEMORY[0x22AA75CB0](v35, -1, -1);
    goto LABEL_41;
  }

  v28 = *(a1 + 16);
  v27 = *(a1 + 24);
  v20 = __OFSUB__(v27, v28);
  v26 = v27 - v28;
  if (!v20)
  {
    goto LABEL_40;
  }

  __break(1u);
LABEL_24:
  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v20 = __OFSUB__(v29, v30);
  v22 = v29 - v30;
  if (v20)
  {
    goto LABEL_50;
  }

LABEL_25:
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  if (HIDWORD(v22))
  {
    goto LABEL_46;
  }

  HIDWORD(v46) = v22;
  if (v17 == 2)
  {
    v31 = *(a1 + 16);
  }

  outlined copy of Data._Representation(a1, a2);
LABEL_31:
  Data.Iterator.init(_:at:)();
  v10 = type metadata accessor for Data.Iterator();
  _s10CryptexKit0A5ErrorOACs0C0AAWlTm_1(&lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator, MEMORY[0x277CC92E0]);
  dispatch thunk of IteratorProtocol.next()();
  v17 = 0;
  if (v42)
  {
    goto LABEL_36;
  }

  v39 = a3;
  v32 = 0;
  a3 = &v43 + 2;
  do
  {
    v17 = (v32 + 1);
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_44:
      swift_once();
      goto LABEL_15;
    }

    *(&v43 + v32 + 2) = v41;
    dispatch thunk of IteratorProtocol.next()();
    ++v32;
  }

  while ((v42 & 1) == 0);
  a3 = v39;
LABEL_36:
  outlined consume of Data._Representation(a1, a2);
  *(&v16->isa + *(v40 + 36)) = v17;
  result = outlined destroy of EnumeratedSequence<Data>.Iterator(v16);
  v34 = v44;
  *a3 = v43;
  *(a3 + 1) = v34;
  *(a3 + 2) = v45;
  *(a3 + 6) = v46;
LABEL_42:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _img4_nonce.data.getter()
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = *(v0 + 2);
  v7 = *(v0 + 18);
  v8 = *(v0 + 34);
  v1 = type metadata accessor for __DataStorage();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  v4 = *MEMORY[0x277D85DE8];
  return 0x3000000000;
}

uint64_t _s10CryptexKit0A5ErrorOACs0C0AAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of EnumeratedSequence<Data>.Iterator(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMd, &_ss18EnumeratedSequenceV8IteratorVy10Foundation4DataV_GMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int CryptexPersonalizationService.SigningPolicy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](v1);
  return Hasher._finalize()();
}

uint64_t CryptexPersonalizationService.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CryptexPersonalizationService.signingPolicy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CryptexPersonalizationService();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for CryptexPersonalizationService()
{
  result = type metadata singleton initialization cache for CryptexPersonalizationService;
  if (!type metadata singleton initialization cache for CryptexPersonalizationService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CryptexPersonalizationService.init(url:signingPolicy:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for CryptexPersonalizationService();
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t one-time initialization function for tatsu()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v10 - v3;
  v5 = type metadata accessor for CryptexPersonalizationService();
  __swift_allocate_value_buffer(v5, static CryptexPersonalizationService.tatsu);
  v6 = __swift_project_value_buffer(v5, static CryptexPersonalizationService.tatsu);
  URL.init(string:)();
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v4, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    result = (*(v8 + 32))(v6, v4, v7);
    *(v6 + *(v5 + 20)) = 0;
  }

  return result;
}

uint64_t one-time initialization function for diavlo()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v10 - v3;
  v5 = type metadata accessor for CryptexPersonalizationService();
  __swift_allocate_value_buffer(v5, static CryptexPersonalizationService.diavlo);
  v6 = __swift_project_value_buffer(v5, static CryptexPersonalizationService.diavlo);
  URL.init(string:)();
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v4, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    result = (*(v8 + 32))(v6, v4, v7);
    *(v6 + *(v5 + 20)) = 1;
  }

  return result;
}

uint64_t CryptexPersonalizationService.tatsu.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for CryptexPersonalizationService();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static CryptexPersonalizationService.tatsu.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for CryptexPersonalizationService();
  v6 = __swift_project_value_buffer(v5, a2);

  return outlined init with copy of CryptexPersonalizationService(v6, a3);
}

unint64_t lazy protocol witness table accessor for type CryptexPersonalizationService.SigningPolicy and conformance CryptexPersonalizationService.SigningPolicy()
{
  result = lazy protocol witness table cache variable for type CryptexPersonalizationService.SigningPolicy and conformance CryptexPersonalizationService.SigningPolicy;
  if (!lazy protocol witness table cache variable for type CryptexPersonalizationService.SigningPolicy and conformance CryptexPersonalizationService.SigningPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexPersonalizationService.SigningPolicy and conformance CryptexPersonalizationService.SigningPolicy);
  }

  return result;
}

uint64_t type metadata completion function for CryptexPersonalizationService()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t CryptexErrorMessage.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CryptexErrorMessage.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t CryptexErrorMessage.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x726F727265;
  v2 = 1701603686;
  v3 = 0x6E6F6974636E7566;
  if (a1 != 3)
  {
    v3 = 0x626D754E656E696CLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6567617373656DLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CryptexErrorMessage.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x726F727265;
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = *a2;
  v6 = 0xE400000000000000;
  v7 = 1701603686;
  v8 = 0xE800000000000000;
  v9 = 0x6E6F6974636E7566;
  if (v3 != 3)
  {
    v9 = 0x626D754E656E696CLL;
    v8 = 0xEA00000000007265;
  }

  if (v3 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x6567617373656DLL;
  if (*a1)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v10 = 0x726F727265;
  }

  if (*a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v3 <= 1)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  v13 = 0xE500000000000000;
  v14 = 0xE400000000000000;
  v15 = 1701603686;
  v16 = 0xE800000000000000;
  v17 = 0x6E6F6974636E7566;
  if (v5 != 3)
  {
    v17 = 0x626D754E656E696CLL;
    v16 = 0xEA00000000007265;
  }

  if (v5 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a2)
  {
    v2 = 0x6567617373656DLL;
    v13 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v18 = v2;
  }

  else
  {
    v18 = v15;
  }

  if (*a2 <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  if (v11 == v18 && v12 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CryptexErrorMessage.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CryptexErrorMessage.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CryptexErrorMessage.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CryptexErrorMessage.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CryptexErrorMessage.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CryptexErrorMessage.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x726F727265;
  v5 = 0xE400000000000000;
  v6 = 1701603686;
  v7 = 0xE800000000000000;
  v8 = 0x6E6F6974636E7566;
  if (v2 != 3)
  {
    v8 = 0x626D754E656E696CLL;
    v7 = 0xEA00000000007265;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6567617373656DLL;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CryptexErrorMessage.CodingKeys()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 1701603686;
  v4 = 0x6E6F6974636E7566;
  if (v1 != 3)
  {
    v4 = 0x626D754E656E696CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6567617373656DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CryptexErrorMessage.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CryptexErrorMessage.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CryptexErrorMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CryptexErrorMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void static CryptexErrorMessage.from(xpc:)(CryptexKit::CryptexErrorMessage *a1@<X8>)
{
  v3 = type metadata accessor for CryptexError();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v39 = &type metadata for CryptexErrorMessage.CodingKeys;
  v8 = lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();
  v40 = v8;
  LOBYTE(v38[0]) = 0;
  OS_xpc_object.decode<A>(_:forKey:)(v38, MEMORY[0x277D837D0], &protocol witness table for String, &v41);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v38);
    return;
  }

  __swift_destroy_boxed_opaque_existential_0(v38);
  v9 = v42;
  if (!v42)
  {
    swift_storeEnumTagMultiPayload();
    strcpy(v38, "Expected key ");
    HIWORD(v38[1]) = -4864;
    LOBYTE(v41) = 0;
    lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v11);

    v12 = v38[0];
    v13 = v38[1];
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    v15 = v14;
    v16 = v7;
    v17 = v12;
    v18 = v13;
    v19 = 16;
LABEL_6:
    static CryptexError.error(_:_:file:function:lineNumber:)(v16, v17, v18, 0xD000000000000033, 0x8000000226117670, 0x637078286D6F7266, 0xEA0000000000293ALL, v19, v15);

    outlined destroy of CryptexError(v7);
    swift_willThrow();
    return;
  }

  v43 = a1;
  v10 = v41;
  v39 = &type metadata for CryptexErrorMessage.CodingKeys;
  v40 = v8;
  LOBYTE(v38[0]) = 1;
  OS_xpc_object.decode<A>(_:forKey:)(v38, MEMORY[0x277D837D0], &protocol witness table for String, &v41);
  v37 = v10;
  __swift_destroy_boxed_opaque_existential_0(v38);
  v20 = v42;
  if (!v42)
  {

    swift_storeEnumTagMultiPayload();
    strcpy(v38, "Expected key ");
    HIWORD(v38[1]) = -4864;
    LOBYTE(v41) = 1;
    lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v22);

    v23 = v38[0];
    v24 = v38[1];
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    v15 = v25;
    v16 = v7;
    v17 = v23;
    v18 = v24;
    v19 = 19;
    goto LABEL_6;
  }

  v21 = v41;
  v39 = &type metadata for CryptexErrorMessage.CodingKeys;
  v40 = v8;
  LOBYTE(v38[0]) = 2;
  OS_xpc_object.decode<A>(_:forKey:)(v38, MEMORY[0x277D837D0], &protocol witness table for String, &v41);
  v36 = v21;
  __swift_destroy_boxed_opaque_existential_0(v38);
  v27 = v41;
  v26 = v42;
  v39 = &type metadata for CryptexErrorMessage.CodingKeys;
  v40 = v8;
  LOBYTE(v38[0]) = 3;
  OS_xpc_object.decode<A>(_:forKey:)(v38, MEMORY[0x277D837D0], &protocol witness table for String, &v41);
  v35.value._countAndFlagsBits = v27;
  v35.value._object = v26;
  __swift_destroy_boxed_opaque_existential_0(v38);
  v29 = v41;
  v28 = v42;
  v39 = &type metadata for CryptexErrorMessage.CodingKeys;
  v40 = v8;
  LOBYTE(v38[0]) = 4;
  OS_xpc_object.decode<A>(_:forKey:)(v38, MEMORY[0x277D83E88], &protocol witness table for UInt, &v41);
  __swift_destroy_boxed_opaque_existential_0(v38);
  lineNumber.is_nil = v42;
  lineNumber.value = v41;
  v31._countAndFlagsBits = v36;
  v30._countAndFlagsBits = v37;
  v30._object = v9;
  v31._object = v20;
  v32.value._countAndFlagsBits = v29;
  v32.value._object = v28;
  CryptexErrorMessage.init(_:_:file:function:lineNumber:)(v43, v30, v31, v35, v32, lineNumber);
}

uint64_t CryptexErrorMessage.populate(xpcDict:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v15 = *(v1 + 16);
  v23 = *(v1 + 24);
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  v5 = *(v1 + 56);
  v12 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *a1;
  swift_getObjectType();
  v21 = MEMORY[0x277D837D0];
  v22 = &protocol witness table for String;
  v19 = v3;
  v20 = v4;
  v17 = &type metadata for CryptexErrorMessage.CodingKeys;
  v9 = lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();
  v18 = v9;
  LOBYTE(v16[0]) = 0;

  OS_xpc_object.encode(_:forKey:)(&v19, v16);
  if (v2)
  {
    goto LABEL_3;
  }

  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_destroy_boxed_opaque_existential_0(&v19);
  v10 = MEMORY[0x277D837D0];
  v21 = MEMORY[0x277D837D0];
  v22 = &protocol witness table for String;
  v19 = v15;
  v20 = v23;
  v17 = &type metadata for CryptexErrorMessage.CodingKeys;
  v18 = v9;
  LOBYTE(v16[0]) = 1;

  OS_xpc_object.encode(_:forKey:)(&v19, v16);
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_destroy_boxed_opaque_existential_0(&v19);
  if (v14)
  {
    v21 = v10;
    v22 = &protocol witness table for String;
    v19 = v13;
    v20 = v14;
    v17 = &type metadata for CryptexErrorMessage.CodingKeys;
    v18 = v9;
    LOBYTE(v16[0]) = 2;

    OS_xpc_object.encode(_:forKey:)(&v19, v16);
    __swift_destroy_boxed_opaque_existential_0(v16);
    __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  result = v5;
  if (v5)
  {
    v21 = v10;
    v22 = &protocol witness table for String;
    v19 = v12;
    v20 = v5;
    v17 = &type metadata for CryptexErrorMessage.CodingKeys;
    v18 = v9;
    LOBYTE(v16[0]) = 3;

    OS_xpc_object.encode(_:forKey:)(&v19, v16);
    __swift_destroy_boxed_opaque_existential_0(v16);
    result = __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  if ((v7 & 1) == 0)
  {
    v21 = MEMORY[0x277D83E88];
    v22 = &protocol witness table for UInt;
    v18 = v9;
    v19 = v6;
    v17 = &type metadata for CryptexErrorMessage.CodingKeys;
    LOBYTE(v16[0]) = 4;
    OS_xpc_object.encode(_:forKey:)(&v19, v16);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_0(v16);
    return __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  return result;
}

unint64_t specialized CryptexErrorMessage.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CryptexErrorMessage.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for CryptexErrorMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptexErrorMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.inode()()
{
  v8 = *MEMORY[0x277D85DE8];
  memset(&v7, 0, sizeof(v7));
  FilePath.string.getter();
  v0 = String.utf8CString.getter();

  v1 = stat((v0 + 32), &v7);

  if (v1)
  {
    v3 = MEMORY[0x22AA74A20](v2);
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_allocError();
    *v4 = v3;
    result = swift_willThrow();
  }

  else
  {
    result = v7.st_ino;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

char *FilePath.directoryContents()()
{
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for FilePath.Component();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CryptexError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = FilePath.directoryExists()();
  if (v13)
  {
    goto LABEL_13;
  }

  if (!v12)
  {
    swift_storeEnumTagMultiPayload();
    v0 = "pcDictCodable.swift";
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v11, 0x6964206120746F4ELL, 0xEF79726F74636572, 0xD000000000000023, 0x80000002261176B0, 0xD000000000000013, 0x80000002261176E0, 17, v27);
    outlined destroy of CryptexError(v11);
LABEL_12:
    swift_willThrow();
    goto LABEL_13;
  }

  v30[1] = 0;
  v14 = [objc_opt_self() defaultManager];
  v15 = FilePath.string.getter();
  v16 = MEMORY[0x22AA74BE0](v15);

  v31[0] = 0;
  v17 = [v14 contentsOfDirectoryAtPath:v16 error:v31];

  v18 = v31[0];
  if (!v17)
  {
    v0 = v31[0];
    _convertNSErrorToError(_:)();

    goto LABEL_12;
  }

  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v18;

  v21 = *(v19 + 16);
  if (v21)
  {
    v31[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
    v0 = v31[0];
    v30[0] = v19;
    v22 = (v19 + 40);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;

      FilePath.Component.init(stringLiteral:)();
      v31[0] = v0;
      v26 = *(v0 + 2);
      v25 = *(v0 + 3);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1);
        v0 = v31[0];
      }

      *(v0 + 2) = v26 + 1;
      (*(v2 + 32))(&v0[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v26], v6, v1);
      v22 += 2;
      --v21;
    }

    while (v21);
  }

  else
  {

    v0 = MEMORY[0x277D84F90];
  }

LABEL_13:
  v28 = *MEMORY[0x277D85DE8];
  return v0;
}

char *specialized FilePath._recurseDirectory(relpath:_:)(uint64_t a1, uint64_t a2, void **a3)
{
  v111 = a1;
  v112 = a3;
  v113 = type metadata accessor for FilePath();
  v4 = *(v113 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v113, v6);
  v99 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v98 = &v96 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v102 = &v96 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v101 = &v96 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v100 = &v96 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v96 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v96 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v96 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v96 - v34;
  v36 = type metadata accessor for FilePath.Component();
  v109 = *(v36 - 8);
  v37 = *(v109 + 64);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = &v96 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v96 - v43;
  v45 = v124;
  result = FilePath.directoryContents()();
  v124 = v45;
  if (!v45)
  {
    v117 = v41;
    v119 = v32;
    v107 = v24;
    v108 = v35;
    v106 = v28;
    v110 = v44;
    v125 = v36;
    v103 = *(result + 2);
    if (!v103)
    {
    }

    v47 = 0;
    v48 = v109;
    v121 = (v4 + 16);
    v122 = v109 + 16;
    v116 = (v4 + 8);
    v105 = (v109 + 8);
    v96 = v4 + 32;
    v115 = a2;
    v49 = v110;
    v50 = v108;
    v51 = v119;
    v97 = v4;
    v104 = result;
    while (1)
    {
      if (v47 >= *(result + 2))
      {
        __break(1u);
        return result;
      }

      v54 = &result[(*(v48 + 80) + 32) & ~*(v48 + 80)];
      v55 = *(v48 + 72);
      v114 = v47;
      v56 = v51;
      v57 = *(v48 + 16);
      v58 = v125;
      v57(v49, &v54[v55 * v47], v125);
      v59 = v113;
      v123 = *v121;
      v123(v56, a2, v113);
      v120 = v57;
      v57(v117, v49, v58);
      FilePath.appending(_:)();
      v60 = FilePath.directoryExists()();
      if (v61)
      {
        v124 = v61;

        (*v116)(v50, v59);
        return (*v105)(v49, v125);
      }

      v62 = v60;
      v118 = *v116;
      v118(v50, v59);
      if (v62)
      {
        v63 = v119;
        v64 = v123;
        v123(v119, v111, v59);
        v65 = v117;
        v120(v117, v49, v125);
        v66 = v106;
        v67 = v65;
        FilePath.appending(_:)();
        v64(v107, v66, v59);
        v68 = v112;
        v69 = *v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v68 = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69[2] + 1, 1, v69);
          *v68 = v69;
        }

        v72 = v69[2];
        v71 = v69[3];
        v124 = 0;
        if (v72 >= v71 >> 1)
        {
          v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v71 > 1, v72 + 1, 1, v69);
          *v112 = v69;
        }

        v69[2] = v72 + 1;
        (*(v97 + 32))(v69 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v72, v107, v59);
        v118(v106, v59);
        v123(v63, v115, v59);
        v73 = v67;
        v74 = v67;
        v75 = v110;
        v76 = v125;
        v77 = v120;
        v120(v74, v110, v125);
        v52 = v59;
        v78 = v100;
        FilePath.appending(_:)();
        v123(v119, v111, v52);
        v51 = v119;
        v77(v73, v75, v76);
        v79 = v101;
        FilePath.appending(_:)();
        v80 = v124;
        specialized FilePath._recurseDirectory(relpath:_:)(v79, v78, v112);
        v124 = v80;
        if (v80)
        {

          v95 = v118;
          v118(v79, v52);
          v95(v78, v52);
          v49 = v110;
          return (*v105)(v49, v125);
        }

        v81 = v118;
        v118(v79, v52);
        v53 = v78;
        v82 = v114;
      }

      else
      {
        v51 = v119;
        v123(v119, v115, v59);
        v120(v117, v49, v125);
        v83 = v102;
        FilePath.appending(_:)();
        v84 = FilePath.fileExists()();
        v124 = v85;
        if (v85)
        {

          v118(v83, v59);
          return (*v105)(v49, v125);
        }

        v86 = v84;
        v118(v83, v59);
        if (!v86)
        {
          v50 = v108;
          v82 = v114;
          a2 = v115;
          goto LABEL_6;
        }

        v87 = v123;
        v123(v51, v111, v59);
        v120(v117, v49, v125);
        v88 = v98;
        FilePath.appending(_:)();
        v87(v99, v88, v59);
        v89 = v112;
        v90 = *v112;
        v91 = swift_isUniquelyReferenced_nonNull_native();
        *v89 = v90;
        if ((v91 & 1) == 0)
        {
          v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90[2] + 1, 1, v90);
          *v89 = v90;
        }

        v92 = v97;
        v94 = v90[2];
        v93 = v90[3];
        v82 = v114;
        v81 = v118;
        if (v94 >= v93 >> 1)
        {
          v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v93 > 1, v94 + 1, 1, v90);
          *v112 = v90;
        }

        v90[2] = v94 + 1;
        v52 = v113;
        (*(v92 + 32))(v90 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v94, v99, v113);
        v53 = v98;
      }

      a2 = v115;
      v81(v53, v52);
      v49 = v110;
      v50 = v108;
LABEL_6:
      v47 = v82 + 1;
      (*v105)(v49, v125);
      v48 = v109;
      result = v104;
      if (v103 == v47)
      {
      }
    }
  }

  return result;
}

char *FilePath._recurseDirectory(relpath:_:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v96 = a2;
  v97 = a3;
  v93 = a1;
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  v104 = v5;
  v105 = v6;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v85 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v87 = &v83 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v86 = &v83 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v83 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v83 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v83 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v83 - v30;
  v32 = type metadata accessor for FilePath.Component();
  v95 = *(v32 - 8);
  v33 = *(v95 + 64);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v37 = &v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v83 - v39;
  result = FilePath.directoryContents()();
  if (!v4)
  {
    v108 = 0;
    v102 = v37;
    v94 = v28;
    v92 = v31;
    v84 = v24;
    v91 = v20;
    v98 = v3;
    v99 = v40;
    v88 = *(result + 2);
    if (!v88)
    {
    }

    v42 = 0;
    v44 = v94;
    v43 = v95;
    v101 = v95 + 16;
    v106 = v32;
    v107 = (v105 + 2);
    v89 = result;
    v90 = (v95 + 8);
    v45 = v98;
    v46 = v99;
    ++v105;
    while (1)
    {
      if (v42 >= *(result + 2))
      {
        __break(1u);
        return result;
      }

      v48 = &result[(*(v43 + 80) + 32) & ~*(v43 + 80)];
      v49 = *(v43 + 72);
      v100 = v42;
      v50 = *(v43 + 16);
      v50(v46, &v48[v49 * v42], v32);
      v51 = v44;
      v52 = v104;
      v53 = *v107;
      (*v107)(v51, v45, v104);
      v50(v102, v46, v32);
      v54 = v92;
      FilePath.appending(_:)();
      v55 = FilePath.directoryExists()();
      v108 = v56;
      if (v56)
      {

        (*v105)(v54, v52);
LABEL_24:
        v46 = v99;
        return (*v90)(v46, v32);
      }

      v57 = v55;
      v103 = *v105;
      v103(v54, v52);
      v58 = v52;
      if (v57)
      {
        break;
      }

      v44 = v94;
      v45 = v98;
      v53(v94, v98, v58);
      v46 = v99;
      v50(v102, v99, v106);
      v71 = v87;
      FilePath.appending(_:)();
      v72 = FilePath.fileExists()();
      v108 = v73;
      if (v73)
      {

        v78 = v71;
        v79 = v58;
        goto LABEL_21;
      }

      v74 = v72;
      v75 = v71;
      v69 = v103;
      v103(v75, v58);
      if (v74)
      {
        v53(v44, v93, v58);
        v50(v102, v46, v106);
        v76 = v85;
        FilePath.appending(_:)();
        v77 = v108;
        v96(v76);
        v47 = v100;
        v108 = v77;
        if (v77)
        {

          v69(v76, v58);
LABEL_22:
          v32 = v106;
          return (*v90)(v46, v32);
        }

        v70 = v76;
LABEL_16:
        v69(v70, v58);
        goto LABEL_5;
      }

      v47 = v100;
LABEL_5:
      v42 = v47 + 1;
      v32 = v106;
      (*v90)(v46, v106);
      result = v89;
      v43 = v95;
      if (v88 == v42)
      {
      }
    }

    v59 = v93;
    v44 = v94;
    v53(v94, v93, v58);
    v60 = v102;
    v46 = v99;
    v50(v102, v99, v106);
    v61 = v84;
    FilePath.appending(_:)();
    v62 = v108;
    v96(v61);
    v108 = v62;
    if (v62)
    {

      v78 = v61;
      v79 = v104;
LABEL_21:
      v103(v78, v79);
      goto LABEL_22;
    }

    v63 = v61;
    v64 = v104;
    v103(v63, v104);
    v53(v44, v98, v64);
    v50(v60, v46, v106);
    FilePath.appending(_:)();
    v53(v44, v59, v64);
    v50(v60, v46, v106);
    v65 = v86;
    FilePath.appending(_:)();
    v66 = v91;
    v67 = v108;
    FilePath._recurseDirectory(relpath:_:)(v65, v96, v97);
    v108 = v67;
    if (v67)
    {

      v80 = v65;
      v82 = v103;
      v81 = v104;
      v103(v80, v104);
      v82(v66, v81);
      v32 = v106;
      goto LABEL_24;
    }

    v68 = v65;
    v69 = v103;
    v58 = v104;
    v103(v68, v104);
    v70 = v66;
    v45 = v98;
    v46 = v99;
    v47 = v100;
    goto LABEL_16;
  }

  return result;
}

void *FilePath.recurseDirectory(bottomUp:relpath:_:)(char a1, uint64_t a2, void (*a3)(char *))
{
  v7 = type metadata accessor for FilePath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v21 - v15;
  v25 = MEMORY[0x277D84F90];
  MEMORY[0x22AA74AB0](46, 0xE100000000000000);
  specialized FilePath._recurseDirectory(relpath:_:)(v16, v3, &v25);
  if (v4)
  {
    (*(v8 + 8))(v16, v7);
  }

  v23 = *(v8 + 8);
  v24 = v8 + 8;
  result = v23(v16, v7);
  v18 = v25;
  if (a1)
  {
    result = specialized Sequence.reversed()(v25);
    v18 = result;
    v25 = result;
  }

  v19 = v18[2];
  if (!v19)
  {
  }

  v22 = a3;
  v20 = 0;
  while (v20 < v18[2])
  {
    (*(v8 + 16))(v13, v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v7);
    v22(v13);
    ++v20;
    result = v23(v13, v7);
    if (v19 == v20)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence.reversed()(size_t a1)
{
  v2 = type metadata accessor for FilePath();
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5, v8);
  v32 = v26 - v11;
  v12 = *(a1 + 16);
  if (v12 < 2)
  {
    return a1;
  }

  v13 = 0;
  v14 = v12 >> 1;
  v15 = v12 - 1;
  v27 = v12 >> 1;
  v28 = v10;
  v26[1] = v10 + 16;
  v29 = (v10 + 40);
  while (1)
  {
    if (v13 == v15)
    {
      goto LABEL_5;
    }

    v16 = *(a1 + 16);
    if (v13 >= v16)
    {
      break;
    }

    v17 = v7;
    v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = a1 + v31;
    v19 = *(v10 + 72);
    v20 = a1;
    v21 = *(v10 + 16);
    v30 = v19 * v13;
    result = v21(v32, v18 + v19 * v13, v2);
    if (v15 >= v16)
    {
      goto LABEL_14;
    }

    v22 = v19 * v15;
    v23 = v18 + v19 * v15;
    v7 = v17;
    v21(v17, v23, v2);
    a1 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
    }

    v24 = a1 + v31;
    v25 = *v29;
    result = (*v29)(a1 + v31 + v30, v7, v2);
    if (v15 >= *(a1 + 16))
    {
      goto LABEL_15;
    }

    result = v25(v24 + v22, v32, v2);
    v14 = v27;
    v10 = v28;
LABEL_5:
    ++v13;
    --v15;
    if (v14 == v13)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6System8FilePathVGMd, &_ss23_ContiguousArrayStorageCy6System8FilePathVGMR);
  v10 = *(type metadata accessor for FilePath() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for FilePath() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t String.init(cString:)()
{
  return MEMORY[0x2821FBE78]();
}

{
  return MEMORY[0x2821FBE80]();
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD990]();
}

{
  return MEMORY[0x2821FD9B0]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAC8]();
}

{
  return MEMORY[0x2821FDAE8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x2821FDE60]();
}

{
  return MEMORY[0x2821FDE68]();
}