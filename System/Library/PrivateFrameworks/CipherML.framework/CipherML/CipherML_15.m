uint64_t AspirePirPirPreprocessDbCommand.Keyword.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  result = closure #1 in AspirePirPirPreprocessDbCommand.Keyword.traverse<A>(visitor:)(v3);
  if (!v4)
  {
    closure #1 in AspirePirSerializedKeywordDbRow.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, v11, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    v13 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        closure #4 in AspirePirPirPreprocessDbCommand.Keyword.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else
      {
        closure #3 in AspirePirPirPreprocessDbCommand.Keyword.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    }

    v14 = v3 + *(type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspirePirPirPreprocessDbCommand.Keyword.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in AspirePirSerializedKeywordDbRow.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
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

uint64_t closure #3 in AspirePirPirPreprocessDbCommand.Keyword.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v13 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v12, type metadata accessor for AspirePirCuckooTableConfig);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirCuckooTableConfig and conformance AspirePirCuckooTableConfig, type metadata accessor for AspirePirCuckooTableConfig);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v12, type metadata accessor for AspirePirCuckooTableConfig);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  __break(1u);
  return result;
}

uint64_t closure #4 in AspirePirPirPreprocessDbCommand.Keyword.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v13 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AspirePirPIRShardingFunction(v8, v12, type metadata accessor for AspirePirBatchKeywordPirConfig);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirBatchKeywordPirConfig and conformance AspirePirBatchKeywordPirConfig, type metadata accessor for AspirePirBatchKeywordPirConfig);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v12, type metadata accessor for AspirePirBatchKeywordPirConfig);
  }

  result = _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AspirePirPirPreprocessDbCommand.Keyword@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + a1[5];
  result = UnknownStorage.init()();
  v7 = a1[7];
  v8 = (a2 + a1[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirPirPreprocessDbCommand.Keyword(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Keyword and conformance AspirePirPirPreprocessDbCommand.Keyword, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirPirPreprocessDbCommand.Keyword(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Keyword and conformance AspirePirPirPreprocessDbCommand.Keyword, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirPirPreprocessDbCommand.Keyword(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirPirPreprocessDbCommand.Keyword and conformance AspirePirPirPreprocessDbCommand.Keyword, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspirePirSymmetricPirClientConfig.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 2)
      {
        lazy protocol witness table accessor for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AspirePirSymmetricPirClientConfig.traverse<A>(visitor:)()
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
  if (!*(v0 + 16) || (v9 = *(v0 + 16), v10 = *(v0 + 24), lazy protocol witness table accessor for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v8 = v0 + *(type metadata accessor for AspirePirSymmetricPirClientConfig(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

Swift::Int AspirePirPirParameters.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance AspirePirSymmetricPirClientConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_225022910;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspirePirSymmetricPirClientConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSymmetricPirClientConfig and conformance AspirePirSymmetricPirClientConfig, type metadata accessor for AspirePirSymmetricPirClientConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspirePirSymmetricPirClientConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSymmetricPirClientConfig and conformance AspirePirSymmetricPirClientConfig, type metadata accessor for AspirePirSymmetricPirClientConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspirePirSymmetricPirClientConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type AspirePirSymmetricPirClientConfig and conformance AspirePirSymmetricPirClientConfig, type metadata accessor for AspirePirSymmetricPirClientConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

BOOL specialized static AspirePirPirPreprocessDbArgs.OneOf_Sharding.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(*a1, v3, 0);
      v8 = v5;
      v9 = v6;
      v10 = 0;
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(*a1, v3, 1);
      v8 = v5;
      v9 = v6;
      v10 = 1;
LABEL_7:
      outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v8, v9, v10);
      return v2 == v5;
    }

    goto LABEL_15;
  }

  if (v7 != 2)
  {
    v15 = *(a1 + 8);

LABEL_15:
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v5, v6, v7);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, v3, v4);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v5, v6, v7);
    return 0;
  }

  v12 = *a1;
  if (v2 == v5 && v3 == v6)
  {
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v12, v3, 2);
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, v3, 2);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, v3, 2);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, v3, 2);
    return 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v5, v6, 2);
    outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, v3, 2);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v2, v3, 2);
    outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(v5, v6, 2);
    return v14 & 1;
  }
}

uint64_t specialized static AspirePirSerializedKeywordDbRow.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) != 0 && (specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    v4 = type metadata accessor for AspirePirSerializedKeywordDbRow(0);
    v5 = *(v4 + 28);
    v6 = (a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v8[1];
    if (v7)
    {
      if (v9)
      {
        if (*v6 == *v8 && v7 == v9)
        {
          goto LABEL_10;
        }

        v11 = v4;
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v4 = v11;
        if (v12)
        {
          goto LABEL_10;
        }
      }
    }

    else if (!v9)
    {
LABEL_10:
      v13 = *(v4 + 24);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t specialized static AspirePirPIRShardingFunction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSg_AFtMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v24 - v15, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v16[v18], &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
LABEL_9:
      v22 = *(type metadata accessor for AspirePirPIRShardingFunction(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v12, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v12, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSg_AFtMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AspirePirPIRShardingFunction(&v16[v18], v8, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  v21 = specialized static AspirePirPIRShardingFunction.OneOf_Function.== infix(_:_:)(v12, v8);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v12, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0OSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AspirePirPIRShardingFunction.OneOf_Function.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for AspirePirPIRShardingFunctionDoubleMod(0);
  v4 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AspirePirPIRShardingFunctionSHA256(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0O_AEtMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0O_AEtMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v30 - v20;
  v23 = *(v22 + 56);
  outlined init with copy of AspireHeEncryptionParameters(a1, &v30 - v20, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  outlined init with copy of AspireHeEncryptionParameters(a2, &v21[v23], type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of AspireHeEncryptionParameters(v21, v17, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AspirePirPIRShardingFunction(&v21[v23], v10, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v17, type metadata accessor for AspirePirPIRShardingFunctionSHA256);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v21, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
      return v26 & 1;
    }

    v27 = type metadata accessor for AspirePirPIRShardingFunctionSHA256;
    v28 = v17;
    goto LABEL_9;
  }

  outlined init with copy of AspireHeEncryptionParameters(v21, v14, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = type metadata accessor for AspirePirPIRShardingFunctionDoubleMod;
    v28 = v14;
LABEL_9:
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v28, v27);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v21, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0O_AEtMd, &_s8CipherML28AspirePirPIRShardingFunctionV06OneOf_F0O_AEtMR);
LABEL_13:
    v26 = 0;
    return v26 & 1;
  }

  outlined init with take of AspirePirPIRShardingFunction(&v21[v23], v6, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  if (*v14 != *v6)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    goto LABEL_12;
  }

  v24 = *(v31 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  if ((v25 & 1) == 0)
  {
LABEL_12:
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v14, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v21, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
    goto LABEL_13;
  }

  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v14, type metadata accessor for AspirePirPIRShardingFunctionDoubleMod);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v21, type metadata accessor for AspirePirPIRShardingFunction.OneOf_Function);
  v26 = 1;
  return v26 & 1;
}

uint64_t outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined consume of AspirePirPirPreprocessDbArgs.OneOf_Sharding(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t specialized static AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigO_AGtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigO_AGtMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - v21;
  v24 = *(v23 + 56);
  outlined init with copy of AspireHeEncryptionParameters(a1, &v31 - v21, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  outlined init with copy of AspireHeEncryptionParameters(a2, &v22[v24], type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AspireHeEncryptionParameters(v22, v15, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AspirePirPIRShardingFunction(&v22[v24], v7, type metadata accessor for AspirePirBatchKeywordPirConfig);
      v25 = specialized static AspirePirBatchKeywordPirConfig.== infix(_:_:)(v15, v7);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v7, type metadata accessor for AspirePirBatchKeywordPirConfig);
      v26 = v15;
      v27 = type metadata accessor for AspirePirBatchKeywordPirConfig;
LABEL_9:
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v26, v27);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v22, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
      return v25 & 1;
    }

    v28 = type metadata accessor for AspirePirBatchKeywordPirConfig;
    v29 = v15;
  }

  else
  {
    outlined init with copy of AspireHeEncryptionParameters(v22, v18, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AspirePirPIRShardingFunction(&v22[v24], v11, type metadata accessor for AspirePirCuckooTableConfig);
      v25 = specialized static AspirePirCuckooTableConfig.== infix(_:_:)(v18, v11);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirCuckooTableConfig);
      v26 = v18;
      v27 = type metadata accessor for AspirePirCuckooTableConfig;
      goto LABEL_9;
    }

    v28 = type metadata accessor for AspirePirCuckooTableConfig;
    v29 = v18;
  }

  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v29, v28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigO_AGtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigO_AGtMR);
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static AspirePirPirPreprocessDbCommand.Keyword.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSg_AHtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSg_AHtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
  v18 = v17[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_25;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v22)
  {
    goto LABEL_25;
  }

  v24 = v17[7];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_25;
    }

    v29 = *v25 == *v27 && v26 == v28;
    if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v28)
  {
    goto LABEL_25;
  }

  v30 = *(v13 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v16, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v38 = v30;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v16[v30], &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v31 = *(v5 + 48);
  if (v31(v16, 1, v4) == 1)
  {
    if (v31(&v16[v38], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
LABEL_28:
      v36 = v17[5];
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v33 & 1;
    }

    goto LABEL_24;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v12, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v32 = v38;
  if (v31(&v16[v38], 1, v4) == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v12, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
LABEL_24:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSg_AHtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSg_AHtMR);
    goto LABEL_25;
  }

  outlined init with take of AspirePirPIRShardingFunction(&v16[v32], v8, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  v35 = specialized static AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config.== infix(_:_:)(v12, v8);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v12, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  if (v35)
  {
    goto LABEL_28;
  }

LABEL_25:
  v33 = 0;
  return v33 & 1;
}

uint64_t specialized static AspirePirPirPreprocessDbCommand.OneOf_Command.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for AspirePirPirPreprocessDbCommand.Index(0);
  v4 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0O_AEtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0O_AEtMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v30 - v20;
  v23 = *(v22 + 56);
  outlined init with copy of AspireHeEncryptionParameters(a1, &v30 - v20, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  outlined init with copy of AspireHeEncryptionParameters(a2, &v21[v23], type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of AspireHeEncryptionParameters(v21, v17, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AspirePirPIRShardingFunction(&v21[v23], v10, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
      v26 = specialized static AspirePirPirPreprocessDbCommand.Keyword.== infix(_:_:)(v17, v10);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v10, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v17, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v21, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
      return v26 & 1;
    }

    v27 = type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword;
    v28 = v17;
    goto LABEL_10;
  }

  outlined init with copy of AspireHeEncryptionParameters(v21, v14, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = type metadata accessor for AspirePirPirPreprocessDbCommand.Index;
    v28 = v14;
LABEL_10:
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v28, v27);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v21, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0O_AEtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0O_AEtMR);
LABEL_14:
    v26 = 0;
    return v26 & 1;
  }

  outlined init with take of AspirePirPIRShardingFunction(&v21[v23], v6, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  if (*v14 != *v6 || v14[1] != v6[1])
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    goto LABEL_13;
  }

  v24 = *(v31 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v6, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  if ((v25 & 1) == 0)
  {
LABEL_13:
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v14, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v21, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
    goto LABEL_14;
  }

  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v14, type metadata accessor for AspirePirPirPreprocessDbCommand.Index);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v21, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  v26 = 1;
  return v26 & 1;
}

uint64_t specialized static AspirePirPirPreprocessDbCommand.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSg_AFtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v24 - v15, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v16[v18], &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
LABEL_9:
      v22 = *(type metadata accessor for AspirePirPirPreprocessDbCommand(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v12, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v12, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSg_AFtMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AspirePirPIRShardingFunction(&v16[v18], v8, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  v21 = specialized static AspirePirPirPreprocessDbCommand.OneOf_Command.== infix(_:_:)(v12, v8);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v8, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v12, type metadata accessor for AspirePirPirPreprocessDbCommand.OneOf_Command);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV06OneOf_G0OSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AspirePirPirPreprocessDbArgs.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspirePirCuckooTableConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 41) != *(a2 + 41))
  {
    return 0;
  }

  v3 = *(type metadata accessor for AspirePirCuckooTableConfig(0) + 44);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspirePirBatchKeywordPirConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirCuckooTableConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSg_ADtMd, &_s8CipherML26AspirePirCuckooTableConfigVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v31 = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  v17 = v31[10];
  v18 = *(v13 + 56);
  v33 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v17, v16, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v17, &v16[v18], &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v11, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v32;
      outlined init with take of AspirePirPIRShardingFunction(&v16[v18], v32, type metadata accessor for AspirePirCuckooTableConfig);
      v22 = specialized static AspirePirCuckooTableConfig.== infix(_:_:)(v11, v21);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v21, type metadata accessor for AspirePirCuckooTableConfig);
      _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirCuckooTableConfig);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
      if ((v22 & 1) == 0)
      {
LABEL_15:
        v20 = 0;
        return v20 & 1;
      }

LABEL_8:
      if (*v33 != *a2 || *(v33 + 8) != *(a2 + 8) || *(v33 + 16) != *(a2 + 16) || *(v33 + 24) != *(a2 + 24) || *(v33 + 32) != *(a2 + 32))
      {
        goto LABEL_15;
      }

      v23 = v31[11];
      v24 = (v33 + v23);
      v25 = *(v33 + v23 + 8);
      v26 = (a2 + v23);
      v27 = *(a2 + v23 + 8);
      if (v25)
      {
        if (!v27)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (*v24 != *v26)
        {
          LOBYTE(v27) = 1;
        }

        if (v27)
        {
          goto LABEL_15;
        }
      }

      v29 = v31[9];
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v11, type metadata accessor for AspirePirCuckooTableConfig);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML26AspirePirCuckooTableConfigVSg_ADtMd, &_s8CipherML26AspirePirCuckooTableConfigVSg_ADtMR);
  v20 = 0;
  return v20 & 1;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static AspirePirSymmetricPirClientConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (*(a1 + 24))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 24) == 1)
  {
    if (v5)
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

  v7 = *(type metadata accessor for AspirePirSymmetricPirClientConfig(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspirePirKeywordPirParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirPIRShardingFunction(0);
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v54 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSg_ADtMd, &_s8CipherML28AspirePirPIRShardingFunctionVSg_ADtMR);
  v11 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v13 = &v54 - v12;
  v14 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSg_ADtMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v54 - v25;
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_21;
  }

  v57 = v13;
  v54 = v7;
  v27 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v28 = *(v27 + 28);
  v29 = *(v23 + 48);
  v55 = v27;
  v56 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v28, v26, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v30 = a2 + v28;
  v31 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v30, &v26[v29], &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  v32 = *(v15 + 48);
  if (v32(v26, 1, v14) == 1)
  {
    if (v32(&v26[v29], 1, v14) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
      v33 = v57;
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v26, v22, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  if (v32(&v26[v29], 1, v14) == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v22, type metadata accessor for AspirePirSymmetricPirClientConfig);
LABEL_11:
    v39 = &_s8CipherML018AspirePirSymmetricD12ClientConfigVSg_ADtMd;
    v40 = &_s8CipherML018AspirePirSymmetricD12ClientConfigVSg_ADtMR;
LABEL_19:
    v44 = v26;
LABEL_20:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v44, v39, v40);
    goto LABEL_21;
  }

  outlined init with take of AspirePirPIRShardingFunction(&v26[v29], v18, type metadata accessor for AspirePirSymmetricPirClientConfig);
  v41 = specialized static Data.== infix(_:_:)(*v22, *(v22 + 1), *v18, *(v18 + 1));
  v33 = v57;
  if ((v41 & 1) == 0)
  {
LABEL_18:
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v18, type metadata accessor for AspirePirSymmetricPirClientConfig);
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v22, type metadata accessor for AspirePirSymmetricPirClientConfig);
    v39 = &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd;
    v40 = &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR;
    goto LABEL_19;
  }

  v42 = *(v22 + 2);
  v43 = *(v18 + 2);
  if (v22[24])
  {
    v42 = v42 != 0;
  }

  if (v18[24] == 1)
  {
    if (v43)
    {
      if (v42 != 1)
      {
        goto LABEL_18;
      }
    }

    else if (v42)
    {
      goto LABEL_18;
    }
  }

  else if (v42 != v43)
  {
    goto LABEL_18;
  }

  v52 = *(v14 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v18, type metadata accessor for AspirePirSymmetricPirClientConfig);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v22, type metadata accessor for AspirePirSymmetricPirClientConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  if ((v53 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v34 = v55;
  v35 = *(v55 + 32);
  v36 = *(v59 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v56 + v35, v33, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v31 + v35, v33 + v36, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v37 = v61;
  v38 = *(v60 + 48);
  if (v38(v33, 1, v61) == 1)
  {
    if (v38(v33 + v36, 1, v37) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
LABEL_27:
      v51 = *(v34 + 24);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v45 & 1;
    }

    goto LABEL_25;
  }

  v47 = v58;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v33, v58, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  if (v38(v33 + v36, 1, v37) == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v47, type metadata accessor for AspirePirPIRShardingFunction);
LABEL_25:
    v39 = &_s8CipherML28AspirePirPIRShardingFunctionVSg_ADtMd;
    v40 = &_s8CipherML28AspirePirPIRShardingFunctionVSg_ADtMR;
    v44 = v33;
    goto LABEL_20;
  }

  v48 = v33 + v36;
  v49 = v54;
  outlined init with take of AspirePirPIRShardingFunction(v48, v54, type metadata accessor for AspirePirPIRShardingFunction);
  v50 = specialized static AspirePirPIRShardingFunction.== infix(_:_:)(v47, v49);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v49, type metadata accessor for AspirePirPIRShardingFunction);
  _s8CipherML28AspireHeEncryptionParametersVWOhTm_2(v47, type metadata accessor for AspirePirPIRShardingFunction);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, &_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  if (v50)
  {
    goto LABEL_27;
  }

LABEL_21:
  v45 = 0;
  return v45 & 1;
}

uint64_t specialized static AspirePirBatchPirParameters.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[2], a2[2]) & 1) == 0 || a1[3] != a2[3])
  {
    return 0;
  }

  v4 = *(type metadata accessor for AspirePirBatchPirParameters(0) + 32);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_1(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType()
{
  result = lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType;
  if (!lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType;
  if (!lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType;
  if (!lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType;
  if (!lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirSymmetricPirConfigType and conformance AspirePirSymmetricPirConfigType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy()
{
  result = lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy;
  if (!lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy;
  if (!lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy;
  if (!lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy;
  if (!lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirKeyCompressionStrategy and conformance AspirePirKeyCompressionStrategy);
  }

  return result;
}

uint64_t keypath_get_29Tm@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t type metadata completion function for AspirePirCuckooTableConfig()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AspirePirBatchKeywordPirConfig()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspirePirCuckooTableConfig?, type metadata accessor for AspirePirCuckooTableConfig, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspirePirBatchPirParameters()
{
  type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for AspirePirKeywordPirParameters()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspirePirSymmetricPirClientConfig?, type metadata accessor for AspirePirSymmetricPirClientConfig, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspirePirPIRShardingFunction?, type metadata accessor for AspirePirPIRShardingFunction, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for AspirePirCuckooTableConfig?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for AspirePirPIRShardingFunctionDoubleMod()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AspirePirEncryptedIndices()
{
  type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for [AspireHeSerializedCiphertext], type metadata accessor for AspireHeSerializedCiphertext, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for AspirePirSerializedKeywordDbRow()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for UInt64?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for AspirePirPirParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for AspirePirPIRShardingFunction(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for AspirePirCuckooTableConfig?(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AspirePirPIRShardingFunction.OneOf_Function(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
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

uint64_t type metadata completion function for AspirePirPirPreprocessDbCommand.Index()
{
  return type metadata completion function for AspirePirPirPreprocessDbCommand.Index();
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

void type metadata completion function for AspirePirPirPreprocessDbCommand.Keyword()
{
  type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config?, type metadata accessor for AspirePirPirPreprocessDbCommand.Keyword.OneOf_Config, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt64?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspirePirPirParameters._StorageClass()
{
  type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspireHeEncryptionParameters?, type metadata accessor for AspireHeEncryptionParameters, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspirePirKeywordPirParameters?, type metadata accessor for AspirePirKeywordPirParameters, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspireHeEvaluationKeyConfig?, type metadata accessor for AspireHeEvaluationKeyConfig, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspirePirBatchPirParameters?, type metadata accessor for AspirePirBatchPirParameters, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata completion function for AspirePirPirPreprocessDbArgs._StorageClass()
{
  type metadata accessor for AspirePirCuckooTableConfig?(319, &lazy cache variable for type metadata for AspirePirPirPreprocessDbCommand?, type metadata accessor for AspirePirPirPreprocessDbCommand, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme()
{
  result = lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme;
  if (!lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme;
  if (!lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme;
  if (!lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme;
  if (!lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeHeScheme and conformance AspireHeHeScheme);
  }

  return result;
}

id CMLXPCServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t CMLXPCServer.init()()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for RequestsManager();
  swift_allocObject();
  v1 = RequestsManager.init(cache:keyStorage:activeUseCaseTracker:allowList:currentTime:)(0, 0, 0, 0, 0, closure #1 in default argument 4 of RequestsManager.init(cache:keyStorage:activeUseCaseTracker:allowList:currentTime:), 0);
  v2 = (*(ObjectType + 112))(v1);
  swift_deallocPartialClassInstance();
  return v2;
}

id CMLXPCServer.__allocating_init(requestsManager:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized CMLXPCServer.init(requestsManager:)(a1);

  return v4;
}

id CMLXPCServer.init(requestsManager:)(void *a1)
{
  v1 = specialized CMLXPCServer.init(requestsManager:)(a1);

  return v1;
}

Swift::Void __swiftcall CMLXPCServer.start()()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v2 = MEMORY[0x22AA609C0](0xD000000000000013, 0x8000000225035D00);
  v7 = [v1 initWithMachServiceName_];

  [v7 setDelegate_];
  [v7 resume];
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.framework);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_224E26000, v4, v5, "XPC Server has started", v6, 2u);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }
}

Swift::Void __swiftcall CMLXPCServer.registerScheduledTasks()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8CipherML12CMLXPCServer_cacheCleaner);
  specialized ScheduledActivity.register()();
  v3 = *(v1 + OBJC_IVAR____TtC8CipherML12CMLXPCServer_rotationTask);
  specialized ScheduledActivity.register()();
  v4 = *(v1 + OBJC_IVAR____TtC8CipherML12CMLXPCServer_tokenFetcherTask);
  specialized ScheduledActivity.register()();
}

void specialized ScheduledActivity.register()()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  v3 = [v2 sharedScheduler];
  v4 = MEMORY[0x22AA609C0](0xD00000000000001FLL, 0x8000000225038290);
  v5 = swift_allocObject();
  v5[2] = 0xD00000000000001FLL;
  v5[3] = 0x8000000225038290;
  v5[4] = &async function pointer to partial apply for specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register();
  v5[5] = v1;
  v7[4] = closure #1 in ScheduledActivity.registerTask(identifier:handler:)partial apply;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v7[3] = &block_descriptor_24_0;
  v6 = _Block_copy(v7);

  [v3 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v6];
  _Block_release(v6);
}

{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  v3 = [v2 sharedScheduler];
  v4 = MEMORY[0x22AA609C0](0xD00000000000001FLL, 0x80000002250382B0);
  v5 = swift_allocObject();
  v5[2] = 0xD00000000000001FLL;
  v5[3] = 0x80000002250382B0;
  v5[4] = &async function pointer to partial apply for specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register();
  v5[5] = v1;
  v7[4] = closure #1 in ScheduledActivity.registerTask(identifier:handler:)partial apply;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v7[3] = &block_descriptor_14_0;
  v6 = _Block_copy(v7);

  [v3 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v6];
  _Block_release(v6);
}

{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  v3 = [v2 sharedScheduler];
  v4 = MEMORY[0x22AA609C0](0xD000000000000023, 0x8000000225037D00);
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000023;
  v5[3] = 0x8000000225037D00;
  v5[4] = &async function pointer to partial apply for specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register();
  v5[5] = v1;
  v7[4] = partial apply for closure #1 in ScheduledActivity.registerTask(identifier:handler:);
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v7[3] = &block_descriptor_4;
  v6 = _Block_copy(v7);

  [v3 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v6];
  _Block_release(v6);
}

id CMLXPCServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CMLXPCServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(static TokenCache.shared + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
  os_unfair_lock_lock((v1 + 24));
  partial apply for closure #1 in TokenCache.pruneCache()((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  TokenCache.save()();
  if (v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[3] = v5;
    *v5 = v0;
    v5[1] = specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register();
    v6 = v0[2];

    return CacheCleaner.cleanPirCaches()();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v2 + 32) = v7;
    *v7 = v4;
    v7[1] = specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register();
    v8 = *(v2 + 16);

    return CacheCleaner.cleanConfigCache()();
  }
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register()(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return TokenFetcherTask.run()();
}

{
  v2 = *a1;
  *(v1 + 40) = *a1;
  return MEMORY[0x2822009F8](RotationTask.run(), v2, 0);
}

{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register()(v2);
}

id specialized CMLXPCServer.init(requestsManager:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8CipherML12CMLXPCServer_requestsManager] = a1;
  v3 = a1[5];
  v2 = a1[6];
  v4 = a1[2];
  v6 = a1[7];
  v5 = a1[8];
  type metadata accessor for CacheCleaner();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v6;
  v7[6] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17ScheduledActivityCyAA12CacheCleanerCGMd, &_s8CipherML17ScheduledActivityCyAA12CacheCleanerCGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *&v1[OBJC_IVAR____TtC8CipherML12CMLXPCServer_cacheCleaner] = v8;
  type metadata accessor for RotationTask();
  v9 = swift_allocObject();

  swift_defaultActor_initialize();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17ScheduledActivityCyAA12RotationTaskCGMd, &_s8CipherML17ScheduledActivityCyAA12RotationTaskCGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *&v1[OBJC_IVAR____TtC8CipherML12CMLXPCServer_rotationTask] = v10;
  type metadata accessor for TokenFetcherTask();
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v6;
  v11[4] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17ScheduledActivityCyAA16TokenFetcherTaskCGMd, &_s8CipherML17ScheduledActivityCyAA16TokenFetcherTaskCGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *&v1[OBJC_IVAR____TtC8CipherML12CMLXPCServer_tokenFetcherTask] = v12;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for CMLXPCServer();

  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t specialized CMLXPCServer.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v3 = MEMORY[0x22AA609C0](0xD000000000000021, 0x8000000225038260);
  v4 = [a1 valueForEntitlement_];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v14 == 1)
    {
      v5 = [objc_opt_self() interfaceDescription];
      [a1 setExportedInterface_];

      v6 = *(v1 + OBJC_IVAR____TtC8CipherML12CMLXPCServer_requestsManager);
      type metadata accessor for XPCHandler();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = a1;

      v8 = a1;
      [v8 setExportedObject_];

      [v8 resume];
      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(v17);
  }

  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.framework);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_224E26000, v11, v12, "Client does not have specified entitlement", v13, 2u);
    MEMORY[0x22AA61F40](v13, -1, -1);
  }

  return 0;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register();

  return specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register()((v1 + 16));
}

{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register();

  return specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register()((v1 + 16));
}

{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = TokenFetcher.backgroundTokenFetch();

  return specialized implicit closure #2 in implicit closure #1 in ScheduledActivity.register()((v1 + 16));
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t AspireHeEvaluationKeyConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  v2 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v3 = a1 + *(v2 + 24);
  UnknownStorage.init()();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for AspireHeEncryptionParameters(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t AspireHeEncryptionParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  v1 = a1 + *(type metadata accessor for AspireHeEncryptionParameters(0) + 40);
  return UnknownStorage.init()();
}

uint64_t AspireHeSerializedEvaluationKey.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t AspireHeEvaluationKeyConfig.encryptionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  v6 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 28), v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v7 = type metadata accessor for AspireHeEncryptionParameters(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, a1, type metadata accessor for AspireHeEncryptionParameters);
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
  v9 = a1 + *(v7 + 40);
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  return result;
}

uint64_t AspireHeSerializedKeySwitchKey.keySwitchKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireHeSerializedKeySwitchKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(a1, v1 + v3, type metadata accessor for AspireHeSerializedCiphertextVec);
  v4 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireHeSerializedRelinKey.relinKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AspireHeSerializedRelinKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 20), v6, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  v8 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, a1, type metadata accessor for AspireHeSerializedKeySwitchKey);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  }

  return result;
}

uint64_t AspireHeSerializedRelinKey.relinKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireHeSerializedRelinKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(a1, v1 + v3, type metadata accessor for AspireHeSerializedKeySwitchKey);
  v4 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireHeSerializedEvaluationKey.galoisKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(a1, v1 + v3, type metadata accessor for AspireHeSerializedGaloisKey);
  v4 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AspireHeSerializedEvaluationKey.relinKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(a1, v1 + v3, type metadata accessor for AspireHeSerializedRelinKey);
  v4 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

unint64_t AspireHeSecurityLevel.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t AspireHeSecurityLevel.rawValue.getter()
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

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSecurityLevel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t AspireHeErrorStdDev.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t AspireHeErrorStdDev.rawValue.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance AspireHeErrorStdDev@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance AspireHeErrorStdDev()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance AspireHeErrorStdDev@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AspireHeErrorStdDev(void *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeErrorStdDev(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AspireHeErrorStdDev(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a1;
  }

  if (*(a2 + 8))
  {
    v2 = 0;
  }

  return v3 == v2;
}

unint64_t AspireHeHeScheme.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeHeScheme(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t AspireHeSerializedDcrtPlaintext.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspireHeSerializedDcrtPlaintext.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspireHeSerializedCiphertextVec.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for AspireHeSerializedCiphertextVec(0) + 20);
  return UnknownStorage.init()();
}

uint64_t AspireHeSerializedCiphertext.seeded.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v10 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v10 - v5, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v7 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
LABEL_5:
    *a1 = xmmword_225022910;
    a1[1] = xmmword_225022910;
    v8 = a1 + *(type metadata accessor for AspireHeSerializedSeededCiphertext(0) + 24);
    return UnknownStorage.init()();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v6, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    goto LABEL_5;
  }

  return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, a1, type metadata accessor for AspireHeSerializedSeededCiphertext);
}

