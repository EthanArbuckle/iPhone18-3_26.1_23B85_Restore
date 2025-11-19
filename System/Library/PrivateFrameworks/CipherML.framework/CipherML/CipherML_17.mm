uint64_t closure #2 in AspireSimilarityPlaintextPacking.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspireSimilarityPlaintextPackingDiagonal(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v14, v22, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v22, v19, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMR);
      v36 = v45;
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v19, v45, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v36, v29, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v19, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
      v34 = v49;
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDiagonal and conformance AspireSimilarityPlaintextPackingDiagonal, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMR);
  }

  else
  {
    v40 = v44;
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v37, v44, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMd, &_s8CipherML40AspireSimilarityPlaintextPackingDiagonalVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v40, v41, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t closure #3 in AspireSimilarityPlaintextPacking.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMd, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMR);
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
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v14, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v14, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v14, v22, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v22, v19, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMd, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMR);
      v36 = v45;
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v19, v45, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v36, v29, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v19, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
      v34 = v49;
    }
  }

  v37 = v47;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseColumn and conformance AspireSimilarityPlaintextPackingDenseColumn, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
  v38 = v48;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v38)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMd, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMR);
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29, v37, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMd, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMR);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMd, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMR);
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMd, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMR);
  }

  else
  {
    v40 = v44;
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v37, v44, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
    if (v33 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v29, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMd, &_s8CipherML43AspireSimilarityPlaintextPackingDenseColumnVSgMR);
    v41 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v43, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v40, v41, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t AspireSimilarityPlaintextPacking.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3, &v16 - v10, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v12 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in AspireSimilarityPlaintextPacking.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in AspireSimilarityPlaintextPacking.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in AspireSimilarityPlaintextPacking.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v11, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  if (!v4)
  {
LABEL_8:
    v15 = v3 + *(type metadata accessor for AspireSimilarityPlaintextPacking(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireSimilarityPlaintextPacking.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspireSimilarityPlaintextPackingDenseRow(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v13 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v12, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseRow and conformance AspireSimilarityPlaintextPackingDenseRow, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v12, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
  }

  result = outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v8, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  __break(1u);
  return result;
}

uint64_t closure #2 in AspireSimilarityPlaintextPacking.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspireSimilarityPlaintextPackingDiagonal(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v13 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v12, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDiagonal and conformance AspireSimilarityPlaintextPackingDiagonal, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v12, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
  }

  result = outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v8, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  __break(1u);
  return result;
}

uint64_t closure #3 in AspireSimilarityPlaintextPacking.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v13 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v12, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseColumn and conformance AspireSimilarityPlaintextPackingDenseColumn, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v12, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
  }

  result = outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v8, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireSimilarityPlaintextPacking@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilarityPlaintextPacking(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilarityPlaintextPacking(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilarityPlaintextPacking(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilarityPlaintextPackingDenseRow.decodeMessage<A>(decoder:)()
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilarityPlaintextPackingDenseRow(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseRow and conformance AspireSimilarityPlaintextPackingDenseRow, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilarityPlaintextPackingDenseRow(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseRow and conformance AspireSimilarityPlaintextPackingDenseRow, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilarityPlaintextPackingDenseRow(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseRow and conformance AspireSimilarityPlaintextPackingDenseRow, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilarityPlaintextPackingDiagonal(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDiagonal and conformance AspireSimilarityPlaintextPackingDiagonal, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilarityPlaintextPackingDiagonal(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDiagonal and conformance AspireSimilarityPlaintextPackingDiagonal, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilarityPlaintextPackingDiagonal(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDiagonal and conformance AspireSimilarityPlaintextPackingDiagonal, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilarityPlaintextPackingDenseColumn(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseColumn and conformance AspireSimilarityPlaintextPackingDenseColumn, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilarityPlaintextPackingDenseColumn(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseColumn and conformance AspireSimilarityPlaintextPackingDenseColumn, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilarityPlaintextPackingDenseColumn(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPackingDenseColumn and conformance AspireSimilarityPlaintextPackingDenseColumn, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for AspireHeSerializedCiphertext(0);
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 4)
        {
          closure #4 in AspireSimilaritySerializedCiphertextMatrix.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
        }
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AspireSimilaritySerializedCiphertextMatrix.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 4) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      if (!*(*(v3 + 8) + 16) || (type metadata accessor for AspireHeSerializedCiphertext(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
      {
        result = closure #1 in AspireSimilaritySerializedCiphertextMatrix.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
        if (!v4)
        {
          v9 = v3 + *(type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0) + 28);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilaritySerializedCiphertextMatrix(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilaritySerializedCiphertextMatrix(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySerializedCiphertextMatrix(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilaritySerializedDcrtPlaintextMatrix.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for AspireHeSerializedDcrtPlaintext(0);
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireHeSerializedDcrtPlaintext and conformance AspireHeSerializedDcrtPlaintext, type metadata accessor for AspireHeSerializedDcrtPlaintext);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 4)
        {
          closure #4 in AspireSimilaritySerializedCiphertextMatrix.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
        }
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #4 in AspireSimilaritySerializedCiphertextMatrix.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 32);
  type metadata accessor for AspireSimilarityPlaintextPacking(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireSimilaritySerializedDcrtPlaintextMatrix.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 4) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      if (!*(*(v3 + 8) + 16) || (type metadata accessor for AspireHeSerializedDcrtPlaintext(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireHeSerializedDcrtPlaintext and conformance AspireHeSerializedDcrtPlaintext, type metadata accessor for AspireHeSerializedDcrtPlaintext), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
      {
        result = closure #1 in AspireSimilaritySerializedCiphertextMatrix.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
        if (!v4)
        {
          v9 = v3 + *(type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix(0) + 28);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in AspireSimilaritySerializedCiphertextMatrix.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, double))
{
  v19[3] = a4;
  v19[0] = a2;
  v19[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v19 - v9;
  v11 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0, v14);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v17 + 32), v10, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v10, v16, type metadata accessor for AspireSimilarityPlaintextPacking);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v16, type metadata accessor for AspireSimilarityPlaintextPacking);
}

uint64_t protocol witness for Message.init() in conformance AspireSimilaritySerializedCiphertextMatrix@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = MEMORY[0x277D84F90];
  v4 = &a2[*(a1 + 28)];
  UnknownStorage.init()();
  v5 = *(a1 + 32);
  v6 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilaritySerializedDcrtPlaintextMatrix(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedDcrtPlaintextMatrix and conformance AspireSimilaritySerializedDcrtPlaintextMatrix, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilaritySerializedDcrtPlaintextMatrix(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedDcrtPlaintextMatrix and conformance AspireSimilaritySerializedDcrtPlaintextMatrix, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySerializedDcrtPlaintextMatrix(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedDcrtPlaintextMatrix and conformance AspireSimilaritySerializedDcrtPlaintextMatrix, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilaritySimilarityClientConfig.decodeMessage<A>(decoder:)()
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
            closure #1 in AspireSimilaritySimilarityClientConfig.decodeMessage<A>(decoder:)();
            break;
          case 2:
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            break;
          case 3:
            closure #3 in AspireSimilaritySimilarityClientConfig.decodeMessage<A>(decoder:)();
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          lazy protocol witness table accessor for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
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
        dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in AspireSimilaritySimilarityClientConfig.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 40);
  type metadata accessor for AspireHeEncryptionParameters(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in AspireSimilaritySimilarityClientConfig.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 44);
  type metadata accessor for AspireSimilarityPlaintextPacking(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireSimilaritySimilarityClientConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireSimilaritySimilarityClientConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    closure #2 in AspireSimilaritySimilarityClientConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (*(v3 + 8))
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if (*(*(v3 + 16) + 16))
    {
      dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)();
    }

    if ((*(v3 + 32) & 1) == 0 && *(v3 + 24))
    {
      v10 = *(v3 + 24);
      lazy protocol witness table accessor for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    if (*(*(v3 + 40) + 16))
    {
      dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
    }

    v9 = v3 + *(type metadata accessor for AspireSimilaritySimilarityClientConfig(0) + 36);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireSimilaritySimilarityClientConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 40), v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v13, type metadata accessor for AspireHeEncryptionParameters);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireHeEncryptionParameters and conformance AspireHeEncryptionParameters, type metadata accessor for AspireHeEncryptionParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v13, type metadata accessor for AspireHeEncryptionParameters);
}

uint64_t closure #2 in AspireSimilaritySimilarityClientConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 44), v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v13, type metadata accessor for AspireSimilarityPlaintextPacking);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v13, type metadata accessor for AspireSimilarityPlaintextPacking);
}

uint64_t protocol witness for Message.init() in conformance AspireSimilaritySimilarityClientConfig@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = v4;
  v5 = a2 + a1[9];
  UnknownStorage.init()();
  v6 = a1[10];
  v7 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[11];
  v9 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilaritySimilarityClientConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityClientConfig and conformance AspireSimilaritySimilarityClientConfig, type metadata accessor for AspireSimilaritySimilarityClientConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilaritySimilarityClientConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityClientConfig and conformance AspireSimilaritySimilarityClientConfig, type metadata accessor for AspireSimilaritySimilarityClientConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySimilarityClientConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityClientConfig and conformance AspireSimilaritySimilarityClientConfig, type metadata accessor for AspireSimilaritySimilarityClientConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilaritySimilarityServerConfig.decodeMessage<A>(decoder:)()
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
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 4)
      {
        v3 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 32);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }
    }

    else if (result == 1)
    {
      closure #1 in AspireSimilaritySimilarityServerConfig.decodeMessage<A>(decoder:)();
    }

    else if (result == 2)
    {
      closure #2 in AspireSimilaritySimilarityServerConfig.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #1 in AspireSimilaritySimilarityServerConfig.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 24);
  type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityClientConfig and conformance AspireSimilaritySimilarityClientConfig, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in AspireSimilaritySimilarityServerConfig.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 28);
  type metadata accessor for AspireSimilarityPlaintextPacking(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireSimilaritySimilarityServerConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in AspireSimilaritySimilarityServerConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in AspireSimilaritySimilarityServerConfig.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (*v3 == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    closure #3 in AspireSimilaritySimilarityServerConfig.traverse<A>(visitor:)(v3);
    v9 = &v3[*(type metadata accessor for AspireSimilaritySimilarityServerConfig(0) + 20)];
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireSimilaritySimilarityServerConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 24), v8, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v13, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityClientConfig and conformance AspireSimilaritySimilarityClientConfig, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v13, type metadata accessor for AspireSimilaritySimilarityClientConfig);
}

uint64_t closure #2 in AspireSimilaritySimilarityServerConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 28), v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v13, type metadata accessor for AspireSimilarityPlaintextPacking);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPlaintextPacking and conformance AspireSimilarityPlaintextPacking, type metadata accessor for AspireSimilarityPlaintextPacking);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v13, type metadata accessor for AspireSimilarityPlaintextPacking);
}

uint64_t closure #3 in AspireSimilaritySimilarityServerConfig.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireSimilaritySimilarityServerConfig@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[a1[5]];
  UnknownStorage.init()();
  v5 = a1[6];
  v6 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  result = (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v10 = &a2[a1[8]];
  *v10 = 0;
  v10[4] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilaritySimilarityServerConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityServerConfig and conformance AspireSimilaritySimilarityServerConfig, type metadata accessor for AspireSimilaritySimilarityServerConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilaritySimilarityServerConfig(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityServerConfig and conformance AspireSimilaritySimilarityServerConfig, type metadata accessor for AspireSimilaritySimilarityServerConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySimilarityServerConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityServerConfig and conformance AspireSimilaritySimilarityServerConfig, type metadata accessor for AspireSimilaritySimilarityServerConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilaritySerializedProcessedSimilarityDb.decodeMessage<A>(decoder:)()
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
          closure #4 in AspireSimilaritySerializedProcessedSimilarityDb.decodeMessage<A>(decoder:)();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedDcrtPlaintextMatrix and conformance AspireSimilaritySerializedDcrtPlaintextMatrix, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #4 in AspireSimilaritySerializedProcessedSimilarityDb.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0) + 32);
  type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityServerConfig and conformance AspireSimilaritySimilarityServerConfig, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t AspireSimilaritySerializedProcessedSimilarityDb.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedDcrtPlaintextMatrix and conformance AspireSimilaritySerializedDcrtPlaintextMatrix, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[1] + 16) || (result = dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)(), !v4))
    {
      if (!*(v3[2] + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v4))
      {
        result = closure #1 in AspireSimilaritySerializedProcessedSimilarityDb.traverse<A>(visitor:)(v3, a1, a2, a3);
        if (!v4)
        {
          v9 = v3 + *(type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0) + 28);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in AspireSimilaritySerializedProcessedSimilarityDb.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v14 + 32), v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v13, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityServerConfig and conformance AspireSimilaritySimilarityServerConfig, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v13, type metadata accessor for AspireSimilaritySimilarityServerConfig);
}

uint64_t protocol witness for Message.init() in conformance AspireSimilaritySerializedProcessedSimilarityDb@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  *(a2 + 2) = v4;
  v5 = &a2[*(a1 + 28)];
  UnknownStorage.init()();
  v6 = *(a1 + 32);
  v7 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilaritySerializedProcessedSimilarityDb(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedProcessedSimilarityDb and conformance AspireSimilaritySerializedProcessedSimilarityDb, type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilaritySerializedProcessedSimilarityDb(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedProcessedSimilarityDb and conformance AspireSimilaritySerializedProcessedSimilarityDb, type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySerializedProcessedSimilarityDb(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySerializedProcessedSimilarityDb and conformance AspireSimilaritySerializedProcessedSimilarityDb, type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilaritySimilarityDbRow.decodeMessage<A>(decoder:)()
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
        dispatch thunk of Decoder.decodeRepeatedFloatField(value:)();
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
      case 1:
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        break;
    }
  }

  return result;
}

uint64_t AspireSimilaritySimilarityDbRow.traverse<A>(visitor:)()
{
  if (*v0)
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

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
  if (!*(v0[3] + 16) || (result = dispatch thunk of Visitor.visitPackedFloatField(value:fieldNumber:)(), !v1))
  {
    v8 = v0 + *(type metadata accessor for AspireSimilaritySimilarityDbRow(0) + 28);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireSimilaritySimilarityDbRow@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = MEMORY[0x277D84F90];
  a2[2] = 0xC000000000000000;
  a2[3] = v2;
  v3 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilaritySimilarityDbRow(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDbRow and conformance AspireSimilaritySimilarityDbRow, type metadata accessor for AspireSimilaritySimilarityDbRow);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilaritySimilarityDbRow(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDbRow and conformance AspireSimilaritySimilarityDbRow, type metadata accessor for AspireSimilaritySimilarityDbRow);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySimilarityDbRow(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDbRow and conformance AspireSimilaritySimilarityDbRow, type metadata accessor for AspireSimilaritySimilarityDbRow);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t AspireSimilaritySimilarityDb.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for AspireSimilaritySimilarityDbRow(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDbRow and conformance AspireSimilaritySimilarityDbRow, type metadata accessor for AspireSimilaritySimilarityDbRow);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t AspireSimilaritySimilarityDb.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for AspireSimilaritySimilarityDbRow(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDbRow and conformance AspireSimilaritySimilarityDbRow, type metadata accessor for AspireSimilaritySimilarityDbRow), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for AspireSimilaritySimilarityDb(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static AspireSimilaritySimilarityDb.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML016AspireSimilarityE5DbRowV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for AspireSimilaritySimilarityDb(0) + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilaritySimilarityDb(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDb and conformance AspireSimilaritySimilarityDb, type metadata accessor for AspireSimilaritySimilarityDb);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilaritySimilarityDb(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDb and conformance AspireSimilaritySimilarityDb, type metadata accessor for AspireSimilaritySimilarityDb);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilaritySimilarityDb(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityDb and conformance AspireSimilaritySimilarityDb, type metadata accessor for AspireSimilaritySimilarityDb);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AspireSimilaritySimilarityDb(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML016AspireSimilarityE5DbRowV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

char *one-time initialization function for defaultInstance()
{
  v0 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = AspireSimilarityPecPreprocessDbArgs._StorageClass.init()();
  static AspireSimilarityPecPreprocessDbArgs._StorageClass.defaultInstance = result;
  return result;
}

char *AspireSimilarityPecPreprocessDbArgs._StorageClass.init()()
{
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  *(v0 + 1) = 0u;
  v1 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  v2 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = &v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme];
  *v8 = 0;
  *(v8 + 4) = 256;
  *&v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli] = MEMORY[0x277D84F90];
  v9 = &v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep];
  *v9 = 0;
  v9[4] = 1;
  v0[OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel] = 2;
  return v0;
}

void *AspireSimilarityPecPreprocessDbArgs._StorageClass.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v4 = *(v0 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID + 8);

  v6 = *(v0 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID + 8);

  v7 = *(v0 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters + 8);

  v9 = *(v0 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli);

  return v0;
}

uint64_t AspireSimilarityPecPreprocessDbArgs._StorageClass.__deallocating_deinit()
{
  v0 = *AspireSimilarityPecPreprocessDbArgs._StorageClass.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(v12);

    *(v4 + v8) = v16;
    v11 = v16;
  }

  return closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(v11, a1, a2, a3);
}

uint64_t closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          closure #1 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
          break;
        case 2:
          closure #2 in closure #1 in AspirePirPirPreprocessDbArgs.decodeMessage<A>(decoder:)();
          break;
        case 3:
          closure #3 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)();
          break;
        case 4:
          closure #4 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)();
          break;
        case 5:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID;
          goto LABEL_5;
        case 6:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID;
          goto LABEL_5;
        case 7:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID;
          goto LABEL_5;
        case 8:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID;
          goto LABEL_5;
        case 9:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters;
LABEL_5:
          closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(v11, v12, v13, v14, v15);
          break;
        case 10:
          closure #10 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)();
          break;
        case 11:
          closure #11 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)();
          break;
        case 12:
          closure #12 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)();
          break;
        case 13:
          closure #13 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityServerConfig and conformance AspireSimilaritySimilarityServerConfig, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #10 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #11 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
  return swift_endAccess();
}

uint64_t closure #12 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #13 in closure #1 in AspireSimilarityPecPreprocessDbArgs.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0);
  result = closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = closure #1 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
  if (!v4)
  {
    closure #2 in closure #1 in AspirePirPirPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #3 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1);
    closure #4 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID);
    closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID);
    closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID);
    closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID);
    closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters);
    closure #10 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1);
    v10 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {

      dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
    }

    closure #11 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1);
    return closure #12 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(a1);
  }

  return result;
}