uint64_t AspireHeSerializedSeededCiphertext.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_225022910;
  a1[1] = xmmword_225022910;
  v1 = a1 + *(type metadata accessor for AspireHeSerializedSeededCiphertext(0) + 24);
  return UnknownStorage.init()();
}

void (*AspireHeSerializedCiphertext.seeded.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v13 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v12, type metadata accessor for AspireHeSerializedSeededCiphertext);
      return AspireHeSerializedCiphertext.seeded.modify;
    }

    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v8, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  }

  *v12 = xmmword_225022910;
  v12[1] = xmmword_225022910;
  v15 = v12 + *(v9 + 24);
  UnknownStorage.init()();
  return AspireHeSerializedCiphertext.seeded.modify;
}

uint64_t AspireHeSerializedCiphertext.full.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v10 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v10 - v5, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v7 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, a1, type metadata accessor for AspireHeSerializedFullCiphertext);
    }

    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v6, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  }

  *a1 = xmmword_225022910;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  v9 = a1 + *(type metadata accessor for AspireHeSerializedFullCiphertext(0) + 28);
  return UnknownStorage.init()();
}

uint64_t key path setter for AspireHeSerializedCiphertext.seeded : AspireHeSerializedCiphertext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v16 - v12;
  outlined init with copy of AspireHeSerializedSeededCiphertext(a1, &v16 - v12, a6);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v13, a2, a7);
  v14 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t AspireHeSerializedCiphertext.seeded.setter(uint64_t a1, uint64_t (*a2)(void))
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(a1, v2, a2);
  v5 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

uint64_t AspireHeSerializedFullCiphertext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_225022910;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  v1 = a1 + *(type metadata accessor for AspireHeSerializedFullCiphertext(0) + 28);
  return UnknownStorage.init()();
}

void (*AspireHeSerializedCiphertext.full.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v8, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v13 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
LABEL_15:
    *v12 = xmmword_225022910;
    *(v12 + 16) = MEMORY[0x277D84F90];
    *(v12 + 24) = 0;
    v15 = v12 + *(v9 + 28);
    UnknownStorage.init()();
    return AspireHeSerializedCiphertext.full.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v8, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    goto LABEL_15;
  }

  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v12, type metadata accessor for AspireHeSerializedFullCiphertext);
  return AspireHeSerializedCiphertext.full.modify;
}

void AspireHeSerializedCiphertext.seeded.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
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
    outlined init with copy of AspireHeSerializedSeededCiphertext((*a1)[3], v10, a5);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v11, a6);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t static AspireHeSerializedSeededCiphertext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for AspireHeSerializedSeededCiphertext(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireHeSerializedCiphertext.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for AspireHeSerializedCiphertext(0) + 20);
  return UnknownStorage.init()();
}

uint64_t AspireHeSerializedSeededCiphertext.seed.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t AspireHeSerializedSeededCiphertext.seed.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AspireHeSerializedFullCiphertext.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AspireHeSerializedFullCiphertext(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspireHeSerializedFullCiphertext.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireHeSerializedFullCiphertext(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AspireHeSerializedKeySwitchKey.keySwitchKey.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 20), v6, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  v8 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, a1, type metadata accessor for AspireHeSerializedCiphertextVec);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(v8 + 20);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireHeSerializedKeySwitchKey.keySwitchKey : AspireHeSerializedKeySwitchKey@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 20), v7, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  v9 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, a2, type metadata accessor for AspireHeSerializedCiphertextVec);
  }

  *a2 = MEMORY[0x277D84F90];
  v11 = a2 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireHeSerializedKeySwitchKey.keySwitchKey : AspireHeSerializedKeySwitchKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeSerializedSeededCiphertext(a1, v8, type metadata accessor for AspireHeSerializedCiphertextVec);
  v9 = *(type metadata accessor for AspireHeSerializedKeySwitchKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, a2 + v9, type metadata accessor for AspireHeSerializedCiphertextVec);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*AspireHeSerializedKeySwitchKey.keySwitchKey.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
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
  v15 = *(type metadata accessor for AspireHeSerializedKeySwitchKey(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v17 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
    }
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v14, type metadata accessor for AspireHeSerializedCiphertextVec);
  }

  return AspireHeSerializedKeySwitchKey.keySwitchKey.modify;
}

void AspireHeSerializedKeySwitchKey.keySwitchKey.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeSerializedSeededCiphertext((*a1)[5], v4, type metadata accessor for AspireHeSerializedCiphertextVec);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v4, v9 + v3, type metadata accessor for AspireHeSerializedCiphertextVec);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v5, type metadata accessor for AspireHeSerializedCiphertextVec);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, v9 + v3, type metadata accessor for AspireHeSerializedCiphertextVec);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AspireHeSerializedGaloisKey.init()@<X0>(unint64_t *a1@<X8>)
{
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_8CipherML027AspireHeSerializedKeySwitchI0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = a1 + *(type metadata accessor for AspireHeSerializedGaloisKey(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for AspireHeSerializedRelinKey.relinKey : AspireHeSerializedRelinKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AspireHeSerializedRelinKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 20), v7, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  v9 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, a2, type metadata accessor for AspireHeSerializedKeySwitchKey);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  }

  return result;
}

uint64_t key path setter for AspireHeSerializedRelinKey.relinKey : AspireHeSerializedRelinKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeSerializedSeededCiphertext(a1, v8, type metadata accessor for AspireHeSerializedKeySwitchKey);
  v9 = *(type metadata accessor for AspireHeSerializedRelinKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, a2 + v9, type metadata accessor for AspireHeSerializedKeySwitchKey);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*AspireHeSerializedRelinKey.relinKey.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
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
  v15 = *(type metadata accessor for AspireHeSerializedRelinKey(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
    }
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v14, type metadata accessor for AspireHeSerializedKeySwitchKey);
  }

  return AspireHeSerializedRelinKey.relinKey.modify;
}

void AspireHeSerializedRelinKey.relinKey.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeSerializedSeededCiphertext((*a1)[5], v4, type metadata accessor for AspireHeSerializedKeySwitchKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v4, v9 + v3, type metadata accessor for AspireHeSerializedKeySwitchKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v5, type metadata accessor for AspireHeSerializedKeySwitchKey);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, v9 + v3, type metadata accessor for AspireHeSerializedKeySwitchKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspireHeSerializedKeySwitchKey.hasKeySwitchKey.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + *(v14 + 20), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, a1, a2);
  return v16;
}

uint64_t AspireHeSerializedKeySwitchKey.clearKeySwitchKey()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AspireHeSerializedKeySwitchKey.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t AspireHeSerializedSecretKey.polys.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t AspireHeSerializedSecretKey.polys.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t AspireHeSerializedDcrtPlaintext.init()@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_225022910;
  v2 = a2 + *(a1(0) + 20);
  return UnknownStorage.init()();
}

uint64_t AspireHeSerializedEvaluationKey.galoisKey.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 20), v6, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v8 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, a1, type metadata accessor for AspireHeSerializedGaloisKey);
  }

  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_8CipherML027AspireHeSerializedKeySwitchI0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = a1 + *(v8 + 20);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireHeSerializedEvaluationKey.galoisKey : AspireHeSerializedEvaluationKey@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 20), v7, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v9 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, a2, type metadata accessor for AspireHeSerializedGaloisKey);
  }

  *a2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_8CipherML027AspireHeSerializedKeySwitchI0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v11 = a2 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireHeSerializedEvaluationKey.galoisKey : AspireHeSerializedEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeSerializedSeededCiphertext(a1, v8, type metadata accessor for AspireHeSerializedGaloisKey);
  v9 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, a2 + v9, type metadata accessor for AspireHeSerializedGaloisKey);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*AspireHeSerializedEvaluationKey.galoisKey.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeSerializedGaloisKey(0);
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
  v15 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_8CipherML027AspireHeSerializedKeySwitchI0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v17 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
    }
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v14, type metadata accessor for AspireHeSerializedGaloisKey);
  }

  return AspireHeSerializedEvaluationKey.galoisKey.modify;
}

void AspireHeSerializedEvaluationKey.galoisKey.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeSerializedSeededCiphertext((*a1)[5], v4, type metadata accessor for AspireHeSerializedGaloisKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v4, v9 + v3, type metadata accessor for AspireHeSerializedGaloisKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v5, type metadata accessor for AspireHeSerializedGaloisKey);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, v9 + v3, type metadata accessor for AspireHeSerializedGaloisKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AspireHeSerializedEvaluationKey.relinKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 24), v6, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v8 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v6, a1, type metadata accessor for AspireHeSerializedRelinKey);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  }

  return result;
}

uint64_t key path getter for AspireHeSerializedEvaluationKey.relinKey : AspireHeSerializedEvaluationKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v8 + 24), v7, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v9 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v7, a2, type metadata accessor for AspireHeSerializedRelinKey);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  }

  return result;
}

uint64_t key path setter for AspireHeSerializedEvaluationKey.relinKey : AspireHeSerializedEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeSerializedSeededCiphertext(a1, v8, type metadata accessor for AspireHeSerializedRelinKey);
  v9 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, a2 + v9, type metadata accessor for AspireHeSerializedRelinKey);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*AspireHeSerializedEvaluationKey.relinKey.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeSerializedRelinKey(0);
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
  v15 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
    }
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v14, type metadata accessor for AspireHeSerializedRelinKey);
  }

  return AspireHeSerializedEvaluationKey.relinKey.modify;
}

void AspireHeSerializedEvaluationKey.relinKey.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeSerializedSeededCiphertext((*a1)[5], v4, type metadata accessor for AspireHeSerializedRelinKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v4, v9 + v3, type metadata accessor for AspireHeSerializedRelinKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v5, type metadata accessor for AspireHeSerializedRelinKey);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, v9 + v3, type metadata accessor for AspireHeSerializedRelinKey);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspireHeSerializedEvaluationKey.hasRelinKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v5 + 24), v4, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v6 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  return v7;
}

Swift::Void __swiftcall AspireHeSerializedEvaluationKey.clearRelinKey()()
{
  v1 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v2 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t key path setter for AspireHeEvaluationKeyConfig.encryptionParameters : AspireHeEvaluationKeyConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AspireHeSerializedSeededCiphertext(a1, v8, type metadata accessor for AspireHeEncryptionParameters);
  v9 = *(type metadata accessor for AspireHeEvaluationKeyConfig(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v9, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, a2 + v9, type metadata accessor for AspireHeEncryptionParameters);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AspireHeEvaluationKeyConfig.encryptionParameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireHeEvaluationKeyConfig(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(a1, v1 + v3, type metadata accessor for AspireHeEncryptionParameters);
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AspireHeEvaluationKeyConfig.encryptionParameters.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for AspireHeEncryptionParameters(0);
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
  v15 = *(type metadata accessor for AspireHeEvaluationKeyConfig(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
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
    v17 = v14 + *(v9 + 40);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v14, type metadata accessor for AspireHeEncryptionParameters);
  }

  return AspireHeEvaluationKeyConfig.encryptionParameters.modify;
}

void AspireHeEvaluationKeyConfig.encryptionParameters.modify(uint64_t **a1, char a2)
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
    outlined init with copy of AspireHeSerializedSeededCiphertext((*a1)[5], v4, type metadata accessor for AspireHeEncryptionParameters);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v4, v9 + v3, type metadata accessor for AspireHeEncryptionParameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v5, type metadata accessor for AspireHeEncryptionParameters);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v5, v9 + v3, type metadata accessor for AspireHeEncryptionParameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AspireHeEvaluationKeyConfig.hasEncryptionParameters.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0 + *(v5 + 28), v4, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v6 = type metadata accessor for AspireHeEncryptionParameters(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  return v7;
}

Swift::Void __swiftcall AspireHeEvaluationKeyConfig.clearEncryptionParameters()()
{
  v1 = *(type metadata accessor for AspireHeEvaluationKeyConfig(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + v1, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v2 = type metadata accessor for AspireHeEncryptionParameters(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t AspireHeEvaluationKeyConfig.galoisElements.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AspireHeSerializedSeededCiphertext.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AspireHeSerializedSeededCiphertext.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AspireHeEncryptionParameters.coefficientModuli.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void AspireHeEncryptionParameters.errorStdDev.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t AspireHeEncryptionParameters.errorStdDev.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

void AspireHeEncryptionParameters.securityLevel.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t AspireHeEncryptionParameters.securityLevel.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

void AspireHeEncryptionParameters.heScheme.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t AspireHeEncryptionParameters.heScheme.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t AspireHeEncryptionParameters.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AspireHeEncryptionParameters(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AspireHeEncryptionParameters.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AspireHeEncryptionParameters(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedDcrtPlaintext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedDcrtPlaintext and conformance AspireHeSerializedDcrtPlaintext, type metadata accessor for AspireHeSerializedDcrtPlaintext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedDcrtPlaintext(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedDcrtPlaintext and conformance AspireHeSerializedDcrtPlaintext, type metadata accessor for AspireHeSerializedDcrtPlaintext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedDcrtPlaintext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedDcrtPlaintext and conformance AspireHeSerializedDcrtPlaintext, type metadata accessor for AspireHeSerializedDcrtPlaintext);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireHeSerializedCiphertextVec.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for AspireHeSerializedCiphertext(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AspireHeSerializedCiphertextVec.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for AspireHeSerializedCiphertext(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for AspireHeSerializedCiphertextVec(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedCiphertextVec(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedCiphertextVec(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedCiphertextVec(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireHeSerializedCiphertext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in AspireHeSerializedCiphertext.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in AspireHeSerializedCiphertext.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in AspireHeSerializedCiphertext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML34AspireHeSerializedSeededCiphertextVSgMd, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v14, v22, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v22, v19, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v19, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      v34 = v49;
    }

    else
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMd, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMR);
      v36 = v45;
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v19, v45, type metadata accessor for AspireHeSerializedSeededCiphertext);
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v36, v29, type metadata accessor for AspireHeSerializedSeededCiphertext);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSeededCiphertext and conformance AspireHeSerializedSeededCiphertext, type metadata accessor for AspireHeSerializedSeededCiphertext);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMd, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMd, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMd, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMd, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMR);
  }

  else
  {
    v40 = v44;
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v37, v44, type metadata accessor for AspireHeSerializedSeededCiphertext);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMd, &_s8CipherML34AspireHeSerializedSeededCiphertextVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v40, v41, type metadata accessor for AspireHeSerializedSeededCiphertext);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t closure #2 in AspireHeSerializedCiphertext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireHeSerializedFullCiphertextVSgMd, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v14, v22, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v22, v19, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMd, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMR);
      v36 = v45;
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v19, v45, type metadata accessor for AspireHeSerializedFullCiphertext);
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v36, v29, type metadata accessor for AspireHeSerializedFullCiphertext);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v19, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      v34 = v49;
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedFullCiphertext and conformance AspireHeSerializedFullCiphertext, type metadata accessor for AspireHeSerializedFullCiphertext);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMd, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMd, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMd, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMd, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMR);
  }

  else
  {
    v40 = v44;
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v37, v44, type metadata accessor for AspireHeSerializedFullCiphertext);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMd, &_s8CipherML32AspireHeSerializedFullCiphertextVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v40, v41, type metadata accessor for AspireHeSerializedFullCiphertext);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t AspireHeSerializedCiphertext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, &v15 - v10, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v12 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in AspireHeSerializedCiphertext.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in AspireHeSerializedCiphertext.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v11, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for AspireHeSerializedCiphertext(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireHeSerializedCiphertext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v13 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v12, type metadata accessor for AspireHeSerializedSeededCiphertext);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSeededCiphertext and conformance AspireHeSerializedSeededCiphertext, type metadata accessor for AspireHeSerializedSeededCiphertext);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v12, type metadata accessor for AspireHeSerializedSeededCiphertext);
  }

  result = outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v8, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspireHeSerializedCiphertext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v13 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v12, type metadata accessor for AspireHeSerializedFullCiphertext);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedFullCiphertext and conformance AspireHeSerializedFullCiphertext, type metadata accessor for AspireHeSerializedFullCiphertext);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v12, type metadata accessor for AspireHeSerializedFullCiphertext);
  }

  result = outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v8, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireHeSerializedCiphertext@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedCiphertext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedCiphertext(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedCiphertext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireHeSerializedSeededCiphertext.decodeMessage<A>(decoder:)()
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

uint64_t AspireHeSerializedSeededCiphertext.traverse<A>(visitor:)()
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
  v13 = v0 + *(type metadata accessor for AspireHeSerializedSeededCiphertext(0) + 24);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedSeededCiphertext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSeededCiphertext and conformance AspireHeSerializedSeededCiphertext, type metadata accessor for AspireHeSerializedSeededCiphertext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedSeededCiphertext(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSeededCiphertext and conformance AspireHeSerializedSeededCiphertext, type metadata accessor for AspireHeSerializedSeededCiphertext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedSeededCiphertext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSeededCiphertext and conformance AspireHeSerializedSeededCiphertext, type metadata accessor for AspireHeSerializedSeededCiphertext);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireHeSerializedSeededCiphertext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireHeSerializedFullCiphertext.decodeMessage<A>(decoder:)()
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
        dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
    }
  }

  return result;
}

uint64_t AspireHeSerializedFullCiphertext.traverse<A>(visitor:)()
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
  if (!*(v0[2] + 16) || (result = dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)(), !v1))
  {
    if (!v0[3] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
    {
      v8 = v0 + *(type metadata accessor for AspireHeSerializedFullCiphertext(0) + 28);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireHeSerializedFullCiphertext@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_225022910;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedFullCiphertext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedFullCiphertext and conformance AspireHeSerializedFullCiphertext, type metadata accessor for AspireHeSerializedFullCiphertext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedFullCiphertext(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedFullCiphertext and conformance AspireHeSerializedFullCiphertext, type metadata accessor for AspireHeSerializedFullCiphertext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedFullCiphertext(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedFullCiphertext and conformance AspireHeSerializedFullCiphertext, type metadata accessor for AspireHeSerializedFullCiphertext);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t closure #1 in AspireHeSerializedKeySwitchKey.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireHeSerializedKeySwitchKey(0) + 20);
  type metadata accessor for AspireHeSerializedCiphertextVec(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in AspireHeSerializedKeySwitchKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 20), v8, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  }

  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v13, type metadata accessor for AspireHeSerializedCiphertextVec);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertextVec and conformance AspireHeSerializedCiphertextVec, type metadata accessor for AspireHeSerializedCiphertextVec);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v13, type metadata accessor for AspireHeSerializedCiphertextVec);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedKeySwitchKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedKeySwitchKey(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedKeySwitchKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t closure #1 in AspireHeSerializedGaloisKey.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufUInt64();
  type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey);
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t AspireHeSerializedGaloisKey.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ProtobufUInt64(), type metadata accessor for AspireHeSerializedKeySwitchKey(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey), result = dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(), !v3))
  {
    v2 = v0 + *(type metadata accessor for AspireHeSerializedGaloisKey(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static AspireHeSerializedCiphertextVec.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance AspireHeSerializedGaloisKey@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_8CipherML027AspireHeSerializedKeySwitchI0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedGaloisKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedGaloisKey and conformance AspireHeSerializedGaloisKey, type metadata accessor for AspireHeSerializedGaloisKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedGaloisKey(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedGaloisKey and conformance AspireHeSerializedGaloisKey, type metadata accessor for AspireHeSerializedGaloisKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedGaloisKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedGaloisKey and conformance AspireHeSerializedGaloisKey, type metadata accessor for AspireHeSerializedGaloisKey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireHeSerializedCiphertextVec(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireHeSerializedKeySwitchKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t closure #1 in AspireHeSerializedRelinKey.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireHeSerializedRelinKey(0) + 20);
  type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireHeSerializedKeySwitchKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v4, a1, a2, a3);
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireHeSerializedRelinKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireHeSerializedRelinKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 20), v8, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  }

  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v13, type metadata accessor for AspireHeSerializedKeySwitchKey);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedKeySwitchKey and conformance AspireHeSerializedKeySwitchKey, type metadata accessor for AspireHeSerializedKeySwitchKey);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v13, type metadata accessor for AspireHeSerializedKeySwitchKey);
}

uint64_t protocol witness for Message.init() in conformance AspireHeSerializedKeySwitchKey@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedRelinKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedRelinKey and conformance AspireHeSerializedRelinKey, type metadata accessor for AspireHeSerializedRelinKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedRelinKey(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedRelinKey and conformance AspireHeSerializedRelinKey, type metadata accessor for AspireHeSerializedRelinKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedRelinKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedRelinKey and conformance AspireHeSerializedRelinKey, type metadata accessor for AspireHeSerializedRelinKey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireHeSerializedDcrtPlaintext.decodeMessage<A>(decoder:)()
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

{
  return AspireHeSerializedSecretKey.decodeMessage<A>(decoder:)();
}

uint64_t AspireHeSerializedDcrtPlaintext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t static AspireHeSerializedDcrtPlaintext.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3(0) + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedSecretKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSecretKey and conformance AspireHeSerializedSecretKey, type metadata accessor for AspireHeSerializedSecretKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedSecretKey(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSecretKey and conformance AspireHeSerializedSecretKey, type metadata accessor for AspireHeSerializedSecretKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedSecretKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedSecretKey and conformance AspireHeSerializedSecretKey, type metadata accessor for AspireHeSerializedSecretKey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireHeSerializedDcrtPlaintext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AspireHeSerializedEvaluationKey.decodeMessage<A>(decoder:)()
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
      closure #1 in AspireHeSerializedEvaluationKey.decodeMessage<A>(decoder:)();
    }

    else if (result == 2)
    {
      closure #2 in AspireHeSerializedEvaluationKey.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #1 in AspireHeSerializedEvaluationKey.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 20);
  type metadata accessor for AspireHeSerializedGaloisKey(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedGaloisKey and conformance AspireHeSerializedGaloisKey, type metadata accessor for AspireHeSerializedGaloisKey);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in AspireHeSerializedEvaluationKey.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireHeSerializedEvaluationKey(0) + 24);
  type metadata accessor for AspireHeSerializedRelinKey(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedRelinKey and conformance AspireHeSerializedRelinKey, type metadata accessor for AspireHeSerializedRelinKey);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireHeSerializedEvaluationKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireHeSerializedEvaluationKey.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in AspireHeSerializedEvaluationKey.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireHeSerializedEvaluationKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 20), v8, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  }

  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v13, type metadata accessor for AspireHeSerializedGaloisKey);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedGaloisKey and conformance AspireHeSerializedGaloisKey, type metadata accessor for AspireHeSerializedGaloisKey);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v13, type metadata accessor for AspireHeSerializedGaloisKey);
}

uint64_t closure #2 in AspireHeSerializedEvaluationKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 24), v8, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  }

  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v13, type metadata accessor for AspireHeSerializedRelinKey);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedRelinKey and conformance AspireHeSerializedRelinKey, type metadata accessor for AspireHeSerializedRelinKey);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v13, type metadata accessor for AspireHeSerializedRelinKey);
}

uint64_t protocol witness for Message.init() in conformance AspireHeSerializedEvaluationKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeSerializedEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedEvaluationKey and conformance AspireHeSerializedEvaluationKey, type metadata accessor for AspireHeSerializedEvaluationKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeSerializedEvaluationKey(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedEvaluationKey and conformance AspireHeSerializedEvaluationKey, type metadata accessor for AspireHeSerializedEvaluationKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeSerializedEvaluationKey(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeSerializedEvaluationKey and conformance AspireHeSerializedEvaluationKey, type metadata accessor for AspireHeSerializedEvaluationKey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireHeEvaluationKeyConfig.decodeMessage<A>(decoder:)()
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
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 2:
        dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
        break;
      case 1:
        closure #1 in AspireHeEvaluationKeyConfig.decodeMessage<A>(decoder:)();
        break;
    }
  }

  return result;
}

uint64_t closure #1 in AspireHeEvaluationKeyConfig.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireHeEvaluationKeyConfig(0) + 28);
  type metadata accessor for AspireHeEncryptionParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireHeEvaluationKeyConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireHeEvaluationKeyConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)();
    }

    if (v3[8] == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    v6 = &v3[*(type metadata accessor for AspireHeEvaluationKeyConfig(0) + 24)];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireHeEvaluationKeyConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 28), v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v8, v13, type metadata accessor for AspireHeEncryptionParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v13, type metadata accessor for AspireHeEncryptionParameters);
}

uint64_t protocol witness for Message.init() in conformance AspireHeEvaluationKeyConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  v4 = a2 + *(a1 + 24);
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for AspireHeEncryptionParameters(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeEvaluationKeyConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeEvaluationKeyConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeEvaluationKeyConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireHeEncryptionParameters.decodeMessage<A>(decoder:)()
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
            lazy protocol witness table accessor for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev();
LABEL_5:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
            v3 = v0;
            lazy protocol witness table accessor for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel();
            goto LABEL_5;
          case 6:
            v3 = v0;
            lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme();
            goto LABEL_5;
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

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AspireHeEncryptionParameters.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 8) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
    {
      if (!*(*(v0 + 16) + 16) || (result = dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)(), !v1))
      {
        if ((*(v0 + 32) & 1) == 0)
        {
          v3 = v1;
          if (!*(v0 + 24))
          {
            goto LABEL_11;
          }

          v6 = *(v0 + 24);
          lazy protocol witness table accessor for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev();
          result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
          if (v1)
          {
            return result;
          }
        }

        v3 = v1;
LABEL_11:
        if (*(v0 + 40))
        {
          v7 = *(v0 + 40);
          v8 = *(v0 + 48);
          lazy protocol witness table accessor for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel();
          v4 = v3;
          result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
          if (v3)
          {
            return result;
          }

          if (!*(v0 + 56))
          {
            goto LABEL_17;
          }
        }

        else
        {
          v4 = v3;
          if (!*(v0 + 56))
          {
LABEL_17:
            v5 = v0 + *(type metadata accessor for AspireHeEncryptionParameters(0) + 40);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }

        v9 = *(v0 + 64);
        lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme();
        result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        goto LABEL_17;
      }
    }
  }

  return result;
}

Swift::Int AspireHeSerializedDcrtPlaintext.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance AspireHeEncryptionParameters@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  v2 = a2 + *(a1 + 40);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance AspireHeEncryptionParameters@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance AspireHeEncryptionParameters(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance AspireHeEncryptionParameters(uint64_t a1, uint64_t a2))()
{
  result = AMDPbFetchHEConfigs.unknownFields.modify;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireHeEncryptionParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireHeEncryptionParameters(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireHeEncryptionParameters(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t specialized static AspireHeSerializedFullCiphertext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  result = specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]);
  if ((result & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a2[2];
  v7 = *(v5 + 16);
  if (v7 != *(v6 + 16))
  {
    return 0;
  }

  if (v7)
  {
    v8 = v5 == v6;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
LABEL_11:
    if (a1[3] == a2[3])
    {
      v11 = *(type metadata accessor for AspireHeSerializedFullCiphertext(0) + 28);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    return 0;
  }

  v9 = (v5 + 32);
  v10 = (v6 + 32);
  while (v7)
  {
    if (*v9 != *v10)
    {
      return 0;
    }

    ++v9;
    ++v10;
    if (!--v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static AspireHeSerializedEvaluationKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedRelinKey(0);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v47 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSg_ADtMd, &_s8CipherML26AspireHeSerializedRelinKeyVSg_ADtMR);
  v10 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v47 - v11;
  v12 = type metadata accessor for AspireHeSerializedGaloisKey(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v50 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v47 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeSerializedGaloisKeyVSg_ADtMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v56 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v25, v24, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v27 = a2 + v25;
  v28 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v27, &v24[v26], &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v29 = *(v13 + 48);
  if (v29(v24, 1, v12) == 1)
  {
    if (v29(&v24[v26], 1, v12) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v24, v19, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  if (v29(&v24[v26], 1, v12) == 1)
  {
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v19, type metadata accessor for AspireHeSerializedGaloisKey);
LABEL_9:
    v35 = &_s8CipherML27AspireHeSerializedGaloisKeyVSg_ADtMd;
    v36 = &_s8CipherML27AspireHeSerializedGaloisKeyVSg_ADtMR;
LABEL_10:
    v37 = v24;
LABEL_11:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, v35, v36);
    goto LABEL_12;
  }

  v40 = v50;
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(&v24[v26], v50, type metadata accessor for AspireHeSerializedGaloisKey);
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_8CipherML027AspireHeSerializedKeySwitchH0VTt1g5(*v19, *v40) & 1) == 0)
  {
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v40, type metadata accessor for AspireHeSerializedGaloisKey);
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v19, type metadata accessor for AspireHeSerializedGaloisKey);
    v35 = &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd;
    v36 = &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR;
    goto LABEL_10;
  }

  v41 = *(v12 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v40, type metadata accessor for AspireHeSerializedGaloisKey);
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v19, type metadata accessor for AspireHeSerializedGaloisKey);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  if ((v42 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  v30 = *(v51 + 24);
  v31 = *(v52 + 48);
  v32 = v55;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v56 + v30, v55, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v28 + v30, v32 + v31, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v33 = v54;
  v34 = *(v53 + 48);
  if (v34(v32, 1, v54) == 1)
  {
    if (v34(v32 + v31, 1, v33) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v32, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
LABEL_22:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_19;
  }

  v43 = v49;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v32, v49, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  if (v34(v32 + v31, 1, v33) == 1)
  {
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v43, type metadata accessor for AspireHeSerializedRelinKey);
LABEL_19:
    v35 = &_s8CipherML26AspireHeSerializedRelinKeyVSg_ADtMd;
    v36 = &_s8CipherML26AspireHeSerializedRelinKeyVSg_ADtMR;
    v37 = v32;
    goto LABEL_11;
  }

  v44 = v32 + v31;
  v45 = v48;
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(v44, v48, type metadata accessor for AspireHeSerializedRelinKey);
  v46 = specialized static AspireHeSerializedRelinKey.== infix(_:_:)(v43, v45);
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v45, type metadata accessor for AspireHeSerializedRelinKey);
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v43, type metadata accessor for AspireHeSerializedRelinKey);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v32, &_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  if (v46)
  {
    goto LABEL_22;
  }

LABEL_12:
  v38 = 0;
  return v38 & 1;
}

uint64_t specialized static AspireHeSerializedCiphertext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v24 - v15, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v16[v18], &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for AspireHeSerializedCiphertext(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v12, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v12, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
    goto LABEL_7;
  }

  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(&v16[v18], v8, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  v21 = specialized static AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType.== infix(_:_:)(v12, v8);
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v8, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v12, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AspireHeSerializedRelinKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML027AspireHeSerializedKeySwitchF0VSg_ADtMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for AspireHeSerializedRelinKey(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v17, v16, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v17, &v16[v18], &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
LABEL_9:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v11, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v11, type metadata accessor for AspireHeSerializedKeySwitchKey);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML027AspireHeSerializedKeySwitchF0VSg_ADtMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSg_ADtMR);
    goto LABEL_7;
  }

  v21 = v24[0];
  _s8CipherML28AspireHeEncryptionParametersVWObTm_1(&v16[v18], v24[0], type metadata accessor for AspireHeSerializedKeySwitchKey);
  v22 = specialized static AspireHeSerializedKeySwitchKey.== infix(_:_:)(v11, v21);
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v21, type metadata accessor for AspireHeSerializedKeySwitchKey);
  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v11, type metadata accessor for AspireHeSerializedKeySwitchKey);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMd, &_s8CipherML027AspireHeSerializedKeySwitchF0VSgMR);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AspireHeEvaluationKeyConfig.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v17 = *(v27 + 28);
  v18 = *(v13 + 56);
  v29 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v17, v16, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v17, &v16[v18], &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v11, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v28;
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(&v16[v18], v28, type metadata accessor for AspireHeEncryptionParameters);
      v22 = specialized static AspireHeEncryptionParameters.== infix(_:_:)(v11, v21);
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v21, type metadata accessor for AspireHeEncryptionParameters);
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v11, type metadata accessor for AspireHeEncryptionParameters);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      if ((v22 & 1) == 0)
      {
LABEL_10:
        v20 = 0;
        return v20 & 1;
      }

LABEL_8:
      v23 = v29;
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(*v29, *a2) & 1) != 0 && *(v23 + 8) == *(a2 + 8))
      {
        v25 = *(v27 + 24);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v20 & 1;
      }

      goto LABEL_10;
    }

    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v11, type metadata accessor for AspireHeEncryptionParameters);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v32 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  v4 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  v7 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v32 - v20;
  v22 = *(v19 + 56);
  outlined init with copy of AspireHeSerializedSeededCiphertext(a1, &v32 - v20, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  outlined init with copy of AspireHeSerializedSeededCiphertext(a2, &v21[v22], type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AspireHeSerializedSeededCiphertext(v21, v14, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(&v21[v22], v6, type metadata accessor for AspireHeSerializedFullCiphertext);
      if ((specialized static Data.== infix(_:_:)(*v14, v14[1], *v6, v6[1]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(v14[2], v6[2]) & 1) != 0 && v14[3] == v6[3])
      {
        v23 = *(v32 + 28);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v24 = type metadata accessor for AspireHeSerializedFullCiphertext;
          outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v6, type metadata accessor for AspireHeSerializedFullCiphertext);
          v25 = v14;
LABEL_16:
          outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v25, v24);
          outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v21, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
          return 1;
        }
      }

      v30 = type metadata accessor for AspireHeSerializedFullCiphertext;
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v6, type metadata accessor for AspireHeSerializedFullCiphertext);
      v31 = v14;
LABEL_19:
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v31, v30);
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v21, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      return 0;
    }

    v26 = type metadata accessor for AspireHeSerializedFullCiphertext;
    v27 = v14;
  }

  else
  {
    outlined init with copy of AspireHeSerializedSeededCiphertext(v21, v16, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(&v21[v22], v9, type metadata accessor for AspireHeSerializedSeededCiphertext);
      if (specialized static Data.== infix(_:_:)(*v16, *(v16 + 1), *v9, *(v9 + 1)) & 1) != 0 && (specialized static Data.== infix(_:_:)(*(v16 + 2), *(v16 + 3), *(v9 + 2), *(v9 + 3)))
      {
        v28 = *(v33 + 24);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v24 = type metadata accessor for AspireHeSerializedSeededCiphertext;
          outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v9, type metadata accessor for AspireHeSerializedSeededCiphertext);
          v25 = v16;
          goto LABEL_16;
        }
      }

      v30 = type metadata accessor for AspireHeSerializedSeededCiphertext;
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v9, type metadata accessor for AspireHeSerializedSeededCiphertext);
      v31 = v16;
      goto LABEL_19;
    }

    v26 = type metadata accessor for AspireHeSerializedSeededCiphertext;
    v27 = v16;
  }

  outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v27, v26);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v21, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMR);
  return 0;
}

uint64_t specialized static AspireHeSerializedKeySwitchKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27[0] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (v27 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v27 - v15;
  v17 = *(type metadata accessor for AspireHeSerializedKeySwitchKey(0) + 20);
  v18 = *(v13 + 56);
  v27[1] = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v17, v16, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v17, &v16[v18], &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v11, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = v27[0];
      _s8CipherML28AspireHeEncryptionParametersVWObTm_1(&v16[v18], v27[0], type metadata accessor for AspireHeSerializedCiphertextVec);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*v11, *v24))
      {
        v25 = *(v4 + 20);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v24, type metadata accessor for AspireHeSerializedCiphertextVec);
        outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v11, type metadata accessor for AspireHeSerializedCiphertextVec);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
        if (v26)
        {
          goto LABEL_4;
        }

LABEL_9:
        v20 = 0;
        return v20 & 1;
      }

      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v24, type metadata accessor for AspireHeSerializedCiphertextVec);
      outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v11, type metadata accessor for AspireHeSerializedCiphertextVec);
      v21 = &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd;
      v22 = &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR;
LABEL_8:
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, v21, v22);
      goto LABEL_9;
    }

    outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(v11, type metadata accessor for AspireHeSerializedCiphertextVec);
LABEL_7:
    v21 = &_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMd;
    v22 = &_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMR;
    goto LABEL_8;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
LABEL_4:
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t specialized static AspireHeEncryptionParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0)
  {
    v5 = *(a1 + 24);
    if (*(a2 + 32))
    {
      if (v5)
      {
        return 0;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    v5 = 0;
LABEL_10:
    if (v5 != *(a2 + 24))
    {
      return 0;
    }
  }

LABEL_11:
  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (*(a1 + 48))
  {
    v6 = v6 != 0;
  }

  if (*(a2 + 48) == 1)
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

  v8 = *(a1 + 56);
  v9 = *(a2 + 56);
  if (*(a2 + 64) == 1)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        if (v8 != 1)
        {
          return 0;
        }
      }

      else if (v8 != 2)
      {
        return 0;
      }

LABEL_26:
      v10 = *(type metadata accessor for AspireHeEncryptionParameters(0) + 40);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    if (!v8)
    {
      goto LABEL_26;
    }
  }

  else if (v8 == v9)
  {
    goto LABEL_26;
  }

  return 0;
}

uint64_t _s8CipherML28AspireHeEncryptionParametersVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of AspireHeSerializedSeededCiphertext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev()
{
  result = lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev;
  if (!lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev;
  if (!lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev;
  if (!lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev;
  if (!lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeErrorStdDev and conformance AspireHeErrorStdDev);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel()
{
  result = lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel;
  if (!lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel;
  if (!lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel;
  if (!lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel;
  if (!lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireHeSecurityLevel and conformance AspireHeSecurityLevel);
  }

  return result;
}

void type metadata completion function for AspireHeSerializedCiphertextVec(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for [AspireHeSerializedCiphertext](319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [AspireHeSerializedCiphertext](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType()
{
  result = type metadata accessor for AspireHeSerializedSeededCiphertext(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AspireHeSerializedFullCiphertext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for AspireHeSerializedSeededCiphertext()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AspireHeSerializedFullCiphertext()
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt32]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for AspireHeSerializedGaloisKey()
{
  type metadata accessor for [UInt64 : AspireHeSerializedKeySwitchKey]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_83Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_84Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void type metadata completion function for AspireHeSerializedKeySwitchKey(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for [AspireHeSerializedCiphertext](319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3)
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

void *__swift_store_extra_inhabitant_indexTm_3(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata completion function for AspireHeSerializedDcrtPlaintext()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AspireHeSerializedEvaluationKey()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [AspireHeSerializedCiphertext](319, &lazy cache variable for type metadata for AspireHeSerializedGaloisKey?, type metadata accessor for AspireHeSerializedGaloisKey, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [AspireHeSerializedCiphertext](319, &lazy cache variable for type metadata for AspireHeSerializedRelinKey?, type metadata accessor for AspireHeSerializedRelinKey, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspireHeEvaluationKeyConfig()
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt32]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [AspireHeSerializedCiphertext](319, &lazy cache variable for type metadata for AspireHeEncryptionParameters?, type metadata accessor for AspireHeEncryptionParameters, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspireHeEncryptionParameters()
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt64]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t RequestContext.useCase.getter()
{
  v1 = [*v0 useCase];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t RequestContext.networkManager()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NetworkConfig(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NetworkManagerConfig(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NetworkConfig(v2 + *(a1 + 32), v8);
  v13 = [*v2 sourceApplicationBundleIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  outlined init with take of NetworkConfig(v8, v12);
  v18 = &v12[*(v9 + 20)];
  *v18 = v15;
  v18[1] = v17;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static NetworkManagerHelper.shared + 96))(v22, v12);
  outlined destroy of NetworkManagerConfig(v12);
  outlined init with copy of NetworkManager?(v22, &v20);
  if (v21)
  {
    outlined destroy of NetworkManager?(v22);
    return outlined init with take of LocalizedError(&v20, a2);
  }

  else
  {
    outlined destroy of NetworkManager?(&v20);
    type metadata accessor for CipherMLError();
    lazy protocol witness table accessor for type CipherMLError and conformance CipherMLError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return outlined destroy of NetworkManager?(v22);
  }
}

uint64_t outlined init with copy of NetworkConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NetworkManagerConfig(uint64_t a1)
{
  v2 = type metadata accessor for NetworkManagerConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of NetworkManager?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NetworkManager?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RequestContext.init(clientConfig:staticConfig:networkConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for RequestContext();
  (*(*(a4 - 8) + 32))(&a5[*(v9 + 28)], a2, a4);
  v10 = &a5[*(v9 + 32)];

  return outlined init with take of NetworkConfig(a3, v10);
}

unint64_t type metadata completion function for RequestContext(uint64_t a1)
{
  result = type metadata accessor for CMLClientConfig();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for NetworkConfig(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestContext(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for URL() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  if (*(v9 + 84))
  {
    v12 = *(v9 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = v12 + ((v10 + 16) & ~v10);
  v14 = ((v12 + ((v11 + v10) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v14 <= v13 + 1)
  {
    v14 = v13 + 1;
  }

  v15 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v16 = (v14 & 0xFFFFFFFFFFFFFFF8) + ((*(v6 + 64) + (v10 | 7) + ((v15 + 8) & ~v15)) & ~(v10 | 7)) + 24;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v8 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v20 || (v21 = *(a1 + v16)) == 0)
  {
LABEL_33:
    if ((v7 & 0x80000000) != 0)
    {
      v25 = *(v6 + 48);

      return v25((a1 + v15 + 8) & ~v15, v7, v5);
    }

    else
    {
      v24 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  v23 = v21 - 1;
  if (v17)
  {
    v23 = 0;
    LODWORD(v17) = *a1;
  }

  return v8 + (v17 | v23) + 1;
}

void storeEnumTagSinglePayload for RequestContext(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for URL() - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  if (*(v11 + 84))
  {
    v14 = *(v11 + 64);
  }

  else
  {
    v14 = v13 + 1;
  }

  v15 = v14 + ((v12 + 16) & ~v12);
  v16 = ((v14 + ((v13 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v16 <= v15 + 1)
  {
    v16 = v15 + 1;
  }

  v17 = *(v8 + 80);
  v18 = (v16 & 0xFFFFFFFFFFFFFFF8) + ((*(v8 + 64) + (v12 | 7) + ((v17 + 8) & ~v17)) & ~(v12 | 7)) + 24;
  if (v10 >= a3)
  {
    v21 = 0;
    v22 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v18)
    {
      v19 = 2;
    }

    else
    {
      v19 = a3 - v10 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_22:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v18) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v18) = 0;
      }

      else if (v21)
      {
        *(a1 + v18) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      if ((v9 & 0x80000000) != 0)
      {
        v25 = *(v26 + 56);

        v25((a1 + v17 + 8) & ~v17, a2, v9, v7);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v24 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v24 = (a2 - 1);
        }

        *a1 = v24;
      }

      return;
    }
  }

  if (v18)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  if (v18)
  {
    bzero(a1, v18);
    *a1 = ~v10 + a2;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *(a1 + v18) = v23;
    }

    else
    {
      *(a1 + v18) = v23;
    }
  }

  else if (v21)
  {
    *(a1 + v18) = v23;
  }
}

unint64_t type metadata accessor for CMLClientConfig()
{
  result = lazy cache variable for type metadata for CMLClientConfig;
  if (!lazy cache variable for type metadata for CMLClientConfig)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CMLClientConfig);
  }

  return result;
}

uint64_t KeyRotation.__allocating_init(cache:keyStorage:allowList:activeUseCaseTracker:networkDelegation:coordinator:currentTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v17 + 224) = 0;
  *(v17 + 192) = 0u;
  *(v17 + 208) = 0u;
  *(v17 + 112) = a1;
  *(v17 + 120) = a2;
  *(v17 + 128) = a3;
  *(v17 + 136) = a4;
  *(v17 + 144) = a5;
  *(v17 + 152) = a9;
  *(v17 + 160) = a10;
  *(v17 + 168) = a6;
  *(v17 + 176) = a7;
  *(v17 + 184) = a8;
  return v17;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AspireApiKeyStatusVSgMd, &_s8CipherML18AspireApiKeyStatusVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AspireApiKeyStatus(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v34 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v32 = &v28 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = *(v15 + 72);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a3 + v29;
  v33 = (v15 + 48);
  v21 = MEMORY[0x277D84F90];
  v30 = v11;
  v31 = a2;
  while (1)
  {
    a1(v20, v16);
    if (v3)
    {
      break;
    }

    if ((*v33)(v10, 1, v11) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_s8CipherML18AspireApiKeyStatusVSgMd, &_s8CipherML18AspireApiKeyStatusVSgMR);
    }

    else
    {
      v22 = v32;
      _s8CipherML12UseCaseGroupVWObTm_3(v10, v32, type metadata accessor for AspireApiKeyStatus);
      _s8CipherML12UseCaseGroupVWObTm_3(v22, v34, type metadata accessor for AspireApiKeyStatus);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v21);
        v25 = v19;
        v21 = v26;
      }

      else
      {
        v25 = v19;
      }

      v21[2] = v24 + 1;
      v19 = v25;
      _s8CipherML12UseCaseGroupVWObTm_3(v34, v21 + v29 + v24 * v25, type metadata accessor for AspireApiKeyStatus);
      v11 = v30;
    }

    v20 += v19;
    if (!--v18)
    {
      return v21;
    }
  }

  return v21;
}

uint64_t KeyRotation.keyStorage.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  return swift_unknownObjectRetain();
}

uint64_t KeyRotation.currentTime.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

uint64_t KeyRotation.networkDelegation.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return v1;
}

uint64_t key path setter for KeyRotation.keyUploadService : KeyRotation(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v5, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
  v3 = *a2;
  swift_beginAccess();
  outlined assign with take of NetworkManager?(v5, v3 + 192);
  return swift_endAccess();
}

uint64_t KeyRotation.keyUploadService.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of NetworkManager?(a1, v1 + 192);
  return swift_endAccess();
}

uint64_t KeyRotation.init(cache:keyStorage:allowList:activeUseCaseTracker:networkDelegation:coordinator:currentTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_defaultActor_initialize();
  *(v10 + 224) = 0;
  *(v10 + 192) = 0u;
  *(v10 + 208) = 0u;
  *(v10 + 112) = a1;
  *(v10 + 120) = a2;
  *(v10 + 128) = a3;
  *(v10 + 136) = a4;
  *(v10 + 144) = a5;
  *(v10 + 152) = a9;
  *(v10 + 160) = a10;
  *(v10 + 168) = a6;
  *(v10 + 176) = a7;
  *(v10 + 184) = a8;
  return v10;
}

uint64_t KeyRotation.activeGroups(activeUseCases:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = KeyRotation.activeGroups(activeUseCases:);

  return specialized KeyRotation.activeGroups(activeUseCases:)();
}

uint64_t KeyRotation.activeGroups(activeUseCases:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t KeyRotation.keyCreationCutoff(groupName:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v31[1] = a3;
  v32 = type metadata accessor for Date();
  v31[0] = *(v32 - 8);
  v6 = *(v31[0] + 64);
  MEMORY[0x28223BE20](v32);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UseCaseGroup();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v31 - v15;
  v17 = *(*(v3 + 136) + 32);
  if (*(v17 + 16))
  {

    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v33, a2);
    if (v19)
    {
      _s8CipherML12UseCaseGroupVWOcTm_3(*(v17 + 56) + *(v10 + 72) * v18, v13, type metadata accessor for UseCaseGroup);

      result = _s8CipherML12UseCaseGroupVWObTm_3(v13, v16, type metadata accessor for UseCaseGroup);
      v21 = *&v16[*(v9 + 20)];
      if ((v21 * 60) >> 64 == (60 * v21) >> 63)
      {
        v22 = *(v4 + 160);
        (*(v4 + 152))(result);
        Date.addingTimeInterval(_:)();
        (*(v31[0] + 8))(v8, v32);
        return _s8CipherML12UseCaseGroupVWOhTm_1(v16, type metadata accessor for UseCaseGroup);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.daemon);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v33;
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34 = v29;
    *v28 = 136446210;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, a2, &v34);
    _os_log_impl(&dword_224E26000, v24, v25, "Invalid group '%{public}s'", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AA61F40](v29, -1, -1);
    MEMORY[0x22AA61F40](v28, -1, -1);
  }

  type metadata accessor for CipherMLError();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError);
  swift_allocError();
  *v30 = v27;
  v30[1] = a2;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

uint64_t KeyRotation.areKeysExpired(groupName:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for UserIdentifier();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyRotation.areKeysExpired(groupName:), v2, 0);
}

uint64_t KeyRotation.areKeysExpired(groupName:)()
{
  v1 = v0[4];
  KeyRotation.keyCreationCutoff(groupName:)(v0[2], v0[3], v0[11]);
  v2 = v0[4];
  v4 = *(v2 + 120);
  v3 = *(v2 + 128);
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 8);
  v13 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = KeyRotation.areKeysExpired(groupName:);
  v9 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  return v13(v9, v10, v11, ObjectType, v3);
}

{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](KeyRotation.areKeysExpired(groupName:), v2, 0);
}

{
  v1 = v0[5];
  v2 = (*(v0[7] + 48))(v1, 1, v0[6]);
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  if (v2 == 1)
  {
    (*(v4 + 8))(v0[11], v0[9]);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  }

  else
  {
    v6 = v0[8];
    _s8CipherML12UseCaseGroupVWObTm_3(v1, v6, type metadata accessor for UserIdentifier);
    v7 = static Date.> infix(_:_:)();
    _s8CipherML12UseCaseGroupVWOhTm_1(v6, type metadata accessor for UserIdentifier);
    (*(v4 + 8))(v3, v5);
    if (v7)
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  v8 = 1;
LABEL_6:
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[5];

  v12 = v0[1];

  return v12(v8);
}

uint64_t KeyRotation.rotateUserId(groupName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for UserIdentifier();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v12 = type metadata accessor for UseCaseGroup();
  v4[16] = v12;
  v13 = *(v12 - 8);
  v4[17] = v13;
  v14 = *(v13 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyRotation.rotateUserId(groupName:), v3, 0);
}

uint64_t KeyRotation.rotateUserId(groupName:)()
{
  v46 = v0;
  v1 = *(*(v0[5] + 136) + 32);
  if (*(v1 + 16))
  {
    v3 = v0[3];
    v2 = v0[4];
    v4 = *(*(v0[5] + 136) + 32);

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v2);
    if (v6)
    {
      v8 = v0[18];
      v7 = v0[19];
      v9 = v0[16];
      _s8CipherML12UseCaseGroupVWOcTm_3(*(v1 + 56) + *(v0[17] + 72) * v5, v8, type metadata accessor for UseCaseGroup);

      result = _s8CipherML12UseCaseGroupVWObTm_3(v8, v7, type metadata accessor for UseCaseGroup);
      v11 = *(v7 + *(v9 + 24));
      if ((v11 * 60) >> 64 == (60 * v11) >> 63)
      {
        v12 = v0[5];
        KeyRotation.keyCreationCutoff(groupName:)(v0[3], v0[4], v0[15]);
        v33 = v0[14];
        v34 = v0[15];
        v35 = v0[5];
        Date.addingTimeInterval(_:)();
        v0[20] = *(v35 + 120);
        v36 = *(v35 + 128);
        v0[21] = v36;
        ObjectType = swift_getObjectType();
        v0[22] = ObjectType;
        v38 = *(v36 + 8);
        v44 = (v38 + *v38);
        v39 = v38[1];
        v40 = swift_task_alloc();
        v0[23] = v40;
        *v40 = v0;
        v40[1] = KeyRotation.rotateUserId(groupName:);
        v41 = v0[7];
        v42 = v0[3];
        v43 = v0[4];

        return v44(v41, v42, v43, ObjectType, v36);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v13 = v0[4];
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.daemon);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = v0[3];
    v17 = v0[4];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v45 = v20;
    *v19 = 136446210;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v45);
    _os_log_impl(&dword_224E26000, v15, v16, "Invalid group '%{public}s'", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AA61F40](v20, -1, -1);
    MEMORY[0x22AA61F40](v19, -1, -1);
  }

  v22 = v0[3];
  v21 = v0[4];
  type metadata accessor for CipherMLError();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError);
  swift_allocError();
  *v23 = v22;
  v23[1] = v21;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v25 = v0[18];
  v24 = v0[19];
  v27 = v0[14];
  v26 = v0[15];
  v28 = v0[13];
  v29 = v0[10];
  v31 = v0[6];
  v30 = v0[7];

  v32 = v0[1];

  return v32();
}

{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](KeyRotation.rotateUserId(groupName:), v2, 0);
}

{
  v1 = v0[7];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
LABEL_8:
    v41 = v0[21];
    v20 = v0[12];
    v19 = v0[13];
    v21 = v0[11];
    v22 = v0[8];
    v23 = v0[9];
    v24 = v0[5];
    v25 = v0[6];
    v26 = v0[2];
    v27 = *(v24 + 160);
    (*(v24 + 152))();
    (*(v20 + 16))(v26, v19, v21);
    v28 = v26 + *(v22 + 20);
    UUID.init()();
    v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML9SecretKeyVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v30 = *(v20 + 8);
    v0[24] = v30;
    v0[25] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v19, v21);
    *(v26 + *(v22 + 24)) = v29;
    _s8CipherML12UseCaseGroupVWOcTm_3(v26, v25, type metadata accessor for UserIdentifier);
    (*(v23 + 56))(v25, 0, 1, v22);
    v31 = *(v41 + 16);
    v40 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    v0[26] = v33;
    *v33 = v0;
    v33[1] = KeyRotation.rotateUserId(groupName:);
    v35 = v0[21];
    v34 = v0[22];
    v36 = v0[20];
    v37 = v0[6];
    v39 = v0[3];
    v38 = v0[4];

    return v40(v39, v38, v37, v34, v35);
  }

  v2 = v0[14];
  _s8CipherML12UseCaseGroupVWObTm_3(v1, v0[10], type metadata accessor for UserIdentifier);
  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    _s8CipherML12UseCaseGroupVWOhTm_1(v0[10], type metadata accessor for UserIdentifier);
    goto LABEL_8;
  }

  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[11];
  v6 = v0[10];
  v7 = v0[2];
  v8 = *(v0[12] + 8);
  v8(v0[14], v5);
  v8(v4, v5);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWObTm_3(v6, v7, type metadata accessor for UserIdentifier);
  v10 = v0[18];
  v9 = v0[19];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[13];
  v14 = v0[10];
  v16 = v0[6];
  v15 = v0[7];

  v17 = v0[1];

  return v17();
}

{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v5 = *v0;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);

  return MEMORY[0x2822009F8](KeyRotation.rotateUserId(groupName:), v3, 0);
}

{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[11];
  v2(v0[14], v5);
  v2(v4, v5);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for UseCaseGroup);
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v11 = v0[10];
  v13 = v0[6];
  v12 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = type metadata accessor for AspireApiPIRConfig(0);
  v7[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v10 = *(*(type metadata accessor for AspireApiPECConfig(0) - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR) - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR) - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v13 = type metadata accessor for UserIdentifier();
  v7[17] = v13;
  v14 = *(v13 - 8);
  v7[18] = v14;
  v15 = *(v14 + 64) + 15;
  v7[19] = swift_task_alloc();
  v16 = type metadata accessor for UseCaseGroup();
  v7[20] = v16;
  v17 = *(v16 - 8);
  v7[21] = v17;
  v18 = *(v17 + 64) + 15;
  v7[22] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR) - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:), v6, 0);
}

uint64_t KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:)()
{
  v48 = v0;
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.daemon);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v47 = v7;
    *v6 = 136315138;
    v8 = Set.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v47);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_224E26000, v3, v4, "Collecting key statuses for activeUseCases %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA61F40](v7, -1, -1);
    MEMORY[0x22AA61F40](v6, -1, -1);
  }

  v11 = *(v0[11] + 136);
  v12 = *(v11 + 32);
  if (*(v12 + 16))
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = *(v11 + 32);

    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
    if (v17)
    {
      _s8CipherML12UseCaseGroupVWOcTm_3(*(v12 + 56) + *(v0[21] + 72) * v16, v0[24], type metadata accessor for UseCaseGroup);
      v18 = 0;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
  }

  v20 = v0[23];
  v19 = v0[24];
  v21 = v0[20];
  v22 = v0[21];
  (*(v22 + 56))(v19, v18, 1, v21);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v19, v20, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v23 = v0[24];
    v25 = v0[6];
    v24 = v0[7];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[23], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError);
    swift_allocError();
    *v26 = v25;
    v26[1] = v24;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v23, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    v28 = v0[23];
    v27 = v0[24];
    v29 = v0[22];
    v30 = v0[19];
    v32 = v0[15];
    v31 = v0[16];
    v34 = v0[13];
    v33 = v0[14];

    v35 = v0[1];

    return v35();
  }

  else
  {
    v37 = v0[19];
    v38 = v0[8];
    _s8CipherML12UseCaseGroupVWObTm_3(v0[23], v0[22], type metadata accessor for UseCaseGroup);
    _s8CipherML12UseCaseGroupVWOcTm_3(v38, v37, type metadata accessor for UserIdentifier);
    v39 = *(v11 + 56);
    if (*(v39 + 16))
    {
      v41 = v0[6];
      v40 = v0[7];
      v42 = *(v11 + 56);

      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v40);
      if (v44)
      {
        v45 = *(*(v39 + 56) + 8 * v43);
      }

      else
      {
        v45 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v45 = MEMORY[0x277D84F90];
    }

    v46 = v0[10];

    v0[25] = specialized _NativeSet.genericIntersection<A>(_:)(v45, v46);

    return MEMORY[0x2822009F8](KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:), 0, 0);
  }
}