uint64_t closure #3 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 56))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v8, v13, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilaritySimilarityServerConfig and conformance AspireSimilaritySimilarityServerConfig, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v13, type metadata accessor for AspireSimilaritySimilarityServerConfig);
}

uint64_t closure #5 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if (v5[1])
  {
    v7 = *v5;
    v8 = v5[1];

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme);
  result = swift_beginAccess();
  if ((*(v1 + 9) & 1) == 0)
  {
    v3 = *v1;
    v4 = v1[1] & 1;
    lazy protocol witness table accessor for type AspireHeHeScheme and conformance AspireHeHeScheme();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in AspireSimilarityPecPreprocessDbArgs.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  result = swift_beginAccess();
  if (*(a1 + v2) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static AspireSimilarityPecPreprocessDbArgs.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v88 = *(v4 - 8);
  v5 = *(v88 + 64);
  MEMORY[0x28223BE20](v4);
  v87 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v85 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v85 - v16;
  swift_beginAccess();
  v19 = a1[2];
  v18 = a1[3];
  swift_beginAccess();
  v89 = a2;
  v20 = a2[3];
  if (v18)
  {
    if (!v20 || (v19 != v89[2] || v18 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  swift_beginAccess();
  v21 = a1[4];
  v22 = a1[5];
  v23 = v89;
  swift_beginAccess();
  v24 = v23[5];
  if (v22)
  {
    if (!v24 || (v21 != v89[4] || v22 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  swift_beginAccess();
  v25 = a1[6];
  v26 = a1[7];
  v27 = v89;
  swift_beginAccess();
  v28 = v27[7];
  if (!v26)
  {
    if (!v28)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v28 || (v25 != v89[6] || v26 != v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v29 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v29, v17, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v30 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  v31 = v89;
  swift_beginAccess();
  v32 = *(v7 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17, v10, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v86 = v32;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v31 + v30, &v10[v32], &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v33 = *(v88 + 48);
  if (v33(v10, 1, v4) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    v34 = v31;
    if (v33(&v10[v86], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
      goto LABEL_31;
    }

LABEL_27:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMR);
    goto LABEL_28;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v10, v14, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v35 = v86;
  if (v33(&v10[v86], 1, v4) == 1)
  {

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v14, type metadata accessor for AspireSimilaritySimilarityServerConfig);
    goto LABEL_27;
  }

  v37 = &v10[v35];
  v38 = v87;
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v37, v87, type metadata accessor for AspireSimilaritySimilarityServerConfig);

  v34 = v89;

  v39 = specialized static AspireSimilaritySimilarityServerConfig.== infix(_:_:)(v14, v38);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v38, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v14, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  if ((v39 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_31:
  v40 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID);
  swift_beginAccess();
  v41 = *v40;
  v42 = v40[1];
  v43 = (v34 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID);
  swift_beginAccess();
  v44 = v43[1];
  if (v42)
  {
    if (!v44 || (v41 != *v43 || v42 != v44) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v44)
  {
    goto LABEL_28;
  }

  v45 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID);
  swift_beginAccess();
  v46 = *v45;
  v47 = v45[1];
  v48 = (v34 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID);
  swift_beginAccess();
  v49 = v48[1];
  if (v47)
  {
    if (!v49 || (v46 != *v48 || v47 != v49) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v49)
  {
    goto LABEL_28;
  }

  v50 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID);
  swift_beginAccess();
  v51 = *v50;
  v52 = v50[1];
  v53 = (v34 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID);
  swift_beginAccess();
  v54 = v53[1];
  if (v52)
  {
    if (!v54 || (v51 != *v53 || v52 != v54) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v54)
  {
    goto LABEL_28;
  }

  v55 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID);
  swift_beginAccess();
  v56 = *v55;
  v57 = v55[1];
  v58 = (v34 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID);
  swift_beginAccess();
  v59 = v58[1];
  if (v57)
  {
    if (!v59 || (v56 != *v58 || v57 != v59) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v59)
  {
    goto LABEL_28;
  }

  v60 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters);
  swift_beginAccess();
  v61 = *v60;
  v62 = v60[1];
  v63 = (v34 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters);
  swift_beginAccess();
  v64 = v63[1];
  if (v62)
  {
    if (!v64 || (v61 != *v63 || v62 != v64) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v64)
  {
    goto LABEL_28;
  }

  v65 = a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  swift_beginAccess();
  v66 = *v65;
  v67 = v65[9];
  v68 = v34 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  swift_beginAccess();
  v69 = v68[9];
  if (v67)
  {
    if (v68[9])
    {
      goto LABEL_68;
    }

LABEL_28:

    return 0;
  }

  if (v68[9])
  {
    goto LABEL_28;
  }

  v78 = *v68;
  if (v68[8])
  {
    if (v78)
    {
      if (v78 == 1)
      {
        v79 = v66 == 1;
      }

      else
      {
        v79 = v66 == 2;
      }

      v34 = v89;
      if (!v79)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v34 = v89;
      if (v66)
      {
        goto LABEL_28;
      }
    }
  }

  else if (v66 != v78)
  {
    goto LABEL_28;
  }

LABEL_68:
  v70 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  swift_beginAccess();
  v71 = *(a1 + v70);
  v72 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  swift_beginAccess();
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v71, *(v34 + v72)) & 1) == 0)
  {
    goto LABEL_28;
  }

  v73 = a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  swift_beginAccess();
  v74 = *v73;
  v75 = v73[4];
  v76 = v34 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  swift_beginAccess();
  v77 = v76[4];
  if (v75)
  {
    if ((v76[4] & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if ((v76[4] & 1) != 0 || v74 != *v76)
  {
    goto LABEL_28;
  }

  v80 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  swift_beginAccess();
  v81 = *(a1 + v80);

  v82 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  v83 = v89;
  swift_beginAccess();
  v84 = *(v83 + v82);

  if (v81 == 2)
  {
    if (v84 != 2)
    {
      return 0;
    }
  }

  else if (v84 == 2 || ((v81 ^ v84) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

Swift::Int AspireSimilarityPlaintextPacking.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance AspireSimilarityPecPreprocessDbArgs@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static AspireSimilarityPecPreprocessDbArgs._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AspireSimilarityPecPreprocessDbArgs(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPecPreprocessDbArgs and conformance AspireSimilarityPecPreprocessDbArgs, type metadata accessor for AspireSimilarityPecPreprocessDbArgs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AspireSimilarityPecPreprocessDbArgs(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPecPreprocessDbArgs and conformance AspireSimilarityPecPreprocessDbArgs, type metadata accessor for AspireSimilarityPecPreprocessDbArgs);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AspireSimilarityPecPreprocessDbArgs(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type AspireSimilarityPecPreprocessDbArgs and conformance AspireSimilarityPecPreprocessDbArgs, type metadata accessor for AspireSimilarityPecPreprocessDbArgs);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t specialized static AspireSimilarityPecPreprocessDbArgs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = closure #1 in static AspireSimilarityPecPreprocessDbArgs.== infix(_:_:)(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspireSimilaritySerializedDcrtPlaintextMatrix.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v32 - v20;
  if (*a1 != *a2)
  {
    goto LABEL_10;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    goto LABEL_10;
  }

  v22 = v19;
  if ((a3(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_10;
  }

  v33 = a4(0);
  v23 = *(v33 + 32);
  v24 = *(v22 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v23, v21, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v25 = a2 + v23;
  v26 = v24;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25, &v21[v24], &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v27 = *(v9 + 48);
  if (v27(v21, 1, v8) == 1)
  {
    if (v27(&v21[v26], 1, v8) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v21, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
LABEL_13:
      v31 = *(v33 + 28);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v28 & 1;
    }

    goto LABEL_9;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v21, v16, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if (v27(&v21[v26], 1, v8) == 1)
  {
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v16, type metadata accessor for AspireSimilarityPlaintextPacking);
LABEL_9:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v21, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
    goto LABEL_10;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(&v21[v26], v12, type metadata accessor for AspireSimilarityPlaintextPacking);
  v30 = specialized static AspireSimilarityPlaintextPacking.== infix(_:_:)(v16, v12);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v12, type metadata accessor for AspireSimilarityPlaintextPacking);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v16, type metadata accessor for AspireSimilarityPlaintextPacking);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v21, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if (v30)
  {
    goto LABEL_13;
  }

LABEL_10:
  v28 = 0;
  return v28 & 1;
}

uint64_t specialized static AspireSimilaritySerializedProcessedSimilarityDb.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML45AspireSimilaritySerializedDcrtPlaintextMatrixV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[1], a2[1]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = type metadata accessor for AspireSimilaritySerializedProcessedSimilarityDb(0);
  v17 = *(v27 + 32);
  v18 = *(v13 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v17, v16, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v19 = a2 + v17;
  v20 = v18;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v19, &v16[v18], &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
LABEL_13:
      v25 = *(v27 + 28);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_9;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v12, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v12, type metadata accessor for AspireSimilaritySimilarityServerConfig);
LABEL_9:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSg_ADtMR);
    goto LABEL_10;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(&v16[v20], v8, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  v24 = specialized static AspireSimilaritySimilarityServerConfig.== infix(_:_:)(v12, v8);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v8, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v12, type metadata accessor for AspireSimilaritySimilarityServerConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  if (v24)
  {
    goto LABEL_13;
  }

LABEL_10:
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static AspireSimilaritySimilarityDbRow.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || (specialized static Data.== infix(_:_:)(a1[1], a1[2], a2[1], a2[2]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSf_Tt1g5(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for AspireSimilaritySimilarityDbRow(0) + 28);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AspireSimilarityPlaintextPackingDiagonal(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AspireSimilarityPlaintextPackingDenseRow(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeO_AEtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeO_AEtMR);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v41 - v27;
  v29 = *(v26 + 56);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a1, &v41 - v27, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(a2, &v28[v29], type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(v28, v21, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = &v28[v29];
        v32 = v41;
        _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v31, v41, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34 = type metadata accessor for AspireSimilarityPlaintextPackingDiagonal;
        outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v32, type metadata accessor for AspireSimilarityPlaintextPackingDiagonal);
        v35 = v21;
LABEL_13:
        outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v35, v34);
        outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v28, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
        return v33 & 1;
      }

      v36 = type metadata accessor for AspireSimilarityPlaintextPackingDiagonal;
      v37 = v21;
    }

    else
    {
      outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(v28, v18, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v38 = &v28[v29];
        v39 = v42;
        _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v38, v42, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34 = type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn;
        outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v39, type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn);
        v35 = v18;
        goto LABEL_13;
      }

      v36 = type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn;
      v37 = v18;
    }
  }

  else
  {
    outlined init with copy of AspireSimilarityPlaintextPackingDenseRow(v28, v23, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
    if (!swift_getEnumCaseMultiPayload())
    {
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(&v28[v29], v13, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = type metadata accessor for AspireSimilarityPlaintextPackingDenseRow;
      outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v13, type metadata accessor for AspireSimilarityPlaintextPackingDenseRow);
      v35 = v23;
      goto LABEL_13;
    }

    v36 = type metadata accessor for AspireSimilarityPlaintextPackingDenseRow;
    v37 = v23;
  }

  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v37, v36);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v28, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeO_AEtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeO_AEtMR);
  v33 = 0;
  return v33 & 1;
}

uint64_t specialized static AspireSimilarityPlaintextPacking.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v24 - v16, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v17[v18], &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for AspireSimilarityPlaintextPacking(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17, v12, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v12, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
    goto LABEL_7;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(&v17[v18], v8, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  v21 = specialized static AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType.== infix(_:_:)(v12, v8);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v8, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v12, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static AspireSimilaritySimilarityServerConfig.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v61 = a2;
  v3 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v52 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
  v9 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v59 = &v52 - v10;
  v11 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v52 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ClientConfigVSg_ADtMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSg_ADtMR);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v52 - v23;
  v56 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v25 = *(v56 + 24);
  v26 = *(v21 + 56);
  v60 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&a1[v25], v24, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  v27 = v61;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v61[v25], &v24[v26], &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &_s8CipherML016AspireSimilarityD12ClientConfigVSg_ADtMd;
    v30 = &_s8CipherML016AspireSimilarityD12ClientConfigVSg_ADtMR;
    v31 = v24;
LABEL_14:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v31, v29, v30);
    goto LABEL_15;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v24, v19, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v19, type metadata accessor for AspireSimilaritySimilarityClientConfig);
    goto LABEL_6;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(&v24[v26], v15, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  v32 = specialized static AspireSimilaritySimilarityClientConfig.== infix(_:_:)(v19, v15);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v15, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v19, type metadata accessor for AspireSimilaritySimilarityClientConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v24, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  if ((v32 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v33 = v56;
  v34 = *(v56 + 28);
  v35 = *(v55 + 48);
  v37 = v59;
  v36 = v60;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v60[v34], v59, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v27[v34], v37 + v35, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v38 = v58;
  v39 = *(v57 + 48);
  if (v39(v37, 1, v58) != 1)
  {
    v40 = v54;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v37, v54, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    if (v39(v37 + v35, 1, v38) != 1)
    {
      v43 = v37 + v35;
      v44 = v53;
      _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v43, v53, type metadata accessor for AspireSimilarityPlaintextPacking);
      v45 = specialized static AspireSimilarityPlaintextPacking.== infix(_:_:)(v40, v44);
      outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v44, type metadata accessor for AspireSimilarityPlaintextPacking);
      outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v40, type metadata accessor for AspireSimilarityPlaintextPacking);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      if ((v45 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v40, type metadata accessor for AspireSimilarityPlaintextPacking);
    goto LABEL_13;
  }

  if (v39(v37 + v35, 1, v38) != 1)
  {
LABEL_13:
    v29 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd;
    v30 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR;
    v31 = v37;
    goto LABEL_14;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
LABEL_18:
  if (*v36 == *v27)
  {
    v46 = *(v33 + 32);
    v47 = &v36[v46];
    v48 = v36[v46 + 4];
    v49 = &v27[v46];
    v50 = v27[v46 + 4];
    if (v48)
    {
      if (v50)
      {
LABEL_25:
        v51 = *(v33 + 20);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v41 & 1;
      }
    }

    else
    {
      if (*v47 != *v49)
      {
        LOBYTE(v50) = 1;
      }

      if ((v50 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_15:
  v41 = 0;
  return v41 & 1;
}

uint64_t specialized static AspireSimilaritySimilarityClientConfig.== infix(_:_:)(void *a1, uint64_t a2)
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
  v53 = type metadata accessor for AspireSimilaritySimilarityClientConfig(0);
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
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v19, type metadata accessor for AspireHeEncryptionParameters);
    goto LABEL_6;
  }

  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(&v24[v26], v15, type metadata accessor for AspireHeEncryptionParameters);
  v32 = specialized static AspireHeEncryptionParameters.== infix(_:_:)(v19, v15);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v15, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v19, type metadata accessor for AspireHeEncryptionParameters);
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
    outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v40, type metadata accessor for AspireSimilarityPlaintextPacking);
LABEL_15:
    v29 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd;
    v30 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR;
    v31 = v37;
    goto LABEL_7;
  }

  v41 = v37 + v36;
  v42 = v50;
  _s8CipherML32AspireSimilarityPlaintextPackingVWObTm_0(v41, v50, type metadata accessor for AspireSimilarityPlaintextPacking);
  v43 = specialized static AspireSimilarityPlaintextPacking.== infix(_:_:)(v40, v42);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v42, type metadata accessor for AspireSimilarityPlaintextPacking);
  outlined destroy of AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(v40, type metadata accessor for AspireSimilarityPlaintextPacking);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if ((v43 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  if (*(v33 + 2) != *(v27 + 8) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(v33[2], *(v27 + 16)) & 1) == 0)
  {
    goto LABEL_28;
  }

  v44 = *(v27 + 32);
  if (v33[4])
  {
    if (*(v27 + 32))
    {
      goto LABEL_26;
    }

    v45 = 0;
LABEL_25:
    if (v45 == *(v27 + 24))
    {
      goto LABEL_26;
    }

LABEL_28:
    v47 = 0;
    return v47 & 1;
  }

  v45 = v33[3];
  if ((*(v27 + 32) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (v45)
  {
    goto LABEL_28;
  }

LABEL_26:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v33[5], *(v27 + 40)) & 1) == 0)
  {
    goto LABEL_28;
  }

  v46 = *(v34 + 36);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v47 & 1;
}

uint64_t specialized AspireSimilarityPecPreprocessDbArgs._StorageClass.init(copying:)(void *a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v60 = &v58 - v4;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v5 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  v59 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  v6 = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID);
  v61 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID);
  v62 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters);
  v63 = (v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters);
  *v11 = 0;
  v11[1] = 0;
  v12 = v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  v64 = v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  *v12 = 0;
  *(v12 + 8) = 256;
  v65 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  *(v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli) = MEMORY[0x277D84F90];
  v13 = v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  v66 = v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  *v13 = 0;
  *(v13 + 4) = 1;
  v67 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  *(v1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel) = 2;
  swift_beginAccess();
  v15 = a1[2];
  v58 = a1[3];
  v14 = v58;
  swift_beginAccess();
  *(v1 + 16) = v15;
  *(v1 + 24) = v14;
  swift_beginAccess();
  v17 = a1[4];
  v16 = a1[5];
  swift_beginAccess();
  *(v1 + 32) = v17;
  *(v1 + 40) = v16;
  swift_beginAccess();
  v19 = a1[6];
  v18 = a1[7];
  swift_beginAccess();
  *(v1 + 48) = v19;
  *(v1 + 56) = v18;
  v20 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__inputServerConfig;
  swift_beginAccess();
  v21 = v60;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v20, v60, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  v22 = v59;
  swift_beginAccess();

  outlined assign with take of AMDPbHEConfig.OneOf_Config?(v21, v1 + v22, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
  swift_endAccess();
  v23 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryID);
  swift_beginAccess();
  v25 = *v23;
  v24 = v23[1];
  swift_beginAccess();
  v26 = v7[1];
  *v7 = v25;
  v7[1] = v24;

  v27 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__entryMetadataID);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  swift_beginAccess();
  v30 = v8[1];
  *v8 = v29;
  v8[1] = v28;

  v31 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__embeddingID);
  swift_beginAccess();
  v33 = *v31;
  v32 = v31[1];
  v34 = v61;
  swift_beginAccess();
  v35 = v34[1];
  *v34 = v33;
  v34[1] = v32;

  v36 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__shardID);
  swift_beginAccess();
  v38 = *v36;
  v37 = v36[1];
  v39 = v62;
  swift_beginAccess();
  v40 = v39[1];
  *v39 = v38;
  v39[1] = v37;

  v41 = (a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__predefinedEncryptionParameters);
  swift_beginAccess();
  v43 = *v41;
  v42 = v41[1];
  v44 = v63;
  swift_beginAccess();
  v45 = v44[1];
  *v44 = v43;
  v44[1] = v42;

  v46 = a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__heScheme;
  swift_beginAccess();
  v47 = *v46;
  LOBYTE(v43) = v46[8];
  LOBYTE(v46) = v46[9];
  v48 = v64;
  swift_beginAccess();
  *v48 = v47;
  *(v48 + 8) = v43;
  *(v48 + 9) = v46;
  v49 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__extraPlaintextModuli;
  swift_beginAccess();
  v50 = *(a1 + v49);
  v51 = v65;
  swift_beginAccess();
  v52 = *(v1 + v51);
  *(v1 + v51) = v50;

  v53 = a1 + OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__babyStep;
  swift_beginAccess();
  LODWORD(v52) = *v53;
  LOBYTE(v53) = v53[4];
  v54 = v66;
  swift_beginAccess();
  *v54 = v52;
  *(v54 + 4) = v53;
  v55 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v55);
  v56 = v67;
  swift_beginAccess();
  *(v1 + v56) = a1;
  return v1;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [AspireSimilaritySimilarityMetric] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AspireSimilaritySimilarityMetric] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AspireSimilaritySimilarityMetric] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8CipherML016AspireSimilarityD6MetricOGMd, &_sSay8CipherML016AspireSimilarityD6MetricOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AspireSimilaritySimilarityMetric] and conformance [A]);
  }

  return result;
}