{
  v1 = *(v0 + 200);
  v2 = *(v0 + 88);
  v3 = *(v1 + 32);
  *(v0 + 272) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v1 + 56);
  *(v0 + 208) = MEMORY[0x277D84F90];
  *(v0 + 216) = 0;

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 224) = v6;
    *(v0 + 232) = v8;
    v10 = (*(v7 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = *v10;
    v12 = v10[1];
    *(v0 + 240) = v12;
    *(v0 + 248) = *(*(v2 + 112) + 16);

    v13 = swift_task_alloc();
    *(v0 + 256) = v13;
    *v13 = v0;
    v13[1] = KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:);
    v14 = *(v0 + 128);

    return specialized DatabaseTable<>.get(_:)(v14, v11, v12);
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 64);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    return MEMORY[0x2822009F8](KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:), v2, 0);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 248);

  if (v0)
  {
    v6 = KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:);
  }

  else
  {
    v6 = KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v3 = *(v2 + 128);
  v4 = type metadata accessor for AspireApiConfig(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  }

  else
  {
    v1 = *(v2 + 120);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, v1, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    v0 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
    if ((*(*(v0 - 8) + 48))(v1, 1, v0) != 1)
    {
      v9 = *(v2 + 120);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = *(v2 + 112);
        _s8CipherML12UseCaseGroupVWObTm_3(v9, v10, type metadata accessor for AspireApiPECConfig);
        v3 = *(v10 + 32);
        v0 = *(v10 + 40);
        outlined copy of Data._Representation(v3, v0);
        v11 = type metadata accessor for AspireApiPECConfig;
      }

      else
      {
        v12 = *(v2 + 96);
        v10 = *(v2 + 104);
        _s8CipherML12UseCaseGroupVWObTm_3(v9, v10, type metadata accessor for AspireApiPIRConfig);
        v13 = (*(v10 + *(v12 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
        swift_beginAccess();
        v3 = *v13;
        v0 = v13[1];
        outlined copy of Data._Representation(v3, v0);
        v11 = type metadata accessor for AspireApiPIRConfig;
      }

      _s8CipherML12UseCaseGroupVWOhTm_1(v10, v11);
      v14 = *(v2 + 208);
      _s8CipherML12UseCaseGroupVWOhTm_1(*(v2 + 128), type metadata accessor for AspireApiConfig);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1 = *(v2 + 208);
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }

    _s8CipherML12UseCaseGroupVWOhTm_1(*(v2 + 128), type metadata accessor for AspireApiConfig);
  }

  v5 = *(v2 + 240);

  v6 = *(v2 + 232);
  v7 = (*(v2 + 224) - 1) & *(v2 + 224);
  *(v2 + 216) = *(v2 + 264);
  if (v7)
  {
LABEL_6:
    v8 = *(v2 + 200);
LABEL_18:
    *(v2 + 224) = v7;
    *(v2 + 232) = v6;
    v22 = *(v2 + 88);
    v23 = (*(v8 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v7)))));
    v24 = *v23;
    v25 = v23[1];
    *(v2 + 240) = v25;
    *(v2 + 248) = *(*(v22 + 112) + 16);

    v26 = swift_task_alloc();
    *(v2 + 256) = v26;
    *v26 = v2;
    v26[1] = KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:);
    v27 = *(v2 + 128);

    return specialized DatabaseTable<>.get(_:)(v27, v24, v25);
  }

  else
  {
    while (1)
    {
      while (1)
      {
        v21 = v6 + 1;
        if (!__OFADD__(v6, 1))
        {
          break;
        }

        __break(1u);
LABEL_25:
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
LABEL_11:
        v17 = *(v1 + 2);
        v16 = *(v1 + 3);
        if (v17 >= v16 >> 1)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v1);
        }

        v18 = *(v2 + 240);

        *(v1 + 2) = v17 + 1;
        v19 = &v1[16 * v17];
        *(v19 + 4) = v3;
        *(v19 + 5) = v0;
        v20 = *(v2 + 264);
        v6 = *(v2 + 232);
        v7 = (*(v2 + 224) - 1) & *(v2 + 224);
        *(v2 + 208) = v1;
        *(v2 + 216) = v20;
        if (v7)
        {
          goto LABEL_6;
        }
      }

      v8 = *(v2 + 200);
      if (v21 >= (((1 << *(v2 + 272)) + 63) >> 6))
      {
        break;
      }

      v7 = *(v8 + 8 * v21 + 56);
      ++v6;
      if (v7)
      {
        v6 = v21;
        goto LABEL_18;
      }
    }

    v29 = *(v2 + 88);

    return MEMORY[0x2822009F8](KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:), v29, 0);
  }
}

{
  v1 = v0[30];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[11];

  return MEMORY[0x2822009F8](KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:), v4, 0);
}

{
  v1 = v0[22];
  v2 = v0[19];
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[24], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  v3 = v0[33];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v7 = v0[19];
  v9 = v0[15];
  v8 = v0[16];
  v11 = v0[13];
  v10 = v0[14];

  v12 = v0[1];

  return v12();
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[11];
  v6 = v0[9];
  v7 = swift_task_alloc();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v2;
  v7[5] = v4;
  v8 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:), v7, v6);
  v9 = v0[26];
  if (v1)
  {
    v10 = v0[22];
    v11 = v0[19];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[24], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);

    _s8CipherML12UseCaseGroupVWOhTm_1(v11, type metadata accessor for UserIdentifier);
    _s8CipherML12UseCaseGroupVWOhTm_1(v10, type metadata accessor for UseCaseGroup);
    v13 = v0[23];
    v12 = v0[24];
    v14 = v0[22];
    v15 = v0[19];
    v17 = v0[15];
    v16 = v0[16];
    v19 = v0[13];
    v18 = v0[14];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v8;
    v23 = v0[26];

    v24 = v0[24];
    if (v22[2])
    {
      v25 = v0[19];
      v26 = v0[5];
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[24], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
      _s8CipherML12UseCaseGroupVWOcTm_3(v25, v26, type metadata accessor for UserIdentifier);
      v27 = 0;
    }

    else
    {

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
      v22 = MEMORY[0x277D84F90];
      v27 = 1;
    }

    v29 = v0[23];
    v28 = v0[24];
    v30 = v0[22];
    v31 = v0[19];
    v32 = v0[16];
    v34 = v0[14];
    v33 = v0[15];
    v35 = v0[13];
    (*(v0[18] + 56))(v0[5], v27, 1, v0[17]);
    _s8CipherML12UseCaseGroupVWOhTm_1(v31, type metadata accessor for UserIdentifier);
    _s8CipherML12UseCaseGroupVWOhTm_1(v30, type metadata accessor for UseCaseGroup);

    v36 = v0[1];

    return v36(v22);
  }
}

uint64_t closure #2 in KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v153 = a4;
  v154 = a5;
  v159 = a3;
  v164 = a1;
  v162 = a6;
  v146 = type metadata accessor for Date();
  v145 = *(v146 - 8);
  v8 = *(v145 + 64);
  MEMORY[0x28223BE20](v146);
  v147 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AspireApiKeyStatus(0);
  v161 = *(v10 - 8);
  v11 = *(v161 + 64);
  MEMORY[0x28223BE20](v10);
  v150 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v151 = &v136 - v14;
  v152 = type metadata accessor for SecretKey();
  v149 = *(v152 - 8);
  v15 = *(v149 + 64);
  MEMORY[0x28223BE20](v152);
  v143 = (&v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v144 = (&v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v148 = &v136 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v158 = (&v136 - v24);
  v25 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v156 = (&v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v31 = &v136 - v30;
  v163 = type metadata accessor for AspireHeEncryptionParameters(0);
  v32 = *(v163 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v163);
  v157 = &v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v160 = (&v136 - v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v155 = &v136 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v136 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v136 - v44;
  v166 = a2;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = static Task<>.checkCancellation()();
  if (!v6)
  {
    v139 = v31;
    v140 = v32;
    v142 = 0;
    v141 = v10;
    v47 = *(v10 + 24);
    v48 = v164;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v164 + v47, v45, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v49 = v25;
    v52 = *(v26 + 48);
    v51 = v26 + 48;
    v50 = v52;
    v53 = v52(v45, 1, v49);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v45, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if (v53 == 1)
    {
      if (one-time initialization token for daemon == -1)
      {
LABEL_6:
        v54 = type metadata accessor for Logger();
        __swift_project_value_buffer(v54, static Logger.daemon);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();
        v57 = os_log_type_enabled(v55, v56);
        v58 = v162;
        v59 = v141;
        if (v57)
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_224E26000, v55, v56, "Skipping key with empty key configuration", v60, 2u);
          MEMORY[0x22AA61F40](v60, -1, -1);
        }

        v61 = 1;
        return (*(v161 + 56))(v58, v61, 1, v59);
      }

LABEL_66:
      swift_once();
      goto LABEL_6;
    }

    v138 = v47;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v48 + v47, v42, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v62 = v50(v42, 1, v49);
    v137 = v50;
    v136 = v51;
    if (v62 == 1)
    {
      v63 = v139;
      *v139 = MEMORY[0x277D84F90];
      *(v63 + 8) = 0;
      v64 = v63 + *(v49 + 24);
      UnknownStorage.init()();
      v65 = v140;
      (*(v140 + 56))(v63 + *(v49 + 28), 1, 1, v163);
      v66 = v49;
      v67 = v49;
      v68 = v63;
      v69 = v50(v42, 1, v67);
      v70 = v158;
      if (v69 != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v42, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      }
    }

    else
    {
      v66 = v49;
      v68 = v139;
      _s8CipherML12UseCaseGroupVWObTm_3(v42, v139, type metadata accessor for AspireHeEvaluationKeyConfig);
      v65 = v140;
      v70 = v158;
    }

    v71 = v66;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v68 + *(v66 + 28), v70, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    v72 = *(v65 + 48);
    v73 = v163;
    if (v72(v70, 1, v163) == 1)
    {
      v74 = v160;
      *v160 = 0;
      v74[1] = 0;
      v74[2] = MEMORY[0x277D84F90];
      v74[3] = 0;
      *(v74 + 32) = 1;
      v74[5] = 0;
      *(v74 + 48) = 1;
      v74[7] = 0;
      *(v74 + 64) = 1;
      v75 = v74 + *(v73 + 40);
      UnknownStorage.init()();
      _s8CipherML12UseCaseGroupVWOhTm_1(v68, type metadata accessor for AspireHeEvaluationKeyConfig);
      v76 = v72(v70, 1, v73);
      v59 = v141;
      v77 = v138;
      if (v76 != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v70, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      }
    }

    else
    {
      _s8CipherML12UseCaseGroupVWOhTm_1(v68, type metadata accessor for AspireHeEvaluationKeyConfig);
      v74 = v160;
      _s8CipherML12UseCaseGroupVWObTm_3(v70, v160, type metadata accessor for AspireHeEncryptionParameters);
      v59 = v141;
      v77 = v138;
    }

    v78 = *(v166 + 136);
    v79 = v142;
    v80 = AllowList.isAllowListed(group:encryptionParameters:)(v159, v74);
    if (v79)
    {
      return _s8CipherML12UseCaseGroupVWOhTm_1(v74, type metadata accessor for AspireHeEncryptionParameters);
    }

    if (v80)
    {
      v81 = v155;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v164 + v77, v155, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v82 = v137;
      if (v137(v81, 1, v71) == 1)
      {
        v83 = v71;
        v84 = v82;
        v85 = v156;
        *v156 = MEMORY[0x277D84F90];
        *(v85 + 8) = 0;
        v86 = v85 + *(v83 + 24);
        UnknownStorage.init()();
        (*(v140 + 56))(v85 + *(v83 + 28), 1, 1, v163);
        if (v84(v81, 1, v83) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v81, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        }
      }

      else
      {
        v85 = v156;
        _s8CipherML12UseCaseGroupVWObTm_3(v81, v156, type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      v95 = specialized Message.hash()();
      v97 = v96;
      v98 = _s8CipherML12UseCaseGroupVWOhTm_1(v85, type metadata accessor for AspireHeEvaluationKeyConfig);
      v165[0] = v95;
      v165[1] = v97;
      MEMORY[0x28223BE20](v98);
      *(&v136 - 2) = v165;
      v99 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say10Foundation4DataVG_TG5TA_0, (&v136 - 4), v153);
      v142 = 0;
      if ((v99 & 1) == 0)
      {
        v166 = v95;
        if (one-time initialization token for daemon != -1)
        {
          swift_once();
        }

        v108 = type metadata accessor for Logger();
        __swift_project_value_buffer(v108, static Logger.daemon);
        v109 = v150;
        _s8CipherML12UseCaseGroupVWOcTm_3(v164, v150, type metadata accessor for AspireApiKeyStatus);
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = v97;
          v114 = swift_slowAlloc();
          v165[0] = v114;
          *v112 = 136446210;
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, 255, type metadata accessor for AspireApiKeyStatus);
          v115 = Message.textFormatString()();
          _s8CipherML12UseCaseGroupVWOhTm_1(v109, type metadata accessor for AspireApiKeyStatus);
          v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115._countAndFlagsBits, v115._object, v165);
          v59 = v141;

          *(v112 + 4) = v116;
          _os_log_impl(&dword_224E26000, v110, v111, "Skipping non-active key: %{public}s", v112, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v114);
          MEMORY[0x22AA61F40](v114, -1, -1);
          MEMORY[0x22AA61F40](v112, -1, -1);
          outlined consume of Data._Representation(v166, v113);
        }

        else
        {
          outlined consume of Data._Representation(v166, v97);

          _s8CipherML12UseCaseGroupVWOhTm_1(v109, type metadata accessor for AspireApiKeyStatus);
        }

        _s8CipherML12UseCaseGroupVWOhTm_1(v74, type metadata accessor for AspireHeEncryptionParameters);
        v61 = 1;
        v58 = v162;
        return (*(v161 + 56))(v58, v61, 1, v59);
      }

      v163 = *(type metadata accessor for UserIdentifier() + 24);
      v100 = *(v154 + v163);
      if (*(v100 + 16))
      {
        v101 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v97);
        v102 = v151;
        v103 = v148;
        if (v104)
        {
          v105 = *(v100 + 56);
          v106 = v149;
          _s8CipherML12UseCaseGroupVWOcTm_3(v105 + *(v149 + 72) * v101, v148, type metadata accessor for SecretKey);
          v107 = 0;
        }

        else
        {
          v107 = 1;
          v106 = v149;
        }
      }

      else
      {
        v107 = 1;
        v102 = v151;
        v103 = v148;
        v106 = v149;
      }

      v117 = v152;
      v158 = *(v106 + 56);
      v158(v103, v107, 1, v152);
      v118 = (*(v106 + 48))(v103, 1, v117);
      if (v118)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v103, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
        v157 = 0;
      }

      else
      {
        v119 = v143;
        _s8CipherML12UseCaseGroupVWOcTm_3(v103, v143, type metadata accessor for SecretKey);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v103, &_s8CipherML9SecretKeyVSgMd, &_s8CipherML9SecretKeyVSgMR);
        v157 = *v119;
        _s8CipherML12UseCaseGroupVWOhTm_1(v119, type metadata accessor for SecretKey);
      }

      v120 = v97;
      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v121 = type metadata accessor for Logger();
      __swift_project_value_buffer(v121, static Logger.daemon);
      _s8CipherML12UseCaseGroupVWOcTm_3(v164, v102, type metadata accessor for AspireApiKeyStatus);
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 134218240;
        v125 = *v102;
        _s8CipherML12UseCaseGroupVWOhTm_1(v102, type metadata accessor for AspireApiKeyStatus);
        *(v124 + 4) = v125;
        v74 = v160;
        *(v124 + 12) = 2048;
        *(v124 + 14) = v157;
        _os_log_impl(&dword_224E26000, v122, v123, "keyStatus.timestamp = %llu, secretKey.timestamp = %llu", v124, 0x16u);
        MEMORY[0x22AA61F40](v124, -1, -1);
      }

      else
      {
        _s8CipherML12UseCaseGroupVWOhTm_1(v102, type metadata accessor for AspireApiKeyStatus);
      }

      v126 = v120;

      v127 = v95;
      if (v118)
      {
        v128 = *(v166 + 160);
        v129 = v147;
        (*(v166 + 152))();
        result = Date.timeIntervalSince1970.getter();
        if ((*&v130 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else
        {
          v131 = v164;
          if (v130 > -1.0)
          {
            if (v130 < 1.84467441e19)
            {
LABEL_58:
              v132 = v144;
              *v144 = v130;
              v133 = v152;
              v134 = v132 + *(v152 + 20);
              HE.SerializedSecretKey.init()();
              (*(v145 + 8))(v129, v146);
              v158(v132, 0, 1, v133);
              specialized Dictionary.subscript.setter(v132, v127, v126);
              _s8CipherML12UseCaseGroupVWOhTm_1(v74, type metadata accessor for AspireHeEncryptionParameters);
              v58 = v162;
              _s8CipherML12UseCaseGroupVWOcTm_3(v131, v162, type metadata accessor for AspireApiKeyStatus);
              v61 = 0;
              goto LABEL_37;
            }

            goto LABEL_69;
          }
        }

        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if ((*(v159 + *(type metadata accessor for UseCaseGroup() + 28)) & 1) == 0 && *v164 != v157)
      {
        v135 = *(v166 + 160);
        v129 = v147;
        (*(v166 + 152))();
        result = Date.timeIntervalSince1970.getter();
        if ((*&v130 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v131 = v164;
          if (v130 > -1.0)
          {
            if (v130 >= 1.84467441e19)
            {
              __break(1u);
              goto LABEL_66;
            }

            goto LABEL_58;
          }

LABEL_71:
          __break(1u);
          return result;
        }

LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      _s8CipherML12UseCaseGroupVWOhTm_1(v74, type metadata accessor for AspireHeEncryptionParameters);
      outlined consume of Data._Representation(v95, v126);
    }

    else
    {
      v142 = 0;
      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      __swift_project_value_buffer(v87, static Logger.daemon);
      v88 = v157;
      _s8CipherML12UseCaseGroupVWOcTm_3(v74, v157, type metadata accessor for AspireHeEncryptionParameters);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v165[0] = v92;
        *v91 = 136446210;
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, 255, type metadata accessor for AspireHeEncryptionParameters);
        v93 = Message.textFormatString()();
        _s8CipherML12UseCaseGroupVWOhTm_1(v88, type metadata accessor for AspireHeEncryptionParameters);
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93._countAndFlagsBits, v93._object, v165);

        *(v91 + 4) = v94;
        _os_log_impl(&dword_224E26000, v89, v90, "Skipping key with invalid encryption parameters: '%{public}s'", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v92);
        MEMORY[0x22AA61F40](v92, -1, -1);
        MEMORY[0x22AA61F40](v91, -1, -1);
      }

      else
      {

        _s8CipherML12UseCaseGroupVWOhTm_1(v88, type metadata accessor for AspireHeEncryptionParameters);
      }

      _s8CipherML12UseCaseGroupVWOhTm_1(v74, type metadata accessor for AspireHeEncryptionParameters);
    }

    v61 = 1;
    v58 = v162;
LABEL_37:
    v59 = v141;
    return (*(v161 + 56))(v58, v61, 1, v59);
  }

  return result;
}

uint64_t KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4[78] = v3;
  v4[77] = a3;
  v4[76] = a2;
  v4[75] = a1;
  v5 = type metadata accessor for AspireApiEvaluationKeys(0);
  v4[79] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[80] = swift_task_alloc();
  v7 = *(*(type metadata accessor for AspireApiEvaluationKey(0) - 8) + 64) + 15;
  v4[81] = swift_task_alloc();
  v8 = *(type metadata accessor for SecretKey() - 8);
  v4[82] = v8;
  v9 = *(v8 + 64) + 15;
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v10 = type metadata accessor for SHA256();
  v4[85] = v10;
  v11 = *(v10 - 8);
  v4[86] = v11;
  v12 = *(v11 + 64) + 15;
  v4[87] = swift_task_alloc();
  v13 = type metadata accessor for SHA256Digest();
  v4[88] = v13;
  v14 = *(v13 - 8);
  v4[89] = v14;
  v15 = *(v14 + 64) + 15;
  v4[90] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64) + 15;
  v4[91] = swift_task_alloc();
  v17 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v4[92] = v17;
  v18 = *(v17 - 8);
  v4[93] = v18;
  v19 = *(v18 + 64) + 15;
  v4[94] = swift_task_alloc();
  v20 = type metadata accessor for AspireApiKeyStatus(0);
  v4[95] = v20;
  v21 = *(v20 - 8);
  v4[96] = v21;
  v22 = *(v21 + 64) + 15;
  v4[97] = swift_task_alloc();
  v23 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:), v3, 0);
}

uint64_t KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:)()
{
  v95 = v0;
  v94[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static NetworkManagerHelper.shared + 96))(*(v0 + 616));
  if (*(v0 + 80))
  {
    v1 = *(v0 + 624);
    v2 = *(v0 + 608);
    outlined init with take of LocalizedError((v0 + 56), v0 + 16);
    outlined init with copy of NetworkManager(v0 + 16, v0 + 96);
    swift_beginAccess();
    outlined assign with take of NetworkManager?(v0 + 96, v1 + 192);
    swift_endAccess();
    v3 = *(v2 + 16);
    *(v0 + 784) = v3;
    if (v3)
    {
      v4 = 0;
      v5 = *(v0 + 768);
      *(v0 + 840) = *(v5 + 80);
      *(v0 + 792) = *(v5 + 72);
      while (1)
      {
        *(v0 + 800) = v4;
        _s8CipherML12UseCaseGroupVWOcTm_3(*(v0 + 608) + ((*(v0 + 840) + 32) & ~*(v0 + 840)) + *(v0 + 792) * v4, *(v0 + 776), type metadata accessor for AspireApiKeyStatus);
        static Task<>.checkCancellation()();
        v8 = *(v0 + 744);
        v9 = *(v0 + 736);
        v10 = *(v0 + 728);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 776) + *(*(v0 + 760) + 24), v10, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        v11 = *(v8 + 48);
        v12 = v11(v10, 1, v9);
        v13 = *(v0 + 752);
        if (v12 == 1)
        {
          v14 = *(v0 + 736);
          v15 = *(v0 + 728);
          *v13 = MEMORY[0x277D84F90];
          *(v13 + 8) = 0;
          v16 = v13 + *(v14 + 24);
          UnknownStorage.init()();
          v17 = *(v14 + 28);
          v18 = type metadata accessor for AspireHeEncryptionParameters(0);
          (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
          if (v11(v15, 1, v14) != 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 728), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
          }
        }

        else
        {
          _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 728), *(v0 + 752), type metadata accessor for AspireHeEvaluationKeyConfig);
        }

        v19 = *(v0 + 752);
        v20 = *(v0 + 736);
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig);
        v21 = Message.serializedData(partial:)();
        v23 = v22;
        v24 = *(v0 + 696);
        v25 = *(v0 + 680);
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, 255, MEMORY[0x277CC5540]);
        dispatch thunk of HashFunction.init()();
        v26 = v23 >> 62;
        if ((v23 >> 62) > 1)
        {
          break;
        }

        if (v26)
        {
          if (v21 >> 32 < v21)
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          if (__DataStorage._bytes.getter() && __OFSUB__(v21, __DataStorage._offset.getter()))
          {
            goto LABEL_42;
          }

LABEL_23:
          v31 = *(v0 + 696);
          v32 = *(v0 + 680);
          MEMORY[0x22AA5F1C0]();
          goto LABEL_25;
        }

        v27 = *(v0 + 696);
        v28 = *(v0 + 680);
        *(v0 + 844) = v21;
        *(v0 + 852) = v23;
        *(v0 + 854) = BYTE2(v23);
        *(v0 + 855) = BYTE3(v23);
        *(v0 + 856) = BYTE4(v23);
        *(v0 + 857) = BYTE5(v23);
LABEL_25:
        dispatch thunk of HashFunction.update(bufferPointer:)();
        outlined consume of Data._Representation(v21, v23);
        v35 = *(v0 + 720);
        v36 = *(v0 + 712);
        v37 = *(v0 + 704);
        v38 = *(v0 + 696);
        v39 = *(v0 + 688);
        v40 = *(v0 + 680);
        v41 = *(v0 + 600);
        dispatch thunk of HashFunction.finalize()();
        outlined consume of Data._Representation(v21, v23);
        (*(v39 + 8))(v38, v40);
        *(v0 + 240) = v37;
        *(v0 + 248) = _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, 255, MEMORY[0x277CC5290]);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
        (*(v36 + 16))(boxed_opaque_existential_1, v35, v37);
        __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
        dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
        (*(v36 + 8))(v35, v37);
        v43 = *(v0 + 584);
        *(v0 + 808) = v43;
        v44 = *(v0 + 592);
        *(v0 + 816) = v44;
        __swift_destroy_boxed_opaque_existential_0((v0 + 216));
        v45 = type metadata accessor for UserIdentifier();
        v46 = *(v41 + *(v45 + 24));
        if (*(v46 + 16))
        {
          v47 = v45;
          v48 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44);
          if (v49)
          {
            v50 = *(v0 + 752);
            v51 = *(v0 + 672);
            v52 = *(v0 + 664);
            v53 = *(v0 + 648);
            _s8CipherML12UseCaseGroupVWOcTm_3(*(v46 + 56) + *(*(v0 + 656) + 72) * v48, v52, type metadata accessor for SecretKey);
            _s8CipherML12UseCaseGroupVWObTm_3(v52, v51, type metadata accessor for SecretKey);
            generateEvaluationKey(secretKey:config:)(v51, v50, v53);
            v80 = *(v0 + 648);
            v81 = *(v0 + 640);
            v82 = *(v0 + 632);
            *(swift_task_alloc() + 16) = v80;
            _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireApiEvaluationKeys and conformance AspireApiEvaluationKeys, 255, type metadata accessor for AspireApiEvaluationKeys);
            static Message.with(_:)();

            static Task<>.checkCancellation()();
            v83 = *(v0 + 600);
            v84 = *(v0 + 40);
            v85 = *(v0 + 48);
            __swift_project_boxed_opaque_existential_1((v0 + 16), v84);
            v86 = *(v47 + 20);
            v92 = (*(v85 + 24) + **(v85 + 24));
            v87 = *(*(v85 + 24) + 4);
            v88 = swift_task_alloc();
            *(v0 + 824) = v88;
            *v88 = v0;
            v88[1] = KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:);
            v89 = *(v0 + 640);
            v90 = *MEMORY[0x277D85DE8];

            return v92(v89, v83 + v86, v84, v85);
          }
        }

        v6 = *(v0 + 776);
        v7 = *(v0 + 752);
        outlined consume of Data._Representation(v43, v44);
        _s8CipherML12UseCaseGroupVWOhTm_1(v7, type metadata accessor for AspireHeEvaluationKeyConfig);
        _s8CipherML12UseCaseGroupVWOhTm_1(v6, type metadata accessor for AspireApiKeyStatus);
        v4 = *(v0 + 800) + 1;
        if (v4 == *(v0 + 784))
        {
          goto LABEL_32;
        }
      }

      if (v26 != 2)
      {
        v33 = *(v0 + 696);
        v34 = *(v0 + 680);
        *(v0 + 858) = 0;
        *(v0 + 864) = 0;
        goto LABEL_25;
      }

      v29 = *(v21 + 16);
      v30 = *(v21 + 24);

      if (__DataStorage._bytes.getter() && __OFSUB__(v29, __DataStorage._offset.getter()))
      {
        goto LABEL_41;
      }

      if (__OFSUB__(v30, v29))
      {
        goto LABEL_40;
      }

      goto LABEL_23;
    }

LABEL_32:
    v59 = *(v0 + 776);
    v60 = *(v0 + 752);
    v61 = *(v0 + 728);
    v62 = *(v0 + 720);
    v63 = *(v0 + 696);
    v64 = *(v0 + 672);
    v65 = *(v0 + 664);
    v91 = *(v0 + 648);
    v93 = *(v0 + 640);
    v66 = *(v0 + 624);
    *(v0 + 408) = 0;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    swift_beginAccess();
    outlined assign with take of NetworkManager?(v0 + 376, v66 + 192);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v77 = *(v0 + 8);
    v67 = *MEMORY[0x277D85DE8];
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 56, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    if (one-time initialization token for daemon != -1)
    {
LABEL_43:
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.daemon);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v94[0] = v58;
      *v57 = 136315138;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003CLL, 0x8000000225039970, v94);
      _os_log_impl(&dword_224E26000, v55, v56, "%s called with offline network manager", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x22AA61F40](v58, -1, -1);
      MEMORY[0x22AA61F40](v57, -1, -1);
    }

    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v68 = *(v0 + 776);
    v69 = *(v0 + 752);
    v70 = *(v0 + 728);
    v71 = *(v0 + 720);
    v72 = *(v0 + 696);
    v73 = *(v0 + 672);
    v74 = *(v0 + 664);
    v75 = *(v0 + 648);
    v76 = *(v0 + 640);

    v77 = *(v0 + 8);
    v78 = *MEMORY[0x277D85DE8];
  }

  return v77();
}

{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 824);
  v4 = *v1;
  *(*v1 + 832) = v0;

  v5 = *(v2 + 624);
  if (v0)
  {
    v6 = KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:);
  }

  else
  {
    v6 = KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:);
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v95 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 776);
  v2 = *(v0 + 752);
  v3 = *(v0 + 672);
  v4 = *(v0 + 648);
  v5 = *(v0 + 640);
  outlined consume of Data._Representation(*(v0 + 808), *(v0 + 816));
  _s8CipherML12UseCaseGroupVWOhTm_1(v5, type metadata accessor for AspireApiEvaluationKeys);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for SecretKey);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for AspireHeEvaluationKeyConfig);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for AspireApiKeyStatus);
  _s8CipherML12UseCaseGroupVWOhTm_1(v4, type metadata accessor for AspireApiEvaluationKey);
  v6 = *(v0 + 800) + 1;
  if (v6 == *(v0 + 784))
  {
LABEL_2:
    v7 = *(v0 + 776);
    v8 = *(v0 + 752);
    v9 = *(v0 + 728);
    v10 = *(v0 + 720);
    v11 = *(v0 + 696);
    v12 = *(v0 + 672);
    v13 = *(v0 + 664);
    v92 = *(v0 + 648);
    v94 = *(v0 + 640);
    v14 = *(v0 + 624);
    *(v0 + 408) = 0;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    swift_beginAccess();
    outlined assign with take of NetworkManager?(v0 + 376, v14 + 192);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v15 = *(v0 + 8);
    v16 = *MEMORY[0x277D85DE8];
LABEL_27:

    return v15();
  }

  else
  {
    v17 = *(v0 + 832);
    while (1)
    {
      *(v0 + 800) = v6;
      _s8CipherML12UseCaseGroupVWOcTm_3(*(v0 + 608) + ((*(v0 + 840) + 32) & ~*(v0 + 840)) + *(v0 + 792) * v6, *(v0 + 776), type metadata accessor for AspireApiKeyStatus);
      static Task<>.checkCancellation()();
      v20 = *(v0 + 776);
      if (v17)
      {
        v69 = *(v0 + 624);
        _s8CipherML12UseCaseGroupVWOhTm_1(v20, type metadata accessor for AspireApiKeyStatus);
        *(v0 + 136) = 0u;
        *(v0 + 152) = 0u;
        *(v0 + 168) = 0;
        swift_beginAccess();
        outlined assign with take of NetworkManager?(v0 + 136, v69 + 192);
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v70 = *(v0 + 776);
        v71 = *(v0 + 752);
        v72 = *(v0 + 728);
        v73 = *(v0 + 720);
        v74 = *(v0 + 696);
        v75 = *(v0 + 672);
        v76 = *(v0 + 664);
        v77 = *(v0 + 648);
        v78 = *(v0 + 640);

        v15 = *(v0 + 8);
        v79 = *MEMORY[0x277D85DE8];
        goto LABEL_27;
      }

      v21 = *(v0 + 744);
      v22 = *(v0 + 736);
      v23 = *(v0 + 728);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v20 + *(*(v0 + 760) + 24), v23, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v24 = *(v21 + 48);
      v25 = v24(v23, 1, v22);
      v26 = *(v0 + 752);
      if (v25 == 1)
      {
        v27 = *(v0 + 736);
        v28 = *(v0 + 728);
        *v26 = MEMORY[0x277D84F90];
        *(v26 + 8) = 0;
        v29 = v26 + *(v27 + 24);
        UnknownStorage.init()();
        v30 = *(v27 + 28);
        v31 = type metadata accessor for AspireHeEncryptionParameters(0);
        (*(*(v31 - 8) + 56))(v26 + v30, 1, 1, v31);
        if (v24(v28, 1, v27) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 728), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        }
      }

      else
      {
        _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 728), *(v0 + 752), type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      v32 = *(v0 + 752);
      v33 = *(v0 + 736);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig);
      v34 = Message.serializedData(partial:)();
      v36 = v35;
      v37 = *(v0 + 696);
      v38 = *(v0 + 680);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, 255, MEMORY[0x277CC5540]);
      dispatch thunk of HashFunction.init()();
      v39 = v36 >> 62;
      if ((v36 >> 62) > 1)
      {
        if (v39 == 2)
        {
          v42 = *(v34 + 16);
          v43 = *(v34 + 24);

          if (__DataStorage._bytes.getter() && __OFSUB__(v42, __DataStorage._offset.getter()))
          {
            goto LABEL_35;
          }

          if (__OFSUB__(v43, v42))
          {
            goto LABEL_34;
          }

          v44 = *(v0 + 696);
          v45 = *(v0 + 680);
          MEMORY[0x22AA5F1C0]();
        }

        else
        {
          v48 = *(v0 + 696);
          v49 = *(v0 + 680);
          *(v0 + 858) = 0;
          *(v0 + 864) = 0;
        }
      }

      else if (v39)
      {
        if (v34 >> 32 < v34)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
        }

        if (__DataStorage._bytes.getter() && __OFSUB__(v34, __DataStorage._offset.getter()))
        {
          goto LABEL_36;
        }

        v46 = *(v0 + 696);
        v47 = *(v0 + 680);
        MEMORY[0x22AA5F1C0]();
      }

      else
      {
        v40 = *(v0 + 696);
        v41 = *(v0 + 680);
        *(v0 + 844) = v34;
        *(v0 + 852) = v36;
        *(v0 + 854) = BYTE2(v36);
        *(v0 + 855) = BYTE3(v36);
        *(v0 + 856) = BYTE4(v36);
        *(v0 + 857) = BYTE5(v36);
      }

      dispatch thunk of HashFunction.update(bufferPointer:)();
      outlined consume of Data._Representation(v34, v36);
      v50 = *(v0 + 720);
      v51 = *(v0 + 712);
      v52 = *(v0 + 704);
      v53 = *(v0 + 696);
      v54 = *(v0 + 688);
      v55 = *(v0 + 680);
      v56 = *(v0 + 600);
      dispatch thunk of HashFunction.finalize()();
      outlined consume of Data._Representation(v34, v36);
      (*(v54 + 8))(v53, v55);
      *(v0 + 240) = v52;
      *(v0 + 248) = _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, 255, MEMORY[0x277CC5290]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
      (*(v51 + 16))(boxed_opaque_existential_1, v50, v52);
      __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
      v17 = 0;
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*(v51 + 8))(v50, v52);
      v58 = *(v0 + 584);
      *(v0 + 808) = v58;
      v59 = *(v0 + 592);
      *(v0 + 816) = v59;
      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
      v60 = type metadata accessor for UserIdentifier();
      v61 = *(v56 + *(v60 + 24));
      if (*(v61 + 16))
      {
        v62 = v60;
        v63 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v59);
        if (v64)
        {
          break;
        }
      }

      v18 = *(v0 + 776);
      v19 = *(v0 + 752);
      outlined consume of Data._Representation(v58, v59);
      _s8CipherML12UseCaseGroupVWOhTm_1(v19, type metadata accessor for AspireHeEvaluationKeyConfig);
      _s8CipherML12UseCaseGroupVWOhTm_1(v18, type metadata accessor for AspireApiKeyStatus);
      v6 = *(v0 + 800) + 1;
      if (v6 == *(v0 + 784))
      {
        goto LABEL_2;
      }
    }

    v65 = *(v0 + 752);
    v66 = *(v0 + 672);
    v67 = *(v0 + 664);
    v68 = *(v0 + 648);
    _s8CipherML12UseCaseGroupVWOcTm_3(*(v61 + 56) + *(*(v0 + 656) + 72) * v63, v67, type metadata accessor for SecretKey);
    _s8CipherML12UseCaseGroupVWObTm_3(v67, v66, type metadata accessor for SecretKey);
    generateEvaluationKey(secretKey:config:)(v66, v65, v68);
    v81 = *(v0 + 648);
    v82 = *(v0 + 640);
    v83 = *(v0 + 632);
    *(swift_task_alloc() + 16) = v81;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireApiEvaluationKeys and conformance AspireApiEvaluationKeys, 255, type metadata accessor for AspireApiEvaluationKeys);
    static Message.with(_:)();

    static Task<>.checkCancellation()();
    v84 = *(v0 + 600);
    v85 = *(v0 + 40);
    v86 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v85);
    v87 = *(v62 + 20);
    v93 = (*(v86 + 24) + **(v86 + 24));
    v88 = *(*(v86 + 24) + 4);
    v89 = swift_task_alloc();
    *(v0 + 824) = v89;
    *v89 = v0;
    v89[1] = KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:);
    v90 = *(v0 + 640);
    v91 = *MEMORY[0x277D85DE8];

    return v93(v90, v84 + v87, v85, v86);
  }
}

{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 776);
  v2 = *(v0 + 752);
  v3 = *(v0 + 672);
  v4 = *(v0 + 648);
  v5 = *(v0 + 640);
  v6 = *(v0 + 624);
  outlined consume of Data._Representation(*(v0 + 808), *(v0 + 816));
  _s8CipherML12UseCaseGroupVWOhTm_1(v5, type metadata accessor for AspireApiEvaluationKeys);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for SecretKey);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for AspireHeEvaluationKeyConfig);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for AspireApiKeyStatus);
  _s8CipherML12UseCaseGroupVWOhTm_1(v4, type metadata accessor for AspireApiEvaluationKey);
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0;
  swift_beginAccess();
  outlined assign with take of NetworkManager?(v0 + 336, v6 + 192);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v7 = *(v0 + 832);
  v8 = *(v0 + 776);
  v9 = *(v0 + 752);
  v10 = *(v0 + 728);
  v11 = *(v0 + 720);
  v12 = *(v0 + 696);
  v13 = *(v0 + 672);
  v14 = *(v0 + 664);
  v15 = *(v0 + 648);
  v16 = *(v0 + 640);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t closure #1 in KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:)(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CipherML22AspireApiEvaluationKeyVGMd, &_ss23_ContiguousArrayStorageCy8CipherML22AspireApiEvaluationKeyVGMR);
  v4 = *(type metadata accessor for AspireApiEvaluationKey(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_225022960;
  _s8CipherML12UseCaseGroupVWOcTm_3(a2, v7 + v6, type metadata accessor for AspireApiEvaluationKey);
  v8 = *a1;

  *a1 = v7;
  return result;
}

uint64_t KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[13] = a6;
  v7[14] = v6;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  v8 = type metadata accessor for NetworkManagerConfig(0);
  v7[15] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v10 = type metadata accessor for NetworkManagerType(0);
  v7[17] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  v12 = type metadata accessor for UseCaseGroup();
  v7[19] = v12;
  v13 = *(v12 - 8);
  v7[20] = v13;
  v14 = *(v13 + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v15 = type metadata accessor for UserIdentifier();
  v7[23] = v15;
  v16 = *(v15 - 8);
  v7[24] = v16;
  v17 = *(v16 + 64) + 15;
  v7[25] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:), v6, 0);
}

uint64_t KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:)()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = MEMORY[0x22AA609C0](0xD000000000000021, 0x8000000225036730);
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v1;
  v0[6] = partial apply for closure #1 in static Telemetry.reportKeyRotationEvent(groupName:keyStatuses:activeUseCases:);
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[5] = &block_descriptor_5;
  v7 = _Block_copy(v0 + 2);
  v8 = v0[7];

  AnalyticsSendEventLazy();
  _Block_release(v7);

  v9 = swift_task_alloc();
  v0[28] = v9;
  *v9 = v0;
  v9[1] = KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:);
  v10 = v0[27];
  v11 = v0[13];
  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[12];
  v15 = v0[9];
  v16 = v0[10];

  return KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:)(v10, v15, v16, v13, v14, v11);
}

{
  v1 = v0[27];
  if (!*(v0[29] + 16))
  {
    v7 = v0[23];
    v8 = v0[24];
    v9 = v0[8];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);

    (*(v8 + 56))(v9, 1, 1, v7);
    goto LABEL_6;
  }

  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1, v2, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[29];
    v6 = v0[26];

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
LABEL_4:
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v0[27], v0[8], &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
LABEL_6:
    v11 = v0[26];
    v10 = v0[27];
    v12 = v0[25];
    v14 = v0[21];
    v13 = v0[22];
    v15 = v0[18];
    v16 = v0[16];

    v17 = v0[1];
LABEL_14:

    return v17();
  }

  v18 = v0[14];
  _s8CipherML12UseCaseGroupVWObTm_3(v0[26], v0[25], type metadata accessor for UserIdentifier);
  v19 = *(*(v18 + 136) + 32);
  if (!*(v19 + 16))
  {
LABEL_13:
    v34 = v0[29];
    v35 = v0[27];
    v36 = v0[25];
    v38 = v0[9];
    v37 = v0[10];

    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError);
    swift_allocError();
    *v39 = v38;
    v39[1] = v37;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    _s8CipherML12UseCaseGroupVWOhTm_1(v36, type metadata accessor for UserIdentifier);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v35, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    v41 = v0[26];
    v40 = v0[27];
    v42 = v0[25];
    v44 = v0[21];
    v43 = v0[22];
    v45 = v0[18];
    v46 = v0[16];

    v17 = v0[1];
    goto LABEL_14;
  }

  v21 = v0[9];
  v20 = v0[10];

  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v20);
  if ((v23 & 1) == 0)
  {

    goto LABEL_13;
  }

  v25 = v0[21];
  v24 = v0[22];
  v26 = v0[19];
  v28 = v0[17];
  v27 = v0[18];
  _s8CipherML12UseCaseGroupVWOcTm_3(*(v19 + 56) + *(v0[20] + 72) * v22, v25, type metadata accessor for UseCaseGroup);

  _s8CipherML12UseCaseGroupVWObTm_3(v25, v24, type metadata accessor for UseCaseGroup);
  v29 = *(v26 + 36);
  _s8CipherML12UseCaseGroupVWOcTm_3(v24 + v29, v27, type metadata accessor for NetworkManagerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
  {
    v31 = v0[29];
    v32 = v0[25];
    v33 = v0[22];

    _s8CipherML12UseCaseGroupVWOhTm_1(v33, type metadata accessor for UseCaseGroup);
    _s8CipherML12UseCaseGroupVWOhTm_1(v32, type metadata accessor for UserIdentifier);
    goto LABEL_4;
  }

  v49 = v0[15];
  v48 = v0[16];
  v50 = v0[14];
  _s8CipherML12UseCaseGroupVWOcTm_3(v24 + v29, v48, type metadata accessor for NetworkConfig);
  v51 = *(v50 + 176);
  v52 = (v48 + *(v49 + 20));
  *v52 = *(v50 + 168);
  v52[1] = v51;

  v53 = swift_task_alloc();
  v0[31] = v53;
  *v53 = v0;
  v53[1] = KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:);
  v54 = v0[29];
  v55 = v0[25];
  v56 = v0[16];
  v57 = v0[14];

  return KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:)(v55, v54, v56);
}

{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 232);
  v6 = *(v2 + 112);

  if (v0)
  {
    v7 = KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:);
  }

  else
  {
    v7 = KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[18];
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[16], type metadata accessor for NetworkManagerConfig);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for NetworkManagerType);
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v0[27], v0[8], &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[18];
  v10 = v0[16];

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[18];
  v8 = v0[16];

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[18];
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[16], type metadata accessor for NetworkManagerConfig);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  _s8CipherML12UseCaseGroupVWOhTm_1(v4, type metadata accessor for NetworkManagerType);
  v5 = v0[32];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[18];
  v12 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(v4 + 232) = a1;
  *(v4 + 240) = v1;

  v7 = *(v3 + 112);
  if (v1)
  {
    v8 = KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:);
  }

  else
  {
    v8 = KeyRotation.rotateKeys(groupName:userId:keyStatuses:activeUseCases:);
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v5[31] = a4;
  v5[32] = v4;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v7 = type metadata accessor for SHA256();
  v5[37] = v7;
  v8 = *(v7 - 8);
  v5[38] = v8;
  v9 = *(v8 + 64) + 15;
  v5[39] = swift_task_alloc();
  v10 = type metadata accessor for SHA256Digest();
  v5[40] = v10;
  v11 = *(v10 - 8);
  v5[41] = v11;
  v12 = *(v11 + 64) + 15;
  v5[42] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v14 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5[45] = v14;
  v15 = *(v14 - 8);
  v5[46] = v15;
  v16 = *(v15 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v17 = type metadata accessor for AspireApiKeyStatus(0);
  v5[50] = v17;
  v18 = *(v17 - 8);
  v5[51] = v18;
  v19 = *(v18 + 64) + 15;
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v20 = type metadata accessor for AspireApiPIRConfig(0);
  v5[55] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v5[56] = swift_task_alloc();
  v22 = *(*(type metadata accessor for AspireApiPECConfig(0) - 8) + 64) + 15;
  v5[57] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR) - 8) + 64) + 15;
  v5[58] = swift_task_alloc();
  v24 = type metadata accessor for AspireApiConfig(0);
  v5[59] = v24;
  v25 = *(v24 - 8);
  v5[60] = v25;
  v26 = *(v25 + 64) + 15;
  v5[61] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR) - 8) + 64) + 15;
  v5[62] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8) + 64) + 15;
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v29 = type metadata accessor for NetworkManagerType(0);
  v5[65] = v29;
  v30 = *(*(v29 - 8) + 64) + 15;
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v31 = type metadata accessor for NetworkManagerConfig(0);
  v5[68] = v31;
  v32 = *(*(v31 - 8) + 64) + 15;
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v33 = type metadata accessor for AspireApiConfigResponse(0);
  v5[71] = v33;
  v34 = *(v33 - 8);
  v5[72] = v34;
  v35 = *(v34 + 64) + 15;
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v36 = type metadata accessor for UserIdentifier();
  v5[77] = v36;
  v37 = *(v36 - 8);
  v5[78] = v37;
  v38 = *(v37 + 64) + 15;
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v39 = type metadata accessor for UseCaseGroup();
  v5[82] = v39;
  v40 = *(v39 - 8);
  v5[83] = v40;
  v41 = *(v40 + 64) + 15;
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();
  v5[87] = swift_task_alloc();
  v42 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), v4, 0);
}

uint64_t KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)()
{
  v65 = v0;
  v64[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0[32] + 136);
  v0[88] = v1;
  v2 = *(v1 + 32);
  if (*(v2 + 16))
  {
    v4 = v0[28];
    v3 = v0[29];

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v3);
    if (v6)
    {
      v7 = v0[87];
      v8 = v0[86];
      v9 = *(v2 + 56);
      v10 = *(v0[83] + 72);
      v0[89] = v10;
      _s8CipherML12UseCaseGroupVWOcTm_3(v9 + v10 * v5, v8, type metadata accessor for UseCaseGroup);

      _s8CipherML12UseCaseGroupVWObTm_3(v8, v7, type metadata accessor for UseCaseGroup);
      v11 = swift_task_alloc();
      v0[90] = v11;
      *v11 = v0;
      v11[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
      v12 = v0[81];
      v13 = v0[32];
      v14 = v0[28];
      v15 = v0[29];
      v16 = *MEMORY[0x277D85DE8];

      return KeyRotation.rotateUserId(groupName:)(v12, v14, v15);
    }
  }

  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v18 = v0[29];
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.daemon);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[28];
    v22 = v0[29];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v64[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v64);
    _os_log_impl(&dword_224E26000, v20, v21, "RotationTask: did not find group '%{public}s'", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AA61F40](v25, -1, -1);
    MEMORY[0x22AA61F40](v24, -1, -1);
  }

  v26 = v0[87];
  v27 = v0[86];
  v28 = v0[85];
  v29 = v0[84];
  v30 = v0[81];
  v31 = v0[80];
  v32 = v0[79];
  v33 = v0[76];
  v34 = v0[75];
  v35 = v0[74];
  v38 = v0[73];
  v39 = v0[70];
  v40 = v0[69];
  v41 = v0[67];
  v42 = v0[66];
  v43 = v0[64];
  v44 = v0[63];
  v45 = v0[62];
  v46 = v0[61];
  v47 = v0[58];
  v48 = v0[57];
  v49 = v0[56];
  v50 = v0[54];
  v51 = v0[53];
  v52 = v0[52];
  v53 = v0[49];
  v54 = v0[48];
  v55 = v0[47];
  v56 = v0[44];
  v57 = v0[43];
  v58 = v0[42];
  v59 = v0[39];
  v60 = v0[36];
  v61 = v0[35];
  v62 = v0[34];
  v63 = v0[33];

  v36 = v0[1];
  v37 = *MEMORY[0x277D85DE8];

  return v36();
}

{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 720);
  v4 = *v1;
  *(*v1 + 728) = v0;

  v5 = *(v2 + 256);
  if (v0)
  {
    v6 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v6 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v133 = v0;
  v132[5] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 240);
  v2 = *(*(v0 + 696) + *(*(v0 + 656) + 32));

  v3 = specialized _NativeSet.genericIntersection<A>(_:)(v2, v1);

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v3 + 16), 0);
    v6 = specialized Sequence._copySequenceContents(initializing:)(v132, v5 + 4, v4, v3);
    outlined consume of [String : [TokenCache.CachedToken]].Iterator._Variant();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  *(v0 + 736) = v5;
  v7 = v5[2];
  *(v0 + 744) = v7;
  v8 = *(v0 + 696);
  if (!v7)
  {
    _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 648), type metadata accessor for UserIdentifier);

    _s8CipherML12UseCaseGroupVWOhTm_1(v8, type metadata accessor for UseCaseGroup);
    v31 = *(v0 + 696);
    v32 = *(v0 + 688);
    v33 = *(v0 + 680);
    v34 = *(v0 + 672);
    v35 = *(v0 + 648);
    v36 = *(v0 + 640);
    v37 = *(v0 + 632);
    v38 = *(v0 + 608);
    v39 = *(v0 + 600);
    v40 = *(v0 + 592);
    v80 = *(v0 + 584);
    v82 = *(v0 + 560);
    v84 = *(v0 + 552);
    v86 = *(v0 + 536);
    v88 = *(v0 + 528);
    v90 = *(v0 + 512);
    v92 = *(v0 + 504);
    v94 = *(v0 + 496);
    v96 = *(v0 + 488);
    v98 = *(v0 + 464);
    v100 = *(v0 + 456);
    v102 = *(v0 + 448);
    v104 = *(v0 + 432);
    v106 = *(v0 + 424);
    v108 = *(v0 + 416);
    v110 = *(v0 + 392);
    v112 = *(v0 + 384);
    v114 = *(v0 + 376);
    v116 = *(v0 + 352);
    v118 = *(v0 + 344);
    v120 = *(v0 + 336);
    v122 = *(v0 + 312);
    v124 = *(v0 + 288);
    v126 = *(v0 + 280);
    v128 = *(v0 + 272);
    v130 = *(v0 + 264);

    v41 = *(v0 + 8);
    v42 = *MEMORY[0x277D85DE8];