uint64_t type metadata completion function for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType()
{
  result = type metadata accessor for AspireSimilarityPlaintextPackingDenseRow(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AspireSimilarityPlaintextPackingDiagonal(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AspireSimilarityPlaintextPackingDenseColumn(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_101Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_102Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for AspireSimilaritySerializedCiphertextMatrix(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for AspireSimilarityPlaintextPacking?, type metadata accessor for AspireSimilarityPlaintextPacking, MEMORY[0x277D83D88]);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AspireSimilaritySimilarityClientConfig()
{
  type metadata accessor for [UInt32](319, &lazy cache variable for type metadata for [UInt32], MEMORY[0x277D84CC0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [UInt32](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for AspireHeEncryptionParameters?, type metadata accessor for AspireHeEncryptionParameters, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for AspireSimilarityPlaintextPacking?, type metadata accessor for AspireSimilarityPlaintextPacking, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for AspireSimilaritySimilarityServerConfig()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for AspireSimilaritySimilarityClientConfig?, type metadata accessor for AspireSimilaritySimilarityClientConfig, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for AspireSimilarityPlaintextPacking?, type metadata accessor for AspireSimilarityPlaintextPacking, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [UInt32](319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for AspireSimilaritySerializedProcessedSimilarityDb()
{
  type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for [AspireSimilaritySerializedDcrtPlaintextMatrix], type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [UInt32](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [UInt32](319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for AspireSimilaritySimilarityServerConfig?, type metadata accessor for AspireSimilaritySimilarityServerConfig, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for AspireSimilaritySimilarityDbRow()
{
  type metadata accessor for [UInt32](319, &lazy cache variable for type metadata for [Float], MEMORY[0x277D83A90], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [UInt32](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata completion function for AspireSimilarityPlaintextPacking(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AspireSimilarityPecPreprocessDbArgs()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AspireSimilarityPecPreprocessDbArgs._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for AspireSimilarityPecPreprocessDbArgs._StorageClass()
{
  type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType?(319, &lazy cache variable for type metadata for AspireSimilaritySimilarityServerConfig?, type metadata accessor for AspireSimilaritySimilarityServerConfig, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void *CacheCleaner.__allocating_init(allowListLock:activeUseCaseTracker:cache:getCurrentDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

uint64_t CacheCleaner.currentDate.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void *CacheCleaner.init(allowListLock:activeUseCaseTracker:cache:getCurrentDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t CacheCleaner.run()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](CacheCleaner.run(), 0, 0);
}

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
    v5[1] = CacheCleaner.run();
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

uint64_t CacheCleaner.cleanPirCaches()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](CacheCleaner.cleanPirCaches(), 0, 0);
}

{
  v33 = v0;
  v30 = *(v0 + 16);
  v1 = v30[2];
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  v3 = *(v2 + 40);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(*(v2 + 40) + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;

  v12 = 0;
  v29 = result;
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = *(result + 56) + (v15 << 6);
    if ((*(v16 + 56) & 1) != 0 && (*(v16 + 16) & 1) == 0)
    {
      v17 = (*(result + 48) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];
      v31 = *(v16 + 8);
      if (*(v16 + 32))
      {
        v20 = 10080;
      }

      else
      {
        v20 = *(v16 + 24);
      }

      v21 = v30[5];
      v22 = v30[6];
      LOBYTE(v32) = 0;
      v23 = type metadata accessor for SqliteCache();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      swift_bridgeObjectRetain_n();

      v26 = SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(v18, v19, v31, v20, &v32, v21, v22);
      (*(*v26 + 152))(v26);

      result = v29;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  v27 = *(v28 + 8);

  return v27();
}

uint64_t CacheCleaner.cleanConfigCache()()
{
  v1[5] = v0;
  v2 = type metadata accessor for Date();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](CacheCleaner.cleanConfigCache(), 0, 0);
}

{
  v1 = v0[5];
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));
  v4 = *(v3 + 40);

  v0[10] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS8CipherML7UseCaseO_GTt0g5(v4);
  v5 = *(v1 + 24);
  v0[11] = v5;

  return MEMORY[0x2822009F8](CacheCleaner.cleanConfigCache(), v5, 0);
}

{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = *(v1 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate + 8);
  (*(v1 + OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_currentDate))();
  Date.addingTimeInterval(_:)();
  v7 = *(v5 + 8);
  v7(v3, v4);
  v8 = OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = swift_task_alloc();
  *(v10 + 16) = v2;

  specialized _NativeDictionary.filter(_:)(partial apply for closure #1 in ActiveUseCaseTracker.activeUseCases.getter, v10, v9);
  v12 = v11;

  v0[12] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS8CipherML7UseCaseO_GTt0g5(v12);
  v7(v2, v4);

  return MEMORY[0x2822009F8](CacheCleaner.cleanConfigCache(), 0, 0);
}

{
  v1 = v0[12];
  v2 = v0[10];
  if (*(v1 + 16) <= *(v2 + 16) >> 3)
  {
    v7 = v0[10];
    specialized Set._subtract<A>(_:)(v1);

    v3 = v7;
  }

  else
  {
    v3 = specialized _NativeSet.subtracting<A>(_:)(v0[12], v2);
  }

  v0[13] = v3;
  v4 = *(v0[5] + 32);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = CacheCleaner.cleanConfigCache();

  return Cache.prune(removingUsecases:)(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v8 = *v0;

  v3 = v1[13];
  v4 = v1[9];
  v5 = v1[8];

  v6 = *(v8 + 8);

  return v6();
}

void *CacheCleaner.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return v0;
}

uint64_t CacheCleaner.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ScheduledActivityHandler.run@Sendable () in conformance CacheCleaner()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return CacheCleaner.run()();
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v60[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x277D84FA0];
    goto LABEL_43;
  }

  v60[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v51 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v56 = v4;
  v57 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v54 = v5 + 1;
    v11 = *(v2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v54;
    if (v54 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v57;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v60[1] = v54;

  v22 = *(v2 + 32);
  v52 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v52;
  v24 = v57;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v45 = v23;

  v46 = v45;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v53 = &v50;
    MEMORY[0x28223BE20](v21);
    v14 = &v50 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v59 = v7;
    memcpy(v14, v7, v25);
    v58 = v2;
    v26 = *(v2 + 16);
    v27 = *(v14 + 8 * v15) & ~v16;
    v55 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v56;
    v7 = *(v56 + 16);
    v30 = v54;
    while (1)
    {
      v54 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = specialized _NativeSet.extractSubset(using:count:)(v55, v52, v54, v58);
LABEL_42:

LABEL_43:
        v43 = *MEMORY[0x277D85DE8];
        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v58;
        v34 = *(v58 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v35 = Hasher._finalize()();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v59[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v57;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (*(v2 + 48) + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = 1;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v59[v37 >> 6]) == 0)
          {
            v29 = v56;
            goto LABEL_37;
          }

          v42 = (*(v58 + 48) + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v56;
      v31 = v55[v14];
      v55[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v54 - 1;
      v24 = v57;
      if (__OFSUB__(v54, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v54 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v7, v46);
  v48 = v51;
  v49 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v47, v52, v2, v14, v60);

  if (!v48)
  {

    MEMORY[0x22AA61F40](v47, -1, -1);

    v2 = v49;
    goto LABEL_43;
  }

  result = MEMORY[0x22AA61F40](v47, -1, -1);
  __break(1u);
  return result;
}

{
  v5 = a2;
  v74 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_58:
    v54 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v60 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v64 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v68 = (a2 + 56);

  v15 = 0;
  v66 = v13;
  if (v11)
  {
LABEL_11:
    while (1)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v19 = *(v13 + 48);
      v67 = v15;
      v20 = (v19 + ((v15 << 10) | (16 * v18)));
      v22 = *v20;
      v21 = v20[1];
      v23 = *(v5 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v24 = Hasher._finalize()();
      v25 = -1 << *(v5 + 32);
      v2 = v24 & ~v25;
      v8 = v2 >> 6;
      v4 = 1 << v2;
      if (((1 << v2) & v68[v2 >> 6]) != 0)
      {
        break;
      }

LABEL_19:

      v13 = v66;
      v15 = v67;
      v8 = -1;
      if (!v11)
      {
        goto LABEL_6;
      }
    }

    v3 = ~v25;
    while (1)
    {
      v26 = (*(v5 + 48) + 16 * v2);
      v27 = *v26 == v22 && v26[1] == v21;
      if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v2 = (v2 + 1) & v3;
      v8 = v2 >> 6;
      v4 = 1 << v2;
      if (((1 << v2) & v68[v2 >> 6]) == 0)
      {
        goto LABEL_19;
      }
    }

    v3 = v66;
    v28 = v67;
    v71 = v64;
    v72 = v67;
    v73 = v11;
    v69 = v66;
    v70 = v7;

    v30 = *(v5 + 32);
    v61 = ((1 << v30) + 63) >> 6;
    v14 = 8 * v61;
    if ((v30 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v12)
      {
        v51 = v7;
        v52 = v64;
        v53 = 0;
        goto LABEL_57;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        goto LABEL_11;
      }
    }

LABEL_60:
    __break(1u);
  }

  v56 = v14;

  if (swift_stdlib_isStackAllocationSafe())
  {

    v28 = v67;
LABEL_22:
    v62 = &v60;
    MEMORY[0x28223BE20](v29);
    v2 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v68, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v65 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v63 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_60;
      }

      if (v37 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v67 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v68[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v67;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v68[v8 >> 6]) == 0)
              {
                v3 = v66;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v66;
          v35 = v65[v2];
          v65[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v67;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v63 - 1;
        if (__OFSUB__(v63, 1))
        {
          __break(1u);
        }

        if (v63 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_54;
        }

        goto LABEL_23;
      }
    }

    if (v12 <= v28 + 1)
    {
      v50 = v28 + 1;
    }

    else
    {
      v50 = v12;
    }

    v28 = v50 - 1;
    v5 = specialized _NativeSet.extractSubset(using:count:)(v65, v61, v63, v5);
    v11 = 0;
LABEL_54:
    v13 = v3;
    v51 = v7;
    v52 = v64;
    v15 = v28;
    v53 = v11;
LABEL_57:
    outlined consume of Set<String>.Iterator._Variant(v13, v51, v52, v15, v53);
    goto LABEL_58;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v68, v56);
  v58 = v60;
  v59 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v57, v61, v5, v2, &v69);

  if (!v58)
  {

    MEMORY[0x22AA61F40](v57, -1, -1);
    v3 = v69;
    v7 = v70;
    v28 = v72;
    v64 = v71;
    v5 = v59;
    v11 = v73;
    goto LABEL_54;
  }

  result = MEMORY[0x22AA61F40](v57, -1, -1);
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return specialized _NativeSet.extractSubset(using:count:)(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v17 = Hasher._finalize()();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return specialized _NativeSet.extractSubset(using:count:)(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        specialized Set._Variant.remove(_:)(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  specialized _NativeSet._delete(at:)(v9);
  *v2 = v20;
  return v13;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t DatabaseTable<>.get(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[10] = AssociatedTypeWitness;
  v5[2] = AssociatedTypeWitness;
  v5[11] = type metadata accessor for Predicate();
  v8 = *(*(type metadata accessor for Optional() - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[13] = AssociatedConformanceWitness;
  v5[14] = *(AssociatedConformanceWitness + 8);
  Descriptor = type metadata accessor for FetchDescriptor();
  v5[15] = Descriptor;
  v11 = *(Descriptor - 8);
  v5[16] = v11;
  v12 = *(v11 + 64) + 15;
  v5[17] = swift_task_alloc();
  v13 = *(a4 + 8);
  v5[18] = v13;
  v14 = *(v13 + 8);
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DatabaseTable<>.get(_:), v16, v15);
}

uint64_t DatabaseTable<>.get(_:)()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  (*(v0[8] + 56))(v0[6], v0[7]);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  type metadata accessor for SortDescriptor();
  static Array._allocateUninitialized(_:)();
  FetchDescriptor.init(predicate:sortBy:)();
  ModelActor.modelContext.getter();
  v8 = dispatch thunk of ModelContext.fetch<A>(_:)();
  v9 = v0[10];

  v0[3] = v8;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
  if (v0[4])
  {
    v10 = v0[13];
    v11 = v0[10];
    v12 = v0[5];

    (*(v10 + 64))(v11, v10);
    (*(v0[16] + 8))(v0[17], v0[15]);
    swift_unknownObjectRelease();
    v21 = 0;
  }

  else
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    v21 = 1;
  }

  v13 = v0[17];
  v14 = v0[12];
  v16 = v0[7];
  v15 = v0[8];
  v17 = v0[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v17, v21, 1, AssociatedTypeWitness);

  v19 = v0[1];

  return v19();
}

uint64_t DatabaseTable<>.set(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v8 = type metadata accessor for Optional();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v10 = *(v9 + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = *(AssociatedTypeWitness - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = *(*(a4 + 8) + 8);
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v15;
  v5[14] = v14;

  return MEMORY[0x2822009F8](DatabaseTable<>.set(key:value:), v15, v14);
}

uint64_t DatabaseTable<>.set(key:value:)()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  (*(v0[9] + 16))(v1, v0[3], v0[8]);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[7];
    v5 = v0[4];
    v60 = v0[5];
    v6 = v0[2];
    (*(v0[9] + 8))(v0[10], v0[8]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8 = getContiguousArrayStorageType<A>(for:)(AssociatedTypeWitness, AssociatedTypeWitness);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = *(AssociatedTypeWitness - 8);
    v12 = *(v11 + 72);
    v13 = *(v11 + 80);
    swift_allocObject();
    v14 = static Array._adoptStorage(_:count:)();
    v0[19] = v14;
    (*(v11 + 16))(v15, v6, AssociatedTypeWitness);
    type metadata accessor for Array();
    swift_getTupleTypeMetadata2();
    v16 = static Array._allocateUninitialized(_:)();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = specialized Dictionary.init(dictionaryLiteral:)(v16, AssociatedTypeWitness, v4, AssociatedConformanceWitness);
    v0[20] = v18;

    v19 = *(v60 + 64);
    v58 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    v0[21] = v21;
    *v21 = v0;
    v21[1] = DatabaseTable<>.set(key:value:);
    v22 = v0[5];
    v23 = v0[6];
    v24 = v0[4];
    v25 = v14;
    v26 = v18;
    v27 = v58;
  }

  else
  {
    v28 = v0[11];
    v29 = v0[7];
    v61 = v0[5];
    v56 = v0[12];
    v30 = v0[2];
    v55 = v30;
    (*(v28 + 32))(v56, v0[10], v29);
    v31 = swift_getAssociatedTypeWitness();
    v32 = getContiguousArrayStorageType<A>(for:)(v31, v31);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    v35 = *(v31 - 8);
    v36 = *(v35 + 72);
    v37 = *(v35 + 80);
    swift_allocObject();
    v59 = static Array._adoptStorage(_:count:)();
    v0[15] = v59;
    v38 = *(v35 + 16);
    v38(v39, v30, v31);
    type metadata accessor for Array();
    v40 = v29;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    type metadata accessor for _ContiguousArrayStorage();
    v42 = *(*(TupleTypeMetadata2 - 8) + 72);
    v43 = *(*(TupleTypeMetadata2 - 8) + 80);
    swift_allocObject();
    v44 = static Array._adoptStorage(_:count:)();
    v46 = v45;
    v47 = *(TupleTypeMetadata2 + 48);
    v38(v45, v55, v31);
    (*(v28 + 16))(v46 + v47, v56, v40);
    type metadata accessor for Array();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v48 = swift_getAssociatedConformanceWitness();
    v49 = specialized Dictionary.init(dictionaryLiteral:)(v44, v31, v40, v48);
    v0[16] = v49;

    v50 = *(v61 + 64);
    v57 = (v50 + *v50);
    v51 = v50[1];
    v52 = swift_task_alloc();
    v0[17] = v52;
    *v52 = v0;
    v52[1] = DatabaseTable<>.set(key:value:);
    v22 = v0[5];
    v53 = v0[6];
    v24 = v0[4];
    v27 = v57;
    v25 = v59;
    v26 = v49;
  }

  return v27(v25, v26, v24, v22);
}

{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 144) = v0;

  v7 = *(v2 + 112);
  v8 = *(v2 + 104);
  if (v0)
  {
    v9 = DatabaseTable<>.set(key:value:);
  }

  else
  {
    v9 = DatabaseTable<>.set(key:value:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  (*(v0[11] + 8))(v0[12], v0[7]);
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {
    v4 = v3[13];
    v5 = v3[14];

    return MEMORY[0x2822009F8](DatabaseTable<>.set(key:value:), v4, v5);
  }

  else
  {
    v7 = v3[19];
    v6 = v3[20];

    v8 = v3[12];
    v9 = v3[10];

    v10 = v3[1];

    return v10();
  }
}

{
  (*(v0[11] + 8))(v0[12], v0[7]);
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

{
  v2 = v0[19];
  v1 = v0[20];

  v3 = v0[22];
  v4 = v0[12];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t DatabaseTable<>.update(keys:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[11] = AssociatedTypeWitness;
  v8 = type metadata accessor for Optional();
  v5[12] = v8;
  v9 = *(v8 - 8);
  v5[13] = v9;
  v10 = *(v9 + 64) + 15;
  v5[14] = swift_task_alloc();
  v11 = *(AssociatedTypeWitness - 8);
  v5[15] = v11;
  v12 = *(v11 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v5[18] = v13;
  v5[2] = v13;
  v5[19] = type metadata accessor for Predicate();
  v14 = *(*(type metadata accessor for Optional() - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[21] = AssociatedConformanceWitness;
  v5[22] = *(AssociatedConformanceWitness + 8);
  Descriptor = type metadata accessor for FetchDescriptor();
  v5[23] = Descriptor;
  v17 = *(Descriptor - 8);
  v5[24] = v17;
  v18 = *(v17 + 64) + 15;
  v5[25] = swift_task_alloc();
  v19 = swift_getAssociatedTypeWitness();
  v5[26] = v19;
  v20 = *(v19 - 8);
  v5[27] = v20;
  v5[28] = *(v20 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v21 = *(a4 + 8);
  v5[32] = v21;
  v22 = *(v21 + 8);
  v24 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DatabaseTable<>.update(keys:with:), v24, v23);
}

uint64_t DatabaseTable<>.update(keys:with:)()
{
  if (MEMORY[0x22AA60BE0](v0[6], v0[26]))
  {
    v1 = 0;
    v2 = v0[27];
    v67 = v0[28];
    v3 = v0[21];
    v4 = v0[15];
    v82 = (v2 + 16);
    v76 = (v0[9] + 56);
    v77 = (v2 + 32);
    v75 = v0[19] - 8;
    v74 = (v4 + 48);
    v72 = (v4 + 32);
    v70 = (v3 + 80);
    v68 = (v3 + 72);
    v69 = (v4 + 16);
    v73 = (v4 + 8);
    v80 = v2;
    v78 = (v0[24] + 8);
    v79 = (v2 + 8);
    v71 = (v0[13] + 8);
    do
    {
      v21 = v0[26];
      v22 = v0[6];
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v24 = *(v80 + 16);
        v24(v0[31], v0[6] + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v1, v0[26]);
        v25 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v50 = v0[26];
        v51 = v0[6];
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v67 != 8)
        {
          __break(1u);
          return result;
        }

        v53 = v0[31];
        v54 = v0[26];
        v0[3] = result;
        v24 = *v82;
        (*v82)(v53, (v0 + 3), v54);
        swift_unknownObjectRelease();
        v25 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      v81 = v24;
      v83 = v25;
      v84 = v1;
      v86 = v0[32];
      v26 = v0[30];
      v27 = v0[25];
      v28 = v0[22];
      v30 = v0[19];
      v29 = v0[20];
      v31 = v0[18];
      v32 = v0[9];
      v33 = v0[10];
      v34 = v0[8];
      (*v77)(v26, v0[31], v0[26]);
      (*v76)(v26, v34, v32);
      (*(*v75 + 56))(v29, 0, 1, v30);
      type metadata accessor for SortDescriptor();
      static Array._allocateUninitialized(_:)();
      FetchDescriptor.init(predicate:sortBy:)();
      ModelActor.modelContext.getter();
      v35 = dispatch thunk of ModelContext.fetch<A>(_:)();
      v36 = v0[30];
      v37 = v0[26];
      v38 = v35;
      v39 = v0[21];
      v40 = v0[18];
      v41 = v0[14];
      v42 = v0[11];
      v87 = v0[7];

      v0[4] = v38;
      type metadata accessor for Array();
      swift_getWitnessTable();
      Collection.first.getter();

      v43 = v0[5];
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      MEMORY[0x22AA60910](v36, v87, v37, v42, AssociatedConformanceWitness);
      if ((*v74)(v41, 1, v42) == 1)
      {
        (*v71)(v0[14], v0[12]);
        if (v43)
        {
          v45 = v0[32];
          v46 = v0[22];
          v47 = v0[18];
          v48 = v0[10];
          v49 = v0[8];
          ModelActor.modelContext.getter();
          dispatch thunk of ModelContext.delete<A>(_:)();

          swift_unknownObjectRelease();
        }
      }

      else
      {
        (*v72)(v0[17], v0[14], v0[11]);
        if (v43)
        {
          (*v70)(v0[17], v0[18], v0[21]);
          swift_unknownObjectRelease();
        }

        else
        {
          v5 = v0[32];
          v7 = v0[29];
          v6 = v0[30];
          v8 = v0[26];
          v85 = v0[21];
          v10 = v0[17];
          v9 = v0[18];
          v11 = v0[16];
          v12 = v0[10];
          v13 = v0[11];
          v14 = v0[8];
          ModelActor.modelContext.getter();
          v81(v7, v6, v8);
          (*v69)(v11, v10, v13);
          (*v68)(v7, v11, v9, v85);
          v15 = v0[22];
          v16 = v0[18];
          dispatch thunk of ModelContext.insert<A>(_:)();
          swift_unknownObjectRelease();
        }

        (*v73)(v0[17], v0[11]);
      }

      v17 = v0[30];
      v18 = v0[26];
      v19 = v0[6];
      (*v78)(v0[25], v0[23]);
      (*v79)(v17, v18);
      v20 = MEMORY[0x22AA60BE0](v19, v18);
      v1 = v84 + 1;
    }

    while (v83 != v20);
  }

  v55 = v0[32];
  v56 = v0[10];
  v57 = v0[8];
  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();
  v59 = v0[30];
  v58 = v0[31];
  v60 = v0[29];
  v61 = v0[25];
  v62 = v0[20];
  v64 = v0[16];
  v63 = v0[17];
  v65 = v0[14];

  v66 = v0[1];

  return v66();
}

uint64_t DatabaseTable<>.update(configs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(*(a3 + 8) + 8);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](DatabaseTable<>.update(configs:), v7, v6);
}

uint64_t DatabaseTable<>.update(configs:)()
{
  v1 = v0[4];
  v13 = v0[5];
  v2 = v0[3];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v0[2] = v2;
  type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable();
  v3 = Array.init<A>(_:)();
  v0[9] = v3;
  v4 = *(v13 + 64);
  v12 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = DatabaseTable<>.update(configs:);
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];

  return v12(v3, v9, v10, v7);
}

{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[7];
    v5 = v3[8];

    return MEMORY[0x2822009F8](DatabaseTable<>.update(configs:), v4, v5);
  }

  else
  {
    v6 = v3[9];

    v7 = v3[1];

    return v7();
  }
}

{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t StoredEvaluationKeyConfig.evaluationKeyConfigHash.getter()
{
  return StoredEvaluationKeyConfig.evaluationKeyConfigHash.getter();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double key path getter for StoredEvaluationKeyConfig.evaluationKeyConfigHash : StoredEvaluationKeyConfig@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  return key path getter for StoredEvaluationKeyConfig.evaluationKeyConfigHash : StoredEvaluationKeyConfig(a1, a2);
}

{
  *&v4 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for StoredEvaluationKeyConfig.evaluationKeyConfigHash : StoredEvaluationKeyConfig(uint64_t *a1, uint64_t *a2)
{
  return key path setter for StoredEvaluationKeyConfig.evaluationKeyConfigHash : StoredEvaluationKeyConfig(a1, a2);
}

{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t StoredEvaluationKeyConfig.evaluationKeyConfigHash.setter(uint64_t a1, unint64_t a2)
{
  return StoredEvaluationKeyConfig.evaluationKeyConfigHash.setter(a1, a2);
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data._Representation(a1, a2);
}

uint64_t StoredEvaluationKeyConfig.evaluationKeyConfigHash.init(uint64_t a1, unint64_t a2, void *a3)
{
  return StoredEvaluationKeyConfig.evaluationKeyConfigHash.init(a1, a2, a3);
}

{
  v5 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  swift_getKeyPath();
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  return outlined consume of Data._Representation(a1, a2);
}

void (*StoredEvaluationKeyConfig.evaluationKeyConfigHash.modify(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8CipherML25StoredEvaluationKeyConfig___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return StoredEvaluationKeyConfig.evaluationKeyConfigHash.modify;
}

void StoredEvaluationKeyConfig.evaluationKeyConfigHash.modify(uint64_t **a1, char a2)
{
  StoredEvaluationKeyConfig.evaluationKeyConfigHash.modify(a1, a2);
}

{
  v3 = *a1;
  v4 = (*a1)[5];
  v3[2] = (*a1)[4];
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[6];
  swift_getKeyPath();
  if (a2)
  {
    outlined copy of Data._Representation(v6, v5);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data._Representation(v6, v5);

    outlined consume of Data._Representation(*v3, v3[1]);
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data._Representation(v6, v5);
  }

  free(v3);
}

void (*StoredEvaluationKeyConfig.serializedEvalKeyConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8CipherML25StoredEvaluationKeyConfig___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return StoredEvaluationKeyConfig.serializedEvalKeyConfig.modify;
}

uint64_t *StoredEvaluationKeyConfig.init(key:value:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_MR);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  v3[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v3 + 2);
  static PersistentModel.createBackingData<A>()();
  v15 = OBJC_IVAR____TtC8CipherML25StoredEvaluationKeyConfig___observationRegistrar;
  ObservationRegistrar.init()();
  v7 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  swift_getKeyPath();
  outlined copy of Data._Representation(a1, a2);
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  outlined consume of Data._Representation(a1, a2);
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig);
  v8 = Message.serializedData(partial:)();
  if (v17)
  {
    outlined destroy of AspireHeEvaluationKeyConfig(a3, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined consume of Data._Representation(a1, a2);
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v10 = type metadata accessor for ObservationRegistrar();
    (*(*(v10 - 8) + 8))(v3 + v15, v10);
    v11 = *(*v3 + 48);
    v12 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v3[6];
    v18 = v8;
    v13 = v9;
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    swift_getKeyPath();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    outlined consume of Data._Representation(a1, a2);
    outlined destroy of AspireHeEvaluationKeyConfig(a3, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined consume of Data._Representation(v18, v13);
  }

  return v3;
}

uint64_t key path setter for StoredEvaluationKeyConfig.persistentBackingData : StoredEvaluationKeyConfig(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of NetworkManager(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + 16));
  outlined init with take of LocalizedError(v5, v3 + 16);
  return swift_endAccess();
}

void (*StoredEvaluationKeyConfig.persistentBackingData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  outlined init with copy of NetworkManager(v1 + 16, v4);
  return StoredEvaluationKeyConfig.persistentBackingData.modify;
}

uint64_t *StoredEvaluationKeyConfig.__allocating_init(backingData:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v5[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_MR);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  v5[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v5 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v5 + 2);
  outlined init with take of LocalizedError(a1, (v5 + 2));
  swift_endAccess();
  return v5;
}

uint64_t *StoredEvaluationKeyConfig.init(backingData:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_MR);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  v2[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v2 + 2);
  outlined init with take of LocalizedError(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t StoredEvaluationKeyConfig.value.getter()
{
  v0 = type metadata accessor for BinaryDecodingOptions();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig);
  return Message.init<A>(serializedBytes:extensions:partial:options:)();
}

uint64_t StoredEvaluationKeyConfig.updateValue(to:)()
{
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig);
  result = Message.serializedData(partial:)();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data._Representation(v3, v4);
  }

  return result;
}

double protocol witness for StoredType.key.getter in conformance StoredEvaluationKeyConfig@<D0>(_OWORD *a1@<X8>)
{
  *&v4 = v1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  result = v1;
  *a1 = v4;
  return result;
}

uint64_t protocol witness for StoredType.init(key:value:) in conformance StoredEvaluationKeyConfig(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  StoredEvaluationKeyConfig.init(key:value:)(v4, v5, a2);
  return v8;
}

uint64_t protocol witness for StoredType.updateValue(to:) in conformance StoredEvaluationKeyConfig()
{
  type metadata accessor for AspireHeEvaluationKeyConfig(0);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, 255, type metadata accessor for AspireHeEvaluationKeyConfig);
  result = Message.serializedData(partial:)();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data._Representation(v3, v4);
  }

  return result;
}

uint64_t closure #2 in static EvaluationKeyConfigTable.equalityPredicate(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4DataVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DataVGMR);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<StoredEvaluationKeyConfig> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMR);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v12 + 8))(v15, v11);
  v28 = v24;
  v29 = v25;
  static PredicateExpressions.build_Arg<A>(_:)();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationE6ConfigCGAA4DataVGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationE6ConfigCGAA4DataVGAC5ValueVy_AOGGMR);
  a4[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>, PredicateExpressions.Value<Data>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a4);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMR);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Data> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DataVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DataVGMR);
  lazy protocol witness table accessor for type Data and conformance Data();
  v22 = v26;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v27 + 8))(v10, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t EvaluationKeyConfigTable.prune(keeping:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGSgMd, &_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGSgMR) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGMd, &_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGMR);
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for EvaluationKeyConfigTable();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, v7, type metadata accessor for EvaluationKeyConfigTable);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](EvaluationKeyConfigTable.prune(keeping:), v9, v8);
}

uint64_t EvaluationKeyConfigTable.prune(keeping:)()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  *(swift_task_alloc() + 16) = v7;
  v0[2] = type metadata accessor for StoredEvaluationKeyConfig(0);
  Predicate.init(_:)();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, v8, type metadata accessor for EvaluationKeyConfigTable);
  ModelActor.modelContext.getter();
  (*(v4 + 16))(v6, v1, v3);
  (*(v4 + 56))(v6, 0, 1, v3);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
  v9 = v0[9];
  v10 = v0[4];
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[5], &_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGSgMd, &_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGSgMR);

  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();
  v11 = v0[8];
  v12 = v0[6];
  v14 = v0[5];
  (*(v0[7] + 8))();

  v15 = v0[1];

  return v15();
}

uint64_t closure #2 in EvaluationKeyConfigTable.prune(keeping:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMR);
  v32 = *(v29 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4DataVGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4DataVGGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationH6ConfigCGAIGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationH6ConfigCGAIGGMR);
  v19 = *(v18 - 8);
  v30 = v18;
  v31 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  v23 = *a1;
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy10Foundation4DataVGMd, &_sShy10Foundation4DataVGMR);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<StoredEvaluationKeyConfig> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMR);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v6 + 8))(v9, v5);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Set<Data>> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4DataVGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4DataVGGMR);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMR);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type Set<Data> and conformance Set<A>, &_sShy10Foundation4DataVGMd, &_sShy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type Data and conformance Data();
  v24 = v29;
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v32 + 8))(v12, v24);
  (*(v14 + 8))(v17, v13);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8NegationVy_AC16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationI6ConfigCGAKGGGMd, &_s10Foundation20PredicateExpressionsO8NegationVy_AC16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationI6ConfigCGAKGGGMR);
  v26 = v33;
  v33[3] = v25;
  v26[4] = lazy protocol witness table accessor for type PredicateExpressions.Negation<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>>> and conformance <> PredicateExpressions.Negation<A>();
  __swift_allocate_boxed_opaque_existential_1(v26);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>> and conformance PredicateExpressions.SequenceContains<A, B>, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationH6ConfigCGAIGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationH6ConfigCGAIGGMR);
  v27 = v30;
  static PredicateExpressions.build_Negation<A>(_:)();
  return (*(v31 + 8))(v22, v27);
}

uint64_t protocol witness for static DatabaseTable.equalityPredicate(for:) in conformance EvaluationKeyConfigTable(__int128 *a1)
{
  v2 = *a1;
  type metadata accessor for StoredEvaluationKeyConfig(0);
  return Predicate.init(_:)();
}

uint64_t protocol witness for DatabaseTable.update(keys:with:) in conformance EvaluationKeyConfigTable(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return specialized DatabaseTable<>.update(keys:with:)(a1, a2);
}

uint64_t protocol witness for DatabaseTable.get(_:) in conformance EvaluationKeyConfigTable(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return specialized DatabaseTable<>.get(_:)(a1, v4, v5);
}

uint64_t key path getter for StoredConfig.usecase : StoredConfig@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for StoredConfig.usecase : StoredConfig(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 144);

  return v4(v2, v3);
}

uint64_t StoredConfig.usecase.init(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
}

uint64_t StoredConfig.usecase.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t StoredConfig.usecase.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in StoredConfig.usecase.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*StoredConfig.usecase.modify(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8CipherML12StoredConfig___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  PersistentModel.getValue<A>(forKey:)();

  v7 = v4[3];
  *v4 = *v6;
  v4[1] = v7;
  return StoredConfig.usecase.modify;
}

void StoredConfig.usecase.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v3[2] = (*a1)[4];
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[6];
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v8 = v3[1];
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  free(v3);
}

uint64_t key path getter for StoredConfig.serializedConfig : StoredConfig@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for StoredConfig.serializedConfig : StoredConfig(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 192);
  outlined copy of Data._Representation(*a1, v3);
  return v4(v2, v3);
}

uint64_t StoredConfig.serializedConfig.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t StoredConfig.serializedConfig.setter(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data._Representation(a1, a2);
}

uint64_t closure #1 in StoredEvaluationKeyConfig.evaluationKeyConfigHash.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(a5, 255, a6);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*StoredConfig.serializedConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8CipherML12StoredConfig___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  lazy protocol witness table accessor for type Data and conformance Data();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return StoredConfig.serializedConfig.modify;
}

uint64_t StoredEvaluationKeyConfig.__allocating_init(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  a4(a1, a2, a3);
  return v11;
}

uint64_t *StoredConfig.init(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for StoredConfig(0);
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML12StoredConfigC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML12StoredConfigC_AGQo_MR);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  v3[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v3 + 2);
  static PersistentModel.createBackingData<A>()();
  v4 = OBJC_IVAR____TtC8CipherML12StoredConfig___observationRegistrar;
  ObservationRegistrar.init()();
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  type metadata accessor for AspireApiConfig(0);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, 255, type metadata accessor for AspireApiConfig);
  v6 = Message.serializedData(partial:)();
  if (v16)
  {
    outlined destroy of AspireHeEvaluationKeyConfig(a3, type metadata accessor for AspireApiConfig);
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v8 = type metadata accessor for ObservationRegistrar();
    (*(*(v8 - 8) + 8))(v3 + v4, v8);
    v9 = *(*v3 + 48);
    v10 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v3[6];
    v12 = v6;
    v13 = v7;
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    swift_getKeyPath();
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    outlined destroy of AspireHeEvaluationKeyConfig(a3, type metadata accessor for AspireApiConfig);
    outlined consume of Data._Representation(v12, v13);
  }

  return v3;
}