LABEL_20:

    return v41();
  }

  v9 = *(v0 + 656);
  v10 = *(v0 + 608);
  v11 = *(v0 + 568);
  v12 = *(v0 + 560);
  v13 = *(v0 + 544);
  v14 = *(v0 + 256);
  v15 = MEMORY[0x277D84F90];
  *v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10[1] = v15;
  v16 = v10 + *(v11 + 24);
  UnknownStorage.init()();
  v17 = *(v9 + 36);
  _s8CipherML12UseCaseGroupVWOcTm_3(v8 + v17, v12, type metadata accessor for NetworkConfig);
  v18 = *(v14 + 168);
  *(v0 + 752) = v18;
  v19 = *(v14 + 176);
  *(v0 + 760) = v19;
  v20 = (v12 + *(v13 + 20));
  *v20 = v18;
  v20[1] = v19;
  v21 = one-time initialization token for shared;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 560);
  (*(*static NetworkManagerHelper.shared + 96))(v22);
  _s8CipherML12UseCaseGroupVWOhTm_1(v22, type metadata accessor for NetworkManagerConfig);
  if (!*(v0 + 128))
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 104, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 232);
    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.daemon);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v48 = *(v0 + 224);
      v47 = *(v0 + 232);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v132[0] = v50;
      *v49 = 136446210;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v132);
      _os_log_impl(&dword_224E26000, v45, v46, "Missing cached configuration for group: %{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AA61F40](v50, -1, -1);
      MEMORY[0x22AA61F40](v49, -1, -1);
    }

    v51 = *(v0 + 696);
    v52 = *(v0 + 648);
    v53 = *(v0 + 608);
    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    _s8CipherML12UseCaseGroupVWOhTm_1(v52, type metadata accessor for UserIdentifier);
    _s8CipherML12UseCaseGroupVWOhTm_1(v51, type metadata accessor for UseCaseGroup);
    _s8CipherML12UseCaseGroupVWOhTm_1(v53, type metadata accessor for AspireApiConfigResponse);
    v54 = *(v0 + 696);
    v55 = *(v0 + 688);
    v56 = *(v0 + 680);
    v57 = *(v0 + 672);
    v58 = *(v0 + 648);
    v59 = *(v0 + 640);
    v60 = *(v0 + 632);
    v61 = *(v0 + 608);
    v62 = *(v0 + 600);
    v63 = *(v0 + 592);
    v81 = *(v0 + 584);
    v83 = *(v0 + 560);
    v85 = *(v0 + 552);
    v87 = *(v0 + 536);
    v89 = *(v0 + 528);
    v91 = *(v0 + 512);
    v93 = *(v0 + 504);
    v95 = *(v0 + 496);
    v97 = *(v0 + 488);
    v99 = *(v0 + 464);
    v101 = *(v0 + 456);
    v103 = *(v0 + 448);
    v105 = *(v0 + 432);
    v107 = *(v0 + 424);
    v109 = *(v0 + 416);
    v111 = *(v0 + 392);
    v113 = *(v0 + 384);
    v115 = *(v0 + 376);
    v117 = *(v0 + 352);
    v119 = *(v0 + 344);
    v121 = *(v0 + 336);
    v123 = *(v0 + 312);
    v125 = *(v0 + 288);
    v127 = *(v0 + 280);
    v129 = *(v0 + 272);
    v131 = *(v0 + 264);

    v41 = *(v0 + 8);
    v64 = *MEMORY[0x277D85DE8];
    goto LABEL_20;
  }

  v23 = *(v0 + 536);
  v24 = *(v0 + 520);
  outlined init with take of LocalizedError((v0 + 104), v0 + 64);
  _s8CipherML12UseCaseGroupVWOcTm_3(v8 + v17, v23, type metadata accessor for NetworkManagerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v65 = *(v0 + 536);
    if (EnumCaseMultiPayload)
    {
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
      v69 = *(v68 + 48);
      v70 = *(v65 + *(v68 + 64) + 8);

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v65 + v69, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v71 = type metadata accessor for URL();
      (*(*(v71 - 8) + 8))(v65, v71);
    }

    else
    {
      v66 = *(v65 + 8);

      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v65 + *(v67 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    v26 = *(*(v0 + 256) + 112);
    v27 = swift_task_alloc();
    *(v0 + 768) = v27;
    *v27 = v0;
    v27[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v28 = *(v0 + 512);
    v29 = *MEMORY[0x277D85DE8];

    return Cache.getConfigs(for:)(v28, v5);
  }

  v72 = swift_task_alloc();
  *(v0 + 800) = v72;
  *v72 = v0;
  v72[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  v73 = *(v0 + 648);
  v74 = *(v0 + 584);
  v75 = *(v0 + 248);
  v76 = *(v0 + 256);
  v77 = *(v0 + 224);
  v78 = *(v0 + 232);
  v79 = *MEMORY[0x277D85DE8];

  return fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(v74, v75, v5, v76, v0 + 64, v73, v77, v78);
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 768);
  v12 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v4 = *(v2 + 736);
    v5 = *(v2 + 256);

    v6 = *MEMORY[0x277D85DE8];
    v7 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v8 = v5;
  }

  else
  {
    v8 = *(v2 + 256);
    v9 = *MEMORY[0x277D85DE8];
    v7 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v212 = v0;
  v211[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 512);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 504);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    (*(v1 + 56))(v4, 1, 1, v2);
    v5 = swift_task_alloc();
    *(v0 + 784) = v5;
    *v5 = v0;
    v5[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v6 = *(v0 + 736);
    v7 = *(v0 + 648);
    v8 = *(v0 + 592);
    v9 = *(v0 + 504);
    v10 = *(v0 + 256);
    v11 = *(v0 + 224);
    v12 = *(v0 + 232);
    v13 = *MEMORY[0x277D85DE8];

    return fetchAndCacheConfigs #1 (configResponse:) in KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:)(v8, v9, v6, v10, v0 + 64, v7, v11, v12);
  }

  _s8CipherML12UseCaseGroupVWObTm_3(v3, *(v0 + 600), type metadata accessor for AspireApiConfigResponse);
  if (one-time initialization token for daemon != -1)
  {
LABEL_136:
    swift_once();
  }

  v15 = *(v0 + 232);
  v165 = type metadata accessor for Logger();
  __swift_project_value_buffer(v165, static Logger.daemon);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v19 = *(v0 + 224);
    v18 = *(v0 + 232);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v211[0] = v21;
    *v20 = 136446210;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, v211);
    _os_log_impl(&dword_224E26000, v16, v17, "Using cached configuration for group '%{public}s'", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AA61F40](v21, -1, -1);
    MEMORY[0x22AA61F40](v20, -1, -1);
  }

  v22 = *(v0 + 776);
  v23 = *(v0 + 736);
  v24 = *(v0 + 608);
  v25 = *(v0 + 480);
  v155 = *(v0 + 456);
  v154 = *(v0 + 440);
  v205 = *(v0 + 400);
  v207 = *(v0 + 408);
  v153 = *(v0 + 384);
  v26 = *(v0 + 368);
  v161 = *(v0 + 392);
  v163 = *(v0 + 360);
  v27 = *(v0 + 328);
  v28 = *(v0 + 304);
  outlined assign with take of AspireApiConfigResponse(*(v0 + 600), v24);
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v30 = 0;
  v31 = *v24;
  v175 = v23 + 32;
  v177 = v29;
  v156 = v25;
  v171 = (v25 + 56);
  v173 = (v25 + 48);
  v32 = (v26 + 48);
  v193 = (v27 + 16);
  v195 = (v28 + 8);
  v191 = (v27 + 8);
  v167 = v31;
  v189 = (v26 + 48);
LABEL_11:
  if (v30 >= *(*(v0 + 736) + 16))
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v203 = v30;
  v36 = (v175 + 16 * v30);
  v37 = *v36;
  v38 = v36[1];
  v179 = *v36;
  if (*(v31 + 16))
  {

    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
    v40 = *(v0 + 496);
    v41 = *(v0 + 472);
    if (v42)
    {
      _s8CipherML12UseCaseGroupVWOcTm_3(*(v31 + 56) + *(v156 + 72) * v39, *(v0 + 496), type metadata accessor for AspireApiConfig);
      (*(v156 + 56))(v40, 0, 1, v41);
    }

    else
    {
      (*v171)(*(v0 + 496), 1, 1, *(v0 + 472));
    }
  }

  else
  {
    (*v171)(*(v0 + 496), 1, 1, *(v0 + 472));
  }

  v43 = *(v0 + 496);
  if ((*v173)(v43, 1, *(v0 + 472)))
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
LABEL_20:
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v165, static Logger.daemon);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v211[0] = v34;
      *v33 = 136446210;
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v38, v211);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_224E26000, v47, v48, "Configuration missing for usecase '%{public}s'", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AA61F40](v34, -1, -1);
      MEMORY[0x22AA61F40](v33, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  v44 = *(v0 + 488);
  v45 = *(v0 + 464);
  _s8CipherML12UseCaseGroupVWOcTm_3(v43, v44, type metadata accessor for AspireApiConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v44, v45, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  _s8CipherML12UseCaseGroupVWOhTm_1(v44, type metadata accessor for AspireApiConfig);
  v46 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
  {
    goto LABEL_20;
  }

  v49 = *(v0 + 464);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = *(v0 + 456);
    _s8CipherML12UseCaseGroupVWObTm_3(v49, v50, type metadata accessor for AspireApiPECConfig);
    v181 = *(v155 + 32);
    v169 = *(v155 + 40);
    outlined copy of Data._Representation(v181, v169);
    v51 = type metadata accessor for AspireApiPECConfig;
  }

  else
  {
    v50 = *(v0 + 448);
    _s8CipherML12UseCaseGroupVWObTm_3(v49, v50, type metadata accessor for AspireApiPIRConfig);
    v52 = (*(v50 + *(v154 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
    swift_beginAccess();
    v181 = *v52;
    v169 = v52[1];
    outlined copy of Data._Representation(*v52, v169);
    v51 = type metadata accessor for AspireApiPIRConfig;
  }

  _s8CipherML12UseCaseGroupVWOhTm_1(v50, v51);
  v53 = *(*(v0 + 608) + 8);
  v185 = *(v53 + 16);
  if (v185)
  {
    v54 = 0;
    v201 = v53 + ((*(v207 + 80) + 32) & ~*(v207 + 80));
    if (v181)
    {
      v55 = 0;
    }

    else
    {
      v55 = v169 == 0xC000000000000000;
    }

    v197 = v169 >> 62;
    v57 = !v55 || v169 >> 62 != 3;
    v58 = __OFSUB__(HIDWORD(v181), v181);
    v157 = v58;
    v158 = v57;
    v199 = v38;
    v183 = *(*(v0 + 608) + 8);
    while (1)
    {
      if (v54 >= *(v53 + 16))
      {
        __break(1u);
        goto LABEL_127;
      }

      v59 = *(v0 + 416);
      v61 = *(v0 + 352);
      v60 = *(v0 + 360);
      v209 = v54;
      _s8CipherML12UseCaseGroupVWOcTm_3(v201 + *(v207 + 72) * v54, v59, type metadata accessor for AspireApiKeyStatus);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v59 + *(v205 + 24), v61, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v62 = *v32;
      v63 = (*v32)(v61, 1, v60);
      v64 = *(v0 + 392);
      v187 = v62;
      if (v63 == 1)
      {
        v66 = *(v0 + 352);
        v65 = *(v0 + 360);
        *v64 = MEMORY[0x277D84F90];
        *(v161 + 8) = 0;
        v67 = &v64[*(v163 + 24)];
        UnknownStorage.init()();
        v68 = *(v163 + 28);
        v69 = type metadata accessor for AspireHeEncryptionParameters(0);
        (*(*(v69 - 8) + 56))(&v64[v68], 1, 1, v69);
        if (v62(v66, 1, v65) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 352), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        }
      }

      else
      {
        _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 352), v64, type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      v70 = *(v0 + 392);
      v71 = *(v0 + 360);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig);
      v72 = Message.serializedData(partial:)();
      if (v22)
      {
        v130 = *(v0 + 736);
        v131 = *(v0 + 696);
        v132 = *(v0 + 648);
        v133 = *(v0 + 608);
        v134 = *(v0 + 416);
        v135 = *(v0 + 392);

        outlined consume of Data._Representation(v181, v169);

        _s8CipherML12UseCaseGroupVWOhTm_1(v135, type metadata accessor for AspireHeEvaluationKeyConfig);
        _s8CipherML12UseCaseGroupVWOhTm_1(v134, type metadata accessor for AspireApiKeyStatus);
        __swift_destroy_boxed_opaque_existential_0((v0 + 64));
        _s8CipherML12UseCaseGroupVWOhTm_1(v132, type metadata accessor for UserIdentifier);

        goto LABEL_123;
      }

      v74 = v72;
      v75 = v73;
      v76 = *(v0 + 312);
      v77 = *(v0 + 296);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, 255, MEMORY[0x277CC5540]);
      dispatch thunk of HashFunction.init()();
      v78 = v75 >> 62;
      if ((v75 >> 62) <= 1)
      {
        break;
      }

      if (v78 == 2)
      {
        v81 = *(v74 + 16);
        v82 = *(v74 + 24);

        if (__DataStorage._bytes.getter() && __OFSUB__(v81, __DataStorage._offset.getter()))
        {
          goto LABEL_132;
        }

        if (__OFSUB__(v82, v81))
        {
          goto LABEL_129;
        }

LABEL_62:
        v83 = *(v0 + 312);
        v84 = *(v0 + 296);
        MEMORY[0x22AA5F1C0]();
        goto LABEL_64;
      }

      v85 = *(v0 + 312);
      v86 = *(v0 + 296);
      *(v0 + 1010) = 0;
      *(v0 + 1016) = 0;
LABEL_64:
      dispatch thunk of HashFunction.update(bufferPointer:)();
      outlined consume of Data._Representation(v74, v75);
      v87 = *(v0 + 392);
      v88 = *(v0 + 336);
      v90 = *(v0 + 312);
      v89 = *(v0 + 320);
      v91 = *(v0 + 296);
      dispatch thunk of HashFunction.finalize()();
      outlined consume of Data._Representation(v74, v75);
      (*v195)(v90, v91);
      *(v0 + 168) = v89;
      *(v0 + 176) = _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, 255, MEMORY[0x277CC5290]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
      (*v193)(boxed_opaque_existential_1, v88, v89);
      __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
      v22 = 0;
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*v191)(v88, v89);
      _s8CipherML12UseCaseGroupVWOhTm_1(v87, type metadata accessor for AspireHeEvaluationKeyConfig);
      v94 = *(v0 + 208);
      v93 = *(v0 + 216);
      outlined copy of Data._Representation(v94, v93);
      __swift_destroy_boxed_opaque_existential_0((v0 + 144));
      v95 = v93 >> 62;
      if (v93 >> 62 == 3)
      {
        v96 = v169 >> 62;
        v38 = v199;
        if (v94 || v93 != 0xC000000000000000)
        {
          outlined consume of Data._Representation(v94, v93);
        }

        else if ((v158 & 1) == 0)
        {

          goto LABEL_109;
        }

LABEL_80:
        v97 = 0;
        if (v96 <= 1)
        {
          goto LABEL_77;
        }

        goto LABEL_81;
      }

      outlined consume of Data._Representation(v94, v93);
      v96 = v169 >> 62;
      v38 = v199;
      if (v95 > 1)
      {
        if (v95 != 2)
        {
          goto LABEL_80;
        }

        v99 = *(v94 + 16);
        v98 = *(v94 + 24);
        v100 = __OFSUB__(v98, v99);
        v97 = v98 - v99;
        if (v100)
        {
          goto LABEL_134;
        }

        if (v197 <= 1)
        {
          goto LABEL_77;
        }
      }

      else if (v95)
      {
        LODWORD(v97) = HIDWORD(v94) - v94;
        if (__OFSUB__(HIDWORD(v94), v94))
        {
          goto LABEL_135;
        }

        v97 = v97;
        if (v197 <= 1)
        {
LABEL_77:
          v101 = BYTE6(v169);
          if (v96)
          {
            v101 = HIDWORD(v181) - v181;
            if (v157)
            {
              goto LABEL_130;
            }
          }

          goto LABEL_83;
        }
      }

      else
      {
        v97 = BYTE6(v93);
        if (v197 <= 1)
        {
          goto LABEL_77;
        }
      }

LABEL_81:
      if (v96 != 2)
      {
        if (!v97)
        {
          goto LABEL_107;
        }

LABEL_42:
        outlined consume of Data._Representation(v94, v93);
        goto LABEL_43;
      }

      v103 = *(v181 + 16);
      v102 = *(v181 + 24);
      v100 = __OFSUB__(v102, v103);
      v101 = v102 - v103;
      if (v100)
      {
        goto LABEL_131;
      }

LABEL_83:
      if (v97 != v101)
      {
        goto LABEL_42;
      }

      if (v97 < 1)
      {
LABEL_107:

        outlined consume of Data._Representation(v94, v93);
        goto LABEL_109;
      }

      if (v95 > 1)
      {
        if (v95 != 2)
        {
          v104 = v0 + 982;
          *(v0 + 988) = 0;
          *(v0 + 982) = 0;
          goto LABEL_104;
        }

        v105 = *(v94 + 16);
        v106 = *(v94 + 24);
        v107 = __DataStorage._bytes.getter();
        if (v107)
        {
          v108 = __DataStorage._offset.getter();
          if (__OFSUB__(v105, v108))
          {
            goto LABEL_139;
          }

          v107 += v105 - v108;
        }

        if (__OFSUB__(v106, v105))
        {
          goto LABEL_138;
        }
      }

      else
      {
        if (!v95)
        {
          *(v0 + 968) = v94;
          *(v0 + 976) = v93;
          *(v0 + 978) = BYTE2(v93);
          *(v0 + 979) = BYTE3(v93);
          *(v0 + 980) = BYTE4(v93);
          *(v0 + 981) = BYTE5(v93);
          v104 = v0 + 968;
LABEL_104:
          closure #1 in static Data.== infix(_:_:)(v104, v181, v169, v211);
          goto LABEL_105;
        }

        if (v94 >> 32 < v94)
        {
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        v107 = __DataStorage._bytes.getter();
        if (v107)
        {
          v109 = __DataStorage._offset.getter();
          if (__OFSUB__(v94, v109))
          {
            goto LABEL_140;
          }

          v107 += v94 - v109;
        }
      }

      MEMORY[0x22AA5F1C0]();
      closure #1 in static Data.== infix(_:_:)(v107, v181, v169, v211);
      outlined consume of Data._Representation(v94, v93);
LABEL_105:
      if (v211[0])
      {

        v22 = 0;
LABEL_109:
        v32 = v189;
        v110 = *(v0 + 424);
        v111 = *(v0 + 432);
        v112 = *(v0 + 360);
        v113 = *(v0 + 344);
        _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 416), v110, type metadata accessor for AspireApiKeyStatus);
        _s8CipherML12UseCaseGroupVWObTm_3(v110, v111, type metadata accessor for AspireApiKeyStatus);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v111 + *(v205 + 24), v113, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        v114 = v187(v113, 1, v112);
        v115 = *(v0 + 384);
        if (v114 == 1)
        {
          v116 = *(v0 + 360);
          v117 = *(v0 + 344);
          *v115 = MEMORY[0x277D84F90];
          *(v153 + 8) = 0;
          v118 = &v115[*(v163 + 24)];
          UnknownStorage.init()();
          v119 = *(v163 + 28);
          v120 = type metadata accessor for AspireHeEncryptionParameters(0);
          (*(*(v120 - 8) + 56))(&v115[v119], 1, 1, v120);
          if (v187(v117, 1, v116) != 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 344), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
          }
        }

        else
        {
          _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 344), *(v0 + 384), type metadata accessor for AspireHeEvaluationKeyConfig);
        }

        v121 = *(v0 + 432);
        v122 = *(v0 + 376);
        _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 384), v122, type metadata accessor for AspireHeEvaluationKeyConfig);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v211[0] = v177;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v122, v181, v169, isUniquelyReferenced_nonNull_native);
        outlined consume of Data._Representation(v181, v169);
        _s8CipherML12UseCaseGroupVWOhTm_1(v121, type metadata accessor for AspireApiKeyStatus);
        v177 = v211[0];
LABEL_10:
        v30 = v203 + 1;
        *(v0 + 816) = v177;
        v31 = v167;
        if (v203 + 1 == *(v0 + 744))
        {
          v136 = *(v0 + 736);
          v137 = *(v0 + 256);

          *(v0 + 824) = *(*(v137 + 112) + 24);
          type metadata accessor for EvaluationKeyConfigTable();
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, 255, type metadata accessor for EvaluationKeyConfigTable);

          v138 = dispatch thunk of Actor.unownedExecutor.getter();
          *(v0 + 832) = v138;
          *(v0 + 840) = v139;
          v140 = *MEMORY[0x277D85DE8];

          return MEMORY[0x2822009F8](KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), v138, v139);
        }

        goto LABEL_11;
      }

      v22 = 0;
LABEL_43:
      v32 = v189;
      v54 = v209 + 1;
      _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 416), type metadata accessor for AspireApiKeyStatus);
      v53 = v183;
      if (v185 == v209 + 1)
      {
        goto LABEL_114;
      }
    }

    if (!v78)
    {
      v79 = *(v0 + 312);
      v80 = *(v0 + 296);
      *(v0 + 996) = v74;
      *(v0 + 1004) = v75;
      *(v0 + 1006) = BYTE2(v75);
      *(v0 + 1007) = BYTE3(v75);
      *(v0 + 1008) = BYTE4(v75);
      *(v0 + 1009) = BYTE5(v75);
      goto LABEL_64;
    }

    if (v74 >> 32 < v74)
    {
      goto LABEL_128;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v74, __DataStorage._offset.getter()))
    {
      goto LABEL_133;
    }

    goto LABEL_62;
  }

LABEL_114:
  v124 = *(v0 + 736);

  if (one-time initialization token for daemon != -1)
  {
LABEL_141:
    swift_once();
  }

  __swift_project_value_buffer(v165, static Logger.daemon);

  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v211[0] = v128;
    *v127 = 136315138;
    v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v38, v211);

    *(v127 + 4) = v129;
    _os_log_impl(&dword_224E26000, v125, v126, "Configuration did not have matching keyStatus for usecase %s", v127, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v128);
    MEMORY[0x22AA61F40](v128, -1, -1);
    MEMORY[0x22AA61F40](v127, -1, -1);
  }

  else
  {
  }

  v131 = *(v0 + 696);
  v141 = *(v0 + 648);
  v133 = *(v0 + 608);
  type metadata accessor for CipherMLError();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  outlined consume of Data._Representation(v181, v169);
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  _s8CipherML12UseCaseGroupVWOhTm_1(v141, type metadata accessor for UserIdentifier);
LABEL_123:
  _s8CipherML12UseCaseGroupVWOhTm_1(v131, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v133, type metadata accessor for AspireApiConfigResponse);
  v142 = *(v0 + 696);
  v143 = *(v0 + 688);
  v144 = *(v0 + 680);
  v145 = *(v0 + 672);
  v146 = *(v0 + 648);
  v147 = *(v0 + 640);
  v148 = *(v0 + 632);
  v149 = *(v0 + 608);
  v150 = *(v0 + 600);
  v159 = *(v0 + 592);
  v160 = *(v0 + 584);
  v162 = *(v0 + 560);
  v164 = *(v0 + 552);
  v166 = *(v0 + 536);
  v168 = *(v0 + 528);
  v170 = *(v0 + 512);
  v172 = *(v0 + 504);
  v174 = *(v0 + 496);
  v176 = *(v0 + 488);
  v178 = *(v0 + 464);
  v180 = *(v0 + 456);
  v182 = *(v0 + 448);
  v184 = *(v0 + 432);
  v186 = *(v0 + 424);
  v188 = *(v0 + 416);
  v190 = *(v0 + 392);
  v192 = *(v0 + 384);
  v194 = *(v0 + 376);
  v196 = *(v0 + 352);
  v198 = *(v0 + 344);
  v200 = *(v0 + 336);
  v202 = *(v0 + 312);
  v204 = *(v0 + 288);
  v206 = *(v0 + 280);
  v208 = *(v0 + 272);
  v210 = *(v0 + 264);

  v151 = *(v0 + 8);
  v152 = *MEMORY[0x277D85DE8];

  return v151();
}