uint64_t StoredEvaluationKeyConfig.persistentBackingData.setter(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  a2(a1, v2 + 16);
  return swift_endAccess();
}

void (*StoredConfig.persistentBackingData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  outlined init with copy of NetworkManager(v1 + 16, v4);
  return StoredEvaluationKeyConfig.persistentBackingData.modify;
}

void StoredEvaluationKeyConfig.persistentBackingData.modify(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    outlined init with copy of NetworkManager(*a1, (v4 + 5));
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v5 + 16));
    a3(v4 + 5, v5 + 16);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v5 + 16));
    a3(v4, v5 + 16);
    swift_endAccess();
  }

  free(v4);
}

uint64_t static StoredConfig.schemaMetadata.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMR);
  v0 = *(type metadata accessor for Schema.PropertyMetadata() - 8);
  v12 = *(v0 + 72);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_225022920;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC9AttributeC6OptionVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC9AttributeC6OptionVGMR);
  v2 = *(type metadata accessor for Schema.Attribute.Option() - 8);
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_225022960;
  static Schema.Attribute.Option.unique.getter();
  v5 = type metadata accessor for Schema.Attribute();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  Schema.Attribute.init(_:originalName:hashModifier:)();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type Schema.Attribute and conformance Schema.Attribute, 255, MEMORY[0x277CDD5E8]);
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *(swift_allocObject() + 16) = xmmword_225022960;
  static Schema.Attribute.Option.externalStorage.getter();
  v8 = *(v5 + 48);
  v9 = *(v5 + 52);
  swift_allocObject();
  Schema.Attribute.init(_:originalName:hashModifier:)();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v11;
}

uint64_t *StoredConfig.__allocating_init(backingData:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v5[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML12StoredConfigC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML12StoredConfigC_AGQo_MR);
  *&v7 = v1;
  *(&v7 + 1) = v1;
  v8 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  v9 = v8;
  v5[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v5 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  outlined init with copy of NetworkManager(a1, &v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v5 + 2);
  outlined init with take of LocalizedError(&v7, (v5 + 2));
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

uint64_t *StoredConfig.init(backingData:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StoredConfig(0);
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML12StoredConfigC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML12StoredConfigC_AGQo_MR);
  v6[0] = v4;
  v6[1] = v4;
  v7 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  v8 = v7;
  v2[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  outlined init with copy of NetworkManager(a1, v6);
  (*(*v2 + 248))(v6);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t StoredEvaluationKeyConfig.access<A>(keyPath:)(uint64_t a1, uint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a2;
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(a3, 255, a4);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t StoredEvaluationKeyConfig.withMutation<A, B>(keyPath:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t *a6, void (*a7)(uint64_t))
{
  v7 = *a5;
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(a6, 255, a7);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t StoredEvaluationKeyConfig.deinit(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v3 = *a1;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  return v1;
}

uint64_t StoredEvaluationKeyConfig.__deallocating_deinit(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  v3 = *a1;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t StoredConfig.value.getter()
{
  v1 = type metadata accessor for BinaryDecodingOptions();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  type metadata accessor for AspireApiConfig(0);
  (*(*v0 + 184))();
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, 255, type metadata accessor for AspireApiConfig);
  return Message.init<A>(serializedBytes:extensions:partial:options:)();
}

uint64_t StoredConfig.updateValue(to:)(uint64_t a1)
{
  result = type metadata accessor for AspireApiConfig(0);
  if ((*(a1 + *(result + 24)) & 1) == 0)
  {
    lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, 255, type metadata accessor for AspireApiConfig);
    result = Message.serializedData(partial:)();
    if (!v2)
    {
      return (*(*v1 + 192))(result);
    }
  }

  return result;
}

uint64_t protocol witness for StoredType.key.getter in conformance StoredConfig@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 136))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for StoredType.value.getter in conformance StoredConfig()
{
  v1 = type metadata accessor for BinaryDecodingOptions();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  type metadata accessor for AspireApiConfig(0);
  (*(*v0 + 184))();
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, 255, type metadata accessor for AspireApiConfig);
  return Message.init<A>(serializedBytes:extensions:partial:options:)();
}

uint64_t protocol witness for StoredType.updateValue(to:) in conformance StoredConfig(uint64_t a1)
{
  result = type metadata accessor for AspireApiConfig(0);
  if ((*(a1 + *(result + 24)) & 1) == 0)
  {
    lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, 255, type metadata accessor for AspireApiConfig);
    result = Message.serializedData(partial:)();
    if (!v2)
    {
      return (*(*v1 + 192))(result);
    }
  }

  return result;
}

uint64_t closure #2 in static ConfigTable.equalityPredicate(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SSGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMR);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML12StoredConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML12StoredConfigCGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<StoredConfig> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML12StoredConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML12StoredConfigCGMR);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v12 + 8))(v15, v11);
  v28 = v24;
  v29 = v25;
  static PredicateExpressions.build_Arg<A>(_:)();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGAC5ValueVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGAC5ValueVy_SSGGMR);
  a4[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a4);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGMR);
  lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMR);
  v22 = v26;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v27 + 8))(v10, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t ConfigTable.usedEvalKeyConfigHashes()()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGSgMd, &_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGSgMR) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy8CipherML12StoredConfigCGMd, &_s9SwiftData15FetchDescriptorVy8CipherML12StoredConfigCGMR);
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = type metadata accessor for ConfigTable();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, v6, type metadata accessor for ConfigTable);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](ConfigTable.usedEvalKeyConfigHashes(), v8, v7);
}

uint64_t ConfigTable.usedEvalKeyConfigHashes()(uint64_t a1, uint64_t a2)
{
  v2[2] = MEMORY[0x277D84FA0];
  v3 = v2[7];
  v4 = v2[8];
  v5 = v2[3];
  v6 = v2[4];
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, a2, type metadata accessor for ConfigTable);
  ModelActor.modelContext.getter();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGMd, &_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGMR);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for StoredConfig(0);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  FetchDescriptor.init(predicate:sortBy:)();
  *(swift_task_alloc() + 16) = v2 + 2;
  dispatch thunk of ModelContext.enumerate<A>(_:batchSize:allowEscapingMutations:block:)();
  v8 = v2[4];
  (*(v2[6] + 8))(v2[7], v2[5]);

  v9 = v2[2];

  v10 = v2[1];

  return v10(v9);
}

uint64_t closure #1 in ConfigTable.usedEvalKeyConfigHashes()(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v4 = type metadata accessor for AspireApiPIRConfig(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AspireApiPECConfig(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v31 - v14;
  v16 = type metadata accessor for BinaryDecodingOptions();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = type metadata accessor for AspireApiConfig(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = (*(*a1 + 184))(v20);
  v34 = v23;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, 255, type metadata accessor for AspireApiConfig);
  result = Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v22, v15, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined destroy of AspireHeEvaluationKeyConfig(v22, type metadata accessor for AspireApiConfig);
    v25 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
    result = (*(*(v25 - 8) + 48))(v15, 1, v25);
    if (result != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of AspireApiConfig(v15, v11, type metadata accessor for AspireApiPECConfig);
        v26 = *(v11 + 4);
        v27 = *(v11 + 5);
        outlined copy of Data._Representation(v26, v27);
        v28 = type metadata accessor for AspireApiPECConfig;
        v29 = v11;
      }

      else
      {
        outlined init with take of AspireApiConfig(v15, v7, type metadata accessor for AspireApiPIRConfig);
        v30 = (*&v7[*(v4 + 20)] + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
        swift_beginAccess();
        v26 = *v30;
        v27 = v30[1];
        outlined copy of Data._Representation(v26, v27);
        v28 = type metadata accessor for AspireApiPIRConfig;
        v29 = v7;
      }

      outlined destroy of AspireHeEvaluationKeyConfig(v29, v28);
      specialized Set._Variant.insert(_:)(&v33, v26, v27);
      return outlined consume of Data._Representation(v33, v34);
    }
  }

  return result;
}

uint64_t ConfigTable.modelExecutor.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

void *EvaluationKeyConfigTable.__allocating_init(modelContainer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = type metadata accessor for ModelContext();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  ModelContext.init(_:)();
  v6 = type metadata accessor for DefaultSerialModelExecutor();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = DefaultSerialModelExecutor.init(modelContext:)();
  v10 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type DefaultSerialModelExecutor and conformance DefaultSerialModelExecutor, 255, MEMORY[0x277CDD598]);
  v2[2] = v9;
  v2[3] = v10;
  v2[4] = a1;
  return v2;
}

void *EvaluationKeyConfigTable.init(modelContainer:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ModelContext();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  ModelContext.init(_:)();
  v7 = type metadata accessor for DefaultSerialModelExecutor();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = DefaultSerialModelExecutor.init(modelContext:)();
  v11 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type DefaultSerialModelExecutor and conformance DefaultSerialModelExecutor, 255, MEMORY[0x277CDD598]);
  v2[2] = v10;
  v2[3] = v11;
  v2[4] = a1;
  return v2;
}

uint64_t EvaluationKeyConfigTable.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return v0;
}

uint64_t EvaluationKeyConfigTable.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static DatabaseTable.equalityPredicate(for:) in conformance ConfigTable(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for StoredConfig(0);
  return Predicate.init(_:)();
}

uint64_t protocol witness for DatabaseTable.update(keys:with:) in conformance ConfigTable(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return specialized DatabaseTable<>.update(keys:with:)(a1, a2);
}

uint64_t protocol witness for DatabaseTable.get(_:) in conformance ConfigTable(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return specialized DatabaseTable<>.get(_:)(a1, v4, v5);
}

uint64_t Cache.modelExecutor.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return swift_unknownObjectRetain();
}

uint64_t Cache.__allocating_init(modelContainer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Cache.init(modelContainer:)(a1);
  return v2;
}

void *Cache.init(modelContainer:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ModelContext();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  ModelContext.init(_:)();
  v7 = type metadata accessor for DefaultSerialModelExecutor();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = DefaultSerialModelExecutor.init(modelContext:)();
  v11 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type DefaultSerialModelExecutor and conformance DefaultSerialModelExecutor, 255, MEMORY[0x277CDD598]);
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = a1;
  type metadata accessor for ConfigTable();
  v12 = swift_allocObject();
  v13 = *(v4 + 48);
  v14 = *(v4 + 52);
  swift_allocObject();
  swift_retain_n();
  ModelContext.init(_:)();
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  swift_allocObject();
  v12[2] = DefaultSerialModelExecutor.init(modelContext:)();
  v12[3] = v11;
  v12[4] = a1;
  v2[2] = v12;
  type metadata accessor for EvaluationKeyConfigTable();
  v17 = swift_allocObject();
  v18 = *(v4 + 48);
  v19 = *(v4 + 52);
  swift_allocObject();

  ModelContext.init(_:)();
  v20 = *(v7 + 48);
  v21 = *(v7 + 52);
  swift_allocObject();
  v22 = DefaultSerialModelExecutor.init(modelContext:)();

  v17[2] = v22;
  v17[3] = v11;
  v17[4] = a1;
  v2[3] = v17;
  return v2;
}

uint64_t Cache.prune(removingUsecases:)(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = type metadata accessor for AspireApiConfig(0);
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  type metadata accessor for Cache();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type Cache and conformance Cache, v7, type metadata accessor for Cache);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[21] = v9;
  v2[22] = v8;

  return MEMORY[0x2822009F8](Cache.prune(removingUsecases:), v9, v8);
}

{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;

  if (v1)
  {
    v8 = v4[19];
    v7 = v4[20];
    v9 = v4[18];

    v10 = *(v6 + 8);

    return v10();
  }

  else
  {
    v4[40] = a1;
    v12 = v4[21];
    v13 = v4[22];

    return MEMORY[0x2822009F8](Cache.prune(removingUsecases:), v12, v13);
  }
}

uint64_t Cache.prune(removingUsecases:)()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v2 + 32);
  *(v0 + 336) = v4;
  v5 = -1;
  v6 = -1 << v4;
  if (-(-1 << v4) < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);

  if (v7)
  {
    v9 = 0;
LABEL_8:
    *(v0 + 192) = v7;
    *(v0 + 200) = v9;
    v11 = *(v0 + 160);
    v12 = *(v0 + 128);
    v13 = (*(v8 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    *(v0 + 208) = *v13;
    *(v0 + 216) = v13[1];
    *(v0 + 224) = *(v3 + 16);
    (*(v1 + 56))(v11, 1, 1, v12);
    type metadata accessor for ConfigTable();
    lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, v14, type metadata accessor for ConfigTable);

    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 232) = v16;
    *(v0 + 240) = v15;

    return MEMORY[0x2822009F8](Cache.prune(removingUsecases:), v16, v15);
  }

  else
  {
    v10 = 0;
    while (((63 - v6) >> 6) - 1 != v10)
    {
      v9 = v10 + 1;
      v7 = *(v8 + 8 * v10++ + 64);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v17 = *(v3 + 16);
    v18 = swift_task_alloc();
    *(v0 + 184) = v18;
    *v18 = v0;
    v18[1] = Cache.prune(removingUsecases:);

    return ConfigTable.usedEvalKeyConfigHashes()();
  }
}

{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[20], v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[19];
  if (v4 == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    v0[35] = inited;
    *(inited + 16) = xmmword_225022960;
    *(inited + 32) = v6;
    *(inited + 40) = v5;
    v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v0[36] = v9;
    v10 = swift_task_alloc();
    v0[37] = v10;
    *v10 = v0;
    v11 = Cache.prune(removingUsecases:);
  }

  else
  {
    v12 = v0[18];
    outlined init with take of AspireApiConfig(v7, v12, type metadata accessor for AspireApiConfig);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    v0[31] = inited;
    *(inited + 16) = xmmword_225022960;
    *(inited + 32) = v6;
    *(inited + 40) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_8CipherML15AspireApiConfigVtGMd, &_ss23_ContiguousArrayStorageCySS_8CipherML15AspireApiConfigVtGMR);
    v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR) - 8);
    v14 = *(*v13 + 72);
    v15 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_225022960;
    v17 = (v16 + v15);
    v18 = v13[14];
    *v17 = v6;
    v17[1] = v5;
    _s8CipherML15AspireApiConfigVWOcTm_0(v12, v17 + v18, type metadata accessor for AspireApiConfig);

    v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(v16);
    v0[32] = v9;
    swift_setDeallocating();
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v17, &_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR);
    swift_deallocClassInstance();
    v10 = swift_task_alloc();
    v0[33] = v10;
    *v10 = v0;
    v11 = Cache.prune(removingUsecases:);
  }

  v10[1] = v11;
  v19 = v0[28];

  return specialized DatabaseTable<>.update(keys:with:)(inited, v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = v2[32];
  v6 = v2[31];

  swift_setDeallocating();
  outlined destroy of String(v6 + 32);
  v7 = v2[30];
  v8 = v2[29];
  if (v0)
  {
    v9 = Cache.prune(removingUsecases:);
  }

  else
  {
    v9 = Cache.prune(removingUsecases:);
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v2 = *v1;
  v3 = (*v1)[37];
  v4 = *v1;
  v2[38] = v0;

  v5 = v2[36];
  v6 = v2[35];

  swift_setDeallocating();
  outlined destroy of String(v6 + 32);
  if (v0)
  {
    v7 = v2[29];
    v8 = v2[30];
    v9 = Cache.prune(removingUsecases:);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[20], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    v7 = v2[21];
    v8 = v2[22];
    v9 = Cache.prune(removingUsecases:);
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

{
  outlined destroy of AspireHeEvaluationKeyConfig(v0[18], type metadata accessor for AspireApiConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[20], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v1 = v0[21];
  v2 = v0[22];

  return MEMORY[0x2822009F8](Cache.prune(removingUsecases:), v1, v2);
}

{
  outlined destroy of AspireHeEvaluationKeyConfig(v0[18], type metadata accessor for AspireApiConfig);
  v0[39] = v0[34];
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[20], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v1 = v0[21];
  v2 = v0[22];

  return MEMORY[0x2822009F8](Cache.prune(removingUsecases:), v1, v2);
}

{
  v1 = v0[14];

  v2 = v0[39];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];

  v6 = v0[1];

  return v6();
}

{
  v0[39] = v0[38];
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[20], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v1 = v0[21];
  v2 = v0[22];

  return MEMORY[0x2822009F8](Cache.prune(removingUsecases:), v1, v2);
}

{
  v1 = *(v0[15] + 24);
  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = Cache.prune(removingUsecases:);
  v3 = v0[40];

  return EvaluationKeyConfigTable.prune(keeping:)(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 320);
  v9 = *v0;

  v4 = v1[20];
  v5 = v1[19];
  v6 = v1[18];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t Cache.prune(removingUsecases:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 200);
  v5 = (*(v3 + 192) - 1) & *(v3 + 192);
  if (v5)
  {
    v6 = *(v3 + 112);
LABEL_7:
    *(v3 + 192) = v5;
    *(v3 + 200) = v4;
    v8 = *(v3 + 160);
    v9 = *(v3 + 128);
    v10 = *(v3 + 136);
    v11 = *(v3 + 120);
    v12 = (*(v6 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v5)))));
    *(v3 + 208) = *v12;
    *(v3 + 216) = v12[1];
    *(v3 + 224) = *(v11 + 16);
    (*(v10 + 56))(v8, 1, 1, v9);
    type metadata accessor for ConfigTable();
    lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, v13, type metadata accessor for ConfigTable);

    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    a3 = v15;
    *(v3 + 232) = v14;
    *(v3 + 240) = v15;
    a1 = Cache.prune(removingUsecases:);
    a2 = v14;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  else
  {
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](a1, a2, a3);
      }

      if (v7 >= (((1 << *(v3 + 336)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v3 + 112);
      v5 = *(v6 + 8 * v7 + 56);
      ++v4;
      if (v5)
      {
        v4 = v7;
        goto LABEL_7;
      }
    }

    v16 = *(v3 + 112);
    v17 = *(v3 + 120);

    v18 = *(v17 + 16);
    v19 = swift_task_alloc();
    *(v3 + 184) = v19;
    *v19 = v3;
    v19[1] = Cache.prune(removingUsecases:);

    return ConfigTable.usedEvalKeyConfigHashes()();
  }
}