{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 784);
  v10 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v4 = v2[92];
    v5 = v2[32];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[63], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

    v6 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v5 = v2[32];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[63], &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    v6 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v193 = v0;
  v192[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 792);
  v137 = (v0 + 982);
  v3 = *(v0 + 736);
  v4 = *(v0 + 608);
  v5 = *(v0 + 480);
  v135 = *(v0 + 440);
  v136 = *(v0 + 456);
  v186 = *(v0 + 400);
  v188 = *(v0 + 408);
  v134 = *(v0 + 384);
  v6 = *(v0 + 368);
  v144 = *(v0 + 392);
  v146 = *(v0 + 360);
  v7 = *(v0 + 328);
  v8 = *(v0 + 304);
  outlined assign with take of AspireApiConfigResponse(*(v0 + 592), v4);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = 0;
  v11 = *v4;
  v156 = v3 + 32;
  v158 = v9;
  v138 = v5;
  v152 = (v5 + 56);
  v154 = (v5 + 48);
  v12 = (v6 + 48);
  v172 = (v7 + 16);
  v174 = (v8 + 8);
  v170 = (v7 + 8);
  v148 = v11;
  v176 = (v6 + 48);
  while (1)
  {
    if (v10 >= *(*(v0 + 736) + 16))
    {
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v184 = v10;
    v16 = (v156 + 16 * v10);
    v17 = *v16;
    v1 = v16[1];
    v160 = *v16;
    if (*(v11 + 16))
    {

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v1);
      v19 = *(v0 + 496);
      v20 = *(v0 + 472);
      if (v21)
      {
        _s8CipherML12UseCaseGroupVWOcTm_3(*(v11 + 56) + *(v138 + 72) * v18, *(v0 + 496), type metadata accessor for AspireApiConfig);
        (*(v138 + 56))(v19, 0, 1, v20);
      }

      else
      {
        (*v152)(*(v0 + 496), 1, 1, *(v0 + 472));
      }
    }

    else
    {
      (*v152)(*(v0 + 496), 1, 1, *(v0 + 472));
    }

    v22 = *(v0 + 496);
    if ((*v154)(v22, 1, *(v0 + 472)))
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
LABEL_13:
      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.daemon);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v192[0] = v14;
        *v13 = 136446210;
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v1, v192);

        *(v13 + 4) = v15;
        _os_log_impl(&dword_224E26000, v27, v28, "Configuration missing for usecase '%{public}s'", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x22AA61F40](v14, -1, -1);
        MEMORY[0x22AA61F40](v13, -1, -1);
      }

      else
      {
      }

      goto LABEL_3;
    }

    v23 = *(v0 + 488);
    v24 = *(v0 + 464);
    _s8CipherML12UseCaseGroupVWOcTm_3(v22, v23, type metadata accessor for AspireApiConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v23, v24, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    _s8CipherML12UseCaseGroupVWOhTm_1(v23, type metadata accessor for AspireApiConfig);
    v25 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
    if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
    {
      goto LABEL_13;
    }

    v29 = *(v0 + 464);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *(v0 + 456);
      _s8CipherML12UseCaseGroupVWObTm_3(v29, v30, type metadata accessor for AspireApiPECConfig);
      v162 = *(v136 + 32);
      v150 = *(v136 + 40);
      outlined copy of Data._Representation(v162, v150);
      v31 = type metadata accessor for AspireApiPECConfig;
    }

    else
    {
      v30 = *(v0 + 448);
      _s8CipherML12UseCaseGroupVWObTm_3(v29, v30, type metadata accessor for AspireApiPIRConfig);
      v32 = (*(v30 + *(v135 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
      swift_beginAccess();
      v162 = *v32;
      v150 = v32[1];
      outlined copy of Data._Representation(*v32, v150);
      v31 = type metadata accessor for AspireApiPIRConfig;
    }

    _s8CipherML12UseCaseGroupVWOhTm_1(v30, v31);
    v33 = *(*(v0 + 608) + 8);
    v168 = *(v33 + 16);
    if (!v168)
    {
      break;
    }

    v34 = 0;
    v182 = v33 + ((*(v188 + 80) + 32) & ~*(v188 + 80));
    if (v162)
    {
      v35 = 0;
    }

    else
    {
      v35 = v150 == 0xC000000000000000;
    }

    v178 = v150 >> 62;
    v37 = !v35 || v150 >> 62 != 3;
    v141 = v37;
    v38 = __OFSUB__(HIDWORD(v162), v162);
    v139 = v38;
    v180 = v1;
    v166 = *(*(v0 + 608) + 8);
    while (1)
    {
      if (v34 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_123;
      }

      v39 = *(v0 + 416);
      v41 = *(v0 + 352);
      v40 = *(v0 + 360);
      _s8CipherML12UseCaseGroupVWOcTm_3(v182 + *(v188 + 72) * v34, v39, type metadata accessor for AspireApiKeyStatus);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v39 + *(v186 + 24), v41, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v42 = *v12;
      v43 = (*v12)(v41, 1, v40);
      v44 = *(v0 + 392);
      v190 = v34;
      if (v43 == 1)
      {
        v46 = *(v0 + 352);
        v45 = *(v0 + 360);
        *v44 = MEMORY[0x277D84F90];
        *(v144 + 8) = 0;
        v47 = &v44[*(v146 + 24)];
        UnknownStorage.init()();
        v48 = *(v146 + 28);
        v49 = type metadata accessor for AspireHeEncryptionParameters(0);
        (*(*(v49 - 8) + 56))(&v44[v48], 1, 1, v49);
        if (v42(v46, 1, v45) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 352), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        }
      }

      else
      {
        _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 352), v44, type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      v50 = *(v0 + 392);
      v51 = *(v0 + 360);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig);
      v52 = Message.serializedData(partial:)();
      if (v2)
      {
        v110 = *(v0 + 736);
        v111 = *(v0 + 696);
        v112 = *(v0 + 648);
        v113 = *(v0 + 608);
        v114 = *(v0 + 416);
        v115 = *(v0 + 392);

        outlined consume of Data._Representation(v162, v150);

        _s8CipherML12UseCaseGroupVWOhTm_1(v115, type metadata accessor for AspireHeEvaluationKeyConfig);
        _s8CipherML12UseCaseGroupVWOhTm_1(v114, type metadata accessor for AspireApiKeyStatus);
        __swift_destroy_boxed_opaque_existential_0((v0 + 64));
        _s8CipherML12UseCaseGroupVWOhTm_1(v112, type metadata accessor for UserIdentifier);

        goto LABEL_119;
      }

      v54 = v52;
      v55 = v53;
      v164 = v42;
      v56 = *(v0 + 312);
      v57 = *(v0 + 296);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, 255, MEMORY[0x277CC5540]);
      dispatch thunk of HashFunction.init()();
      v58 = v55 >> 62;
      if ((v55 >> 62) <= 1)
      {
        if (!v58)
        {
          v59 = *(v0 + 312);
          v60 = *(v0 + 296);
          *(v0 + 996) = v54;
          *(v0 + 1004) = v55;
          *(v0 + 1006) = BYTE2(v55);
          *(v0 + 1007) = BYTE3(v55);
          *(v0 + 1008) = BYTE4(v55);
          *(v0 + 1009) = BYTE5(v55);
          goto LABEL_57;
        }

        if (v54 >> 32 < v54)
        {
          goto LABEL_124;
        }

        if (__DataStorage._bytes.getter() && __OFSUB__(v54, __DataStorage._offset.getter()))
        {
          goto LABEL_129;
        }

        goto LABEL_55;
      }

      if (v58 == 2)
      {
        v61 = *(v54 + 16);
        v62 = *(v54 + 24);

        if (__DataStorage._bytes.getter() && __OFSUB__(v61, __DataStorage._offset.getter()))
        {
          goto LABEL_128;
        }

        if (__OFSUB__(v62, v61))
        {
          goto LABEL_125;
        }

LABEL_55:
        v63 = *(v0 + 312);
        v64 = *(v0 + 296);
        MEMORY[0x22AA5F1C0]();
        goto LABEL_57;
      }

      v65 = *(v0 + 312);
      v66 = *(v0 + 296);
      *(v0 + 1010) = 0;
      *(v0 + 1016) = 0;
LABEL_57:
      dispatch thunk of HashFunction.update(bufferPointer:)();
      outlined consume of Data._Representation(v54, v55);
      v67 = *(v0 + 392);
      v68 = *(v0 + 336);
      v69 = *(v0 + 312);
      v70 = *(v0 + 320);
      v71 = *(v0 + 296);
      dispatch thunk of HashFunction.finalize()();
      outlined consume of Data._Representation(v54, v55);
      (*v174)(v69, v71);
      *(v0 + 168) = v70;
      *(v0 + 176) = _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, 255, MEMORY[0x277CC5290]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
      (*v172)(boxed_opaque_existential_1, v68, v70);
      __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
      v2 = 0;
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*v170)(v68, v70);
      _s8CipherML12UseCaseGroupVWOhTm_1(v67, type metadata accessor for AspireHeEvaluationKeyConfig);
      v74 = *(v0 + 208);
      v73 = *(v0 + 216);
      outlined copy of Data._Representation(v74, v73);
      __swift_destroy_boxed_opaque_existential_0((v0 + 144));
      v75 = v73 >> 62;
      if (v73 >> 62 == 3)
      {
        v12 = v176;
        v1 = v180;
        if (v74 || v73 != 0xC000000000000000)
        {
          outlined consume of Data._Representation(v74, v73);
        }

        else if ((v141 & 1) == 0)
        {

          goto LABEL_105;
        }

        v77 = 0;
        v76 = v150 >> 62;
        if (v178 <= 1)
        {
LABEL_75:
          v81 = BYTE6(v150);
          if (v76)
          {
            v81 = HIDWORD(v162) - v162;
            if (v139)
            {
              goto LABEL_126;
            }
          }

          goto LABEL_77;
        }
      }

      else
      {
        outlined consume of Data._Representation(v74, v73);
        v12 = v176;
        v1 = v180;
        if (v75 > 1)
        {
          v76 = v150 >> 62;
          if (v75 == 2)
          {
            v83 = *(v74 + 16);
            v82 = *(v74 + 24);
            v80 = __OFSUB__(v82, v83);
            v77 = v82 - v83;
            if (v80)
            {
              goto LABEL_130;
            }

            if (v178 <= 1)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v77 = 0;
            if (v178 <= 1)
            {
              goto LABEL_75;
            }
          }
        }

        else
        {
          v76 = v150 >> 62;
          if (v75)
          {
            LODWORD(v77) = HIDWORD(v74) - v74;
            if (__OFSUB__(HIDWORD(v74), v74))
            {
              goto LABEL_131;
            }

            v77 = v77;
            if (v178 <= 1)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v77 = BYTE6(v73);
            if (v178 <= 1)
            {
              goto LABEL_75;
            }
          }
        }
      }

      if (v76 != 2)
      {
        if (!v77)
        {
          goto LABEL_103;
        }

        goto LABEL_35;
      }

      v79 = *(v162 + 16);
      v78 = *(v162 + 24);
      v80 = __OFSUB__(v78, v79);
      v81 = v78 - v79;
      if (v80)
      {
        goto LABEL_127;
      }

LABEL_77:
      if (v77 == v81)
      {
        break;
      }

LABEL_35:
      outlined consume of Data._Representation(v74, v73);
LABEL_36:
      v34 = v190 + 1;
      _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 416), type metadata accessor for AspireApiKeyStatus);
      v33 = v166;
      if (v168 == v190 + 1)
      {
        goto LABEL_110;
      }
    }

    if (v77 < 1)
    {
LABEL_103:

      outlined consume of Data._Representation(v74, v73);
      goto LABEL_105;
    }

    if (v75 <= 1)
    {
      if (!v75)
      {
        *(v0 + 968) = v74;
        *(v0 + 976) = v73;
        *(v0 + 978) = BYTE2(v73);
        *(v0 + 979) = BYTE3(v73);
        *(v0 + 980) = BYTE4(v73);
        *(v0 + 981) = BYTE5(v73);
        closure #1 in static Data.== infix(_:_:)(v0 + 968, v162, v150, v192);
        if (v192[0])
        {
          goto LABEL_104;
        }

        goto LABEL_102;
      }

      if (v74 >> 32 < v74)
      {
        goto LABEL_132;
      }

      v86 = __DataStorage._bytes.getter();
      if (v86)
      {
        v88 = __DataStorage._offset.getter();
        if (__OFSUB__(v74, v88))
        {
          goto LABEL_135;
        }

        v86 += v74 - v88;
      }

LABEL_99:
      MEMORY[0x22AA5F1C0]();
      closure #1 in static Data.== infix(_:_:)(v86, v162, v150, v192);
      outlined consume of Data._Representation(v74, v73);
      if (v192[0])
      {
        goto LABEL_104;
      }

      goto LABEL_102;
    }

    if (v75 == 2)
    {
      v84 = *(v74 + 16);
      v85 = *(v74 + 24);
      v86 = __DataStorage._bytes.getter();
      if (v86)
      {
        v87 = __DataStorage._offset.getter();
        if (__OFSUB__(v84, v87))
        {
          goto LABEL_134;
        }

        v86 += v84 - v87;
      }

      if (__OFSUB__(v85, v84))
      {
        goto LABEL_133;
      }

      goto LABEL_99;
    }

    *(v0 + 988) = 0;
    *v137 = 0;
    closure #1 in static Data.== infix(_:_:)(v137, v162, v150, v192);
    if ((v192[0] & 1) == 0)
    {
LABEL_102:
      v2 = 0;
      goto LABEL_36;
    }

LABEL_104:

    v2 = 0;
LABEL_105:
    v89 = *(v0 + 424);
    v90 = *(v0 + 432);
    v91 = *(v0 + 360);
    v92 = *(v0 + 344);
    _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 416), v89, type metadata accessor for AspireApiKeyStatus);
    _s8CipherML12UseCaseGroupVWObTm_3(v89, v90, type metadata accessor for AspireApiKeyStatus);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v90 + *(v186 + 24), v92, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v93 = v164(v92, 1, v91);
    v94 = *(v0 + 384);
    if (v93 == 1)
    {
      v95 = *(v0 + 360);
      v96 = *(v0 + 344);
      *v94 = MEMORY[0x277D84F90];
      *(v134 + 8) = 0;
      v97 = &v94[*(v146 + 24)];
      UnknownStorage.init()();
      v98 = *(v146 + 28);
      v99 = type metadata accessor for AspireHeEncryptionParameters(0);
      (*(*(v99 - 8) + 56))(&v94[v98], 1, 1, v99);
      if (v164(v96, 1, v95) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 344), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      }
    }

    else
    {
      _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 344), *(v0 + 384), type metadata accessor for AspireHeEvaluationKeyConfig);
    }

    v100 = *(v0 + 432);
    v101 = *(v0 + 376);
    _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 384), v101, type metadata accessor for AspireHeEvaluationKeyConfig);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v192[0] = v158;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v101, v162, v150, isUniquelyReferenced_nonNull_native);
    outlined consume of Data._Representation(v162, v150);
    _s8CipherML12UseCaseGroupVWOhTm_1(v100, type metadata accessor for AspireApiKeyStatus);
    v158 = v192[0];
LABEL_3:
    v10 = v184 + 1;
    *(v0 + 816) = v158;
    v11 = v148;
    if (v184 + 1 == *(v0 + 744))
    {
      v116 = *(v0 + 736);
      v117 = *(v0 + 256);

      *(v0 + 824) = *(*(v117 + 112) + 24);
      type metadata accessor for EvaluationKeyConfigTable();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, 255, type metadata accessor for EvaluationKeyConfigTable);

      v118 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 832) = v118;
      *(v0 + 840) = v119;
      v120 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2822009F8](KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), v118, v119);
    }
  }

LABEL_110:
  v103 = *(v0 + 736);

  if (one-time initialization token for daemon == -1)
  {
    goto LABEL_111;
  }

LABEL_136:
  swift_once();
LABEL_111:
  v104 = type metadata accessor for Logger();
  __swift_project_value_buffer(v104, static Logger.daemon);

  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v192[0] = v108;
    *v107 = 136315138;
    v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v1, v192);

    *(v107 + 4) = v109;
    _os_log_impl(&dword_224E26000, v105, v106, "Configuration did not have matching keyStatus for usecase %s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v108);
    MEMORY[0x22AA61F40](v108, -1, -1);
    MEMORY[0x22AA61F40](v107, -1, -1);
  }

  else
  {
  }

  v111 = *(v0 + 696);
  v121 = *(v0 + 648);
  v113 = *(v0 + 608);
  type metadata accessor for CipherMLError();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  outlined consume of Data._Representation(v162, v150);
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  _s8CipherML12UseCaseGroupVWOhTm_1(v121, type metadata accessor for UserIdentifier);
LABEL_119:
  _s8CipherML12UseCaseGroupVWOhTm_1(v111, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v113, type metadata accessor for AspireApiConfigResponse);
  v122 = *(v0 + 696);
  v123 = *(v0 + 688);
  v124 = *(v0 + 680);
  v125 = *(v0 + 672);
  v126 = *(v0 + 648);
  v127 = *(v0 + 640);
  v128 = *(v0 + 632);
  v129 = *(v0 + 608);
  v130 = *(v0 + 600);
  v140 = *(v0 + 592);
  v142 = *(v0 + 584);
  v143 = *(v0 + 560);
  v145 = *(v0 + 552);
  v147 = *(v0 + 536);
  v149 = *(v0 + 528);
  v151 = *(v0 + 512);
  v153 = *(v0 + 504);
  v155 = *(v0 + 496);
  v157 = *(v0 + 488);
  v159 = *(v0 + 464);
  v161 = *(v0 + 456);
  v163 = *(v0 + 448);
  v165 = *(v0 + 432);
  v167 = *(v0 + 424);
  v169 = *(v0 + 416);
  v171 = *(v0 + 392);
  v173 = *(v0 + 384);
  v175 = *(v0 + 376);
  v177 = *(v0 + 352);
  v179 = *(v0 + 344);
  v181 = *(v0 + 336);
  v183 = *(v0 + 312);
  v185 = *(v0 + 288);
  v187 = *(v0 + 280);
  v189 = *(v0 + 272);
  v191 = *(v0 + 264);

  v131 = *(v0 + 8);
  v132 = *MEMORY[0x277D85DE8];

  return v131();
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 800);
  v12 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
    v4 = *(v2 + 736);
    v5 = *(v2 + 256);

    v6 = *MEMORY[0x277D85DE8];
    v7 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v8 = v5;
  }

  else
  {
    v8 = *(v2 + 256);
    v9 = *MEMORY[0x277D85DE8];
    v7 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v193 = v0;
  v192[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 808);
  v137 = (v0 + 982);
  v3 = *(v0 + 736);
  v4 = *(v0 + 608);
  v5 = *(v0 + 480);
  v135 = *(v0 + 440);
  v136 = *(v0 + 456);
  v186 = *(v0 + 400);
  v188 = *(v0 + 408);
  v134 = *(v0 + 384);
  v6 = *(v0 + 368);
  v144 = *(v0 + 392);
  v146 = *(v0 + 360);
  v7 = *(v0 + 328);
  v8 = *(v0 + 304);
  outlined assign with take of AspireApiConfigResponse(*(v0 + 584), v4);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = 0;
  v11 = *v4;
  v156 = v3 + 32;
  v158 = v9;
  v138 = v5;
  v152 = (v5 + 56);
  v154 = (v5 + 48);
  v12 = (v6 + 48);
  v172 = (v7 + 16);
  v174 = (v8 + 8);
  v170 = (v7 + 8);
  v148 = v11;
  v176 = (v6 + 48);
  while (1)
  {
    if (v10 >= *(*(v0 + 736) + 16))
    {
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v184 = v10;
    v16 = (v156 + 16 * v10);
    v17 = *v16;
    v1 = v16[1];
    v160 = *v16;
    if (*(v11 + 16))
    {

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v1);
      v19 = *(v0 + 496);
      v20 = *(v0 + 472);
      if (v21)
      {
        _s8CipherML12UseCaseGroupVWOcTm_3(*(v11 + 56) + *(v138 + 72) * v18, *(v0 + 496), type metadata accessor for AspireApiConfig);
        (*(v138 + 56))(v19, 0, 1, v20);
      }

      else
      {
        (*v152)(*(v0 + 496), 1, 1, *(v0 + 472));
      }
    }

    else
    {
      (*v152)(*(v0 + 496), 1, 1, *(v0 + 472));
    }

    v22 = *(v0 + 496);
    if ((*v154)(v22, 1, *(v0 + 472)))
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
LABEL_13:
      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.daemon);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v192[0] = v14;
        *v13 = 136446210;
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v1, v192);

        *(v13 + 4) = v15;
        _os_log_impl(&dword_224E26000, v27, v28, "Configuration missing for usecase '%{public}s'", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x22AA61F40](v14, -1, -1);
        MEMORY[0x22AA61F40](v13, -1, -1);
      }

      else
      {
      }

      goto LABEL_3;
    }

    v23 = *(v0 + 488);
    v24 = *(v0 + 464);
    _s8CipherML12UseCaseGroupVWOcTm_3(v22, v23, type metadata accessor for AspireApiConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v22, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v23, v24, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    _s8CipherML12UseCaseGroupVWOhTm_1(v23, type metadata accessor for AspireApiConfig);
    v25 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
    if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
    {
      goto LABEL_13;
    }

    v29 = *(v0 + 464);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *(v0 + 456);
      _s8CipherML12UseCaseGroupVWObTm_3(v29, v30, type metadata accessor for AspireApiPECConfig);
      v162 = *(v136 + 32);
      v150 = *(v136 + 40);
      outlined copy of Data._Representation(v162, v150);
      v31 = type metadata accessor for AspireApiPECConfig;
    }

    else
    {
      v30 = *(v0 + 448);
      _s8CipherML12UseCaseGroupVWObTm_3(v29, v30, type metadata accessor for AspireApiPIRConfig);
      v32 = (*(v30 + *(v135 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
      swift_beginAccess();
      v162 = *v32;
      v150 = v32[1];
      outlined copy of Data._Representation(*v32, v150);
      v31 = type metadata accessor for AspireApiPIRConfig;
    }

    _s8CipherML12UseCaseGroupVWOhTm_1(v30, v31);
    v33 = *(*(v0 + 608) + 8);
    v168 = *(v33 + 16);
    if (!v168)
    {
      break;
    }

    v34 = 0;
    v182 = v33 + ((*(v188 + 80) + 32) & ~*(v188 + 80));
    if (v162)
    {
      v35 = 0;
    }

    else
    {
      v35 = v150 == 0xC000000000000000;
    }

    v178 = v150 >> 62;
    v37 = !v35 || v150 >> 62 != 3;
    v141 = v37;
    v38 = __OFSUB__(HIDWORD(v162), v162);
    v139 = v38;
    v180 = v1;
    v166 = *(*(v0 + 608) + 8);
    while (1)
    {
      if (v34 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_123;
      }

      v39 = *(v0 + 416);
      v41 = *(v0 + 352);
      v40 = *(v0 + 360);
      _s8CipherML12UseCaseGroupVWOcTm_3(v182 + *(v188 + 72) * v34, v39, type metadata accessor for AspireApiKeyStatus);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v39 + *(v186 + 24), v41, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v42 = *v12;
      v43 = (*v12)(v41, 1, v40);
      v44 = *(v0 + 392);
      v190 = v34;
      if (v43 == 1)
      {
        v46 = *(v0 + 352);
        v45 = *(v0 + 360);
        *v44 = MEMORY[0x277D84F90];
        *(v144 + 8) = 0;
        v47 = &v44[*(v146 + 24)];
        UnknownStorage.init()();
        v48 = *(v146 + 28);
        v49 = type metadata accessor for AspireHeEncryptionParameters(0);
        (*(*(v49 - 8) + 56))(&v44[v48], 1, 1, v49);
        if (v42(v46, 1, v45) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 352), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        }
      }

      else
      {
        _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 352), v44, type metadata accessor for AspireHeEvaluationKeyConfig);
      }

      v50 = *(v0 + 392);
      v51 = *(v0 + 360);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig);
      v52 = Message.serializedData(partial:)();
      if (v2)
      {
        v110 = *(v0 + 736);
        v111 = *(v0 + 696);
        v112 = *(v0 + 648);
        v113 = *(v0 + 608);
        v114 = *(v0 + 416);
        v115 = *(v0 + 392);

        outlined consume of Data._Representation(v162, v150);

        _s8CipherML12UseCaseGroupVWOhTm_1(v115, type metadata accessor for AspireHeEvaluationKeyConfig);
        _s8CipherML12UseCaseGroupVWOhTm_1(v114, type metadata accessor for AspireApiKeyStatus);
        __swift_destroy_boxed_opaque_existential_0((v0 + 64));
        _s8CipherML12UseCaseGroupVWOhTm_1(v112, type metadata accessor for UserIdentifier);

        goto LABEL_119;
      }

      v54 = v52;
      v55 = v53;
      v164 = v42;
      v56 = *(v0 + 312);
      v57 = *(v0 + 296);
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, 255, MEMORY[0x277CC5540]);
      dispatch thunk of HashFunction.init()();
      v58 = v55 >> 62;
      if ((v55 >> 62) <= 1)
      {
        if (!v58)
        {
          v59 = *(v0 + 312);
          v60 = *(v0 + 296);
          *(v0 + 996) = v54;
          *(v0 + 1004) = v55;
          *(v0 + 1006) = BYTE2(v55);
          *(v0 + 1007) = BYTE3(v55);
          *(v0 + 1008) = BYTE4(v55);
          *(v0 + 1009) = BYTE5(v55);
          goto LABEL_57;
        }

        if (v54 >> 32 < v54)
        {
          goto LABEL_124;
        }

        if (__DataStorage._bytes.getter() && __OFSUB__(v54, __DataStorage._offset.getter()))
        {
          goto LABEL_129;
        }

        goto LABEL_55;
      }

      if (v58 == 2)
      {
        v61 = *(v54 + 16);
        v62 = *(v54 + 24);

        if (__DataStorage._bytes.getter() && __OFSUB__(v61, __DataStorage._offset.getter()))
        {
          goto LABEL_128;
        }

        if (__OFSUB__(v62, v61))
        {
          goto LABEL_125;
        }

LABEL_55:
        v63 = *(v0 + 312);
        v64 = *(v0 + 296);
        MEMORY[0x22AA5F1C0]();
        goto LABEL_57;
      }

      v65 = *(v0 + 312);
      v66 = *(v0 + 296);
      *(v0 + 1010) = 0;
      *(v0 + 1016) = 0;
LABEL_57:
      dispatch thunk of HashFunction.update(bufferPointer:)();
      outlined consume of Data._Representation(v54, v55);
      v67 = *(v0 + 392);
      v68 = *(v0 + 336);
      v69 = *(v0 + 312);
      v70 = *(v0 + 320);
      v71 = *(v0 + 296);
      dispatch thunk of HashFunction.finalize()();
      outlined consume of Data._Representation(v54, v55);
      (*v174)(v69, v71);
      *(v0 + 168) = v70;
      *(v0 + 176) = _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, 255, MEMORY[0x277CC5290]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
      (*v172)(boxed_opaque_existential_1, v68, v70);
      __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
      v2 = 0;
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*v170)(v68, v70);
      _s8CipherML12UseCaseGroupVWOhTm_1(v67, type metadata accessor for AspireHeEvaluationKeyConfig);
      v74 = *(v0 + 208);
      v73 = *(v0 + 216);
      outlined copy of Data._Representation(v74, v73);
      __swift_destroy_boxed_opaque_existential_0((v0 + 144));
      v75 = v73 >> 62;
      if (v73 >> 62 == 3)
      {
        v12 = v176;
        v1 = v180;
        if (v74 || v73 != 0xC000000000000000)
        {
          outlined consume of Data._Representation(v74, v73);
        }

        else if ((v141 & 1) == 0)
        {

          goto LABEL_105;
        }

        v77 = 0;
        v76 = v150 >> 62;
        if (v178 <= 1)
        {
LABEL_75:
          v81 = BYTE6(v150);
          if (v76)
          {
            v81 = HIDWORD(v162) - v162;
            if (v139)
            {
              goto LABEL_126;
            }
          }

          goto LABEL_77;
        }
      }

      else
      {
        outlined consume of Data._Representation(v74, v73);
        v12 = v176;
        v1 = v180;
        if (v75 > 1)
        {
          v76 = v150 >> 62;
          if (v75 == 2)
          {
            v83 = *(v74 + 16);
            v82 = *(v74 + 24);
            v80 = __OFSUB__(v82, v83);
            v77 = v82 - v83;
            if (v80)
            {
              goto LABEL_130;
            }

            if (v178 <= 1)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v77 = 0;
            if (v178 <= 1)
            {
              goto LABEL_75;
            }
          }
        }

        else
        {
          v76 = v150 >> 62;
          if (v75)
          {
            LODWORD(v77) = HIDWORD(v74) - v74;
            if (__OFSUB__(HIDWORD(v74), v74))
            {
              goto LABEL_131;
            }

            v77 = v77;
            if (v178 <= 1)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v77 = BYTE6(v73);
            if (v178 <= 1)
            {
              goto LABEL_75;
            }
          }
        }
      }

      if (v76 != 2)
      {
        if (!v77)
        {
          goto LABEL_103;
        }

        goto LABEL_35;
      }

      v79 = *(v162 + 16);
      v78 = *(v162 + 24);
      v80 = __OFSUB__(v78, v79);
      v81 = v78 - v79;
      if (v80)
      {
        goto LABEL_127;
      }

LABEL_77:
      if (v77 == v81)
      {
        break;
      }

LABEL_35:
      outlined consume of Data._Representation(v74, v73);
LABEL_36:
      v34 = v190 + 1;
      _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 416), type metadata accessor for AspireApiKeyStatus);
      v33 = v166;
      if (v168 == v190 + 1)
      {
        goto LABEL_110;
      }
    }

    if (v77 < 1)
    {
LABEL_103:

      outlined consume of Data._Representation(v74, v73);
      goto LABEL_105;
    }

    if (v75 <= 1)
    {
      if (!v75)
      {
        *(v0 + 968) = v74;
        *(v0 + 976) = v73;
        *(v0 + 978) = BYTE2(v73);
        *(v0 + 979) = BYTE3(v73);
        *(v0 + 980) = BYTE4(v73);
        *(v0 + 981) = BYTE5(v73);
        closure #1 in static Data.== infix(_:_:)(v0 + 968, v162, v150, v192);
        if (v192[0])
        {
          goto LABEL_104;
        }

        goto LABEL_102;
      }

      if (v74 >> 32 < v74)
      {
        goto LABEL_132;
      }

      v86 = __DataStorage._bytes.getter();
      if (v86)
      {
        v88 = __DataStorage._offset.getter();
        if (__OFSUB__(v74, v88))
        {
          goto LABEL_135;
        }

        v86 += v74 - v88;
      }

LABEL_99:
      MEMORY[0x22AA5F1C0]();
      closure #1 in static Data.== infix(_:_:)(v86, v162, v150, v192);
      outlined consume of Data._Representation(v74, v73);
      if (v192[0])
      {
        goto LABEL_104;
      }

      goto LABEL_102;
    }

    if (v75 == 2)
    {
      v84 = *(v74 + 16);
      v85 = *(v74 + 24);
      v86 = __DataStorage._bytes.getter();
      if (v86)
      {
        v87 = __DataStorage._offset.getter();
        if (__OFSUB__(v84, v87))
        {
          goto LABEL_134;
        }

        v86 += v84 - v87;
      }

      if (__OFSUB__(v85, v84))
      {
        goto LABEL_133;
      }

      goto LABEL_99;
    }

    *(v0 + 988) = 0;
    *v137 = 0;
    closure #1 in static Data.== infix(_:_:)(v137, v162, v150, v192);
    if ((v192[0] & 1) == 0)
    {
LABEL_102:
      v2 = 0;
      goto LABEL_36;
    }

LABEL_104:

    v2 = 0;
LABEL_105:
    v89 = *(v0 + 424);
    v90 = *(v0 + 432);
    v91 = *(v0 + 360);
    v92 = *(v0 + 344);
    _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 416), v89, type metadata accessor for AspireApiKeyStatus);
    _s8CipherML12UseCaseGroupVWObTm_3(v89, v90, type metadata accessor for AspireApiKeyStatus);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v90 + *(v186 + 24), v92, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v93 = v164(v92, 1, v91);
    v94 = *(v0 + 384);
    if (v93 == 1)
    {
      v95 = *(v0 + 360);
      v96 = *(v0 + 344);
      *v94 = MEMORY[0x277D84F90];
      *(v134 + 8) = 0;
      v97 = &v94[*(v146 + 24)];
      UnknownStorage.init()();
      v98 = *(v146 + 28);
      v99 = type metadata accessor for AspireHeEncryptionParameters(0);
      (*(*(v99 - 8) + 56))(&v94[v98], 1, 1, v99);
      if (v164(v96, 1, v95) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 344), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      }
    }

    else
    {
      _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 344), *(v0 + 384), type metadata accessor for AspireHeEvaluationKeyConfig);
    }

    v100 = *(v0 + 432);
    v101 = *(v0 + 376);
    _s8CipherML12UseCaseGroupVWObTm_3(*(v0 + 384), v101, type metadata accessor for AspireHeEvaluationKeyConfig);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v192[0] = v158;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v101, v162, v150, isUniquelyReferenced_nonNull_native);
    outlined consume of Data._Representation(v162, v150);
    _s8CipherML12UseCaseGroupVWOhTm_1(v100, type metadata accessor for AspireApiKeyStatus);
    v158 = v192[0];