uint64_t Cache.getConfigs(for:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for AspireApiKeyStatus(0);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v11 = type metadata accessor for AspireApiPIRConfig(0);
  v3[16] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v13 = *(*(type metadata accessor for AspireApiPECConfig(0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v16 = type metadata accessor for AspireApiConfig(0);
  v3[21] = v16;
  v17 = *(v16 - 8);
  v3[22] = v17;
  v18 = *(v17 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v19 = type metadata accessor for AspireApiConfigResponse(0);
  v3[25] = v19;
  v20 = *(v19 - 8);
  v3[26] = v20;
  v21 = *(v20 + 64) + 15;
  v3[27] = swift_task_alloc();
  type metadata accessor for Cache();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type Cache and conformance Cache, v22, type metadata accessor for Cache);
  v24 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[28] = v24;
  v3[29] = v23;

  return MEMORY[0x2822009F8](Cache.getConfigs(for:), v24, v23);
}

uint64_t Cache.getConfigs(for:)()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[6];
  v4 = MEMORY[0x277D84F90];
  *v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v1[1] = v4;
  v5 = v1 + *(v2 + 24);
  UnknownStorage.init()();
  v6 = *(v3 + 16);
  v0[30] = v6;
  if (v6)
  {
    v0[31] = v4;
    v0[32] = 0;
    v7 = v0[6];
    v8 = v0[7];
    v9 = *(v7 + 32);
    v0[33] = v9;
    v10 = *(v7 + 40);
    v0[34] = v10;
    v11 = *(v8 + 16);

    v12 = swift_task_alloc();
    v0[35] = v12;
    *v12 = v0;
    v12[1] = Cache.getConfigs(for:);
    v13 = v0[20];

    return specialized DatabaseTable<>.get(_:)(v13, v9, v10);
  }

  else
  {
    outlined init with take of AspireApiConfig(v0[27], v0[5], type metadata accessor for AspireApiConfigResponse);
    v15 = v0[27];
    v16 = v0[24];
    v17 = v0[23];
    v19 = v0[19];
    v18 = v0[20];
    v21 = v0[17];
    v20 = v0[18];
    v22 = v0[15];
    v23 = v0[11];
    v25 = v0[10];
    (*(v0[26] + 56))(v0[5], 0, 1, v0[25]);

    v24 = v0[1];

    return v24();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v9 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = v2[34];

    v5 = v2[28];
    v6 = v2[29];
    v7 = Cache.getConfigs(for:);
  }

  else
  {
    v5 = v2[28];
    v6 = v2[29];
    v7 = Cache.getConfigs(for:);
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

{
  v61 = v0;
  v1 = v0[20];
  if ((*(v0[22] + 48))(v1, 1, v0[21]) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v2 = v0[34];
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.daemon);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[34];
    if (v6)
    {
      v8 = v0[33];
      v9 = v0[27];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v60 = v11;
      *v10 = 136446210;
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v60);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_224E26000, v4, v5, "Missing cached config for useCase '%{public}s'.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x22AA61F40](v11, -1, -1);
      MEMORY[0x22AA61F40](v10, -1, -1);
    }

    else
    {
      v9 = v0[27];
      v33 = v0[34];
    }

LABEL_17:
    outlined destroy of AspireHeEvaluationKeyConfig(v9, type metadata accessor for AspireApiConfigResponse);
    v43 = v0[27];
    v44 = v0[24];
    v45 = v0[23];
    v47 = v0[19];
    v46 = v0[20];
    v49 = v0[17];
    v48 = v0[18];
    v50 = v0[15];
    v51 = v0[11];
    v59 = v0[10];
    (*(v0[26] + 56))(v0[5], 1, 1, v0[25]);

    v52 = v0[1];

    return v52();
  }

  v14 = v0[33];
  v13 = v0[34];
  v15 = v0[27];
  v17 = v0[23];
  v16 = v0[24];
  v18 = v0[19];
  outlined init with take of AspireApiConfig(v1, v16, type metadata accessor for AspireApiConfig);
  _s8CipherML15AspireApiConfigVWOcTm_0(v16, v17, type metadata accessor for AspireApiConfig);
  v19 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v14, v13, isUniquelyReferenced_nonNull_native);
  *v15 = v60;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v18, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v21 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  if ((*(*(v21 - 8) + 48))(v18, 1, v21) == 1)
  {
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v22 = v0[34];
    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.daemon);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[34];
    if (v26)
    {
      v28 = v0[33];
      v9 = v0[27];
      v29 = v0[24];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v60 = v31;
      *v30 = 136446210;
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v60);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_224E26000, v24, v25, "Missing evaluationKeyConfig hash for useCase '%{public}s'.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AA61F40](v31, -1, -1);
      MEMORY[0x22AA61F40](v30, -1, -1);
    }

    else
    {
      v9 = v0[27];
      v29 = v0[24];
      v42 = v0[34];
    }

    outlined destroy of AspireHeEvaluationKeyConfig(v29, type metadata accessor for AspireApiConfig);
    goto LABEL_17;
  }

  v34 = v0[34];
  v35 = v0[19];

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = v0[19];
  if (EnumCaseMultiPayload == 1)
  {
    v38 = v0[18];
    outlined init with take of AspireApiConfig(v37, v38, type metadata accessor for AspireApiPECConfig);
    v40 = *(v38 + 32);
    v39 = *(v38 + 40);
    outlined copy of Data._Representation(v40, v39);
    v41 = type metadata accessor for AspireApiPECConfig;
  }

  else
  {
    v54 = v0[16];
    v38 = v0[17];
    outlined init with take of AspireApiConfig(v37, v38, type metadata accessor for AspireApiPIRConfig);
    v55 = (*(v38 + *(v54 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
    swift_beginAccess();
    v40 = *v55;
    v39 = v55[1];
    outlined copy of Data._Representation(v40, v39);
    v41 = type metadata accessor for AspireApiPIRConfig;
  }

  outlined destroy of AspireHeEvaluationKeyConfig(v38, v41);
  v0[37] = v40;
  v0[38] = v39;
  v56 = *(v0[7] + 24);
  v57 = swift_task_alloc();
  v0[39] = v57;
  *v57 = v0;
  v57[1] = Cache.getConfigs(for:);
  v58 = v0[12];

  return specialized DatabaseTable<>.get(_:)(v58, v40, v39);
}

{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 232);
  v6 = *(v2 + 224);
  if (v0)
  {
    v7 = Cache.getConfigs(for:);
  }

  else
  {
    v7 = Cache.getConfigs(for:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v60 = v0;
  v1 = v0[12];
  if ((*(v0[14] + 48))(v1, 1, v0[13]) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v3 = v0[37];
    v2 = v0[38];
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.daemon);
    outlined copy of Data._Representation(v3, v2);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    outlined consume of Data._Representation(v3, v2);
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[37];
    v8 = v0[38];
    v10 = v0[27];
    v11 = v0[24];
    if (v7)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v59 = v13;
      *v12 = 136446210;
      outlined copy of Data._Representation(v9, v8);
      v14 = Data.description.getter();
      v56 = v10;
      v16 = v15;
      outlined consume of Data._Representation(v9, v8);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v59);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_224E26000, v5, v6, "Cache missing evalKeyConfigHash '%{public}s'.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AA61F40](v13, -1, -1);
      MEMORY[0x22AA61F40](v12, -1, -1);

      outlined consume of Data._Representation(v9, v8);
      outlined destroy of AspireHeEvaluationKeyConfig(v11, type metadata accessor for AspireApiConfig);
      v18 = v56;
    }

    else
    {
      outlined consume of Data._Representation(v0[37], v0[38]);

      outlined destroy of AspireHeEvaluationKeyConfig(v11, type metadata accessor for AspireApiConfig);
      v18 = v10;
    }

    outlined destroy of AspireHeEvaluationKeyConfig(v18, type metadata accessor for AspireApiConfigResponse);
    v35 = 1;
    goto LABEL_14;
  }

  v19 = v0[40];
  v20 = v0[31];
  v21 = v0[15];
  v23 = v0[10];
  v22 = v0[11];
  v24 = v0[8];
  outlined init with take of AspireApiConfig(v1, v21, type metadata accessor for AspireHeEvaluationKeyConfig);
  *(swift_task_alloc() + 16) = v21;
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, 255, type metadata accessor for AspireApiKeyStatus);
  static Message.with(_:)();

  _s8CipherML15AspireApiConfigVWOcTm_0(v22, v23, type metadata accessor for AspireApiKeyStatus);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v0[31];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v0[31]);
  }

  v28 = v26[2];
  v27 = v26[3];
  if (v28 >= v27 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1, v26);
  }

  v29 = v0[27];
  v30 = v0[24];
  v31 = v0[15];
  v33 = v0[10];
  v32 = v0[11];
  v34 = v0[9];
  v55 = v0[32] + 1;
  v57 = v0[30];
  outlined consume of Data._Representation(v0[37], v0[38]);
  outlined destroy of AspireHeEvaluationKeyConfig(v32, type metadata accessor for AspireApiKeyStatus);
  outlined destroy of AspireHeEvaluationKeyConfig(v30, type metadata accessor for AspireApiConfig);
  v26[2] = v28 + 1;
  outlined init with take of AspireApiConfig(v33, v26 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v28, type metadata accessor for AspireApiKeyStatus);
  *(v29 + 8) = v26;
  outlined destroy of AspireHeEvaluationKeyConfig(v31, type metadata accessor for AspireHeEvaluationKeyConfig);
  if (v55 == v57)
  {
    outlined init with take of AspireApiConfig(v0[27], v0[5], type metadata accessor for AspireApiConfigResponse);
    v35 = 0;
LABEL_14:
    v36 = v0[27];
    v37 = v0[24];
    v38 = v0[23];
    v40 = v0[19];
    v39 = v0[20];
    v42 = v0[17];
    v41 = v0[18];
    v43 = v0[15];
    v44 = v0[11];
    v58 = v0[10];
    (*(v0[26] + 56))(v0[5], v35, 1, v0[25]);

    v45 = v0[1];

    return v45();
  }

  v47 = v0[32] + 1;
  v0[31] = v26;
  v0[32] = v47;
  v48 = v0[7];
  v49 = v0[6] + 16 * v47;
  v50 = *(v49 + 32);
  v0[33] = v50;
  v51 = *(v49 + 40);
  v0[34] = v51;
  v52 = *(v48 + 16);

  v53 = swift_task_alloc();
  v0[35] = v53;
  *v53 = v0;
  v53[1] = Cache.getConfigs(for:);
  v54 = v0[20];

  return specialized DatabaseTable<>.get(_:)(v54, v50, v51);
}

{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v8 = v0[12];
  v11 = v0[11];
  v12 = v0[10];
  v13 = v0[36];
  outlined destroy of AspireHeEvaluationKeyConfig(v0[27], type metadata accessor for AspireApiConfigResponse);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[24];
  outlined consume of Data._Representation(v0[37], v0[38]);
  outlined destroy of AspireHeEvaluationKeyConfig(v1, type metadata accessor for AspireApiConfig);
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[15];
  v9 = v0[12];
  v12 = v0[11];
  v13 = v0[10];
  v14 = v0[40];
  outlined destroy of AspireHeEvaluationKeyConfig(v0[27], type metadata accessor for AspireApiConfigResponse);

  v10 = v0[1];

  return v10();
}

uint64_t closure #1 in Cache.getConfigs(for:)(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  _s8CipherML15AspireApiConfigVWOcTm_0(a2, v8, type metadata accessor for AspireHeEvaluationKeyConfig);
  v9 = *(type metadata accessor for AspireApiKeyStatus(0) + 24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(&a1[v9], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined init with take of AspireApiConfig(v8, &a1[v9], type metadata accessor for AspireHeEvaluationKeyConfig);
  return (*(v5 + 56))(&a1[v9], 0, 1, v4);
}

void *Cache.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[6];

  return v0;
}

uint64_t Cache.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Actor.unownedExecutor.getter in conformance EvaluationKeyConfigTable(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v7 = a3();
  v9 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(a4, v8, a5);

  return MEMORY[0x28212C8C8](v7, v9);
}

uint64_t protocol witness for ModelActor.modelExecutor.getter in conformance Cache()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return swift_unknownObjectRetain();
}

Swift::Int StoredEvaluationKeyConfig.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t *protocol witness for PersistentModel.init(backingData:) in conformance StoredEvaluationKeyConfig(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v5[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy8CipherML25StoredEvaluationKeyConfigC_AGQo_MR);
  v5[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v5 + 2);
  static PersistentModel.createBackingData<A>()();
  ObservationRegistrar.init()();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v5 + 2);
  outlined init with take of LocalizedError(a1, (v5 + 2));
  swift_endAccess();
  return v5;
}