LABEL_3:
    v10 = v184 + 1;
    *(v0 + 816) = v158;
    v11 = v148;
    if (v184 + 1 == *(v0 + 744))
    {
      v116 = *(v0 + 736);
      v117 = *(v0 + 256);

      *(v0 + 824) = *(*(v117 + 112) + 24);
      type metadata accessor for EvaluationKeyConfigTable();
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, 255, type metadata accessor for EvaluationKeyConfigTable);

      v118 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 832) = v118;
      *(v0 + 840) = v119;
      v120 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2822009F8](KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), v118, v119);
    }
  }

LABEL_110:
  v103 = *(v0 + 736);

  if (one-time initialization token for daemon == -1)
  {
    goto LABEL_111;
  }

LABEL_136:
  swift_once();
LABEL_111:
  v104 = type metadata accessor for Logger();
  __swift_project_value_buffer(v104, static Logger.daemon);

  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v192[0] = v108;
    *v107 = 136315138;
    v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v1, v192);

    *(v107 + 4) = v109;
    _os_log_impl(&dword_224E26000, v105, v106, "Configuration did not have matching keyStatus for usecase %s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v108);
    MEMORY[0x22AA61F40](v108, -1, -1);
    MEMORY[0x22AA61F40](v107, -1, -1);
  }

  else
  {
  }

  v111 = *(v0 + 696);
  v121 = *(v0 + 648);
  v113 = *(v0 + 608);
  type metadata accessor for CipherMLError();
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  outlined consume of Data._Representation(v162, v150);
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  _s8CipherML12UseCaseGroupVWOhTm_1(v121, type metadata accessor for UserIdentifier);
LABEL_119:
  _s8CipherML12UseCaseGroupVWOhTm_1(v111, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v113, type metadata accessor for AspireApiConfigResponse);
  v122 = *(v0 + 696);
  v123 = *(v0 + 688);
  v124 = *(v0 + 680);
  v125 = *(v0 + 672);
  v126 = *(v0 + 648);
  v127 = *(v0 + 640);
  v128 = *(v0 + 632);
  v129 = *(v0 + 608);
  v130 = *(v0 + 600);
  v140 = *(v0 + 592);
  v142 = *(v0 + 584);
  v143 = *(v0 + 560);
  v145 = *(v0 + 552);
  v147 = *(v0 + 536);
  v149 = *(v0 + 528);
  v151 = *(v0 + 512);
  v153 = *(v0 + 504);
  v155 = *(v0 + 496);
  v157 = *(v0 + 488);
  v159 = *(v0 + 464);
  v161 = *(v0 + 456);
  v163 = *(v0 + 448);
  v165 = *(v0 + 432);
  v167 = *(v0 + 424);
  v169 = *(v0 + 416);
  v171 = *(v0 + 392);
  v173 = *(v0 + 384);
  v175 = *(v0 + 376);
  v177 = *(v0 + 352);
  v179 = *(v0 + 344);
  v181 = *(v0 + 336);
  v183 = *(v0 + 312);
  v185 = *(v0 + 288);
  v187 = *(v0 + 280);
  v189 = *(v0 + 272);
  v191 = *(v0 + 264);

  v131 = *(v0 + 8);
  v132 = *MEMORY[0x277D85DE8];

  return v131();
}

{
  v11 = v0;
  v10[5] = *MEMORY[0x277D85DE8];
  v1 = v0[102];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DataV_Tt1g5(*(v1 + 16), 0);
    v4 = specialized Sequence._copySequenceContents(initializing:)(v10, v3 + 2, v2, v1);

    outlined consume of [String : [TokenCache.CachedToken]].Iterator._Variant();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v0[106] = v3;
  v5 = swift_task_alloc();
  v0[107] = v5;
  *v5 = v0;
  v5[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  v6 = v0[103];
  v7 = v0[102];
  v8 = *MEMORY[0x277D85DE8];

  return specialized DatabaseTable<>.update(keys:with:)(v3, v7);
}

{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 856);
  v15 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v4 = v2[105];
    v5 = v2[104];
    v6 = *MEMORY[0x277D85DE8];
    v7 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v8 = v2[106];
    v9 = v2[103];
    v10 = v2[102];
    v11 = v2[32];

    v12 = *MEMORY[0x277D85DE8];
    v7 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v5 = v11;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v7, v5, v4);
}

{
  v59 = *MEMORY[0x277D85DE8];
  v1 = v0[108];
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[87];
    v3 = v0[76];
    _s8CipherML12UseCaseGroupVWOhTm_1(v0[81], type metadata accessor for UserIdentifier);
    _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UseCaseGroup);
    _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for AspireApiConfigResponse);
    v4 = v0[87];
    v5 = v0[86];
    v6 = v0[85];
    v7 = v0[84];
    v8 = v0[81];
    v9 = v0[80];
    v10 = v0[79];
    v11 = v0[76];
    v12 = v0[75];
    v13 = v0[74];
    v33 = v0[73];
    v34 = v0[70];
    v35 = v0[69];
    v36 = v0[67];
    v37 = v0[66];
    v38 = v0[64];
    v39 = v0[63];
    v40 = v0[62];
    v41 = v0[61];
    v42 = v0[58];
    v43 = v0[57];
    v44 = v0[56];
    v45 = v0[54];
    v46 = v0[53];
    v47 = v0[52];
    v48 = v0[49];
    v49 = v0[48];
    v50 = v0[47];
    v51 = v0[44];
    v52 = v0[43];
    v53 = v0[42];
    v54 = v0[39];
    v55 = v0[36];
    v56 = v0[35];
    v57 = v0[34];
    v58 = v0[33];

    v14 = v0[1];
    v15 = *MEMORY[0x277D85DE8];

    return v14();
  }

  else
  {
    v18 = v0[29];
    v17 = v0[30];
    v19 = v0[28];
    v20 = *(v0[76] + 8);
    v21 = MEMORY[0x22AA609C0](0xD000000000000021, 0x8000000225036730);
    v22 = swift_allocObject();
    v22[2] = v19;
    v22[3] = v18;
    v22[4] = v20;
    v22[5] = v17;
    v0[6] = closure #1 in static Telemetry.reportKeyRotationEvent(groupName:keyStatuses:activeUseCases:)partial apply;
    v0[7] = v22;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    v0[5] = &block_descriptor_24_1;
    v23 = _Block_copy(v0 + 2);
    v24 = v0[7];

    AnalyticsSendEventLazy();
    _Block_release(v23);

    v25 = swift_task_alloc();
    v0[109] = v25;
    *v25 = v0;
    v25[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v26 = v0[81];
    v27 = v0[35];
    v28 = v0[32];
    v29 = v0[29];
    v30 = v0[30];
    v31 = v0[28];
    v32 = *MEMORY[0x277D85DE8];

    return KeyRotation.collectKeyStatusesToUpload(groupName:userId:keyStatuses:activeUseCases:)(v27, v31, v29, v26, v20, v30);
  }
}

{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[106];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[32];

  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:), v4, 0);
}

{
  v44 = *MEMORY[0x277D85DE8];
  v1 = v0[87];
  v2 = v0[81];
  v3 = v0[76];
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for AspireApiConfigResponse);
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[84];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[76];
  v12 = v0[75];
  v13 = v0[74];
  v17 = v0[108];
  v18 = v0[73];
  v19 = v0[70];
  v20 = v0[69];
  v21 = v0[67];
  v22 = v0[66];
  v23 = v0[64];
  v24 = v0[63];
  v25 = v0[62];
  v26 = v0[61];
  v27 = v0[58];
  v28 = v0[57];
  v29 = v0[56];
  v30 = v0[54];
  v31 = v0[53];
  v32 = v0[52];
  v33 = v0[49];
  v34 = v0[48];
  v35 = v0[47];
  v36 = v0[44];
  v37 = v0[43];
  v38 = v0[42];
  v39 = v0[39];
  v40 = v0[36];
  v41 = v0[35];
  v42 = v0[34];
  v43 = v0[33];

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

{
  v138 = *MEMORY[0x277D85DE8];
  v1 = v0[78];
  v2 = v0[77];
  if (!*(v0[110] + 16))
  {
    v9 = v0[36];
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[35], &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);

    (*(v1 + 56))(v9, 1, 1, v2);
    v7 = (v1 + 48);
    goto LABEL_6;
  }

  v3 = v0[34];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[35], v3, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v4 = *(v1 + 48);
  v0[112] = v4;
  if (v4(v3, 1, v2) != 1)
  {
    v39 = v0[88];
    _s8CipherML12UseCaseGroupVWObTm_3(v0[34], v0[79], type metadata accessor for UserIdentifier);
    v40 = *(v39 + 32);
    if (*(v40 + 16))
    {
      v42 = v0[28];
      v41 = v0[29];

      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v41);
      if (v44)
      {
        v45 = v0[85];
        v46 = v0[84];
        v47 = v0[82];
        v48 = v0[66];
        v49 = v0[65];
        _s8CipherML12UseCaseGroupVWOcTm_3(*(v40 + 56) + v0[89] * v43, v46, type metadata accessor for UseCaseGroup);

        _s8CipherML12UseCaseGroupVWObTm_3(v46, v45, type metadata accessor for UseCaseGroup);
        v50 = *(v47 + 36);
        _s8CipherML12UseCaseGroupVWOcTm_3(v45 + v50, v48, type metadata accessor for NetworkManagerType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
        {
          v74 = v0[95];
          v75 = v0[94];
          v76 = v0[69];
          v77 = v0[68];
          _s8CipherML12UseCaseGroupVWOcTm_3(v45 + v50, v76, type metadata accessor for NetworkConfig);
          v78 = (v76 + *(v77 + 20));
          *v78 = v75;
          v78[1] = v74;

          v79 = swift_task_alloc();
          v0[113] = v79;
          *v79 = v0;
          v79[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
          v80 = v0[110];
          v81 = v0[79];
          v82 = v0[69];
          v83 = v0[32];
          v84 = *MEMORY[0x277D85DE8];

          return KeyRotation.uploadKeys(userId:keyStatusesToUpload:networkManagerConfig:)(v81, v80, v82);
        }

        v52 = v0[110];
        v53 = v0[85];
        v54 = v0[79];

        _s8CipherML12UseCaseGroupVWOhTm_1(v53, type metadata accessor for UseCaseGroup);
        _s8CipherML12UseCaseGroupVWOhTm_1(v54, type metadata accessor for UserIdentifier);
        goto LABEL_4;
      }
    }

    v55 = v0[110];
    v56 = v0[79];
    v57 = v0[35];
    v59 = v0[28];
    v58 = v0[29];

    type metadata accessor for CipherMLError();
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_9(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, 255, type metadata accessor for CipherMLError);
    swift_allocError();
    *v60 = v59;
    v60[1] = v58;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    _s8CipherML12UseCaseGroupVWOhTm_1(v56, type metadata accessor for UserIdentifier);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v57, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    v61 = v0[87];
    v62 = v0[76];
    _s8CipherML12UseCaseGroupVWOhTm_1(v0[81], type metadata accessor for UserIdentifier);
    _s8CipherML12UseCaseGroupVWOhTm_1(v61, type metadata accessor for UseCaseGroup);
    _s8CipherML12UseCaseGroupVWOhTm_1(v62, type metadata accessor for AspireApiConfigResponse);
    v63 = v0[87];
    v64 = v0[86];
    v65 = v0[85];
    v66 = v0[84];
    v67 = v0[81];
    v68 = v0[80];
    v69 = v0[79];
    v70 = v0[76];
    v71 = v0[75];
    v72 = v0[74];
    v86 = v0[73];
    v88 = v0[70];
    v90 = v0[69];
    v92 = v0[67];
    v94 = v0[66];
    v96 = v0[64];
    v98 = v0[63];
    v100 = v0[62];
    v102 = v0[61];
    v104 = v0[58];
    v106 = v0[57];
    v108 = v0[56];
    v110 = v0[54];
    v112 = v0[53];
    v114 = v0[52];
    v116 = v0[49];
    v118 = v0[48];
    v120 = v0[47];
    v122 = v0[44];
    v124 = v0[43];
    v126 = v0[42];
    v128 = v0[39];
    v130 = v0[36];
    v132 = v0[35];
    v135 = v0[34];
    v137 = v0[33];

    v24 = v0[1];
    v73 = *MEMORY[0x277D85DE8];
    goto LABEL_18;
  }

  v5 = v0[110];
  v6 = v0[34];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
LABEL_4:
  v7 = (v0 + 112);
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v0[35], v0[36], &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v8 = v0[78] + 48;
LABEL_6:
  v10 = *v7;
  v11 = v0[77];
  v12 = v0[36];
  if (v10(v12, 1, v11) == 1)
  {
    v13 = v0[87];
    _s8CipherML12UseCaseGroupVWOhTm_1(v0[81], type metadata accessor for UserIdentifier);
    _s8CipherML12UseCaseGroupVWOhTm_1(v13, type metadata accessor for UseCaseGroup);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    _s8CipherML12UseCaseGroupVWOhTm_1(v0[76], type metadata accessor for AspireApiConfigResponse);
    v14 = v0[87];
    v15 = v0[86];
    v16 = v0[85];
    v17 = v0[84];
    v18 = v0[81];
    v19 = v0[80];
    v20 = v0[79];
    v21 = v0[76];
    v22 = v0[75];
    v23 = v0[74];
    v85 = v0[73];
    v87 = v0[70];
    v89 = v0[69];
    v91 = v0[67];
    v93 = v0[66];
    v95 = v0[64];
    v97 = v0[63];
    v99 = v0[62];
    v101 = v0[61];
    v103 = v0[58];
    v105 = v0[57];
    v107 = v0[56];
    v109 = v0[54];
    v111 = v0[53];
    v113 = v0[52];
    v115 = v0[49];
    v117 = v0[48];
    v119 = v0[47];
    v121 = v0[44];
    v123 = v0[43];
    v125 = v0[42];
    v127 = v0[39];
    v129 = v0[36];
    v131 = v0[35];
    v133 = v0[34];
    v136 = v0[33];

    v24 = v0[1];
    v25 = *MEMORY[0x277D85DE8];
LABEL_18:

    return v24();
  }

  v26 = v0[80];
  v27 = v0[78];
  v28 = v0[32];
  v29 = v0[33];
  _s8CipherML12UseCaseGroupVWObTm_3(v12, v26, type metadata accessor for UserIdentifier);
  v0[115] = *(v28 + 120);
  v30 = *(v28 + 128);
  v0[116] = v30;
  ObjectType = swift_getObjectType();
  v0[117] = ObjectType;
  _s8CipherML12UseCaseGroupVWOcTm_3(v26, v29, type metadata accessor for UserIdentifier);
  (*(v27 + 56))(v29, 0, 1, v11);
  v134 = (*(v30 + 16) + **(v30 + 16));
  v32 = *(*(v30 + 16) + 4);
  v33 = swift_task_alloc();
  v0[118] = v33;
  *v33 = v0;
  v33[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  v34 = v0[33];
  v36 = v0[28];
  v35 = v0[29];
  v37 = *MEMORY[0x277D85DE8];

  return v134(v36, v35, v34, ObjectType, v30);
}

{
  v43 = *MEMORY[0x277D85DE8];
  v16 = v0[111];
  v1 = v0[87];
  v2 = v0[76];
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[81], type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for AspireApiConfigResponse);
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[79];
  v10 = v0[76];
  v11 = v0[75];
  v12 = v0[74];
  v17 = v0[73];
  v18 = v0[70];
  v19 = v0[69];
  v20 = v0[67];
  v21 = v0[66];
  v22 = v0[64];
  v23 = v0[63];
  v24 = v0[62];
  v25 = v0[61];
  v26 = v0[58];
  v27 = v0[57];
  v28 = v0[56];
  v29 = v0[54];
  v30 = v0[53];
  v31 = v0[52];
  v32 = v0[49];
  v33 = v0[48];
  v34 = v0[47];
  v35 = v0[44];
  v36 = v0[43];
  v37 = v0[42];
  v38 = v0[39];
  v39 = v0[36];
  v40 = v0[35];
  v41 = v0[34];
  v42 = v0[33];

  v13 = v0[1];
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 904);
  v4 = *v1;
  *(*v1 + 912) = v0;

  v5 = *(v2 + 880);
  v6 = *(v2 + 256);

  if (v0)
  {
    v7 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v7 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v59 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 680);
  v2 = *(v0 + 632);
  v3 = *(v0 + 528);
  _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 552), type metadata accessor for NetworkManagerConfig);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for NetworkManagerType);
  outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(*(v0 + 280), *(v0 + 288), &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v4 = *(v0 + 624);
  v5 = *(v0 + 616);
  v6 = *(v0 + 288);
  if ((*(v0 + 896))(v6, 1, v5) == 1)
  {
    v7 = *(v0 + 696);
    _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 648), type metadata accessor for UserIdentifier);
    _s8CipherML12UseCaseGroupVWOhTm_1(v7, type metadata accessor for UseCaseGroup);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
    _s8CipherML12UseCaseGroupVWOhTm_1(*(v0 + 608), type metadata accessor for AspireApiConfigResponse);
    v8 = *(v0 + 696);
    v9 = *(v0 + 688);
    v10 = *(v0 + 680);
    v11 = *(v0 + 672);
    v12 = *(v0 + 648);
    v13 = *(v0 + 640);
    v14 = *(v0 + 632);
    v15 = *(v0 + 608);
    v16 = *(v0 + 600);
    v17 = *(v0 + 592);
    v32 = *(v0 + 584);
    v33 = *(v0 + 560);
    v34 = *(v0 + 552);
    v35 = *(v0 + 536);
    v36 = *(v0 + 528);
    v37 = *(v0 + 512);
    v38 = *(v0 + 504);
    v39 = *(v0 + 496);
    v40 = *(v0 + 488);
    v41 = *(v0 + 464);
    v42 = *(v0 + 456);
    v43 = *(v0 + 448);
    v44 = *(v0 + 432);
    v45 = *(v0 + 424);
    v46 = *(v0 + 416);
    v47 = *(v0 + 392);
    v48 = *(v0 + 384);
    v49 = *(v0 + 376);
    v50 = *(v0 + 352);
    v51 = *(v0 + 344);
    v52 = *(v0 + 336);
    v53 = *(v0 + 312);
    v54 = *(v0 + 288);
    v55 = *(v0 + 280);
    v56 = *(v0 + 272);
    v58 = *(v0 + 264);

    v18 = *(v0 + 8);
    v19 = *MEMORY[0x277D85DE8];

    return v18();
  }

  else
  {
    v21 = *(v0 + 640);
    v22 = *(v0 + 256);
    v23 = *(v0 + 264);
    _s8CipherML12UseCaseGroupVWObTm_3(v6, v21, type metadata accessor for UserIdentifier);
    *(v0 + 920) = *(v22 + 120);
    v24 = *(v22 + 128);
    *(v0 + 928) = v24;
    ObjectType = swift_getObjectType();
    *(v0 + 936) = ObjectType;
    _s8CipherML12UseCaseGroupVWOcTm_3(v21, v23, type metadata accessor for UserIdentifier);
    (*(v4 + 56))(v23, 0, 1, v5);
    v57 = (*(v24 + 16) + **(v24 + 16));
    v26 = *(*(v24 + 16) + 4);
    v27 = swift_task_alloc();
    *(v0 + 944) = v27;
    *v27 = v0;
    v27[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
    v28 = *(v0 + 264);
    v30 = *(v0 + 224);
    v29 = *(v0 + 232);
    v31 = *MEMORY[0x277D85DE8];

    return v57(v30, v29, v28, ObjectType, v24);
  }
}

{
  v47 = *MEMORY[0x277D85DE8];
  v1 = v0[85];
  v2 = v0[79];
  v3 = v0[66];
  v4 = v0[35];
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[69], type metadata accessor for NetworkManagerConfig);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for NetworkManagerType);
  v20 = v0[114];
  v5 = v0[87];
  v6 = v0[76];
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[81], type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v5, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v6, type metadata accessor for AspireApiConfigResponse);
  v7 = v0[87];
  v8 = v0[86];
  v9 = v0[85];
  v10 = v0[84];
  v11 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[74];
  v21 = v0[73];
  v22 = v0[70];
  v23 = v0[69];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[64];
  v27 = v0[63];
  v28 = v0[62];
  v29 = v0[61];
  v30 = v0[58];
  v31 = v0[57];
  v32 = v0[56];
  v33 = v0[54];
  v34 = v0[53];
  v35 = v0[52];
  v36 = v0[49];
  v37 = v0[48];
  v38 = v0[47];
  v39 = v0[44];
  v40 = v0[43];
  v41 = v0[42];
  v42 = v0[39];
  v43 = v0[36];
  v44 = v0[35];
  v45 = v0[34];
  v46 = v0[33];

  v17 = v0[1];
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 944);
  v13 = *(*v0 + 928);
  v3 = *(*v0 + 264);
  v4 = *v0;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v12 = (*(v13 + 24) + **(v13 + 24));
  v5 = *(*(v13 + 24) + 4);
  v6 = swift_task_alloc();
  v1[119] = v6;
  *v6 = v4;
  v6[1] = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  v7 = v1[117];
  v8 = v1[116];
  v9 = v1[115];
  v10 = *MEMORY[0x277D85DE8];

  return v12(v7, v8);
}

{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 952);
  v4 = *v1;
  *(*v1 + 960) = v0;

  v5 = *(v2 + 256);
  if (v0)
  {
    v6 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  else
  {
    v6 = KeyRotation.rotateGroup(groupName:activeUseCases:configResponse:);
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v42 = *MEMORY[0x277D85DE8];
  v1 = v0[87];
  v2 = v0[81];
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[80], type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[76], type metadata accessor for AspireApiConfigResponse);
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[79];
  v10 = v0[76];
  v11 = v0[75];
  v12 = v0[74];
  v16 = v0[73];
  v17 = v0[70];
  v18 = v0[69];
  v19 = v0[67];
  v20 = v0[66];
  v21 = v0[64];
  v22 = v0[63];
  v23 = v0[62];
  v24 = v0[61];
  v25 = v0[58];
  v26 = v0[57];
  v27 = v0[56];
  v28 = v0[54];
  v29 = v0[53];
  v30 = v0[52];
  v31 = v0[49];
  v32 = v0[48];
  v33 = v0[47];
  v34 = v0[44];
  v35 = v0[43];
  v36 = v0[42];
  v37 = v0[39];
  v38 = v0[36];
  v39 = v0[35];
  v40 = v0[34];
  v41 = v0[33];

  v13 = v0[1];
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

{
  v41 = *MEMORY[0x277D85DE8];
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[87], type metadata accessor for UseCaseGroup);
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[84];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[76];
  v9 = v0[75];
  v10 = v0[74];
  v14 = v0[91];
  v15 = v0[73];
  v16 = v0[70];
  v17 = v0[69];
  v18 = v0[67];
  v19 = v0[66];
  v20 = v0[64];
  v21 = v0[63];
  v22 = v0[62];
  v23 = v0[61];
  v24 = v0[58];
  v25 = v0[57];
  v26 = v0[56];
  v27 = v0[54];
  v28 = v0[53];
  v29 = v0[52];
  v30 = v0[49];
  v31 = v0[48];
  v32 = v0[47];
  v33 = v0[44];
  v34 = v0[43];
  v35 = v0[42];
  v36 = v0[39];
  v37 = v0[36];
  v38 = v0[35];
  v39 = v0[34];
  v40 = v0[33];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

{
  v44 = *MEMORY[0x277D85DE8];
  v1 = v0[87];
  v2 = v0[81];
  v3 = v0[76];
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for AspireApiConfigResponse);
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[84];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[76];
  v12 = v0[75];
  v13 = v0[74];
  v17 = v0[97];
  v18 = v0[73];
  v19 = v0[70];
  v20 = v0[69];
  v21 = v0[67];
  v22 = v0[66];
  v23 = v0[64];
  v24 = v0[63];
  v25 = v0[62];
  v26 = v0[61];
  v27 = v0[58];
  v28 = v0[57];
  v29 = v0[56];
  v30 = v0[54];
  v31 = v0[53];
  v32 = v0[52];
  v33 = v0[49];
  v34 = v0[48];
  v35 = v0[47];
  v36 = v0[44];
  v37 = v0[43];
  v38 = v0[42];
  v39 = v0[39];
  v40 = v0[36];
  v41 = v0[35];
  v42 = v0[34];
  v43 = v0[33];

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

{
  v44 = *MEMORY[0x277D85DE8];
  v1 = v0[87];
  v2 = v0[81];
  v3 = v0[76];
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for AspireApiConfigResponse);
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[84];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[76];
  v12 = v0[75];
  v13 = v0[74];
  v17 = v0[99];
  v18 = v0[73];
  v19 = v0[70];
  v20 = v0[69];
  v21 = v0[67];
  v22 = v0[66];
  v23 = v0[64];
  v24 = v0[63];
  v25 = v0[62];
  v26 = v0[61];
  v27 = v0[58];
  v28 = v0[57];
  v29 = v0[56];
  v30 = v0[54];
  v31 = v0[53];
  v32 = v0[52];
  v33 = v0[49];
  v34 = v0[48];
  v35 = v0[47];
  v36 = v0[44];
  v37 = v0[43];
  v38 = v0[42];
  v39 = v0[39];
  v40 = v0[36];
  v41 = v0[35];
  v42 = v0[34];
  v43 = v0[33];

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

{
  v44 = *MEMORY[0x277D85DE8];
  v1 = v0[87];
  v2 = v0[81];
  v3 = v0[76];
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  _s8CipherML12UseCaseGroupVWOhTm_1(v2, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v1, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v3, type metadata accessor for AspireApiConfigResponse);
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[84];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[76];
  v12 = v0[75];
  v13 = v0[74];
  v17 = v0[101];
  v18 = v0[73];
  v19 = v0[70];
  v20 = v0[69];
  v21 = v0[67];
  v22 = v0[66];
  v23 = v0[64];
  v24 = v0[63];
  v25 = v0[62];
  v26 = v0[61];
  v27 = v0[58];
  v28 = v0[57];
  v29 = v0[56];
  v30 = v0[54];
  v31 = v0[53];
  v32 = v0[52];
  v33 = v0[49];
  v34 = v0[48];
  v35 = v0[47];
  v36 = v0[44];
  v37 = v0[43];
  v38 = v0[42];
  v39 = v0[39];
  v40 = v0[36];
  v41 = v0[35];
  v42 = v0[34];
  v43 = v0[33];

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

{
  v53 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v1 = v0[120];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.daemon);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[120];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_224E26000, v4, v5, "RotationTask: failed to synchronize key storage, but continuing anyway: %{public}@", v8, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v9, -1, -1);
    MEMORY[0x22AA61F40](v8, -1, -1);
  }

  v12 = v0[87];
  v13 = v0[81];
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[80], type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v13, type metadata accessor for UserIdentifier);
  _s8CipherML12UseCaseGroupVWOhTm_1(v12, type metadata accessor for UseCaseGroup);
  _s8CipherML12UseCaseGroupVWOhTm_1(v0[76], type metadata accessor for AspireApiConfigResponse);
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[84];
  v18 = v0[81];
  v19 = v0[80];
  v20 = v0[79];
  v21 = v0[76];
  v22 = v0[75];
  v23 = v0[74];
  v27 = v0[73];
  v28 = v0[70];
  v29 = v0[69];
  v30 = v0[67];
  v31 = v0[66];
  v32 = v0[64];
  v33 = v0[63];
  v34 = v0[62];
  v35 = v0[61];
  v36 = v0[58];
  v37 = v0[57];
  v38 = v0[56];
  v39 = v0[54];
  v40 = v0[53];
  v41 = v0[52];
  v42 = v0[49];
  v43 = v0[48];
  v44 = v0[47];
  v45 = v0[44];
  v46 = v0[43];
  v47 = v0[42];
  v48 = v0[39];
  v49 = v0[36];
  v50 = v0[35];
  v51 = v0[34];
  v52 = v0[33];

  v24 = v0[1];
  v25 = *MEMORY[0x277D85DE8];

  return v24();
}