uint64_t protocol witness for PersistentModel.persistentBackingData.setter in conformance StoredEvaluationKeyConfig(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  outlined init with take of LocalizedError(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t (*protocol witness for PersistentModel.persistentBackingData.modify in conformance StoredEvaluationKeyConfig(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  outlined init with copy of NetworkManager(v1 + 16, v4);
  return protocol witness for PersistentModel.persistentBackingData.modify in conformance StoredEvaluationKeyConfig;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StoredEvaluationKeyConfig()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance StoredEvaluationKeyConfig()
{
  v1 = *v0;
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  return PersistentModel.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StoredEvaluationKeyConfig()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance StoredEvaluationKeyConfig(uint64_t a1)
{
  v3 = *v1;
  v4 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  return MEMORY[0x22AA60770](a1, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StoredEvaluationKeyConfig(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);

  return MEMORY[0x28212CAA0](v3, v4, v2, v5);
}

Swift::Int StoredConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for StoredConfig(0);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

void (*protocol witness for PersistentModel.persistentBackingData.modify in conformance StoredConfig(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 256))();
  return protocol witness for KeyValueCache.subscript.modify in conformance SqliteCache;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StoredConfig()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for StoredConfig(0);
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance StoredConfig()
{
  v1 = *v0;
  swift_getWitnessTable();
  return PersistentModel.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StoredConfig()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance StoredConfig()
{
  v1 = *v0;
  v2 = type metadata accessor for StoredConfig(0);
  v3 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  return MEMORY[0x22AA60770](v2, v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StoredConfig(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212CAA0](v4, v5, a3, WitnessTable);
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
  v24[1] = a1;
  v25 = a4;
  v6 = *(*(a3 - 8) + 64);
  v8.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v4;
  v11 = -1 << *(v4 + 32);
  v13 = v12 & ~v11;
  v24[0] = v4 + 64;
  if ((*(v4 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v11;
    v17 = *(v7 + 16);
    v15 = v7 + 16;
    v16 = v17;
    v18 = *(v15 + 56);
    v19 = (v15 - 8);
    do
    {
      v20 = v15;
      v16(v10, *(v26 + 48) + v18 * v13, a3, v8);
      v21 = *(v25 + 8);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v19)(v10, a3);
      if (v22)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      v15 = v20;
    }

    while (((*(v24[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_62:
    v36 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v53 = *v43;
    outlined copy of Data._Representation(a2, a3);
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v43 = *v53;
    *a1 = a2;
    a1[1] = a3;
    result = 1;
    goto LABEL_64;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v51 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v48 = v16;
  v47 = a3;
  v49 = v12;
  v50 = BYTE6(a3);
  v45 = v6 + 56;
  v46 = v6;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v15 < 3;
      if (((v23 | v51) & 1) == 0)
      {
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v24 = 0;
      if (v15 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_66;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_67;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v50;
        if (v15)
        {
          v28 = HIDWORD(a2) - a2;
          if (v48)
          {
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_65;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_61;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v53 = v19;
        *&v53[8] = v18;
        v53[10] = BYTE2(v18);
        v53[11] = BYTE3(v18);
        v53[12] = BYTE4(v18);
        v53[13] = BYTE5(v18);
        outlined copy of Data._Representation(v19, v18);
        v12 = v49;
        goto LABEL_60;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_68;
      }

      outlined copy of Data._Representation(v19, v18);
      v33 = __DataStorage._bytes.getter();
      if (v33)
      {
        v35 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v35))
        {
          goto LABEL_71;
        }

        v33 += v19 - v35;
      }

      goto LABEL_57;
    }

    if (v20 != 2)
    {
      break;
    }

    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    outlined copy of Data._Representation(v19, v18);
    v33 = __DataStorage._bytes.getter();
    if (v33)
    {
      v34 = __DataStorage._offset.getter();
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_70;
      }

      v33 += v32 - v34;
    }

    if (__OFSUB__(v31, v32))
    {
      goto LABEL_69;
    }

LABEL_57:
    MEMORY[0x22AA5F1C0]();
    a3 = v47;
    closure #1 in static Data.== infix(_:_:)(v33, a2, v47, v53);
    outlined consume of Data._Representation(v19, v18);
    v9 = v45;
    v6 = v46;
    v12 = v49;
    if (v53[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v53[6] = 0;
  *v53 = 0;
  outlined copy of Data._Representation(v19, v18);
LABEL_60:
  closure #1 in static Data.== infix(_:_:)(v53, a2, a3, &v52);
  outlined consume of Data._Representation(v19, v18);
  if (!v52)
  {
    goto LABEL_13;
  }

LABEL_61:
  v39 = a2;
  v40 = a3;
LABEL_63:
  outlined consume of Data._Representation(v39, v40);
  v41 = *(*(v6 + 48) + 16 * v11);
  *a1 = v41;
  outlined copy of Data._Representation(v41, *(&v41 + 1));
  result = 0;
LABEL_64:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DataVGMd, &_ss11_SetStorageCy10Foundation4DataVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v53 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = specialized _NativeSet.copy()();
        goto LABEL_68;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    Hasher.init(_seed:)();
    Data.hash(into:)();
    result = Hasher._finalize()();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = result & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (v7)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v50 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(v7), v7);
      v47 = v18;
      v46 = HIDWORD(v7) - v7;
      v48 = v14;
      v49 = BYTE6(a2);
      v43 = v7;
      v44 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(v7 + 16);
          v28 = *(v7 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v49;
          if (v17)
          {
            v27 = v46;
            if (v47)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              outlined copy of Data._Representation(v21, v20);
              v35 = __DataStorage._bytes.getter();
              if (v35)
              {
                v36 = __DataStorage._offset.getter();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v52[6] = 0;
            *v52 = 0;
            outlined copy of Data._Representation(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              outlined copy of Data._Representation(v21, v20);
              v35 = __DataStorage._bytes.getter();
              if (v35)
              {
                v37 = __DataStorage._offset.getter();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              MEMORY[0x22AA5F1C0]();
              v7 = v43;
              a2 = v44;
              closure #1 in static Data.== infix(_:_:)(v35, v43, v44, v52);
              result = outlined consume of Data._Representation(v21, v20);
              v12 = v10 + 56;
              v14 = v48;
              if (v52[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v52 = v21;
            *&v52[8] = v20;
            v52[10] = BYTE2(v20);
            v52[11] = BYTE3(v20);
            v52[12] = BYTE4(v20);
            v52[13] = BYTE5(v20);
            outlined copy of Data._Representation(v21, v20);
            v14 = v48;
          }

          closure #1 in static Data.== infix(_:_:)(v52, v7, a2, &v51);
          result = outlined consume of Data._Representation(v21, v20);
          if (v51)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v50) & 1) == 0)
      {
LABEL_67:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v45;
  *(*v45 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = v7;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DataVGMd, &_ss11_SetStorageCy10Foundation4DataVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = outlined copy of Data._Representation(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DataVGMd, &_ss11_SetStorageCy10Foundation4DataVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      outlined copy of Data._Representation(v19, v20);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = v24 - v12;
  if (MEMORY[0x22AA60BC0](a1, TupleTypeMetadata2, v11))
  {
    type metadata accessor for _DictionaryStorage();
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  result = MEMORY[0x22AA60BF0](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t specialized Cache.__allocating_init(cacheFile:)(uint64_t a1)
{
  v2 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v38[1] = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v38 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v38 - v15;
  v17 = type metadata accessor for ModelConfiguration();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v39 = v38 - v23;
  v41 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    ModelConfiguration.init(isStoredInMemoryOnly:)();
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    v24 = (*(v10 + 16))(v14, v16, v9);
    MEMORY[0x22AA607B0](v24);
    ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
    (*(v10 + 8))(v16, v9);
  }

  v25 = v39;
  (*(v18 + 32))(v39, v22, v17);
  v26 = type metadata accessor for ModelContainer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData15PersistentModel_pXpGMd, &_ss23_ContiguousArrayStorageCy9SwiftData15PersistentModel_pXpGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_225022920;
  v28 = type metadata accessor for StoredConfig(0);
  v29 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  *(v27 + 32) = v28;
  *(v27 + 40) = v29;
  v30 = type metadata accessor for StoredEvaluationKeyConfig(0);
  v31 = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  *(v27 + 48) = v30;
  *(v27 + 56) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData0E18StoreConfiguration_pGMd, &_ss23_ContiguousArrayStorageCy9SwiftData0E18StoreConfiguration_pGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_225022960;
  *(v32 + 56) = v17;
  *(v32 + 64) = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type ModelConfiguration and conformance ModelConfiguration, 255, MEMORY[0x277CDD500]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v32 + 32));
  (*(v18 + 16))(boxed_opaque_existential_1, v25, v17);
  v34 = v40;
  v35 = ModelContainer.__allocating_init(for:configurations:)();
  if (!v34)
  {
    v36 = v35;
    type metadata accessor for Cache();
    v26 = swift_allocObject();
    Cache.init(modelContainer:)(v36);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v41, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v18 + 8))(v25, v17);
  return v26;
}

uint64_t lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static StoredEvaluationKeyConfig.schemaMetadata.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMR);
  v0 = *(type metadata accessor for Schema.PropertyMetadata() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_225022920;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC9AttributeC6OptionVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC9AttributeC6OptionVGMR);
  v4 = *(type metadata accessor for Schema.Attribute.Option() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_225022960;
  static Schema.Attribute.Option.unique.getter();
  v7 = type metadata accessor for Schema.Attribute();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  Schema.Attribute.init(_:originalName:hashModifier:)();
  lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type Schema.Attribute and conformance Schema.Attribute, 255, MEMORY[0x277CDD5E8]);
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v3;
}

uint64_t partial apply for closure #1 in StoredConfig.usecase.setter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return closure #1 in StoredConfig.usecase.setter();
}

uint64_t outlined destroy of AspireHeEvaluationKeyConfig(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AspireApiConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for StoredEvaluationKeyConfig(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, 255, type metadata accessor for StoredEvaluationKeyConfig);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for EvaluationKeyConfigTable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, a2, type metadata accessor for EvaluationKeyConfigTable);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for StoredConfig(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, 255, type metadata accessor for StoredConfig);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ConfigTable(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, a2, type metadata accessor for ConfigTable);
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CacheStatus(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CacheStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t dispatch thunk of DatabaseTable.update(keys:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DatabaseTable.get(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 72);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EvaluationKeyConfigTable.prune(keeping:)(uint64_t a1)
{
  v4 = *(*v1 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v8(a1);
}

uint64_t type metadata completion function for StoredEvaluationKeyConfig()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t dispatch thunk of ConfigTable.usedEvalKeyConfigHashes()()
{
  v2 = *(*v0 + 104);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of XPCHandler.queryStatus(for:options:);

  return v6();
}

uint64_t dispatch thunk of Cache.prune(removingUsecases:)(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v8(a1);
}

uint64_t dispatch thunk of Cache.getConfigs(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v10(a1, a2);
}

uint64_t _s8CipherML15AspireApiConfigVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGAC5ValueVy_SSGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGAC5ValueVy_SSGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML12StoredConfigCGSSGMR);
    lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<StoredConfig> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML12StoredConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML12StoredConfigCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredConfig>, String> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SSGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Negation<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>>> and conformance <> PredicateExpressions.Negation<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Negation<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>>> and conformance <> PredicateExpressions.Negation<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Negation<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>>> and conformance <> PredicateExpressions.Negation<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO8NegationVy_AC16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationI6ConfigCGAKGGGMd, &_s10Foundation20PredicateExpressionsO8NegationVy_AC16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationI6ConfigCGAKGGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>> and conformance <> PredicateExpressions.SequenceContains<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Negation<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>>> and conformance <> PredicateExpressions.Negation<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>> and conformance <> PredicateExpressions.SequenceContains<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>> and conformance <> PredicateExpressions.SequenceContains<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>> and conformance <> PredicateExpressions.SequenceContains<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationH6ConfigCGAIGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4DataVGGAC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationH6ConfigCGAIGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Set<Data>> and conformance <A> PredicateExpressions.Value<A>();
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance <> PredicateExpressions.KeyPath<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<Data>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>> and conformance <> PredicateExpressions.SequenceContains<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Set<Data>> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Set<Data>> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Set<Data>> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4DataVGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4DataVGGMR);
    lazy protocol witness table accessor for type Set<Data> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Data> and conformance <> Set<A>, lazy protocol witness table accessor for type Data and conformance Data);
    lazy protocol witness table accessor for type Set<Data> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Data> and conformance <> Set<A>, lazy protocol witness table accessor for type Data and conformance Data);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Set<Data>> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Set<Data> and conformance <> Set<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy10Foundation4DataVGMd, &_sShy10Foundation4DataVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance <> PredicateExpressions.KeyPath<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance <> PredicateExpressions.KeyPath<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance <> PredicateExpressions.KeyPath<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationD6ConfigCGAA4DataVGMR);
    lazy protocol witness table accessor for type Expression<Double> and conformance Expression<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<StoredEvaluationKeyConfig> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_8CipherML25StoredEvaluationKeyConfigCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance <> PredicateExpressions.KeyPath<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>, PredicateExpressions.Value<Data>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>, PredicateExpressions.Value<Data>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>, PredicateExpressions.Value<Data>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationE6ConfigCGAA4DataVGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_8CipherML016StoredEvaluationE6ConfigCGAA4DataVGAC5ValueVy_AOGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data> and conformance <> PredicateExpressions.KeyPath<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Data> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<StoredEvaluationKeyConfig>, Data>, PredicateExpressions.Value<Data>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Data> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Data> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Data> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4DataVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4DataVGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Data and conformance Data();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Data> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t dispatch thunk of KeyStorage.get(group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of KeyStorage.set(group:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of KeyStorage.synchronize()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v9(a1, a2);
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return MEMORY[0x28211CA28]();
}

{
  return MEMORY[0x28211CA30]();
}

uint64_t Data._Representation.subscript.getter()
{
  return MEMORY[0x28211D2B0]();
}

{
  return MEMORY[0x28211D2C0]();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Connection.run(_:)()
{
  return MEMORY[0x2821D02A0]();
}

{
  return MEMORY[0x2821D02A8]();
}

Swift::String __swiftcall Expressible.asSQL()()
{
  v0 = MEMORY[0x2821D0328]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t TableBuilder.column<A>(_:unique:check:defaultValue:)()
{
  return MEMORY[0x2821D0338]();
}

{
  return MEMORY[0x2821D0340]();
}

uint64_t < infix<A>(_:_:)()
{
  return MEMORY[0x2821D0358]();
}

{
  return MEMORY[0x2821D0360]();
}

uint64_t <- infix<A>(_:_:)()
{
  return MEMORY[0x2821D0378]();
}

{
  return MEMORY[0x2821D0380]();
}

uint64_t dispatch thunk of Decoder.decodeSingularBoolField(value:)()
{
  return MEMORY[0x28217E280]();
}

{
  return MEMORY[0x28217E288]();
}

uint64_t dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)()
{
  return MEMORY[0x28217E290]();
}

{
  return MEMORY[0x28217E298]();
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)()
{
  return MEMORY[0x28217E338]();
}

{
  return MEMORY[0x28217E340]();
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt32Field(value:)()
{
  return MEMORY[0x28217E348]();
}

{
  return MEMORY[0x28217E350]();
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt64Field(value:)()
{
  return MEMORY[0x28217E358]();
}

{
  return MEMORY[0x28217E360]();
}

Swift::String __swiftcall Message.textFormatString()()
{
  v0 = MEMORY[0x28217E438]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD990]();
}

{
  return MEMORY[0x2821FD9A8]();
}

{
  return MEMORY[0x2821FD9F0]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA08]();
}

{
  return MEMORY[0x2821FDA18]();
}

{
  return MEMORY[0x2821FDA58]();
}

{
  return MEMORY[0x2821FDA68]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAC8]();
}

{
  return MEMORY[0x2821FDAE0]();
}

{
  return MEMORY[0x2821FDB28]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}

{
  return MEMORY[0x2821FDB58]();
}

{
  return MEMORY[0x2821FDB98]();
}

{
  return MEMORY[0x2821FDBA8]();
}