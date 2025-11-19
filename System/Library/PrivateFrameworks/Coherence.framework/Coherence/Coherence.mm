uint64_t sub_1ADDCB8D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for Timestamp(319);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADDCB990()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for Replica()
{
  result = qword_1ED96B688;
  if (!qword_1ED96B688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ADDCBAE0(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  type metadata accessor for CROrderedSetElement();
  result = type metadata accessor for CRSequence();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for CRSet();
    if (v6 <= 0x3F)
    {
      type metadata accessor for CROrderedSet.DeduplicatedInfo();
      result = sub_1AE23D7CC();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ADDCBBDC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCBC18()
{
  result = type metadata accessor for Replica();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADDCBC8C()
{
  result = sub_1AE23BFEC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADDCBD00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCBD3C(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  type metadata accessor for CROrderedSetElement();
  result = sub_1AE23D11C();
  if (v5 <= 0x3F)
  {
    result = sub_1AE23C12C();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADDCBDD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADDCBE24(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void CROrderedSet.init()(char *a1@<X8>)
{
  v2 = *(type metadata accessor for CROrderedSet() + 48);
  v3 = type metadata accessor for CROrderedSet.DeduplicatedInfo();
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  CRSet.init()(&v4);
  *(a1 + 1) = v4;
  type metadata accessor for CROrderedSetElement();
  CRSequence.init()(&v4);
  *a1 = v4;
}

void *CRSet.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRSetRef();
  v2 = swift_allocObject();
  result = sub_1ADDCC3B0();
  *a1 = v2;
  return result;
}

void *__swift_store_extra_inhabitant_index_10Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1AE23C12C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ADDCC0CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCC108(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADDCC15C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCC198(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1ADDCC1F8(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t type metadata accessor for ReplicaState()
{
  result = qword_1ED96B338;
  if (!qword_1ED96B338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1ADDCC2D0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1B26FDA70](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1B26FDA70](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADDCC35C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_1ADDCC3B0()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v24 - v5;
  v7 = sub_1AE23BFEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E7CC8];
  v1[3] = MEMORY[0x1E69E7CC8];
  v1[4] = v12;
  v13 = v2[10];
  v14 = v2[11];
  v15 = v2[13];
  v1[5] = sub_1AE23C9CC();
  v1[6] = 0;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v16 = type metadata accessor for ReplicaState();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v21 = type metadata accessor for Replica();
  v22 = *(*(v21 - 8) + 56);
  v22(v19 + v20, 1, 1, v21);
  (*(v8 + 32))(v19 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v11, v7);
  *(v19 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v19 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v22(v6, 1, 1, v21);
  swift_beginAccess();
  sub_1ADDD85E4(v6, v19 + v20);
  swift_endAccess();
  v1[2] = v19;
  return v1;
}

uint64_t sub_1ADDCC6B4(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA110, &qword_1AE241928);
  v10 = sub_1ADDCC7D4(&qword_1ED96AA40, &qword_1EB5BA110, &qword_1AE241928);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1ADDCC920(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1ADDCC7D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1ADDCC868(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
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

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *sub_1ADDCC920@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_1ADDCC868(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1ADF4BAF0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1ADF4BB6C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1ADDCC9B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCC9F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCCA7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ADDCCAE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCCB2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1ADDCCB8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCCBC8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADDCCC20()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCCCA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for CRExtensible();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADDCCDB4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double Capsule.init(serializedData:allowedAppFormats:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X8>)
{
  Capsule.init(serializedData:allowedAppFormats:fileSignature:)(a1, a2, a3, 0, 0xF000000000000000, a4, a5, v11);
  if (!v6)
  {
    v9 = v12;
    result = v11[0].n128_f64[0];
    v10 = v11[1];
    *a6 = v11[0];
    a6[1] = v10;
    a6[2].n128_u64[0] = v9;
  }

  return result;
}

uint64_t sub_1ADDCCE44()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADDCCEB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1ADDCCF48@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, _OWORD *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v42 = a4;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v40, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, v32);
  if (v6)
  {
    return sub_1ADDCC35C(a1, a2);
  }

  v28 = a6;
  v29 = a5;
  v27 = v12;
  v30 = a3;
  v41[4] = v36;
  v41[5] = v37;
  v41[6] = v38;
  v41[7] = v39;
  v41[0] = *&v32[8];
  v41[1] = v33;
  v41[2] = v34;
  v41[3] = v35;
  v17 = v40;
  sub_1ADDCEE40(v32, v31, &qword_1EB5BA278, &unk_1AE241D30);
  if (qword_1ED96AE88 != -1)
  {
    swift_once();
  }

  v18 = qword_1ED96F2A8;
  type metadata accessor for CRDecoder();
  inited = swift_initStackObject();
  v20 = MEMORY[0x1E69E7CC0];
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  *(inited + 40) = v20;
  v21 = MEMORY[0x1E69E7CC8];
  *(inited + 48) = MEMORY[0x1E69E7CC8];
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 57) = v17;
  *(inited + 16) = 0;
  *(inited + 24) = v20;
  type metadata accessor for CRProtoDecodeContext();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v21;
  v22[4] = v18;
  v22[5] = v21;
  v23 = *(&v33 + 1);

  sub_1ADDCEE40(v32, v31, &qword_1EB5BA278, &unk_1AE241D30);

  sub_1AE1B5950(v23);

  sub_1ADDCEDE0(v32, &qword_1EB5BA278, &unk_1AE241D30);
  v24 = *(inited + 16);
  *(inited + 16) = v22;

  sub_1ADDD5D3C(v41);
  sub_1ADDCEDE0(v32, &qword_1EB5BA278, &unk_1AE241D30);
  v25 = v30;
  v29(v30, v41, v30, v42);
  sub_1ADDCC35C(a1, a2);
  swift_setDeallocating();
  CRDecoder.deinit();
  swift_deallocClassInstance();
  sub_1ADDCEDE0(v32, &qword_1EB5BA278, &unk_1AE241D30);
  return (*(v27 + 32))(v28, v15, v25);
}

uint64_t sub_1ADDCD494()
{
  v0 = sub_1AE23BDDC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v4 = NSTemporaryDirectory();
  sub_1AE23CD0C();

  sub_1AE23BCDC();

  v5 = type metadata accessor for CRAssetManager(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_1ADDCD880(v3, v10);
  qword_1ED96F2A8 = v8;
  return result;
}

uint64_t sub_1ADDCD598()
{
  result = sub_1AE23BDDC();
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

unint64_t sub_1ADDCD698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0D8, &qword_1AE2418B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0E0, &qword_1AE2418C0);
    v8 = sub_1AE23DCDC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1ADDCEE40(v10, v6, &qword_1EB5BA0D8, &qword_1AE2418B8);
      result = sub_1ADDFF050(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1AE23BDDC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1ADDCD880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v67 = a1;
  v66 = sub_1AE23BDDC();
  v60 = *(v66 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AE23D68C();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1AE23D65C();
  v9 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AE23C8CC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AE23BFEC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = MEMORY[0x1E69E7CC0];
  *(v2 + 48) = sub_1ADDCD674(v19);
  *(v2 + 96) = 0;
  sub_1AE23BFDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v20 = swift_allocObject();
  v56 = xmmword_1AE241900;
  *(v20 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v21 = MEMORY[0x1E69E7508];
  v22 = MEMORY[0x1E69E7558];
  *(v20 + 56) = MEMORY[0x1E69E7508];
  *(v20 + 64) = v22;
  v23 = v21;
  *(v20 + 32) = v24;
  sub_1AE23BFCC();
  *(v20 + 96) = v23;
  *(v20 + 104) = v22;
  *(v20 + 72) = v25;
  v26 = sub_1AE23CD3C();
  v28 = v27;
  v29 = *(v15 + 8);
  v29(v18, v14);
  *(v3 + 104) = v26;
  *(v3 + 112) = v28;
  *(v3 + 16) = sub_1ADDCD698(v19);
  v31 = *(v3 + 104);
  v30 = *(v3 + 112);
  v32 = type metadata accessor for AssetActor(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();

  sub_1ADDCE724(v31, v30);
  *(v3 + 24) = v35;
  v57 = sub_1ADDCED94();
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1AE23DA2C();

  v69 = 0xD00000000000001ELL;
  v70 = 0x80000001AE2634D0;
  sub_1AE23BFDC();
  v36 = swift_allocObject();
  *(v36 + 16) = v56;
  sub_1AE23BFCC();
  v37 = MEMORY[0x1E69E7508];
  *(v36 + 56) = MEMORY[0x1E69E7508];
  *(v36 + 64) = v22;
  *(v36 + 32) = v38;
  sub_1AE23BFCC();
  *(v36 + 96) = v37;
  *(v36 + 104) = v22;
  *(v36 + 72) = v39;
  v40 = sub_1AE23CD3C();
  v42 = v41;
  v29(v18, v14);
  v43 = v61;
  MEMORY[0x1B26FB670](v40, v42);

  sub_1AE23C8AC();
  v69 = MEMORY[0x1E69E7CC0];
  sub_1ADDCEF80(&unk_1ED96B1F0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9E60, &qword_1AE251B80);
  v44 = v66;
  sub_1ADDCF010(&qword_1ED96B200, &qword_1EB5B9E60, &qword_1AE251B80);
  v45 = v67;
  sub_1AE23D8DC();
  (*(v64 + 104))(v63, *MEMORY[0x1E69E8090], v65);
  *(v3 + 32) = sub_1AE23D6CC();
  v46 = v43;
  sub_1ADDCEE40(v43, v3 + 56, &qword_1EB5B9DB0, &qword_1AE240B80);
  v47 = v68;
  sub_1AE23BD3C();
  v48 = v60;
  (*(v60 + 32))(v3 + OBJC_IVAR____TtC9Coherence14CRAssetManager_temporaryDirectory, v47, v44);
  v49 = objc_opt_self();
  v50 = [v49 defaultCenter];
  v51 = qword_1ED96AA20;

  if (v51 != -1)
  {
    swift_once();
  }

  [v50 addObserver:v3 selector:sel_didEnterBackground name:qword_1ED96F288 object:0];

  v52 = [v49 defaultCenter];
  v53 = qword_1ED96AA18;

  if (v53 != -1)
  {
    swift_once();
  }

  [v52 addObserver:v3 selector:sel_willEnterForeground name:qword_1ED96F280 object:0];

  if (qword_1ED96AB10 != -1)
  {
    swift_once();
  }

  v54 = *(qword_1ED96F290 + 24);

  sub_1AE23D6AC();
  sub_1ADDCEDE0(v46, &qword_1EB5B9DB0, &qword_1AE240B80);
  (*(v48 + 8))(v45, v44);

  *(v3 + 96) = v69;
  return v3;
}

unint64_t sub_1ADDCE010(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_1AE23DCDC();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_1ADDCEE40(v17, v13, a2, v28);
      result = sub_1ADDFF050(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_1AE23BDDC();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1ADDCE248()
{
  if (!qword_1ED96AA38)
  {
    v0 = sub_1AE23D21C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED96AA38);
    }
  }
}

id sub_1ADDCE2E4(char a1, uint64_t a2)
{
  v4 = sub_1AE23BDDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v14;
  if (*(a2 + 24))
  {
    (*(v5 + 56))(&v37 - v14, 1, 1, v4, v15);
    v17 = sub_1ADDCFD3C(v16);
    sub_1ADDCEE40(a2, &v39, &qword_1EB5B9DB0, &qword_1AE240B80);
    v18 = NSTemporaryDirectory();
    sub_1AE23CD0C();

    sub_1AE23BCDC();

    v19 = type metadata accessor for CRAssetManager(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_1ADDCD880(v8, &v39);
    sub_1ADDCEE40(a2, &v39, &qword_1EB5B9DB0, &qword_1AE240B80);
    v23 = type metadata accessor for CRContext();
    v24 = objc_allocWithZone(v23);
    *&v24[OBJC_IVAR___CRContext_assetManager] = v22;
    sub_1ADDCEE40(&v39, &v24[OBJC_IVAR___CRContext_encryptionDelegate], &qword_1EB5B9DB0, &qword_1AE240B80);
    v25 = &v24[OBJC_IVAR___CRContext_crdtDatabase];
    *v25 = v17;
    v25[1] = &off_1F23C69F0;
    v37.receiver = v24;
    v37.super_class = v23;
    v26 = objc_msgSendSuper2(&v37, sel_init);
  }

  else
  {
    if (a1)
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      v27 = NSTemporaryDirectory();
      sub_1AE23CD0C();

      sub_1AE23BCDC();

      v28 = type metadata accessor for CRAssetManager(0);
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      v31 = sub_1ADDCD880(v8, &v39);
    }

    else
    {
      if (qword_1ED96AE88 != -1)
      {
        swift_once();
      }

      v31 = qword_1ED96F2A8;
    }

    (*(v5 + 56))(v12, 1, 1, v4);
    v32 = sub_1ADDCFD3C(v12);
    v33 = type metadata accessor for CRContext();
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
    v34 = objc_allocWithZone(v33);
    *&v34[OBJC_IVAR___CRContext_assetManager] = v31;
    sub_1ADDCEE40(&v39, &v34[OBJC_IVAR___CRContext_encryptionDelegate], &qword_1EB5B9DB0, &qword_1AE240B80);
    v35 = &v34[OBJC_IVAR___CRContext_crdtDatabase];
    *v35 = v32;
    v35[1] = &off_1F23C69F0;
    v38.receiver = v34;
    v38.super_class = v33;
    v26 = objc_msgSendSuper2(&v38, sel_init);
  }

  sub_1ADDCEDE0(&v39, &qword_1EB5B9DB0, &qword_1AE240B80);
  return v26;
}

uint64_t sub_1ADDCE724(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v34 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD18, &qword_1AE254540);
  v8 = *(v39 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v34 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD20, &qword_1AE254548);
  v12 = *(v37 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v37);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD28, &qword_1AE254550);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v34 - v22;
  swift_defaultActor_initialize();
  v2[15] = a1;
  v2[16] = a2;
  v36 = a2;

  v2[14] = sub_1ADE50D24(MEMORY[0x1E69E7CC0]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  v25 = *(v24 - 8);
  (*(v25 + 56))(v23, 1, 1, v24);
  v40 = v23;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8650], v39);
  sub_1AE23D24C();
  sub_1ADDCEE40(v23, v21, &qword_1EB5BDD28, &qword_1AE254550);
  result = (*(v25 + 48))(v21, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    (*(v25 + 32))(v2 + OBJC_IVAR____TtC9Coherence10AssetActor__streamContinuation, v21, v24);
    v27 = sub_1AE23D1BC();
    v28 = v38;
    (*(*(v27 - 8) + 56))(v38, 1, 1, v27);
    v29 = v35;
    v30 = v37;
    (*(v12 + 16))(v35, v16, v37);
    v31 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    (*(v12 + 32))(v32 + v31, v29, v30);
    v33 = sub_1AE217C10(0, 0, v28, &unk_1AE254560, v32);
    (*(v12 + 8))(v16, v30);
    *(v2 + OBJC_IVAR____TtC9Coherence10AssetActor__task) = v33;
    sub_1ADDCEDE0(v23, &qword_1EB5BDD28, &qword_1AE254550);
    return v2;
  }

  return result;
}

uint64_t sub_1ADDCEBD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD20, &qword_1AE254548);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1ADDCECA0(uint64_t a1, uint64_t a2)
{
  sub_1ADDCEDE0(a2, &qword_1EB5BDD28, &qword_1AE254550);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

unint64_t sub_1ADDCED94()
{
  result = qword_1ED96B370;
  if (!qword_1ED96B370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED96B370);
  }

  return result;
}

uint64_t sub_1ADDCEDE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1ADDCEE40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1ADDCEEA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ADDCEEF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ADDCEF38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ADDCEF80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ADDCEFC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ADDCF010(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1ADDCF064(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1ADE744B8;

  return sub_1ADDCF11C(a1, v5);
}

uint64_t sub_1ADDCF11C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AE21BCC8;

  return v7(a1);
}

uint64_t sub_1ADDCF214(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD20, &qword_1AE254548) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1ADE74240;

  return sub_1ADDCF310(a1, v6, v7, v1 + v5);
}

uint64_t sub_1ADDCF310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD30, &qword_1AE254568);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ADDCF3DC, 0, 0);
}

uint64_t sub_1ADDCF3DC()
{
  v1 = v0[11];
  v2 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD20, &qword_1AE254548);
  sub_1AE23D22C();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1AE1A7A48;
  v5 = v0[11];
  v6 = v0[9];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t sub_1ADDCF4A8()
{
  result = sub_1AE23CCDC();
  qword_1ED96F288 = result;
  return result;
}

uint64_t sub_1ADDCF4E0()
{
  result = sub_1AE23CCDC();
  qword_1ED96F280 = result;
  return result;
}

uint64_t sub_1ADDCF518()
{
  type metadata accessor for ApplicationStateManager();
  swift_allocObject();
  result = sub_1ADDCF578();
  qword_1ED96F290 = result;
  return result;
}

uint64_t sub_1ADDCF578()
{
  v1 = sub_1AE23C88C();
  v2 = *(v1 - 8);
  v33 = v1;
  v34 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v32 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1AE23D68C();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE23D65C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1AE23C8CC();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 1;
  v15 = sub_1ADDCED94();
  v27[0] = &unk_1AE2521A0;
  v27[1] = v15;
  v29 = v14;
  sub_1AE23C8AC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1ADDCFAF8(&unk_1ED96B1F0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9E60, &qword_1AE251B80);
  sub_1ADDCF010(&qword_1ED96B200, &qword_1EB5B9E60, &qword_1AE251B80);
  sub_1AE23D8DC();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8090], v28);
  *(v0 + 24) = sub_1AE23D6CC();
  v16 = objc_opt_self();
  v17 = [v16 defaultCenter];

  v18 = sub_1AE23CCDC();
  [v17 addObserver:v0 selector:sel_didEnterBackground name:v18 object:0];

  v19 = [v16 defaultCenter];

  v20 = sub_1AE23CCDC();
  [v19 addObserver:v0 selector:sel_willEnterForeground name:v20 object:0];

  v21 = sub_1AE23D69C();
  aBlock[4] = sub_1ADDD5B1C;
  v37 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = &block_descriptor_8;
  v22 = _Block_copy(aBlock);

  v23 = v29;
  sub_1AE23C8AC();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1ADDCFAF8(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  v25 = v32;
  v24 = v33;
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v23, v25, v22);
  _Block_release(v22);

  (*(v34 + 8))(v25, v24);
  (*(v30 + 8))(v23, v31);

  return v0;
}

uint64_t sub_1ADDCFAF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ADDCFB68()
{
  result = sub_1AE23BFEC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1ADDCFC04()
{
  sub_1ADDCFCC0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1ADDCFCC0()
{
  if (!qword_1ED96A4B0)
  {
    type metadata accessor for CRReplicaDatabase.ReplicaDb(255);
    v0 = sub_1AE23D7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED96A4B0);
    }
  }
}

uint64_t sub_1ADDCFD3C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDC68, &unk_1AE253C20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v48 - v5;
  v7 = sub_1AE23C88C();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1AE23C8CC();
  v56 = *(v58 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AE23C89C();
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v48 - v17;
  v62 = a1;
  sub_1ADDCEE40(a1, &v48 - v17, &qword_1EB5B9DC0, &qword_1AE240B90);
  v19 = sub_1AE23BDDC();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v18, 1, v19);
  v61 = v6;
  if (v21 == 1)
  {
    v22 = 0x656D3A3A656C6966;
    sub_1ADDCEDE0(v18, &qword_1EB5B9DC0, &qword_1AE240B90);
    v23 = 0xED00003A79726F6DLL;
  }

  else
  {
    v22 = sub_1AE23BDAC();
    v23 = v24;
    (*(v20 + 8))(v18, v19);
  }

  v25 = type metadata accessor for CRReplicaDatabase(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  *(v28 + 88) = 0u;
  *(v28 + 104) = 0u;
  v29 = MEMORY[0x1E69E7CD0];
  *(v28 + 120) = MEMORY[0x1E69E7CC8];
  *(v28 + 128) = v29;
  v30 = OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica;
  v31 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v34 = v32 + 56;
  v33(v28 + v30, 1, 1, v31);
  *(v28 + OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replicaUpdated) = 0;
  *(v28 + 24) = v23;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  *(v28 + 64) = 0;
  *(v28 + 66) = 1;
  *(v28 + 68) = 0;
  *(v28 + 70) = 1;
  *(v28 + 72) = 0;
  *(v28 + 80) = -1;
  *(v28 + 16) = v22;
  *(v28 + 41) = 0;
  *(v28 + 48) = 0;
  *(v28 + 56) = 0;

  sub_1ADDD16D4();
  if (v1)
  {
    sub_1ADDCEDE0(v62, &qword_1EB5B9DC0, &qword_1AE240B90);
  }

  else
  {
    v50 = v34;
    v51 = v33;
    if (v22 == 0x656D3A3A656C6966 && v23 == 0xED00003A79726F6DLL || (sub_1AE23E00C() & 1) != 0)
    {
    }

    else
    {
      sub_1ADDCED94();
      v36 = v52;
      v35 = v53;
      v37 = v54;
      (*(v53 + 104))(v52, *MEMORY[0x1E69E7F98], v54);

      v49 = sub_1AE23D6DC();
      (*(v35 + 8))(v36, v37);
      v38 = swift_allocObject();
      *(v38 + 16) = v22;
      *(v38 + 24) = v23;
      aBlock[4] = sub_1AE1A3878;
      aBlock[5] = v38;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1ADDD2200;
      aBlock[3] = &block_descriptor_14;
      v39 = _Block_copy(aBlock);
      v40 = v55;
      sub_1AE23C8AC();
      aBlock[8] = MEMORY[0x1E69E7CC0];
      sub_1ADE923C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
      sub_1ADF92ED8();
      v41 = v57;
      v42 = v60;
      sub_1AE23D8DC();
      v43 = v49;
      MEMORY[0x1B26FBF60](0, v40, v41, v39);

      _Block_release(v39);

      (*(v59 + 8))(v41, v42);
      (*(v56 + 8))(v40, v58);
    }

    sub_1ADDD0944();
    v44 = v51;
    v45 = v61;
    sub_1ADDD0648(v61);
    sub_1ADDCEDE0(v62, &qword_1EB5B9DC0, &qword_1AE240B90);
    v44(v45, 0, 1, v31);
    v47 = OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica;
    swift_beginAccess();
    sub_1ADDD4268(v45, v28 + v47);
    swift_endAccess();
  }

  return v28;
}

uint64_t sub_1ADDD043C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

sqlite3_stmt *sub_1ADDD0474()
{
  result = sub_1ADDD1E30();
  if (!v1)
  {
    v3 = result;
    v4 = sqlite3_step(result);
    if (v4 == 101)
    {
      sqlite3_finalize(v3);
      v3 = sub_1ADDD1E30();
      v7 = sqlite3_step(v3);
      if (v7 == 101)
      {
        return sqlite3_finalize(v3);
      }

      if (v7 == 5)
      {
        goto LABEL_4;
      }

      if (sqlite3_errmsg(*(v0 + 32)))
      {
LABEL_10:
        v8 = sub_1AE23CDEC();
        v10 = v9;
        sub_1ADE47024();
        swift_allocError();
        *v5 = v8;
        *(v5 + 8) = v10;
        v6 = 2;
        goto LABEL_11;
      }

      __break(1u);
    }

    else if (v4 == 5)
    {
LABEL_4:
      sub_1ADE47024();
      swift_allocError();
      *v5 = 0;
      *(v5 + 8) = 0;
      v6 = 5;
LABEL_11:
      *(v5 + 16) = v6;
      swift_willThrow();
      return sqlite3_finalize(v3);
    }

    result = sqlite3_errmsg(*(v0 + 32));
    if (!result)
    {
      __break(1u);
      return result;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1ADDD05D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BFEC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

sqlite3_int64 sub_1ADDD0648@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1AE23BFEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sqlite3_step(*(v3 + 104)) != 100)
  {
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();
    v17 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
    *(a1 + *(v17 + 20)) = 0;
    *(a1 + *(v17 + 24)) = 0;
    *(v3 + OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replicaUpdated) = 1;
    return sqlite3_reset(*(v3 + 104));
  }

  v10 = sqlite3_column_bytes(*(v3 + 104), 0);
  v11 = sqlite3_column_blob(*(v3 + 104), 0);
  v19 = sqlite3_column_int64(*(v3 + 104), 1);
  result = sqlite3_column_int64(*(v3 + 104), 2);
  if (!v11)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = sub_1ADDD8EE0(v11, v10);
  result = sub_1ADDFE348(v14, v15);
  if (!v2)
  {
    (*(v6 + 32))(a1, v9, v5);
    v16 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
    *(a1 + *(v16 + 20)) = v19;
    *(a1 + *(v16 + 24)) = v13;
    return sqlite3_reset(*(v3 + 104));
  }

  return result;
}

sqlite3_stmt *sub_1ADDD089C()
{
  result = sub_1ADDD1E30();
  if (!v1)
  {
    v0[11] = result;
    v0[12] = sub_1ADDD1E30();
    v0[13] = sub_1ADDD1E30();
    result = sub_1ADDD1E30();
    v0[14] = result;
  }

  return result;
}

uint64_t sub_1ADDD0944()
{
  v1 = v0;
  v71 = *MEMORY[0x1E69E9840];
  v2 = sub_1AE23BFEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sqlite3_step(*(v0 + 88)) != 100)
  {
LABEL_35:
    sqlite3_reset(*(v1 + 88));
    swift_beginAccess();
    v59 = *(*(v1 + 120) + 16);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDC98, &unk_1AE254018);
    sub_1AE23CA3C();
    result = swift_endAccess();
    goto LABEL_39;
  }

  v64[1] = v3 + 16;
  v65 = v2;
  v67 = (v3 + 8);
  while (1)
  {
    v8 = sqlite3_column_bytes(*(v1 + 88), 0);
    v9 = sqlite3_column_blob(*(v1 + 88), 0);
    v10 = sqlite3_column_int64(*(v1 + 88), 1);
    if (!v9)
    {
      goto LABEL_45;
    }

    if (!v8)
    {
      v16 = 0;
      v17 = 0xC000000000000000;
      goto LABEL_38;
    }

    v11 = v10;
    v12 = v8;
    if (v8 >= 15)
    {
      break;
    }

    memset(__dst, 0, sizeof(__dst));
    v70 = v8;
    memcpy(__dst, v9, v8);
    v16 = *__dst;
    v17 = v66 & 0xF00000000000000 | *&__dst[8] | (*&__dst[12] << 32) | (v70 << 48);
    v66 = v17;
    if (v70 != 16)
    {
      goto LABEL_38;
    }

LABEL_12:
    v18 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_25;
      }

      v19 = *(v16 + 16);
      v20 = sub_1AE23BB7C();
      if (!v20)
      {
        goto LABEL_46;
      }

      v21 = v20;
      v22 = sub_1AE23BBAC();
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_43;
      }

      v23 = (v19 - v22 + v21);
      sub_1AE23BB9C();
      if (!v23)
      {
        goto LABEL_47;
      }

      goto LABEL_24;
    }

    if (v18)
    {
      if (v16 > v16 >> 32)
      {
        goto LABEL_42;
      }

      v24 = sub_1AE23BB7C();
      if (!v24)
      {
        goto LABEL_48;
      }

      v25 = v24;
      v26 = sub_1AE23BBAC();
      if (__OFSUB__(v16, v26))
      {
        goto LABEL_44;
      }

      v23 = (v16 - v26 + v25);
      sub_1AE23BB9C();
      if (!v23)
      {
        goto LABEL_49;
      }

LABEL_24:
      v27 = *v23;
      v28 = v23[1];
      v29 = v23[2];
      v30 = v23[3];
      v31 = v23[4];
      v32 = v23[5];
      v33 = v23[6];
      v34 = v23[7];
      v35 = v23[8];
      v36 = v23[9];
      v37 = v23[10];
      v38 = v23[11];
      v39 = v23[12];
      v40 = v23[13];
      v41 = v23[14];
      v42 = v23[15];
      v2 = v65;
    }

LABEL_25:
    sub_1AE23BFBC();
    sub_1ADDCC35C(v16, v17);
    swift_beginAccess();
    v43 = *(v1 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v1 + 120);
    v45 = v68;
    *(v1 + 120) = 0x8000000000000000;
    v46 = sub_1ADDDF300(v6);
    v48 = v45[2];
    v49 = (v47 & 1) == 0;
    v50 = __OFADD__(v48, v49);
    v51 = v48 + v49;
    if (v50)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      sub_1AE23BB9C();
LABEL_47:
      __break(1u);
LABEL_48:
      sub_1AE23BB9C();
      __break(1u);
LABEL_49:
      __break(1u);
    }

    v52 = v47;
    if (v45[3] < v51)
    {
      sub_1ADF68CE0(v51, isUniquelyReferenced_nonNull_native);
      v46 = sub_1ADDDF300(v6);
      if ((v52 & 1) != (v53 & 1))
      {
        result = sub_1AE23E27C();
        __break(1u);
        return result;
      }

LABEL_30:
      v54 = v68;
      if (v52)
      {
        goto LABEL_3;
      }

      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v58 = v46;
    sub_1ADF6EAB8();
    v46 = v58;
    v2 = v65;
    v54 = v68;
    if (v52)
    {
LABEL_3:
      *(v54[7] + 8 * v46) = v11;
      (*v67)(v6, v2);
      goto LABEL_4;
    }

LABEL_31:
    v54[(v46 >> 6) + 8] |= 1 << v46;
    v55 = v46;
    (*(v3 + 16))(v54[6] + *(v3 + 72) * v46, v6, v2);
    *(v54[7] + 8 * v55) = v11;
    (*(v3 + 8))(v6, v2);
    v56 = v54[2];
    v50 = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (v50)
    {
      goto LABEL_41;
    }

    v54[2] = v57;
LABEL_4:
    v7 = *(v1 + 120);
    *(v1 + 120) = v54;

    swift_endAccess();
    if (sqlite3_step(*(v1 + 88)) != 100)
    {
      goto LABEL_35;
    }
  }

  v13 = sub_1AE23BBCC();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  if (v8 != 0x7FFFFFFF)
  {
    v16 = v8 << 32;
    v17 = sub_1AE23BB6C() | 0x4000000000000000;
    if (v12 != 16)
    {
      goto LABEL_38;
    }

    goto LABEL_12;
  }

  v60 = sub_1AE23BB6C();
  sub_1AE23BE2C();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AE241270;
  v17 = v60 | 0x8000000000000000;
LABEL_38:
  sub_1ADE42E40();
  swift_allocError();
  *v61 = xmmword_1AE241D20;
  *(v61 + 16) = 0;
  swift_willThrow();
  result = sub_1ADDCC35C(v16, v17);
LABEL_39:
  v62 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1ADDD0F70()
{
  v1 = clock_gettime_nsec_np(_CLOCK_REALTIME);
  v2 = ((v1 / 0xF4240) << 12) | (4095 * (v1 % 0xF4240) / 0xF4240);
  v3 = *(v0 + 24);
  os_unfair_lock_lock((v3 + 32));
  sub_1ADDD104C((v3 + 16), v2, v0, v4);
  os_unfair_lock_unlock((v3 + 32));
  if (HIWORD(v4[0]) || v4[1] > 0xFFF || v4[2] >> 62)
  {
    __break(1u);
  }
}

unint64_t sub_1ADDD104C@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if (*a1 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a1;
  }

  if (*a1 < a2)
  {
    goto LABEL_12;
  }

  result = *(a3 + 16);
  if (result > 0x4000000000000000)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a1[1];
  if (result)
  {
    result = sub_1ADDCC2D0(result);
  }

  v9 = v8 + 1;
  if (v8 == -1)
  {
    goto LABEL_17;
  }

  v10 = __CFADD__(v9, result);
  result += v9;
  if (v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!(result >> 62))
  {
LABEL_13:
    *a1 = v6;
    a1[1] = result;
    *a4 = v6 >> 12;
    a4[1] = v6 & 0xFFF;
    if (!(result >> 62))
    {
      a4[2] = result;
      return result;
    }

    __break(1u);
    goto LABEL_16;
  }

  v10 = __CFADD__(v6++, 1);
  if (!v10)
  {
LABEL_12:
    result = sub_1ADDCC2D0(0x2000000000000000uLL);
    goto LABEL_13;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1ADDD110C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1ADDD1158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADDD11C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADDD1230()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_1AE23BFEC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  _s15UUIDv7GeneratorCMa();
  v5 = swift_allocObject();
  result = sub_1ADDD1328(0x1000000000000uLL, v3);
  qword_1ED96F298 = v5;
  return result;
}

uint64_t sub_1ADDD1328(unint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1AE23BFEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BC8F8, &qword_1AE250C20);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(v2 + 24) = result;
  if (a1 > 0x4000000000000000)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = a1;
    sub_1ADDD1158(a2, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1ADDD11C8(a2);
      sub_1ADDD11C8(v8);
    }

    else
    {
      (*(v10 + 32))(v13, v8, v9);
      v15 = sub_1AE001EA8();
      v17 = v16;
      v18 = *(v2 + 24);
      os_unfair_lock_lock((v18 + 32));
      *(v18 + 16) = v15;
      *(v18 + 24) = v17;
      os_unfair_lock_unlock((v18 + 32));
      sub_1ADDD11C8(a2);
      (*(v10 + 8))(v13, v9);
    }

    return v2;
  }

  return result;
}

uint64_t sub_1ADDD1544(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
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
    v10 = sub_1ADDE0598(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1ADDCC35C(a3, a4);
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
  sub_1ADDD8820(v14, a3, a4, &v13);
  v10 = v4;
  sub_1ADDCC35C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1ADDD16D4()
{
  v1 = v0;
  ppDb[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42[-v8];
  v11 = *(v1 + 16);
  v10 = *(v1 + 24);
  v47 = v11;
  v48 = v10;
  ppDb[0] = 0;
  v12 = v11 == 0x656D3A3A656C6966 && v10 == 0xED00003A79726F6DLL;
  if (v12 || (sub_1AE23E00C() & 1) != 0)
  {

    v43 = 0;
  }

  else
  {
    v13 = objc_opt_self();

    v14 = [v13 defaultManager];
    v15 = sub_1AE23CCDC();
    v43 = [v14 fileExistsAtPath_];
  }

  if (sub_1AE23CE4C())
  {
    v16 = [objc_opt_self() defaultManager];
    sub_1AE23BCEC();
    sub_1AE23BD5C();
    v17 = *(v3 + 8);
    v17(v6, v2);
    v18 = sub_1AE23BD1C();
    v17(v9, v2);
    v45 = 0;
    v19 = [v16 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v45];

    v20 = v45;
    if (!v19)
    {
      v33 = v45;

      sub_1AE23BC9C();

      result = swift_willThrow();
      goto LABEL_31;
    }

    v45 = 0x3A656C6966;
    v46 = 0xE500000000000000;
    v21 = v20;
    MEMORY[0x1B26FB670](v11, v10);

    v47 = v45;
    v48 = v46;
  }

  v22 = *(v1 + 42);
  if (v22 == 1)
  {
    MEMORY[0x1B26FB670](0x626174756D6D693FLL, 0xEC000000313D656CLL);
    v23 = 32833;
  }

  else
  {
    v23 = 32838;
  }

  v24 = sub_1AE23CD8C();
  v25 = sqlite3_open_v2((v24 + 32), ppDb, v23, 0);

  if (v25)
  {

    *(v1 + 40) = 1;
    if (sqlite3_errmsg(ppDb[0]))
    {
      v26 = sub_1AE23CDEC();
      v28 = v27;
      sub_1ADE47024();
      swift_allocError();
      *v29 = v26;
      *(v29 + 8) = v28;
    }

    else
    {
      sub_1ADE47024();
      swift_allocError();
      *v29 = 0xD000000000000026;
      *(v29 + 8) = 0x80000001AE25FAC0;
    }

    *(v29 + 16) = 0;
    swift_willThrow();
    result = ppDb[0];
    if (ppDb[0])
    {
      result = sqlite3_close(ppDb[0]);
    }

    goto LABEL_31;
  }

  v30 = ppDb[0];
  *(v1 + 32) = ppDb[0];
  sqlite3_busy_timeout(v30, 1000);
  *(v1 + 40) = 0;
  if (*(v1 + 41) == 1)
  {
    v31 = v44;
    sub_1ADE43808();
    if (v31)
    {
      goto LABEL_30;
    }

    sub_1ADE43924();
    v32 = 0;
  }

  else
  {
    v32 = v44;
  }

  if (v22)
  {
    goto LABEL_26;
  }

  sub_1ADDD1CA0();
  if (v32)
  {
LABEL_30:

    goto LABEL_31;
  }

  sub_1ADDD1F20();
  v32 = 0;
LABEL_26:
  v35 = *(v1 + 48);
  if (v35)
  {
  }

  else
  {
    v37 = *(v1 + 56);

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  if (v43)
  {
    result = sub_1ADE433DC(*(v1 + 56), v35);
    if (v32)
    {
      goto LABEL_31;
    }

    goto LABEL_48;
  }

  if ((v22 & 1) == 0)
  {
    v38 = *(v1 + 56);
    if (v38)
    {
      if (*(v38 + 16))
      {
        v39 = 0;
        LODWORD(v38) = *(v38 + 32);
        goto LABEL_42;
      }

      LODWORD(v38) = 0;
    }

    v39 = 1;
LABEL_42:
    if (v35)
    {
      v40 = *(v35 + 16);
      if (v40)
      {
        v41 = 0;
        LODWORD(v40) = *(v35 + 32);
        goto LABEL_47;
      }
    }

    else
    {
      LODWORD(v40) = 0;
    }

    v41 = 1;
LABEL_47:
    result = sub_1ADE43620(v38 | (v39 << 16), v40 | (v41 << 16));
    if (v32)
    {
      goto LABEL_31;
    }
  }

LABEL_48:
  result = (*(*v1 + 368))(result);
  if (!v32)
  {
    result = (*(*v1 + 376))(result);
  }

LABEL_31:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

sqlite3_stmt *sub_1ADDD1CA0()
{
  result = sqlite3_db_readonly(*(v0 + 32), "main");
  if (!result)
  {
    result = sub_1ADDD1E30();
    if (!v1)
    {
      v3 = result;
      sqlite3_step(result);
      if (sqlite3_column_int(v3, 0) != 2)
      {
        v4 = sub_1ADDD1E30();
        do
        {
          v5 = sqlite3_step(v4);
        }

        while (v5 == 100);
        if (v5 != 101)
        {
          sub_1AE23DA2C();

          result = sqlite3_errmsg(*(v0 + 32));
          if (!result)
          {
            __break(1u);
            return result;
          }

          v6 = sub_1AE23CDEC();
          MEMORY[0x1B26FB670](v6);

          MEMORY[0x1B26FB670](46, 0xE100000000000000);
          sub_1ADE47024();
          swift_allocError();
          *v7 = 0xD000000000000013;
          *(v7 + 8) = 0x80000001AE25FAA0;
          *(v7 + 16) = 0;
          swift_willThrow();
        }

        sqlite3_finalize(v4);
      }

      return sqlite3_finalize(v3);
    }
  }

  return result;
}

sqlite3_stmt *sub_1ADDD1E30()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v1 = *(v0 + 32);
  v2 = sub_1AE23CD8C();
  LODWORD(v1) = sqlite3_prepare_v2(v1, (v2 + 32), -1, v9, 0);

  if (!v1)
  {
    result = v9[0];
    goto LABEL_5;
  }

  result = sqlite3_errmsg(*(v0 + 32));
  if (result)
  {
    v4 = sub_1AE23CDEC();
    v6 = v5;
    sub_1ADE47024();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v6;
    *(v7 + 16) = 1;
    result = swift_willThrow();
LABEL_5:
    v8 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1ADDD1F20()
{
  result = sub_1ADDD1E30();
  if (!v1)
  {
    v3 = result;
    do
    {
      v4 = sqlite3_step(v3);
    }

    while (v4 == 100);
    if (v4 != 101)
    {
      sub_1AE23DA2C();

      strcpy(v8, "App ID setup: ");
      HIBYTE(v8[1]) = -18;
      result = sqlite3_errmsg(*(v0 + 32));
      if (!result)
      {
        __break(1u);
        return result;
      }

      v5 = sub_1AE23CDEC();
      MEMORY[0x1B26FB670](v5);

      MEMORY[0x1B26FB670](46, 0xE100000000000000);
      v6 = v8[1];
      sub_1ADE47024();
      swift_allocError();
      *v7 = v8[0];
      *(v7 + 8) = v6;
      *(v7 + 16) = 0;
      swift_willThrow();
    }

    return sqlite3_finalize(v3);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1ADDD2198(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1ADDD2208(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1ADDD22FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for FinalizedTimestamp(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = 0;
  v17 = type metadata accessor for CRRegisterRef();
  (*(v13 + 16))(v16, a1, a3);
  sub_1ADED0548(a2, v12);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  sub_1ADDD25B8(v16, v12);
  sub_1ADE173B8(a2);
  result = (*(v13 + 8))(a1, a3);
  *a4 = v20;
  return result;
}

uint64_t sub_1ADDD2498(uint64_t a1)
{
  v1 = *(a1 + 192);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for FinalizedTimestamp(319);
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ADDD25B8(uint64_t a1, uint64_t a2)
{
  (*(*(*(*v2 + 192) - 8) + 32))(v2 + *(*v2 + 208), a1);
  sub_1ADE172E4(a2, v2 + *(*v2 + 216));
  return v2;
}

uint64_t sub_1ADDD2658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDD26C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDD2728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDD2788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDD27F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CRRegister.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, a2);
  CRRegister.init(_:)(v11, a2, a3, &v14);
  result = (*(v8 + 8))(a1, a2);
  *a4 = v14;
  return result;
}

uint64_t CRRegister.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for FinalizedTimestamp(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(*(a3 + 8) + 8) + 48))(a2))
  {
    result = (*(v13 + 8))(a1, a2);
    v18 = 0;
  }

  else
  {
    (*(v13 + 16))(v16, a1, a2);
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();
    *&v12[*(v8 + 20)] = 0;
    sub_1ADDD22FC(v16, v12, a2, &v20);
    result = (*(v13 + 8))(a1, a2);
    v18 = v20;
  }

  *a4 = v18;
  return result;
}

void sub_1ADDD2C4C()
{
  v0 = sub_1AE23BFEC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1ADDD2D28();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1ADDD2D28()
{
  if (!qword_1ED96B2D8[0])
  {
    type metadata accessor for Replica();
    v0 = sub_1AE23D7CC();
    if (!v1)
    {
      atomic_store(v0, qword_1ED96B2D8);
    }
  }
}

size_t sub_1ADDD2D80(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1ADDD2F5C()
{
  result = qword_1ED96AA80;
  if (!qword_1ED96AA80)
  {
    type metadata accessor for Replica();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96AA80);
  }

  return result;
}

uint64_t sub_1ADDD2FD4()
{
  v9[0] = sub_1AE23D68C();
  v0 = *(v9[0] - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v9[0]);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AE23D65C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1AE23C8CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1ADDCED94();
  sub_1AE23C8AC();
  v9[1] = MEMORY[0x1E69E7CC0];
  sub_1ADDD322C(&unk_1ED96B1F0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9E60, &qword_1AE251B80);
  sub_1ADDCF010(&qword_1ED96B200, &qword_1EB5B9E60, &qword_1AE251B80);
  sub_1AE23D8DC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v9[0]);
  result = sub_1AE23D6CC();
  qword_1ED96F300 = result;
  return result;
}

uint64_t sub_1ADDD322C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1ADDD34E0()
{
  sub_1ADE934FC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1ADDD35C4()
{
  result = sub_1AE23C2FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADDD3718(uint64_t a1)
{
  v11 = 0;
  v12 = 0;
  v3 = *(a1 + 16);
  v4 = v3 & 0xF000000000000007;
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && (v3 & 0xF000000000000000) == 0x3000000000000000)
  {
    v6 = (v3 & 0xFFFFFFFFFFFFFFFLL);
    v11 = v6[2];
    v12 = v6[3];
    v13 = v6[4];
  }

  sub_1AE1CA708();
  sub_1AE23C4FC();
  result = v11;
  if (v1)
  {
    return sub_1AE1D018C(v11);
  }

  if (v11)
  {
    if (v4 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v11;
    *(v8 + 24) = v12;
    *(v8 + 32) = v13;
    v9 = v8 | 0x3000000000000000;
    v10 = *(a1 + 16);
    *(a1 + 16) = v9;
    return sub_1ADE52174(v10);
  }

  return result;
}

uint64_t sub_1ADDD387C(uint64_t *a1)
{
  v8 = 0;
  v3 = *a1;
  v4 = v3 & 0xF000000000000007;
  if (v3 >> 62)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0xF000000000000007;
  }

  if (!v5)
  {
    v8 = v3;
  }

  sub_1AE1CB668();
  sub_1AE23C4FC();
  result = v8;
  if (v1)
  {
  }

  if (v8)
  {
    if (v4 != 0xF000000000000007)
    {
      sub_1AE23C39C();
      result = v8;
    }

    v7 = *a1;
    *a1 = result;
    return sub_1ADE73AC8(v7);
  }

  return result;
}

uint64_t sub_1ADDD396C()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        break;
      }

      if (result <= 6)
      {
        if (result == 5)
        {
          goto LABEL_4;
        }

        v3 = v0;
        sub_1AE1C9964();
LABEL_23:
        v0 = v3;
        sub_1AE23C4EC();
        goto LABEL_5;
      }

      if (result == 7 || result == 8)
      {
LABEL_4:
        sub_1AE1CAF38();
        sub_1AE23C4FC();
      }

LABEL_5:
      result = sub_1AE23C38C();
    }

    if (result > 2)
    {
      if (result != 3)
      {
        goto LABEL_4;
      }

      v3 = v0;
      sub_1AE1C96AC();
    }

    else
    {
      if (result == 1)
      {
        sub_1AE23C4AC();
        goto LABEL_5;
      }

      if (result != 2)
      {
        goto LABEL_5;
      }

      v3 = v0;
      sub_1AE1CB7C4();
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1ADDD3B34(uint64_t a1)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = *(a1 + 16);
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && (v3 & 0xF000000000000000) == 0x4000000000000000)
  {
    v24 = 0;
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;

    sub_1ADDCEDE0(&v18, &qword_1EB5BCC28, &unk_1AE251820);
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v7 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v8 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v9 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
    v29 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    v30 = v9;
    v31 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
    v27 = v7;
    v28 = v8;
    v25 = v5;
    v26 = v6;
    sub_1ADE51B64(&v25, v17);
    sub_1ADE52174(v3);
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v32 = v25;
    v33 = v26;
    v34 = v27;
    v35 = v28;
  }

  sub_1AE1C9AC0();
  result = sub_1AE23C4FC();
  if (v1)
  {
    v29 = v36;
    v30 = v37;
    v31 = v38;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    return sub_1ADDCEDE0(&v25, &qword_1EB5BCC28, &unk_1AE251820);
  }

  else
  {
    v29 = v36;
    v30 = v37;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v31 = v38;
    v11 = v32;
    v18 = v33;
    v19 = v34;
    *&v23 = v38;
    v21 = v36;
    v22 = v37;
    v20 = v35;
    if (*(&v32 + 1))
    {
      if ((v3 & 0xF000000000000007) != 0xF000000000000007)
      {
        sub_1AE23C39C();
      }

      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v13 = v21;
      *(v12 + 64) = v20;
      *(v12 + 80) = v13;
      *(v12 + 96) = v22;
      *(v12 + 112) = v23;
      v14 = v19;
      *(v12 + 32) = v18;
      *(v12 + 48) = v14;
      v15 = v12 | 0x4000000000000000;
      v16 = *(a1 + 16);
      *(a1 + 16) = v15;
      return sub_1ADE52174(v16);
    }
  }

  return result;
}

uint64_t sub_1ADDD3D6C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  if (v0[7])
  {

    v5 = v0[8];
  }

  if (v0[9])
  {

    v6 = v0[10];
  }

  if (v0[11])
  {

    v7 = v0[12];
  }

  if (v0[13])
  {

    v8 = v0[14];
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1ADDD3E10()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1AE1CB1F0();
          sub_1AE23C4FC();
          break;
        case 2:
          sub_1AE1C9808();
          sub_1AE23C4EC();
          break;
        case 1:
          sub_1AE23C4BC();
          break;
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDD3F1C(uint64_t a1)
{
  v10 = 0;
  v3 = *(a1 + 16);
  v4 = v3 & 0xF000000000000007;
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && (v3 & 0xF000000000000000) == 0x8000000000000000)
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  sub_1AE1C9C1C();
  sub_1AE23C4FC();
  result = v10;
  if (v1)
  {
  }

  if (v10)
  {
    if (v4 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v8 = v7 | 0x8000000000000000;
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;
    return sub_1ADE52174(v9);
  }

  return result;
}

uint64_t sub_1ADDD4038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1ADDD4094()
{
  type metadata accessor for Proto_OrderedSet._StorageClass();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 192) = 0;
  *(v0 + 200) = v2;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  off_1ED967FA0 = v0;
  return result;
}

uint64_t sub_1ADDD40FC()
{
  result = sub_1AE23C38C();
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
        if (result == 4)
        {
          goto LABEL_15;
        }

        if (result != 5)
        {
          if (result != 6)
          {
            goto LABEL_5;
          }

LABEL_15:
          sub_1AE1CA864();
          sub_1AE23C4EC();
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          sub_1AE23C4DC();
          goto LABEL_5;
        }

        if (result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

          v3 = v0;
          sub_1AE1CB1F0();
          goto LABEL_17;
        }
      }

      v3 = v0;
      sub_1AE1CAF38();
LABEL_17:
      v0 = v3;
      sub_1AE23C4FC();
LABEL_5:
      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDD4268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDC68, &unk_1AE253C20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADDD42F0(uint64_t a1)
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

uint64_t sub_1ADDD4380(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AE23C88C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AE23C8CC();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 24);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_1AE23C8AC();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1ADDCFAF8(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

void sub_1ADDD4654(uint64_t a1, char a2, void *a3, void *a4)
{
  *(a1 + 16) = a2;
  v6 = [objc_opt_self() defaultCenter];
  v7 = v6;
  if (*a3 != -1)
  {
    swift_once();
    v6 = v7;
  }

  [v6 postNotificationName:*a4 object:0];
}

uint64_t sub_1ADDD4738()
{
  v171 = *MEMORY[0x1E69E9840];
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v0 = *(v156 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v155 = &v139 - v2;
  v3 = sub_1AE23BDDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v154 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v145 = &v139 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v139 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v159 = &v139 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC8, &qword_1AE2543F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v146 = &v139 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    *(result + 96) = 0;
    swift_beginAccess();
    v21 = v20[2];
    v22 = *(v21 + 64);
    v144 = v21 + 64;
    v23 = 1 << *(v21 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v149 = v24 & v22;
    v140 = (v23 + 63) >> 6;
    v163 = (v4 + 32);
    v164 = (v4 + 16);
    v158 = v4;
    v167 = (v4 + 8);
    v153 = v5 + 7;
    v152 = (v0 + 8);
    v142 = v21;

    v25 = 0;
    v139 = 0;
    *&v26 = 136315394;
    v141 = v26;
    v168 = v3;
    v162 = v11;
    v166 = v20;
    v143 = v17;
    while (1)
    {
      v27 = v149;
      if (v149)
      {
        v148 = v25;
        v28 = v25;
LABEL_17:
        v149 = (v27 - 1) & v27;
        v31 = __clz(__rbit64(v27)) | (v28 << 6);
        v32 = v142;
        v33 = v158;
        v34 = v159;
        (*(v158 + 16))(v159, *(v142 + 48) + *(v158 + 72) * v31, v3);
        v35 = *(*(v32 + 56) + 8 * v31);
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDCD0, &qword_1AE2543F8);
        v37 = *(v36 + 48);
        (*(v33 + 32))(v17, v34, v3);
        *&v17[v37] = v35;
        (*(*(v36 - 8) + 56))(v17, 0, 1, v36);
      }

      else
      {
        v29 = v140 <= v25 + 1 ? v25 + 1 : v140;
        v30 = v29 - 1;
        while (1)
        {
          v28 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_79;
          }

          if (v28 >= v140)
          {
            break;
          }

          v27 = *(v144 + 8 * v28);
          ++v25;
          if (v27)
          {
            v148 = v28;
            goto LABEL_17;
          }
        }

        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDCD0, &qword_1AE2543F8);
        (*(*(v135 - 8) + 56))(v17, 1, 1, v135);
        v149 = 0;
        v148 = v30;
      }

      v38 = v146;
      sub_1ADDD2198(v17, v146, &qword_1EB5BDCC8, &qword_1AE2543F0);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDCD0, &qword_1AE2543F8);
      if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
      {
        break;
      }

      v151 = *(v38 + *(v39 + 48));
      v161 = *v163;
      v161(v11, v38, v3);
      if (qword_1ED966B00 != -1)
      {
        swift_once();
      }

      v40 = sub_1AE23C78C();
      __swift_project_value_buffer(v40, qword_1ED96F1C8);
      v41 = v145;
      v160 = *v164;
      v160(v145, v11, v3);

      v42 = sub_1AE23C76C();
      v43 = sub_1AE23D60C();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v169 = v45;
        *v44 = v141;
        v46 = v20[13];
        v47 = v20[14];

        v48 = sub_1AE1FB594(v46, v47, &v169);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2080;
        sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0]);
        v49 = sub_1AE23DD9C();
        v51 = v50;
        v165 = *v167;
        v165(v41, v3);
        v52 = sub_1AE1FB594(v49, v51, &v169);

        *(v44 + 14) = v52;
        _os_log_impl(&dword_1ADDCA000, v42, v43, "%s watchDirectory(enterForeground) %s", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B26FDA50](v45, -1, -1);
        v53 = v44;
        v11 = v162;
        MEMORY[0x1B26FDA50](v53, -1, -1);
      }

      else
      {

        v165 = *v167;
        v165(v41, v3);
      }

      [objc_opt_self() addFilePresenter_];
      v54 = [objc_opt_self() defaultManager];
      sub_1AE23BDAC();
      v55 = sub_1AE23CCDC();

      v169 = 0;
      v56 = [v54 contentsOfDirectoryAtPath:v55 error:&v169];

      v57 = v169;
      if (v56)
      {
        v58 = sub_1AE23CFDC();
        v59 = v57;

        v60 = sub_1ADF7F1A4(v58);
      }

      else
      {
        v61 = v169;
        v62 = sub_1AE23BC9C();

        swift_willThrow();
        v60 = 0;
        v139 = 0;
      }

      swift_beginAccess();
      v63 = v20[6];
      if (*(v63 + 16) && (v64 = sub_1ADDFF050(v11), (v65 & 1) != 0))
      {
        v66 = *(*(v63 + 56) + 8 * v64);
      }

      else
      {
        v66 = MEMORY[0x1E69E7CC0];
      }

      swift_endAccess();
      v67 = sub_1ADF7F1A4(v66);

      v157 = v67;
      if (v60)
      {
        v68 = v67[2];
        v69 = v60[2];
        v147 = v60;
        if (v68 > v69 >> 3)
        {

          v92 = sub_1AE1B28FC(v67, v60);
        }

        else
        {
          v169 = v60;

          sub_1AE1B27D0(v67);
          v92 = v169;
        }

        v93 = 0;
        v150 = v92;
        v94 = v92 + 56;
        v95 = 1 << v92[32];
        if (v95 < 64)
        {
          v96 = ~(-1 << v95);
        }

        else
        {
          v96 = -1;
        }

        v97 = v96 & *(v92 + 7);
        v98 = (v95 + 63) >> 6;
        while (v97)
        {
          v99 = v93;
LABEL_56:
          v100 = __clz(__rbit64(v97));
          v97 &= v97 - 1;
          v101 = (*(v150 + 6) + ((v99 << 10) | (16 * v100)));
          v102 = *v101;
          v103 = v101[1];

          v104 = v159;
          sub_1AE23BD3C();

          v105 = v166[3];
          v106 = v154;
          v160(v154, v104, v3);
          v107 = (*(v158 + 80) + 16) & ~*(v158 + 80);
          v108 = (v153 + v107) & 0xFFFFFFFFFFFFFFF8;
          v109 = swift_allocObject();
          v161((v109 + v107), v106, v168);
          *(v109 + v108) = v151;
          v169 = &unk_1AE254420;
          v170 = v109;
          swift_weakInit();
          swift_retain_n();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
          v110 = v155;
          sub_1AE23D1FC();

          v111 = v110;
          v3 = v168;
          (*v152)(v111, v156);
          v165(v104, v3);
        }

        while (1)
        {
          v99 = v93 + 1;
          if (__OFADD__(v93, 1))
          {
            break;
          }

          if (v99 >= v98)
          {

            if (v147[2] <= v157[2] >> 3)
            {
              v169 = v157;
              sub_1AE1B27D0(v147);

              v112 = v169;
            }

            else
            {
              v112 = sub_1AE1B28FC(v147, v157);
            }

            v113 = 0;
            v157 = v112;
            v116 = v112[7];
            v115 = v112 + 7;
            v114 = v116;
            v117 = 1 << *(v115 - 24);
            if (v117 < 64)
            {
              v118 = ~(-1 << v117);
            }

            else
            {
              v118 = -1;
            }

            v119 = v118 & v114;
            v120 = (v117 + 63) >> 6;
            if ((v118 & v114) == 0)
            {
              goto LABEL_66;
            }

            while (1)
            {
              for (i = v113; ; v113 = i)
              {
                v122 = __clz(__rbit64(v119));
                v119 &= v119 - 1;
                v123 = (v157[6] + ((i << 10) | (16 * v122)));
                v124 = *v123;
                v125 = v123[1];

                v126 = v159;
                sub_1AE23BD3C();

                v127 = v166[3];
                v128 = v154;
                v160(v154, v126, v3);
                v129 = (*(v158 + 80) + 16) & ~*(v158 + 80);
                v130 = (v153 + v129) & 0xFFFFFFFFFFFFFFF8;
                v131 = swift_allocObject();
                v161((v131 + v129), v128, v168);
                v132 = (v131 + v130);
                *v132 = 0;
                v132[1] = 0;
                v169 = &unk_1AE254428;
                v170 = v131;
                swift_weakInit();

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
                v133 = v155;
                sub_1AE23D1FC();

                v134 = v133;
                v3 = v168;
                (*v152)(v134, v156);
                v165(v126, v3);
                if (v119)
                {
                  break;
                }

LABEL_66:
                v20 = v166;
                do
                {
                  i = v113 + 1;
                  if (__OFADD__(v113, 1))
                  {
                    goto LABEL_77;
                  }

                  if (i >= v120)
                  {
                    goto LABEL_6;
                  }

                  v119 = v115[i];
                  ++v113;
                }

                while (!v119);
              }
            }
          }

          v97 = *&v94[8 * v99];
          ++v93;
          if (v97)
          {
            v93 = v99;
            goto LABEL_56;
          }
        }

        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
      }

      v70 = 0;
      v73 = v67[7];
      v72 = v67 + 7;
      v71 = v73;
      v74 = 1 << *(v72 - 24);
      if (v74 < 64)
      {
        v75 = ~(-1 << v74);
      }

      else
      {
        v75 = -1;
      }

      v76 = v75 & v71;
      v77 = (v74 + 63) >> 6;
      if ((v75 & v71) != 0)
      {
        do
        {
          v78 = v70;
LABEL_45:
          v79 = __clz(__rbit64(v76));
          v76 &= v76 - 1;
          v80 = (v157[6] + ((v78 << 10) | (16 * v79)));
          v81 = *v80;
          v82 = v80[1];

          v83 = v159;
          sub_1AE23BD3C();

          v84 = v166[3];
          v85 = v154;
          v160(v154, v83, v3);
          v86 = (*(v158 + 80) + 16) & ~*(v158 + 80);
          v87 = (v153 + v86) & 0xFFFFFFFFFFFFFFF8;
          v88 = swift_allocObject();
          v161((v88 + v86), v85, v168);
          v89 = (v88 + v87);
          *v89 = 0;
          v89[1] = 0;
          v169 = &unk_1AE254408;
          v170 = v88;
          swift_weakInit();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
          v90 = v155;
          sub_1AE23D1FC();

          v91 = v90;
          v3 = v168;
          (*v152)(v91, v156);
          v165(v83, v3);
        }

        while (v76);
      }

      v20 = v166;
      while (1)
      {
        v78 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_78;
        }

        if (v78 >= v77)
        {
          break;
        }

        v76 = v72[v78];
        ++v70;
        if (v76)
        {
          v70 = v78;
          goto LABEL_45;
        }
      }

LABEL_6:
      v11 = v162;
      v165(v162, v3);

      v17 = v143;
      v25 = v148;
    }

    v136 = sub_1ADDCD674(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    v137 = v20[6];
    v20[6] = v136;
  }

  v138 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADDD580C()
{
  v1 = sub_1AE23C88C();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AE23C8CC();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 32);
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1ADDD5C80;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = &block_descriptor_15;
  v10 = _Block_copy(aBlock);

  sub_1AE23C8AC();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1ADDCEF80(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v8, v4, v10);
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

uint64_t sub_1ADDD5AE0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADDD5B24()
{
  sub_1AE23D18C();
  sub_1AE23D17C();
  sub_1AE23D16C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_1AE23CCDC();
  v1 = NSClassFromString(v0);

  if (!v1)
  {
    goto LABEL_7;
  }

  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [ObjCClassFromMetadata respondsToSelector_];
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v4 = [ObjCClassFromMetadata sharedApplication];
  if (!v4 || (v5 = [v4 applicationState], swift_unknownObjectRelease(), v5 != 2))
  {
LABEL_7:
    sub_1ADDD4380(sub_1ADDD4614, &block_descriptor_4);
  }
}

uint64_t sub_1ADDD5C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1ADDD4380(a3, a4);
}

uint64_t sub_1ADDD5D3C(void *a1)
{
  v102 = *MEMORY[0x1E69E9840];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v94 = *(v87 - 8);
  v2 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v78 - v3;
  v85 = sub_1AE23BFEC();
  v91 = *(v85 - 8);
  v4 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1AE23BDDC();
  v90 = *(v83 - 8);
  v6 = *(v90 + 64);
  v7 = MEMORY[0x1EEE9AC00](v83);
  v82 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v78 - v9;
  v11 = a1[12];
  v12 = a1[13];
  v13 = a1[10];
  v14 = a1[11];
  v95 = a1;
  if (v11)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v11)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xC000000000000000;
  }

  sub_1ADE73C1C(v13, v14, v11);
  sub_1ADE73C1C(v13, v14, v11);
  sub_1ADE73C1C(v13, v14, v11);
  sub_1ADDD86D8(v15, v16);
  sub_1ADDCC35C(v15, v16);

  v17 = v96;
  v18 = sub_1ADDE70B0(v15, v16);
  if (v17)
  {
    sub_1ADE73B5C(v13, v14, v11);
    sub_1ADE73B5C(v13, v14, v11);
    result = sub_1ADDCC35C(v15, v16);
LABEL_31:
    v76 = *MEMORY[0x1E69E9840];
    return result;
  }

  v20 = v18;
  v92 = v10;
  v93 = 0;
  sub_1ADDCC35C(v15, v16);
  v21 = v88;
  v22 = v88[3];
  v88[3] = v20;

  if (v11)
  {

    sub_1ADDCC35C(v13, v14);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];

    v14 = 0xC000000000000000;
    sub_1ADDCC35C(0, 0xC000000000000000);

    v13 = 0;
    v12 = v11;
  }

  v23 = v94;
  v24 = v91;

  v25 = v21[4];
  v21[4] = v11;

  sub_1ADDCC35C(v13, v14);

  v26 = v21[5];
  v21[5] = v12;

  v27 = v95[4];
  v28 = *(v27 + 16);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA348, &qword_1AE242368);
  sub_1AE23CA3C();
  result = swift_endAccess();
  if (!v28)
  {
    goto LABEL_31;
  }

  v81 = (v24 + 8);
  v80 = (v90 + 32);
  v79 = (v23 + 8);
  v29 = (v27 + 64);
  while (1)
  {
    v90 = v28;
    v32 = v21[2];
    if (!v32)
    {
      goto LABEL_34;
    }

    v96 = *(v29 - 3);
    v33 = *(v29 - 1);
    v34 = *v29;
    v89 = v29;
    v35 = *(v32 + 32);
    type metadata accessor for CRAssetRef();
    v36 = swift_allocObject();
    *(v36 + 16) = v96;
    v91 = v36;
    *(v36 + 32) = v35;
    v37 = objc_opt_self();
    swift_retain_n();
    v38 = v96;
    sub_1ADDD86D8(v96, *(&v96 + 1));
    v94 = v34;
    v95 = v33;
    sub_1ADDD86D8(v33, v34);
    sub_1ADDD86D8(v38, *(&v38 + 1));
    v39 = [v37 defaultManager];
    v40 = sub_1AE23BD1C();
    v99[0] = 0;
    LOBYTE(v34) = [v39 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:0 error:v99];

    if ((v34 & 1) == 0)
    {
      break;
    }

    v41 = v99[0];
    v42 = v84;
    sub_1AE23BFDC();
    sub_1AE23BF6C();
    (*v81)(v42, v85);
    sub_1AE23BD3C();

    sub_1ADDCEE40(v35 + 56, &v97, &qword_1EB5B9DB0, &qword_1AE240B80);
    if (v98)
    {
      sub_1ADE23E6C(&v97, v99);
      v43 = v100;
      v44 = v101;
      __swift_project_boxed_opaque_existential_1(v99, v100);
      v45 = (*(v44 + 8))(v95, v94, v43, v44);
      v47 = v46;
      __swift_destroy_boxed_opaque_existential_1(v99);
    }

    else
    {
      sub_1ADDCEDE0(&v97, &qword_1EB5B9DB0, &qword_1AE240B80);
      v47 = v94;
      v45 = v95;
      sub_1ADDD86D8(v95, v94);
    }

    v48 = v83;
    v49 = v82;
    v51 = v92;
    v50 = v93;
    sub_1AE23BEDC();
    v93 = v50;
    if (v50)
    {
      goto LABEL_36;
    }

    sub_1ADDCC35C(v45, v47);
    v52 = *v80;
    (*v80)(v49, v51, v48);
    v53 = type metadata accessor for CRFileSnapshot();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    v56 = swift_allocObject();
    v52((v56 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url), v49, v48);
    v57 = *(v35 + 24);
    v58 = swift_allocObject();
    *(v58 + 16) = v96;
    *(v58 + 32) = v56;
    v99[0] = &unk_1AE242370;
    v99[1] = v58;
    swift_weakInit();
    sub_1ADDD86D8(v38, *(&v38 + 1));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
    v59 = v86;
    sub_1AE23D1FC();

    (*v79)(v59, v87);

    v21 = v88;
    swift_beginAccess();
    v60 = v21[6];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v97 = v21[6];
    v62 = v97;
    v21[6] = 0x8000000000000000;
    v64 = sub_1ADDDE7CC(v38, *(&v38 + 1));
    v65 = *(v62 + 16);
    v66 = (v63 & 1) == 0;
    v67 = v65 + v66;
    if (__OFADD__(v65, v66))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    v68 = v63;
    if (*(v62 + 24) >= v67)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ADF6EECC();
      }
    }

    else
    {
      sub_1ADF6936C(v67, isUniquelyReferenced_nonNull_native);
      v69 = sub_1ADDDE7CC(v38, *(&v38 + 1));
      if ((v68 & 1) != (v70 & 1))
      {
        goto LABEL_37;
      }

      v64 = v69;
    }

    v71 = v91;
    v72 = v97;
    if (v68)
    {
      v30 = *(v97 + 56);
      v31 = *(v30 + 8 * v64);
      *(v30 + 8 * v64) = v91;
    }

    else
    {
      *(v97 + 8 * (v64 >> 6) + 64) |= 1 << v64;
      *(v72[6] + 16 * v64) = v96;
      *(v72[7] + 8 * v64) = v71;
      v73 = v72[2];
      v74 = __OFADD__(v73, 1);
      v75 = v73 + 1;
      if (v74)
      {
        goto LABEL_33;
      }

      v72[2] = v75;
      sub_1ADDD86D8(v38, *(&v38 + 1));
    }

    v29 = v89 + 5;
    v21[6] = v72;
    swift_endAccess();
    sub_1ADDCC35C(v38, *(&v38 + 1));
    result = sub_1ADDCC35C(v95, v94);
    v28 = v90 - 1;
    if (v90 == 1)
    {
      goto LABEL_31;
    }
  }

  v77 = v99[0];
  sub_1AE23BC9C();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
LABEL_36:
  swift_unexpectedError();
  __break(1u);
LABEL_37:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADDD66F8()
{
  sub_1ADDCC35C(v0[2], v0[3]);
  v1 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADDD6748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v60 = a4;
  v73 = type metadata accessor for Replica();
  v63 = *(v73 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v72 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23C12C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v76 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v59 - v15;
  v77 = MEMORY[0x1E69E7CC8];
  v78 = MEMORY[0x1E69E7CC8];
  v17 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB818, &qword_1AE24CF08);
  sub_1AE23CA3C();
  v71 = *(a1 + 16);
  if (v71)
  {
    v59[1] = v4;
    v74 = a2 + 32;
    v75 = a1 + 32;
    v61 = v11 + 40;
    v62 = v11 + 32;
    v66 = (v11 + 16);
    v67 = (v11 + 8);

    v18 = 0;
    v64 = a3;
    v65 = v11;
    v69 = a2;
    v70 = v10;
    v68 = a1;
    while (v18 < *(a1 + 16))
    {
      v19 = *(v75 + 8 * v18);
      sub_1AE23C11C();
      if (v18 >= *(a2 + 16))
      {
        goto LABEL_44;
      }

      v20 = *(v74 + 8 * v18);
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = v20 + 32;
        v23 = *(v74 + 8 * v18);

        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = __OFADD__(v25, 2) ? 0x7FFFFFFFFFFFFFFFLL : v25 + 2;
          if ((v25 & 0x8000000000000000) != 0)
          {
            break;
          }

          v27 = *(v20 + 16);
          if (v25 >= v27)
          {
            goto LABEL_38;
          }

          v28 = *(v22 + 8 * v25);
          v29 = v24 + v28;
          if (__OFADD__(v24, v28))
          {
            goto LABEL_39;
          }

          v30 = v25 + 1;
          if (v30 >= v27)
          {
            goto LABEL_40;
          }

          v31 = *(v22 + 8 * v30);
          v24 = v29 + v31;
          if (__OFADD__(v29, v31))
          {
            goto LABEL_41;
          }

          if (v24 < v29)
          {
            goto LABEL_42;
          }

          sub_1AE23C07C();
          v25 = v26;
          if (v26 >= v21)
          {

            a3 = v64;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

LABEL_20:
      v32 = *(a3 + 24);
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = v19 >= v33;
      }

      else
      {
        v34 = 1;
      }

      if (v34)
      {
        swift_bridgeObjectRelease_n();

        sub_1ADE42E40();
        swift_allocError();
        *v56 = 0xD000000000000013;
        *(v56 + 8) = 0x80000001AE25FD70;
        *(v56 + 16) = 0;
        swift_willThrow();

        (*v67)(v16, v70);
      }

      v35 = sub_1AE23BFEC();
      v36 = *(v35 - 8);
      v37 = v32 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v19;
      v38 = v72;
      (*(v36 + 16))(v72, v37, v35);
      *(v38 + *(v73 + 20)) = 0;
      v39 = v70;
      (*v66)(v76, v16, v70);
      v40 = v77;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v40;
      v43 = sub_1ADDD8A6C(v38);
      v44 = v40[2];
      v45 = (v42 & 1) == 0;
      v46 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        goto LABEL_45;
      }

      v47 = v42;
      if (v40[3] >= v46)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ADDFB81C();
        }
      }

      else
      {
        sub_1ADDDDED0(v46, isUniquelyReferenced_nonNull_native);
        v48 = sub_1ADDD8A6C(v38);
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_47;
        }

        v43 = v48;
      }

      v50 = v65;
      v51 = v79;
      if (v47)
      {
        (*(v65 + 40))(v79[7] + *(v65 + 72) * v43, v76, v39);
      }

      else
      {
        v79[(v43 >> 6) + 8] |= 1 << v43;
        sub_1ADDDE3A0(v38, v51[6] + *(v63 + 72) * v43, type metadata accessor for Replica);
        (*(v50 + 32))(v51[7] + *(v50 + 72) * v43, v76, v39);
        v52 = v51[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_46;
        }

        v51[2] = v54;
      }

      ++v18;
      sub_1ADDE4FF8(v38, type metadata accessor for Replica);
      (*v67)(v16, v39);
      v77 = v51;
      a1 = v68;
      a2 = v69;
      if (v18 == v71)
      {

        swift_bridgeObjectRelease_n();

        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    result = sub_1AE23E27C();
    __break(1u);
  }

  else
  {

    v51 = v77;
LABEL_36:
    v57 = v78;
    v58 = v60;
    *v60 = v51;
    v58[1] = v57;
  }

  return result;
}

void *sub_1ADDD6E00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA108, &qword_1AE241920);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1ADDD6E80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1AE23C46C();
    }

    else if (result == 2)
    {
      a4();
      sub_1AE23C4EC();
    }
  }

  return result;
}

double sub_1ADDD6F54@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0xF000000000000007;
  *(a1 + 8) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = v1;
  *(a1 + 32) = v1;
  *(a1 + 40) = xmmword_1AE241910;
  *(a1 + 56) = v1;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t sub_1ADDD6F8C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1ADDD86D8(a3, a4);
          return sub_1ADDD1544(v13, a2, a3, a4) & 1;
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

uint64_t sub_1ADDD70F4(uint64_t a1)
{
  v3 = v1;
  result = sub_1AE23C38C();
  if (!v2)
  {
    while (1)
    {
      if (v6)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            v7 = v2;
            sub_1ADEDC930();
            goto LABEL_23;
          }

          v8 = v2;
          sub_1AE1CADD8();
        }

        else
        {
          if (result == 8)
          {
            sub_1AE23C40C();
            goto LABEL_5;
          }

          if (result != 9)
          {
            if (result != 10)
            {
              goto LABEL_5;
            }

LABEL_16:
            v7 = v2;
            sub_1AE1CAF38();
LABEL_23:
            v2 = v7;
            sub_1AE23C4FC();
            goto LABEL_5;
          }

          v8 = v2;
          sub_1AE1CA5AC();
        }

        v2 = v8;
        sub_1AE23C4EC();
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          sub_1ADDD387C(v3);
        }

        else if (result == 2)
        {
          sub_1AE1B8020(v3);
        }
      }

      else if (result == 3)
      {
        sub_1ADDE60B8(v3);
      }

      else
      {
        if (result != 4)
        {
          goto LABEL_16;
        }

        sub_1ADDE6498(a1, v3);
      }

LABEL_5:
      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDD7310(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *v7;
    a4(0);
    swift_allocObject();
    v16 = a6(v17);
    *v10 = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_1ADDD73D4(uint64_t a1)
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result > 5)
    {
      if (result <= 7)
      {
        if (result == 6)
        {
          sub_1AE1BB004(a1);
        }

        else
        {
          sub_1AE1BB240(a1);
        }
      }

      else
      {
        switch(result)
        {
          case 8:
            sub_1AE1BB358(a1);
            break;
          case 9:
            sub_1ADDD3F1C(a1);
            break;
          case 10:
            sub_1AE1BB4EC(a1);
            break;
        }
      }
    }

    else if (result <= 2)
    {
      if (result == 1)
      {
        sub_1ADDE7B60(a1);
      }

      else if (result == 2)
      {
        sub_1AE1BAC3C(a1);
      }
    }

    else if (result == 3)
    {
      sub_1AE1BAE20(a1);
    }

    else if (result == 4)
    {
      sub_1ADDD3718(a1);
    }

    else
    {
      sub_1ADDD3B34(a1);
    }
  }

  return result;
}

void sub_1ADDD75A4(uint64_t a1)
{
  while (1)
  {
    v3 = sub_1AE23C38C();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        sub_1AE1B8FE0();
        break;
      case 2:
        sub_1ADE02508();
        break;
      case 3:
        sub_1AE1B90A0();
        break;
      case 4:
        sub_1AE1B9160();
        break;
      case 5:
        sub_1AE1B9270();
        break;
      case 6:
        sub_1AE1B9330();
        break;
      case 7:
        sub_1AE1B93F8(a1);
        break;
      case 8:
        sub_1ADDE935C(a1);
        break;
      case 9:
        sub_1ADDE79F8(a1);
        break;
      case 10:
        sub_1AE1B9538(a1);
        break;
      case 11:
        sub_1AE1B9654(a1);
        break;
      case 12:
        sub_1ADDD78E4(a1);
        break;
      case 13:
        sub_1AE1B9778(a1);
        break;
      case 14:
        sub_1ADDEC1F8(a1);
        break;
      case 15:
        sub_1AE1B997C();
        break;
      case 16:
        sub_1AE1B9A34();
        break;
      case 17:
        sub_1AE1B9AFC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1ADDD783C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ADDD78AC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto_TaggedValue._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

uint64_t sub_1ADDD78E4(uint64_t a1)
{
  v10 = 0;
  v3 = *(a1 + 16);
  v4 = v3 & 0xF000000000000007;
  if ((v3 & 0xF000000000000007) != 0xF000000000000007 && ((v3 >> 59) & 0x1E | (v3 >> 2) & 1) == 11)
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  sub_1AE1CA2F4();
  sub_1AE23C4FC();
  result = v10;
  if (v1)
  {
  }

  if (v10)
  {
    if (v4 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v8 = v7 | 0x5000000000000004;
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;
    return sub_1ADE51B48(v9);
  }

  return result;
}

uint64_t sub_1ADDD7A3C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto_CRDT._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

uint64_t sub_1ADDD7A7C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = *a3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  sub_1ADDD86D8(v4, v3);
}

uint64_t sub_1ADDD7B68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState;
  v10 = *(v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);
  v11 = qword_1ED967EE8;

  if (v11 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED96F1F8);
  sub_1AE1FEC4C(v10, a1);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  v12 = *(*(v2 + v9) + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter);
  *(a1 + *(type metadata accessor for Timestamp(0) + 20)) = v12;
  swift_beginAccess();
  v13 = *(a1 + *(type metadata accessor for Replica() + 20)) != 0;
  sub_1ADDD8290(a1);
  swift_endAccess();
  v14 = *(v2 + v9);
  v15 = *(v14 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v14 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = v17;
  if (qword_1ED96AC50 != -1)
  {
LABEL_7:
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v18 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
  swift_beginAccess();
  (*(v5 + 40))(v2 + v18, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1ADDD7E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADDD7E88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADDD7F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BFEC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1ADDD7F78@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = qword_1ED96F2A0 + 1;
  if (__OFADD__(qword_1ED96F2A0, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    ++qword_1ED96F2A0;
    v5 = sub_1AE23BFEC();
    (*(*(v5 - 8) + 16))(a2, v4, v5);
    result = type metadata accessor for Replica();
    *(a2 + *(result + 20)) = v3;
  }

  return result;
}

uint64_t sub_1ADDD8010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Replica();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADDD8074(uint64_t a1)
{
  v3 = v1;
  v26 = type metadata accessor for Replica();
  v5 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23C12C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + *(type metadata accessor for Timestamp(0) + 20));
  v14 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v1;
  v27 = v16;
  v18 = sub_1ADDD8A6C(a1);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v17;
  if (v16[3] >= v21)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v3 = v16;
      if (v17)
      {
LABEL_9:
        v24 = v16[7] + *(v9 + 72) * v18;
        return sub_1AE23C08C();
      }

LABEL_8:
      sub_1AE23C11C();
      sub_1ADDDE3A0(a1, v7, type metadata accessor for Replica);
      sub_1ADDDE678(v18, v7, v12, v16);
      goto LABEL_9;
    }

LABEL_11:
    sub_1ADDFB81C();
    v16 = v27;
    *v3 = v27;
    if (v2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_1ADDDDED0(v21, isUniquelyReferenced_nonNull_native);
  v16 = v27;
  v22 = sub_1ADDD8A6C(a1);
  if ((v2 & 1) == (v23 & 1))
  {
    v18 = v22;
    *v3 = v16;
    if (v2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1ADDD82B0(__int128 *a1, uint64_t *a2)
{
  v3 = a1[1];
  v14 = *a1;
  v15 = v3;
  v16 = a1[2];
  v4 = *a2;
  v5 = a2[1];
  v6 = type metadata accessor for PartiallyOrderedReferenceMap();
  v7 = v2 + *(v6 + 20);
  sub_1ADDDA6BC(&v14, v13);
  sub_1ADDDA718(&v14, v4, v5);
  ++*(v7 + 16);
  v13[0] = v15;
  if (*(*(&v15 + 1) + 16))
  {
    v8 = *(v6 + 28);
    sub_1ADDD7B0C(v13, &v11);
    sub_1ADDD86D8(v4, v5);
    sub_1ADDDB0F8(&v11, v4, v5);
    sub_1ADDCC35C(v11, v12);
  }

  else
  {
    sub_1ADDD7B0C(v13, &v11);
  }

  v11 = v4;
  v12 = v5;
  v10 = v13[0];
  sub_1ADDDAD3C(&v11, &v10);
}

_DWORD *sub_1ADDD83C0(char a1, unsigned int a2, void (*a3)(char *), int8x8_t a4, uint64_t a5, _DWORD *a6)
{
  v33 = a6 + 8;
  v8 = a6[5];
  v9 = a6[4] | (1 << a1);
  a4.i32[0] = v9;
  v10 = vcnt_s8(a4);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  v12 = vcnt_s8(v8);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.i32[0];
  v14 = v11 << 6;
  v15 = v14 + 16 * v12.i32[0];
  result = sub_1ADDDAC74(v14 + (16 * v12.i32[0]));
  v18 = result;
  v19 = result + 8;
  result[4] = v9;
  result[5] = v8;
  v20 = result[6];
  result[7] -= v15;
  v21 = a6[4];
  v22 = a6[5];
  if (v21 == v22)
  {
    v22 = a6[4];
    goto LABEL_6;
  }

  if (!v22)
  {
LABEL_6:
    v17.i32[0] = v21;
    v24 = vcnt_s8(v17);
    v24.i16[0] = vaddlv_u8(v24);
    if (v21 == v22)
    {
      v25 = v21;
    }

    else
    {
      v25 = v24.u32[0];
    }

    v26 = v11 - a2;
    if (v11 < a2)
    {
      v26 = 0;
    }

    if (v11 < v26)
    {
      __break(1u);
    }

    else
    {
      v27 = v25 - a2;
      if (v25 >= a2)
      {
        v28 = v25 - a2;
      }

      else
      {
        v28 = 0;
      }

      v29 = v25 - v28;
      if (v25 >= v28)
      {
        v30 = v19 + v20 - v14;
        v31 = v33 + a6[6] + -64 * v25;
        if (v29 >= 1)
        {
          if ((v11 - v26) < v29)
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9E8, &qword_1AE251DE0);
          result = swift_arrayInitWithCopy();
        }

        if ((v27 & 0x8000000000000000) == 0)
        {
          if (v25 == a2)
          {
LABEL_23:
            a3(&v30[64 * v27]);
            return v18;
          }

          if (v27 <= v11)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9E8, &qword_1AE251DE0);
            swift_arrayInitWithCopy();
            goto LABEL_23;
          }

          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v17.i32[0] = a6[5];
  v23 = vcnt_s8(v17);
  v23.i16[0] = vaddlv_u8(v23);
  if (v13 >= v23.i32[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCD28, &qword_1AE251DF8);
    result = swift_arrayInitWithCopy();
    v21 = a6[4];
    v22 = a6[5];
    goto LABEL_6;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1ADDD85E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADDD8668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BFEC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1ADDD86D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1ADDD872C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDD878C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 40);
  sub_1AE23E31C();
  a3(v12, a1, a2);
  v9 = sub_1AE23E34C();

  return a4(a1, a2, v9);
}

uint64_t sub_1ADDD8820@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
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
    v10 = sub_1AE23BB7C();
    if (v10)
    {
      v11 = sub_1AE23BBAC();
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
      result = sub_1AE23BB9C();
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
      v19 = *MEMORY[0x1E69E9840];
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
  v10 = sub_1AE23BB7C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1AE23BBAC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1AE23BB9C();
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

unint64_t sub_1ADDD8A6C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1AE23E31C();
  sub_1AE23BFAC();
  v4 = type metadata accessor for Replica();
  MEMORY[0x1B26FCBD0](*(a1 + *(v4 + 20)));
  v5 = sub_1AE23E34C();

  return sub_1ADDD8AF0(a1, v5);
}

unint64_t sub_1ADDD8AF0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Replica();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(a1 + *(v5 + 20));
    v14 = *(v7 + 72);
    do
    {
      sub_1ADDDE768(*(v2 + 48) + v14 * v11, v9);
      if (*&v9[*(v5 + 20)] == v13)
      {
        v15 = sub_1AE23BF8C();
        sub_1ADDF1F8C(v9);
        if (v15)
        {
          return v11;
        }
      }

      else
      {
        sub_1ADDF1F8C(v9);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

double static CRKeyPath.unique.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_1AE23BFEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  *&v12 = sub_1ADDCC6B4(&unk_1F23BBC30);
  *(&v12 + 1) = v7;
  v8 = sub_1ADDD8E0C();
  v10 = v9;
  sub_1AE23BEEC();
  sub_1ADDCC35C(v8, v10);
  (*(v3 + 8))(v6, v2);
  result = *&v12;
  *a1 = v12;
  return result;
}

uint64_t sub_1ADDD8E0C()
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = sub_1AE23BFCC();
  v11 = v0;
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  sub_1AE23BFCC();
  result = sub_1ADDD8EE0(&v10, 16);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADDD8EE0(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1ADDCC868(a1, &a1[a2]);
  }

  v3 = sub_1AE23BBCC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1AE23BB6C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1AE23BE2C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

__n128 Capsule.init(_:id:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X8>)
{
  v42 = a4;
  v43 = a1;
  v40 = a3;
  v41 = a5;
  v39 = *(a3 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v38 - v11;
  v13 = sub_1AE23BFEC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *a2;
  if (qword_1ED969288 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_1ED96F228);
  (*(v14 + 16))(v17, v18, v13);
  v19 = type metadata accessor for ReplicaState();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v24 = type metadata accessor for Replica();
  v25 = *(*(v24 - 8) + 56);
  v25(v22 + v23, 1, 1, v24);
  (*(v14 + 32))(v22 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v17, v13);
  *(v22 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v22 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v25(v12, 1, 1, v24);
  swift_beginAccess();
  sub_1ADDD85E4(v12, v22 + v23);
  swift_endAccess();
  v26 = sub_1ADDD94CC(v22);
  v28 = v39;
  v27 = v40;
  (*(v39 + 16))(v8, v43, v40);
  swift_retain_n();
  v29 = v44;
  sub_1ADDD86D8(v44, *(&v44 + 1));
  sub_1ADDD9FE4(v8, v27, &v47);
  v30 = v47;
  v31 = MEMORY[0x1E69E7CC0];
  v32 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v33 = sub_1ADDD9ECC(v31);
  sub_1ADDDA5BC(v31);
  sub_1ADDD9ECC(v31);

  v34 = MEMORY[0x1E69E7CC8];
  swift_bridgeObjectRelease_n();
  *&v47 = v30;
  *(&v47 + 1) = 1;
  v48 = v34;
  v49 = v34;
  v50 = v32;
  v51 = v33;
  v46 = v44;
  swift_beginAccess();
  sub_1ADDD86D8(v29, *(&v29 + 1));
  sub_1ADDD82B0(&v47, &v46);
  swift_endAccess();

  sub_1ADDCC35C(v46, *(&v46 + 1));

  swift_beginAccess();

  sub_1ADDD86D8(v29, *(&v29 + 1));
  sub_1ADDE0110(&v45, v29, *(&v29 + 1));
  swift_endAccess();

  sub_1ADDCC35C(v45, *(&v45 + 1));
  v35 = v43;
  LOBYTE(v34) = (*(*(*(v42 + 16) + 8) + 48))(v27);
  v47 = v44;
  v45 = v44;
  sub_1ADDD86D8(v29, *(&v29 + 1));
  sub_1ADDD86D8(v29, *(&v29 + 1));
  sub_1ADEA9BC0((v34 & 1) == 0, 1, &v47, &v45);

  (*(v28 + 8))(v35, v27);
  sub_1ADDE158C(v45, *(&v45 + 1));
  sub_1ADDE158C(v47, *(&v47 + 1));
  v36 = v41;
  result = v44;
  *v41 = v44;
  v36[1] = result;
  v36[2].n128_u64[0] = v26;
  return result;
}

uint64_t sub_1ADDD94CC(uint64_t a1)
{
  v2 = sub_1AE23BFEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PartiallyOrderedReferenceMap();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1ADDD98A4(MEMORY[0x1E69E7CC0]);
  v13 = &v10[v7[5]];
  *v13 = v12;
  v13[1] = v14;
  v13[2] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA138, &qword_1AE251E60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AE2418F0;
  v17 = sub_1ADDD9BC0(v11);
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = v17;
  *(v16 + 56) = v18;
  *(v16 + 64) = v19;
  *&v10[v7[6]] = v16;
  v20 = *sub_1AE23C1EC();
  v21 = &v10[v7[7]];
  *v21 = v20;
  *(v21 + 1) = 0;
  *(v21 + 2) = v20;

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v22 = type metadata accessor for CapsuleRef();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC9Coherence10CapsuleRef_caches;
  *(v25 + v26) = sub_1ADDD9D48(v11);
  v27 = (v25 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  v28 = MEMORY[0x1E69E7CC8];
  *v27 = MEMORY[0x1E69E7CC8];
  v27[1] = v28;
  (*(v3 + 16))(v25 + OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID, v6, v2);
  *(v25 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState) = a1;
  sub_1ADECD9E8(v10, v25 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references, type metadata accessor for PartiallyOrderedReferenceMap);
  v29 = sub_1ADDD9ECC(v11);
  (*(v3 + 8))(v6, v2);
  sub_1ADDD872C(v10, type metadata accessor for PartiallyOrderedReferenceMap);
  *(v25 + OBJC_IVAR____TtC9Coherence10CapsuleRef_assets) = v29;
  *(v25 + OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated) = MEMORY[0x1E69E7CD0];
  *(v25 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) = 0;
  return v25;
}

uint64_t sub_1ADDD98A4(uint64_t a1)
{
  v2 = *sub_1AE23C1EC();
  v53 = v2;
  v54 = 0;
  v3 = *(a1 + 16);

  if (!v3)
  {
    return v2;
  }

  v17[1] = v2;
  v4 = (a1 + 32);
  while (1)
  {
    v5 = v4[3];
    v34 = v4[2];
    v35 = v5;
    v6 = v4[1];
    v32 = *v4;
    v33 = v6;
    v25 = *(&v35 + 1);
    v7 = v35;
    v8 = v34;
    v9 = v6;
    v10 = v32;
    sub_1ADDCEE40(&v32, &v46, &qword_1EB5BA9E0, &qword_1AE245680);
    if (!v8)
    {
      return v53;
    }

    v18 = v4;
    v19 = v3;
    v36[0] = v10;
    v26 = v8;
    v27 = v9;
    v36[1] = v9;
    v36[2] = v8;
    v21 = *(&v8 + 1);
    v11 = v7;
    v37 = v7;
    v12 = v25;
    v38 = v25;
    sub_1AE23E31C();
    sub_1ADDCEE40(v36, &v46, &qword_1EB5BA9E0, &qword_1AE245680);
    sub_1AE23BECC();
    v24 = sub_1AE23E34C();
    sub_1ADDCC35C(v10, *(&v10 + 1));

    v22 = *(&v9 + 1);
    v23 = v17;
    v39 = v10;
    v40 = v27;
    v41 = *(&v9 + 1);
    v42 = v26;
    v43 = v21;
    v44 = v11;
    v45 = v12;
    v28 = v10;
    *&v29 = v27;
    *(&v29 + 1) = *(&v9 + 1);
    *&v30 = v26;
    *(&v30 + 1) = v21;
    v14 = v21;
    *&v31 = v11;
    *(&v31 + 1) = v12;
    MEMORY[0x1EEE9AC00](v13);
    v17[-2] = &v28;
    v15 = *(&v28 + 1);
    v20 = v28;
    sub_1ADDCEE40(&v39, &v32, &qword_1EB5BA9E0, &qword_1AE245680);
    sub_1ADDD86D8(v10, *(&v10 + 1));

    LODWORD(v24) = sub_1AE033684(0, v20, v15, v24, sub_1ADECDAAC, &v17[-4]);
    v46 = v10;
    v47 = v27;
    v48 = v22;
    v49 = v26;
    v50 = v14;
    v51 = v11;
    v52 = v12;
    sub_1ADDCEDE0(&v46, &qword_1EB5BA9E0, &qword_1AE245680);
    v32 = v28;
    v33 = v29;
    v34 = v30;
    v35 = v31;
    sub_1ADDCEDE0(&v32, &qword_1EB5BA9E8, &qword_1AE251DE0);

    result = sub_1ADDCC35C(v10, *(&v10 + 1));
    if ((v24 & 1) == 0)
    {
      break;
    }

    v4 = v18 + 4;
    v3 = v19 - 1;
    if (v19 == 1)
    {
      return v53;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADDD9BC0(uint64_t a1)
{
  v2 = *sub_1AE23C1EC();
  v13 = v2;
  v14 = 0;
  v3 = *(a1 + 16);

  if (!v3)
  {
    return v2;
  }

  v4 = (a1 + 40);
  do
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    sub_1AE23E31C();
    sub_1ADDD86D8(v6, v5);
    sub_1ADDD86D8(v6, v5);
    sub_1AE23BECC();
    v7 = sub_1AE23E34C();
    v8 = sub_1ADDCC35C(v6, v5);
    v11 = v6;
    v12 = v5;
    MEMORY[0x1EEE9AC00](v8);
    v10[2] = &v11;
    sub_1ADDDB234(0, v11, v12, v7, sub_1ADE1B14C, v10);
    sub_1ADDCC35C(v11, v12);
    v4 += 2;
    --v3;
  }

  while (v3);
  return v13;
}

uint64_t type metadata accessor for CapsuleRef()
{
  result = qword_1ED96AE90;
  if (!qword_1ED96AE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1ADDD9D48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA070, &qword_1AE241850);
    v3 = sub_1AE23DCDC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1ADDCEE40(v4, &v10, &qword_1EB5BA078, &qword_1AE241858);
      result = sub_1ADDDE7CC(v10, *(&v10 + 1));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v10;
      result = sub_1ADDEE390(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1ADDD9E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartiallyOrderedReferenceMap();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ADDD9ECC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA088, &qword_1AE241868);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_1ADDD86D8(v5, v6);

      result = sub_1ADDDE7CC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1ADDD9FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRDTBoxHelper();
  (*(v6 + 16))(v9, a1, a2);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_1ADDDA40C(v9);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v13;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_9Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AE23C12C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t type metadata accessor for PartiallyOrderedReferenceMap()
{
  result = qword_1ED96AE38;
  if (!qword_1ED96AE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ADDDA274(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v6 = *(a4 + 16);
    v7 = *(a4 + 24);
    v8 = *(a4 + 32);
    type metadata accessor for CROrderedSet.DeduplicatedInfo();
    v10 = sub_1AE23D7CC();
    v11 = *(*(v10 - 8) + 56);
    v12 = v5 + *(a4 + 48);

    return v11(v12, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1ADDDA344(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v6 = *(a3 + 16);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    type metadata accessor for CROrderedSet.DeduplicatedInfo();
    v11 = sub_1AE23D7CC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

char *sub_1ADDDA40C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = *(v3 + 296);
  v11 = *(v4 - 8);
  v12 = *(v11 + 56);
  v12(&v1[v10], 1, 1, v4);
  (*(v11 + 32))(v9, a1, v4);
  v12(v9, 0, 1, v4);
  swift_beginAccess();
  (*(v6 + 40))(&v1[v10], v9, v5);
  swift_endAccess();
  return v1;
}

unint64_t sub_1ADDDA5BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA090, &qword_1AE241870);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1ADDD86D8(v5, v6);
      result = sub_1ADDDE7CC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1ADDDA718(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[1];
  v62 = *a1;
  v63 = v6;
  v64 = a1[2];
  v60 = a2;
  v61 = a3;
  sub_1AE23E31C();
  sub_1AE23BECC();
  v7 = sub_1AE23E34C();
  v58 = &v60;
  v59 = &v62;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v12 = sub_1ADDDAB3C(0, a2, a3, v7, (v10 + 16), (v10 + 32), v11);
  v14 = v12 >> 29;
  if (v12 >> 29 <= 1)
  {
    if (!v14)
    {
      v23 = HIDWORD(v12);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = v3[1];
        v25 = sub_1ADDFB3E0();
        v26 = sub_1ADDF59C8(v25, v10, v24);
        v28 = v27;

        *v3 = v26;
        v3[1] = v28;
        v10 = v26;
      }

      goto LABEL_18;
    }

    v29 = HIDWORD(v12);
    if (isUniquelyReferenced_nonNull_native)
    {
      v30 = v12;
      swift_beginAccess();
      if (*(v10 + 28) >= 0x40u)
      {
        v51 = sub_1ADE1A914(v29, v30, (v10 + 16), v10 + 32);
        v53 = v60;
        v52 = v61;
        v54 = v63;
        v55 = v64;
        v56 = v62;
        *v51 = v60;
        *(v51 + 1) = v52;
        *(v51 + 1) = v56;
        *(v51 + 2) = v54;
        *(v51 + 3) = v55;
        ++v3[1];
        sub_1ADDD86D8(v53, v52);
      }

      else
      {
        sub_1ADE1A674(v30, v29, sub_1ADDD7A74, v57, v31);
      }

      goto LABEL_22;
    }

    v47 = v3[1];
    v45 = sub_1ADDD83C0(v12, HIDWORD(v12), sub_1ADDD7A74, v13, v57, v10);
LABEL_21:
    v48 = v45;
    v49 = v46;

    *v3 = v48;
    v3[1] = v49;
    goto LABEL_22;
  }

  if (v14 == 2)
  {
    sub_1AE033E90(isUniquelyReferenced_nonNull_native, 0, v12, HIDWORD(v12), v7, sub_1ADDD7A74, v57);
    goto LABEL_22;
  }

  if (v14 != 3)
  {
    if (v12 == 0x80000000)
    {
      sub_1AE034414(isUniquelyReferenced_nonNull_native, sub_1ADDD7A74, v57);
      goto LABEL_22;
    }

    v43 = v3[1];
    v44 = *(v10 + 32);

    v45 = sub_1AE033D0C(0, sub_1ADDD7A74, v57, v7, v10, v43, v44);
    goto LABEL_21;
  }

  v15 = HIDWORD(v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = v3[1];
    v17 = sub_1ADDFB3E0();
    v18 = sub_1ADDF59C8(v17, v10, v16);
    v20 = v19;

    *v3 = v18;
    v3[1] = v20;
    v10 = v18;
  }

  if (sub_1ADE1ACAC(v10 + 32, v15, 0, a2, a3, v7, sub_1ADDD7A74, v57))
  {
    ++v3[1];
LABEL_22:
    v42 = 1;
    goto LABEL_23;
  }

  v10 = v21;
  LODWORD(v23) = v22;
LABEL_18:
  v32 = v10 + *(v10 + 24);
  v34 = *(&v63 + 1);
  v33 = v63;
  v35 = v64;
  v36 = (v32 + (~v23 << 6));
  v37 = v36[6];
  v38 = v36[8];
  v39 = v36[9];
  v40 = v36[10];
  v41 = v36[11];
  *(v36 + 3) = v62;
  *(v36 + 4) = __PAIR128__(v34, v33);
  *(v36 + 5) = v35;

  v42 = 0;
LABEL_23:

  return v42;
}

unint64_t sub_1ADDDAB3C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int *a5, void *a6, int8x8_t a7)
{
  v7 = *a5;
  v8 = a5[1];
  if ((v8 & *a5) != 0)
  {
    v9 = sub_1AE033244(a1, a2, a3, a4, a5, a6);
    v11 = 0x80000000;
    if (v9 != 1)
    {
      v11 = 2147483649;
    }

    if (v9)
    {
      return v11;
    }

    else
    {
      return (v10 << 32) | 0xFF;
    }
  }

  else
  {
    v13 = (a4 >> a1) & 0x1F;
    v14 = 1 << (a4 >> a1);
    if ((v7 & v14) != 0)
    {
      a7.i32[0] = v7 & (v14 - 1);
      v15 = vcnt_s8(a7);
      v15.i16[0] = vaddlv_u8(v15);
      v16 = v15.u32[0];
      v17 = (&a6[8 * ~v15.u32[0]] + a5[2]);
      v18 = *v17;
      v19 = v17[1];
      v20 = a2;
      sub_1ADDD86D8(*v17, v19);
      LOBYTE(v20) = sub_1ADDD6F8C(v18, v19, v20, a3);
      sub_1ADDCC35C(v18, v19);
      if (v20)
      {
        return v13 | (v16 << 32);
      }

      else
      {
        return v13 | (v16 << 32) | 0x40000000;
      }
    }

    else
    {
      v22 = v14 - 1;
      if ((v8 & v14) != 0)
      {
        a7.i32[0] = v8 & v22;
        v23 = vcnt_s8(a7);
        v23.i16[0] = vaddlv_u8(v23);
        return v13 | (v23.u32[0] << 32) | 0x60000000;
      }

      else
      {
        a7.i32[0] = v7 & v22;
        v24 = vcnt_s8(a7);
        v24.i16[0] = vaddlv_u8(v24);
        return v13 | (v24.u32[0] << 32) | 0x20000000;
      }
    }
  }
}

int64_t sub_1ADDDAC74(uint64_t a1)
{
  if (a1 + 63 >= 64 && ((1 << -__clz(((a1 + 63) >> 6) - 1)) - 0x200000000000000) >> 58 != 63)
  {
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCD18, &qword_1AE251DE8);
  v1 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v1);
  v3 = result - 32;
  if (result < 32)
  {
    v3 = result - 17;
  }

  *(v1 + 16) = 0;
  v4 = ((v1 + 32 + (v3 & 0xFFFFFFF0)) & 0xFFFFFFFFFFFFFFF8) - (v1 + 32);
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v4))
  {
    *(v1 + 24) = v4;
    *(v1 + 28) = v4;
    return v1;
  }

  __break(1u);
  return result;
}

void sub_1ADDDAD3C(uint64_t *a1, uint64_t *a2)
{
  v33 = *a1;
  v34 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  v31 = *(type metadata accessor for PartiallyOrderedReferenceMap() + 24);
  v32 = v2;
  v5 = *(v2 + v31);
  v6 = *(v5 + 2);
  v35 = v3;

  v36 = v4;

  v7 = 0;
  v8 = v6;
  while (2)
  {
    v9 = 40 * v8 + 40;
    v10 = v8 + 1;
    do
    {
      v11 = v10 - 1;
      if (v10 == 1)
      {

        v11 = v33;
        v9 = v34;
        sub_1ADDD86D8(v33, v34);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (!*(v5 + 2))
          {
LABEL_38:
            __break(1u);
            return;
          }

LABEL_24:
          v25 = v11;
          v26 = v9;
          goto LABEL_25;
        }

LABEL_37:
        v5 = sub_1ADDFC33C(v5);
        if (!*(v5 + 2))
        {
          goto LABEL_38;
        }

        goto LABEL_24;
      }

      if (v6 < v11)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v10 - 2 >= *(v5 + 2))
      {
        goto LABEL_33;
      }

      v12 = *&v5[v9 - 48];
      v9 -= 40;
      --v10;
    }

    while (!v12);
    if (__OFADD__(v7++, 1))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_28;
    }

    v14 = *&v5[v9];

    if (sub_1ADF637A8(v36, v14))
    {
      sub_1ADE42CB8(v12);
    }

    else
    {
      v8 = v11 - 1;
      v15 = sub_1ADF637A8(v35, v12);
      sub_1ADE42CB8(v12);
      if ((v15 & 1) == 0)
      {
        continue;
      }
    }

    break;
  }

  if (*(v5 + 2) != v11)
  {
    sub_1ADDD86D8(v33, v34);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1ADDFC33C(v5);
    }

    if (v11 < *(v5 + 2))
    {
      v25 = v33;
      v26 = v34;
LABEL_25:
      sub_1ADDDB0F8(v37, v25, v26);
      sub_1ADDCC35C(v37[0], v37[1]);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE2418F0;
  *(inited + 32) = v33;
  *(inited + 40) = v34;
  sub_1ADDD86D8(v33, v34);
  v17 = sub_1ADDD9BC0(inited);
  v19 = v18;
  v21 = v20;
  swift_setDeallocating();
  sub_1ADECDAB4(inited + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1ADDFC3E4(0, *(v5 + 2) + 1, 1, v5);
  }

  v23 = *(v5 + 2);
  v22 = *(v5 + 3);
  if (v23 >= v22 >> 1)
  {
    v5 = sub_1ADDFC3E4((v22 > 1), v23 + 1, 1, v5);
  }

  *(v5 + 2) = v23 + 1;
  v24 = &v5[40 * v23];
  *(v24 + 4) = 0;
  *(v24 + 5) = 0;
  *(v24 + 6) = v17;
  *(v24 + 7) = v19;
  *(v24 + 8) = v21;
LABEL_26:
  *(v32 + v31) = v5;
  if (v7 < 21)
  {
    return;
  }

  if (qword_1EB5B94F8 != -1)
  {
    goto LABEL_35;
  }

LABEL_28:
  v27 = sub_1AE23C78C();
  __swift_project_value_buffer(v27, qword_1EB5D74A8);
  v28 = sub_1AE23C76C();
  v29 = sub_1AE23D61C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    *(v30 + 4) = v7;
    _os_log_impl(&dword_1ADDCA000, v28, v29, "Excessive insertion comparisons: %ld", v30, 0xCu);
    MEMORY[0x1B26FDA50](v30, -1, -1);
  }
}

uint64_t sub_1ADDDB0F8(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  sub_1AE23E31C();
  sub_1ADDD86D8(a2, a3);
  sub_1AE23BECC();
  v8 = sub_1AE23E34C();
  sub_1ADDCC35C(a2, a3);
  v19 = a2;
  v20 = a3;
  v18[2] = &v19;
  sub_1ADDD86D8(a2, a3);
  v9 = sub_1ADDDB234(0, a2, a3, v8, sub_1ADDDB928, v18);
  v11 = v10;
  v13 = v12;
  sub_1ADDCC35C(v19, v20);
  if (v9)
  {
    ++*(v4 + 16);
  }

  else
  {
    v14 = v11 + *(v11 + 24) + 16 * ~v13;
    v15 = *(v14 + 32);
    v16 = *(v14 + 40);
    sub_1ADDD86D8(v15, v16);
    sub_1ADDCC35C(a2, a3);
    a2 = v15;
    a3 = v16;
  }

  *a1 = a2;
  a1[1] = a3;
  return v9 & 1;
}

uint64_t sub_1ADDDB234(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v13 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1ADDDB560(a1, a2, a3, a4, a5, a6, *v6, *(v6 + 8), v37);
    v19 = v37[0];
    v20 = v38;
    v21 = v39;

    *v6 = v20;
    *(v6 + 8) = v21;
    return v19;
  }

  v17 = sub_1ADDDF64C(a1, a2, a3, a4, (v16 + 16), (v16 + 32), v15);
  v18 = v17 >> 29;
  if (v17 >> 29 <= 1)
  {
    if (!v18)
    {
      return 0;
    }

    v23 = v17;
    v24 = HIDWORD(v17);
    swift_beginAccess();
    if (*(v16 + 28) >= 0x10u)
    {
      v30 = sub_1ADDE15A0(v24, v23, (v16 + 16), v16 + 32);
      a5(v30);
      ++*(v6 + 8);
    }

    else
    {
      sub_1ADE1B150(v23, v24, a5, a6);
    }

LABEL_23:
    v35 = *v6;
    return 1;
  }

  if (v18 == 2)
  {
    v19 = 1;
    sub_1ADE1B3EC(1, a1, v17, HIDWORD(v17), a4, a5, a6);
    return v19;
  }

  if (v18 != 3)
  {
    if (v17 != 0x80000000)
    {
      v25 = *(v6 + 8);
      v26 = *(v16 + 32);

      v27 = sub_1AE033CB0(a1, a5, a6, a4, v16, v25, v26);
      v29 = v28;

      *v6 = v27;
      *(v6 + 8) = v29;
      return 1;
    }

    swift_beginAccess();
    v22 = *(v16 + 28);
    if (v22 > 0xF)
    {
      v31 = *(v16 + 16);
      v32 = vcnt_s8(v31);
      v32.i16[0] = vaddlv_u8(v32);
      if (v31 == *(v16 + 20))
      {
        v33 = *(v16 + 16);
      }

      else
      {
        v33 = v32.i32[0];
      }

      *(v16 + 28) = v22 - 16;
      v34 = v16 + 32 - 16 * v33 + *(v16 + 24) - 16;
      *(v16 + 16) = v31 + 1;
      *(v16 + 20) = v31 + 1;
      a5(v34);
      ++*(v6 + 8);
    }

    else
    {
      sub_1AE034ECC(a5, a6, sub_1AE03510C, sub_1AE034F44);
    }

    goto LABEL_23;
  }

  if (sub_1ADDDB234((a1 + 5), a2, a3, a4, a5, a6))
  {
    ++*(v6 + 8);
    return 1;
  }

  return 0;
}

unint64_t sub_1ADDDB560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, int64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = a7;
  v17 = (a7 + 32);

  result = sub_1ADDDF64C(a1, a2, a3, a4, (v10 + 16), v17, v18);
  v20 = result;
  v21 = result >> 29;
  if (result >> 29 <= 1)
  {
    if (v21)
    {

      a3 = HIDWORD(v20);
      result = sub_1ADDDFEFC(v20, HIDWORD(v20), a5, v42, a6, v10);
      v10 = result;
      a8 = v43;
      LOBYTE(v21) = 1;
      v28 = result;
    }

    else
    {
      a3 = HIDWORD(result);
      v28 = v10;
    }
  }

  else if (v21 == 2)
  {

    v34 = (&v17[2 * ~HIDWORD(v20)] + *(v10 + 24));
    v35 = *v34;
    v36 = v34[1];
    sub_1AE23E31C();
    sub_1ADDD86D8(v35, v36);
    sub_1AE23BECC();
    a3 = sub_1AE23E34C();
    sub_1ADDCC35C(v35, v36);
    result = sub_1AE034564(a1, v20, HIDWORD(v20), a3, a4, a5, a6, v10);
    v10 = result;
    a8 = v37;
    v28 = v38;
    LODWORD(a3) = v39;
    LOBYTE(v21) = 1;
  }

  else if (v21 == 3)
  {

    v47 = HIDWORD(v20);
    v22 = &v17[2 * HIDWORD(v20)];
    v24 = *v22;
    v23 = v22[1];

    sub_1ADDDB560(v49, (a1 + 5), a2, a3, a4, a5, a6, v24, v23);
    v25 = v49[0];
    v26 = v49[1];
    v27 = v49[2];
    v28 = v49[3];
    LODWORD(a3) = v50;

    if (v25)
    {
      v29 = sub_1ADDFB3E0();
      v10 = sub_1ADDFA324(v29, v10, a8);
      v31 = v30;
      v32 = v10 + 16 * v47;
      v33 = *(v32 + 32);
      *(v32 + 32) = v26;
      *(v32 + 40) = v27;

      a8 = v31 + 1;
      LOBYTE(v21) = 1;
    }

    else
    {

      LOBYTE(v21) = 0;
    }
  }

  else
  {

    if (v20 == 0x80000000)
    {
      result = sub_1AE034BB0(a5, a6, v10, a8, sub_1AE0352A4, sub_1AE034F44);
      v10 = result;
      a8 = v40;
      LODWORD(a3) = v41;
      LOBYTE(v21) = 1;
      v28 = result;
    }

    else
    {
      a3 = *(v10 + 32);

      result = sub_1AE033CB0(a1, a5, a6, a4, v10, a8, a3);
      v10 = result;
      a8 = v44;
      v28 = v45;
      LOBYTE(v21) = 1;
      LODWORD(a3) = v46;
    }
  }

  *a9 = v21;
  *(a9 + 8) = v10;
  *(a9 + 16) = a8;
  *(a9 + 24) = v28;
  *(a9 + 32) = a3;
  return result;
}

int64_t sub_1ADDDB860(uint64_t a1)
{
  if (a1 + 15 >= 16 && ((1 << -__clz(((a1 + 15) >> 4) - 1)) - 0x800000000000000) >> 60 != 15)
  {
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE0, &qword_1AE251D90);
  v1 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v1);
  v3 = result - 32;
  if (result < 32)
  {
    v3 = result - 17;
  }

  *(v1 + 16) = 0;
  v4 = ((v1 + 32 + (v3 & 0xFFFFFFF0)) & 0xFFFFFFFFFFFFFFF8) - (v1 + 32);
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v4))
  {
    *(v1 + 24) = v4;
    *(v1 + 28) = v4;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADDDB92C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA30, &qword_1AE2456B8);
  result = sub_1AE23D9DC();
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
      sub_1AE23E31C();
      sub_1ADDD86D8(v19, v20);
      sub_1AE23BECC();
      result = sub_1AE23E34C();
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

uint64_t sub_1ADDDBB68(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v53 = *MEMORY[0x1E69E9840];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1ADEC2C98(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_1ADEC6D1C();
        goto LABEL_68;
      }

      sub_1ADDDB92C(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    sub_1AE23E31C();
    sub_1AE23BECC();
    result = sub_1AE23E34C();
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
              sub_1ADDD86D8(v21, v20);
              v35 = sub_1AE23BB7C();
              if (v35)
              {
                v36 = sub_1AE23BBAC();
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
            sub_1ADDD86D8(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_1ADDD86D8(v21, v20);
              v35 = sub_1AE23BB7C();
              if (v35)
              {
                v37 = sub_1AE23BBAC();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              sub_1AE23BB9C();
              v7 = v43;
              a2 = v44;
              sub_1ADDD8820(v35, v43, v44, v52);
              result = sub_1ADDCC35C(v21, v20);
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
            sub_1ADDD86D8(v21, v20);
            v14 = v48;
          }

          sub_1ADDD8820(v52, v7, a2, &v51);
          result = sub_1ADDCC35C(v21, v20);
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
        result = sub_1AE23E26C();
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
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADDDBFE0(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA10, &qword_1AE245698);
  sub_1AE23CA3C();
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v31 = a1;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_11:
    v12 = (*(v31 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
    v14 = *v12;
    v13 = v12[1];
    sub_1ADDD86D8(*v12, v13);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    v32 = *v2;
    v18 = sub_1ADDDE7CC(v14, v13);
    v20 = v17[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      result = sub_1AE23E27C();
      __break(1u);
      return result;
    }

    v24 = v19;
    if (v17[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        sub_1ADF6F1AC();
        v18 = v29;
      }
    }

    else
    {
      sub_1ADE1D52C(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_1ADDDE7CC(v14, v13);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_26;
      }
    }

    v8 &= v8 - 1;
    if (v24)
    {
      *(v32[7] + 8 * v18) = 0;
      sub_1ADDCC35C(v14, v13);
    }

    else
    {
      v32[(v18 >> 6) + 8] |= 1 << v18;
      v26 = (v32[6] + 16 * v18);
      *v26 = v14;
      v26[1] = v13;
      *(v32[7] + 8 * v18) = 0;
      v27 = v32[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_25;
      }

      v32[2] = v28;
    }

    *v2 = v32;
    v10 = v11;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      goto LABEL_11;
    }
  }
}

uint64_t sub_1ADDDC21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1ADDDC28C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 280);
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  v11 = *(v3 + 296);
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v11, v6);
  v12 = *(v5 - 8);
  result = (*(v12 + 48))(v10, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(*(v4 + 288) + 16) + 48))(a1, v5);
    return (*(v12 + 8))(v10, v5);
  }

  return result;
}

uint64_t CROrderedSet.visitReferences(_:)(void *a1, void *a2)
{
  v9 = *(v2 + 8);
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for CRSet();

  CRSet.visitReferences(_:)(a1, v7);
}

uint64_t CRSet.visitReferences(_:)(void *a1, uint64_t a2)
{
  v25[0] = a2;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v26 = v25 - v10;
  v11 = *v2;
  swift_beginAccess();
  v12 = *(v11 + 40);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v25[1] = v5 + 32;
  v25[2] = v5 + 16;
  v27 = v5;
  v28 = (v5 + 8);
  v29 = v12;

  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_8:
      v22 = v26;
      v21 = v27;
      (*(v27 + 16))(v26, *(v29 + 48) + *(v27 + 72) * (__clz(__rbit64(v16)) | (v20 << 6)), v4);
      (*(v21 + 32))(v9, v22, v4);
      v23 = a1[3];
      v24 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v23);
      if ((*(v24 + 8))(v23, v24))
      {
        break;
      }

      v16 &= v16 - 1;
      (*(*(*(v25[0] + 24) + 8) + 48))(a1, v4);
      result = (*v28)(v9, v4);
      v19 = v20;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    (*v28)(v9, v4);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1ADDDC764(void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(*(a2 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v6)))));
      v13 = a1[3];
      v12 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v13);
      v15 = *(v12 + 8);

      if (v15(v13, v12))
      {
        break;
      }

      v6 &= v6 - 1;
      (*(*v11 + 128))(a1);

      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1ADDDC8DC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v11 = (*(a1 + 48) + 16 * v10);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(*(a1 + 56) + 8 * v10);
      sub_1ADDD86D8(*v11, v13);
      sub_1ADDDCE7C(v7, 0);
      v15 = *v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v39;
      v40 = v17;
      v18 = sub_1ADDDE7CC(v12, v13);
      v20 = v17[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        break;
      }

      v24 = v19;
      if (v17[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v18;
          sub_1ADF6F1AC();
          v18 = v33;
          v17 = v40;
        }
      }

      else
      {
        sub_1ADE1D52C(v23, isUniquelyReferenced_nonNull_native);
        v17 = v40;
        v18 = sub_1ADDDE7CC(v12, v13);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_25;
        }
      }

      *v39 = v17;
      if ((v24 & 1) == 0)
      {
        v17[(v18 >> 6) + 8] |= 1 << v18;
        v26 = (v17[6] + 16 * v18);
        *v26 = v12;
        v26[1] = v13;
        *(v17[7] + 8 * v18) = 0;
        v27 = v17[2];
        v22 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v22)
        {
          goto LABEL_24;
        }

        v17[2] = v28;
        v29 = v18;
        sub_1ADDD86D8(v12, v13);
        v18 = v29;
      }

      v30 = v17[7];
      v31 = *(v30 + 8 * v18);
      v22 = __OFADD__(v31, v14);
      v32 = v31 + v14;
      if (v22)
      {
        goto LABEL_23;
      }

      v5 &= v5 - 1;
      *(v30 + 8 * v18) = v32;
      sub_1ADDCC35C(v12, v13);
      v7 = sub_1ADF98C94;
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        v34 = v39[1];
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v40 = v39[1];
        sub_1ADDDCB94(a2, sub_1ADF9811C, 0, v35, &v40);

        result = sub_1ADDDCE7C(v7, 0);
        v39[1] = v40;
        return result;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADDDCB94(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, uint64_t *a5)
{
  v59 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (1)
  {
    v17 = v9;
    v18 = v11;
    if (!v9)
    {
      break;
    }

LABEL_13:
    v20 = (v18 << 10) | (16 * __clz(__rbit64(v17)));
    v21 = (*(a1 + 56) + v20);
    v23 = *v21;
    v22 = v21[1];
    v52 = *(*(a1 + 48) + v20);
    v53 = v23;
    v54 = v22;
    sub_1ADDD86D8(v52, *(&v52 + 1));

    a2(&v55, &v52);
    sub_1ADDCC35C(v52, *(&v52 + 1));

    v24 = v57;
    if (!v57)
    {
LABEL_23:
      sub_1ADDDCE74();
    }

    v26 = v55;
    v25 = v56;
    v51 = v58;
    v27 = *v59;
    v29 = sub_1ADDDE7CC(v55, v56);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_1ADF703A0();
      }
    }

    else
    {
      v34 = v59;
      sub_1ADF6AF70(v32, a4 & 1);
      v35 = *v34;
      v36 = sub_1ADDDE7CC(v26, v25);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_28;
      }

      v29 = v36;
    }

    v50 = (v17 - 1) & v17;
    v38 = *v59;
    if (v33)
    {
      v39 = (v38[7] + 16 * v29);
      v40 = *v39;
      v41 = v39[1];

      sub_1ADDCC35C(v26, v25);
      if (__OFADD__(v41, v51))
      {
        goto LABEL_26;
      }

      v42 = (v38[7] + 16 * v29);
      v43 = *v42;
      *v42 = v40;
      v42[1] = v41 + v51;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v12 = (v38[6] + 16 * v29);
      *v12 = v26;
      v12[1] = v25;
      v13 = (v38[7] + 16 * v29);
      *v13 = v24;
      v13[1] = v51;
      v14 = v38[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_27;
      }

      v38[2] = v16;
    }

    a4 = 1;
    v11 = v18;
    v10 = v46;
    v6 = v47;
    v9 = v50;
  }

  v19 = v11;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v10)
    {
      goto LABEL_23;
    }

    v17 = *(v6 + 8 * v18);
    ++v19;
    if (v17)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADDDCE80(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1ADDDCE90(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v11 = (*(a1 + 48) + 16 * v10);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(*(a1 + 56) + 8 * v10);
      sub_1ADDD86D8(*v11, v13);
      sub_1ADDDCE7C(v7, 0);
      v15 = *v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v37;
      v18 = sub_1ADDDE7CC(v12, v13);
      v20 = v17[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        break;
      }

      v24 = v19;
      if (v17[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v18;
          sub_1ADF6F1AC();
          v18 = v33;
        }
      }

      else
      {
        sub_1ADE1D52C(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_1ADDDE7CC(v12, v13);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_27;
        }
      }

      *v37 = v17;
      if ((v24 & 1) == 0)
      {
        v17[(v18 >> 6) + 8] |= 1 << v18;
        v26 = (v17[6] + 16 * v18);
        *v26 = v12;
        v26[1] = v13;
        *(v17[7] + 8 * v18) = 0;
        v27 = v17[2];
        v22 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v22)
        {
          goto LABEL_26;
        }

        v17[2] = v28;
        v29 = v18;
        sub_1ADDD86D8(v12, v13);
        v18 = v29;
      }

      v30 = v17[7];
      v31 = *(v30 + 8 * v18);
      v22 = __OFSUB__(v31, v14);
      v32 = v31 - v14;
      if (v22)
      {
        goto LABEL_25;
      }

      v5 &= v5 - 1;
      *(v30 + 8 * v18) = v32;
      sub_1ADDCC35C(v12, v13);
      v7 = sub_1ADF98C94;
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_1AE23E27C();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v9 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    sub_1ADDDD108(a2);

    return sub_1ADDDCE7C(v7, 0);
  }

  return result;
}

uint64_t sub_1ADDDD108(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v58 = v7;
  v59 = v1;
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_8:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
LABEL_36:
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      while (1)
      {
        v12 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
        v13 = (*(a1 + 48) + v12);
        v15 = *v13;
        v14 = v13[1];
        v16 = (*(a1 + 56) + v12);
        v17 = *v16;
        v18 = v16[1];
        sub_1ADDD86D8(*v13, v14);

        if (!v17)
        {
          goto LABEL_36;
        }

        v6 &= v6 - 1;
        if (!*(*v2 + 16) || (sub_1ADDDE7CC(v15, v14), (v19 & 1) == 0))
        {
          v33 = -v18;
          if (__OFSUB__(0, v18))
          {
            goto LABEL_40;
          }

          v34 = *v2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = v2;
          v37 = isUniquelyReferenced_nonNull_native;
          v38 = *v36;
          v62 = *v36;
          v39 = sub_1ADDDE7CC(v15, v14);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v29 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v29)
          {
            goto LABEL_41;
          }

          v44 = v40;
          if (v38[3] >= v43)
          {
            if ((v37 & 1) == 0)
            {
              v53 = v39;
              sub_1ADF703A0();
              v39 = v53;
            }
          }

          else
          {
            sub_1ADF6AF70(v43, v37);
            v39 = sub_1ADDDE7CC(v15, v14);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_45;
            }
          }

          v2 = v59;
          if (v44)
          {
            v9 = (v62[7] + 16 * v39);
            v10 = *v9;
            *v9 = v17;
            v9[1] = v33;

            sub_1ADDCC35C(v15, v14);
          }

          else
          {
            v62[(v39 >> 6) + 8] |= 1 << v39;
            v46 = (v62[6] + 16 * v39);
            *v46 = v15;
            v46[1] = v14;
            v47 = (v62[7] + 16 * v39);
            *v47 = v17;
            v47[1] = v33;

            v48 = v62[2];
            v29 = __OFADD__(v48, 1);
            v49 = v48 + 1;
            if (v29)
            {
              goto LABEL_42;
            }

            v62[2] = v49;
          }

          *v59 = v62;
          v8 = v11;
          v7 = v58;
          if (!v6)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        v20 = *v2;
        v21 = swift_isUniquelyReferenced_nonNull_native();
        v22 = v2;
        v23 = v21;
        v24 = *v22;
        v61 = *v22;
        v25 = sub_1ADDDE7CC(v15, v14);
        v27 = *(v24 + 16);
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_43;
        }

        if (*(v24 + 24) >= v30)
        {
          if ((v23 & 1) == 0)
          {
            v57 = v25;
            v54 = v26;
            sub_1ADF703A0();
            v25 = v57;
            if ((v54 & 1) == 0)
            {
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            goto LABEL_30;
          }
        }

        else
        {
          v56 = v26;
          sub_1ADF6AF70(v30, v23);
          v25 = sub_1ADDDE7CC(v15, v14);
          v32 = v31 & 1;
          v26 = v56;
          if ((v56 & 1) != v32)
          {
            goto LABEL_45;
          }
        }

        if ((v26 & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_30:
        v50 = (*(v61 + 56) + 16 * v25);
        if (!*v50)
        {
          goto LABEL_35;
        }

        v51 = v50[1];
        v29 = __OFSUB__(v51, v18);
        v52 = v51 - v18;
        if (v29)
        {
          goto LABEL_44;
        }

        v50[1] = v52;

        sub_1ADDCC35C(v15, v14);

        *v59 = v61;
        v2 = v59;
        v8 = v11;
        if (!v6)
        {
          goto LABEL_8;
        }

LABEL_7:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

void (*sub_1ADDDD4A0(uint64_t *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v8 = *a2;
  v7 = a2[1];
  v9 = v2 + *(type metadata accessor for PartiallyOrderedReferenceMap() + 20);
  v6[4] = sub_1ADDDD53C(v6, v8, v7);
  return sub_1ADDDD89C;
}

void (*sub_1ADDDD53C(uint64_t *a1, uint64_t a2, unint64_t a3))(_OWORD **a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xE0uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 216) = v3;
  ++v3[2];
  sub_1AE23E31C();
  sub_1AE23BECC();
  v10 = sub_1AE23E34C();
  v11 = *v4;
  swift_beginAccess();
  v12 = *(v11 + 16) != 0;
  *v9 = a2;
  *(v9 + 8) = a3;
  sub_1ADDD86D8(a2, a3);
  sub_1ADDDC21C(0, 0, 0);
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 64) = v10;
  *(v9 + 72) = 0;
  *(v9 + 80) = v11;
  *(v9 + 88) = 0;
  *(v9 + 92) = 0;
  *(v9 + 93) = v12;
  *(v9 + 94) = 0;
  sub_1ADDDD688(v9);
  return sub_1ADDDFC74;
}

unint64_t sub_1ADDDD688(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  v6 = *(a1 + 92);
  result = sub_1ADDDAB3C(v6, *a1, *(a1 + 8), *(a1 + 64), (*v1 + 16), (*v1 + 32), v7);
  v9 = result >> 29;
  if (result >> 29 <= 1)
  {
    if (!v9)
    {
      v18 = HIDWORD(result);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = v1[1];
        v20 = sub_1ADDFB3E0();
        v21 = sub_1ADDF59C8(v20, v5, v19);
        v23 = v22;

        *v1 = v21;
        v1[1] = v23;
        v5 = v21;
      }

      *(a1 + 80) = v5;
      *(a1 + 88) = v18;
      *(a1 + 93) = 257;
      v24 = v5 + *(v5 + 24) + (~v18 << 6);
      v25 = *(v24 + 32);
      v26 = *(v24 + 40);
      v27 = *(v24 + 48);
      v28 = *(v24 + 56);
      v29 = *(v24 + 80);
      v30 = *(v24 + 88);
      v31 = *(a1 + 40);
      v32 = *(a1 + 48);
      v33 = *(a1 + 56);
      v38 = *(v24 + 64);
      sub_1ADDDC21C(*(a1 + 16), *(a1 + 24), *(a1 + 32));
      *(a1 + 16) = v27;
      *(a1 + 24) = v28;
      *(a1 + 32) = v38;
      *(a1 + 48) = v29;
      *(a1 + 56) = v30;
      result = sub_1ADDCC35C(*a1, *(a1 + 8));
      *a1 = v25;
      *(a1 + 8) = v26;
      return result;
    }

LABEL_11:
    v34 = HIDWORD(result);
LABEL_12:
    *(a1 + 88) = v34;
    *(a1 + 93) = 1;
    return result;
  }

  if (v9 == 2)
  {
    goto LABEL_11;
  }

  if (v9 == 3)
  {
    v10 = v6;
    v11 = HIDWORD(result);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = v1[1];
      v13 = sub_1ADDFB3E0();
      v14 = sub_1ADDF59C8(v13, v5, v12);
      v16 = v15;

      *v1 = v14;
      v1[1] = v16;
      v5 = v14;
    }

    v17 = *(v5 + 16 * v11 + 32);
    *(a1 + 72) |= v11 << v10;
    *(a1 + 80) = v17;
    *(a1 + 88) = 0;
    swift_beginAccess();
    *(a1 + 93) = *(v17 + 16) != 0;
    *(a1 + 92) = v10 + 5;
    return sub_1ADDDD688(a1);
  }

  if (result == 0x80000000)
  {
    v34 = v1[1];
    goto LABEL_12;
  }

  v35 = *(a1 + 80);
  result = swift_beginAccess();
  v36 = vcnt_s8(*(v35 + 20));
  v36.i16[0] = vaddlv_u8(v36);
  v37 = v36.i32[0];
  if (*(v35 + 16) == *(v35 + 20))
  {
    v37 = 0;
  }

  *(a1 + 88) = v37;
  *(a1 + 93) = 0;
  return result;
}

void sub_1ADDDD89C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1ADDDD904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1ADDDD94C(int64_t *a1, _OWORD *a2)
{
  v3 = a2[3];
  *v63 = a2[4];
  *&v63[15] = *(a2 + 79);
  v4 = a2[3];
  v5 = a2[1];
  v61 = a2[2];
  v62 = v4;
  v6 = a2[1];
  v60[0] = *a2;
  v60[1] = v6;
  v57 = v61;
  v58 = v3;
  v59[0] = a2[4];
  *(v59 + 15) = *(a2 + 79);
  v7 = *&v63[8];
  v8 = *&v63[24];
  v9 = v63[28];
  v10 = v63[29];
  v11 = *v63;
  v55 = v60[0];
  v56 = v5;
  v12 = v61;
  if (!v61)
  {
    if (v63[30])
    {
      sub_1ADDCEE40(v60, v53, &qword_1EB5BA960, &qword_1AE2455E0);
      if (v10)
      {
        v18 = 0x10000000000;
      }

      else
      {
        v18 = 0;
      }

      sub_1AE035D24(0, v11, v7, v8 | (v9 << 32) | v18, v53);
      sub_1ADDCEDE0(v53, &qword_1EB5BA980, &qword_1AE245630);
    }

    else
    {
      sub_1ADDCEE40(v60, v53, &qword_1EB5BA960, &qword_1AE2455E0);
    }

    goto LABEL_29;
  }

  if (v63[30])
  {
    v13 = v55;
    v14 = v56;
    v15 = *(&v57 + 1);
    v16 = v58;
    v17 = *&v63[16] + *(*&v63[16] + 24) + (~*&v63[24] << 6);
    *(v17 + 32) = v55;
    *(v17 + 48) = v14;
    *(v17 + 64) = v12;
    *(v17 + 72) = v15;
    *(v17 + 80) = v16;
    sub_1ADDCEE40(v60, v53, &qword_1EB5BA960, &qword_1AE2455E0);
    sub_1ADDDDE40(v14, *(&v14 + 1), v12);
    sub_1ADDD86D8(v13, *(&v13 + 1));
    goto LABEL_29;
  }

  MEMORY[0x1EEE9AC00](a1);
  v51[2] = &v55;
  v19 = v55;
  sub_1ADDCEE40(v60, v53, &qword_1EB5BA960, &qword_1AE2455E0);
  v20 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *a1;
  v24 = sub_1ADDDAB3C(0, v19, *(&v19 + 1), v11, (*a1 + 16), (*a1 + 32), v23);
  v26 = v24 >> 29;
  if (v24 >> 29 <= 1)
  {
    if (v26)
    {
      v37 = HIDWORD(v24);
      if (isUniquelyReferenced_nonNull_native)
      {
        v38 = v24;
        swift_beginAccess();
        if (*(v22 + 28) >= 0x40u)
        {
          v46 = sub_1ADE1A914(v37, v38, (v22 + 16), v22 + 32);
          v47 = v55;
          v48 = v56;
          v49 = v57;
          v50 = v58;
          *v46 = v55;
          *(v46 + 1) = v48;
          *(v46 + 2) = v49;
          *(v46 + 3) = v50;
          ++a1[1];
          sub_1ADDDDE40(v48, *(&v48 + 1), v49);
          sub_1ADDD86D8(v47, *(&v47 + 1));
        }

        else
        {
          sub_1ADE1A674(v38, v37, sub_1ADE1A60C, v51, v39);
        }

        goto LABEL_29;
      }

      v42 = a1[1];
      v35 = sub_1ADDD83C0(v24, HIDWORD(v24), sub_1ADE1A60C, v25, v51, v22);
    }

    else
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_29;
      }

      v33 = a1[1];
      v34 = sub_1ADDFB3E0();
      v35 = sub_1ADDF59C8(v34, v22, v33);
    }

LABEL_28:
    v43 = v35;
    v44 = v36;

    *a1 = v43;
    a1[1] = v44;
    goto LABEL_29;
  }

  if (v26 == 2)
  {
    sub_1AE033E90(isUniquelyReferenced_nonNull_native, 0, v24, HIDWORD(v24), v11, sub_1ADE1A60C, v51);
    goto LABEL_29;
  }

  if (v26 != 3)
  {
    if (v24 == 0x80000000)
    {
      sub_1AE034414(isUniquelyReferenced_nonNull_native, sub_1ADE1A60C, v51);
      goto LABEL_29;
    }

    v40 = a1[1];
    v41 = *(v22 + 32);

    v35 = sub_1AE033D0C(0, sub_1ADE1A60C, v51, v11, v22, v40, v41);
    goto LABEL_28;
  }

  v27 = HIDWORD(v24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = a1[1];
    v29 = sub_1ADDFB3E0();
    v30 = sub_1ADDF59C8(v29, v22, v28);
    v52 = v31;

    v32 = v52;
    *a1 = v30;
    a1[1] = v32;
    v22 = v30;
  }

  if (sub_1ADE1ACAC(v22 + 32, v27, 0, v19, *(&v19 + 1), v11, sub_1ADE1A60C, v51))
  {
    ++a1[1];
  }

LABEL_29:
  v53[2] = v57;
  v53[3] = v58;
  v54[0] = v59[0];
  *(v54 + 15) = *(v59 + 15);
  v53[0] = v55;
  v53[1] = v56;
  return sub_1ADDCEDE0(v53, &qword_1EB5BA960, &qword_1AE2455E0);
}

uint64_t sub_1ADDDDDF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ADDDDE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1ADDDDEAC(uint64_t result)
{
  if (result != 3)
  {
    return sub_1ADDDDEBC(result);
  }

  return result;
}

uint64_t sub_1ADDDDEBC(uint64_t result)
{
  if ((result - 1) >= 2)
  {
    return sub_1ADE42CB8(result);
  }

  return result;
}

uint64_t sub_1ADDDDED0(uint64_t a1, int a2)
{
  v3 = v2;
  v51 = sub_1AE23C12C();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Replica();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0B8, &qword_1AE241898);
  v48 = a2;
  result = sub_1AE23DCCC();
  v16 = result;
  if (*(v13 + 16))
  {
    v43[0] = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v43[1] = v6 + 16;
    v44 = v13;
    v45 = v6;
    v49 = (v6 + 32);
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v46 + 72);
      v30 = *(v13 + 48) + v29 * v28;
      if (v48)
      {
        sub_1ADDDE540(v30, v12, type metadata accessor for Replica);
        v31 = *(v13 + 56);
        v32 = *(v45 + 72);
        (*(v45 + 32))(v50, v31 + v32 * v28, v51);
      }

      else
      {
        sub_1ADDDE3A0(v30, v12, type metadata accessor for Replica);
        v33 = *(v13 + 56);
        v32 = *(v45 + 72);
        (*(v45 + 16))(v50, v33 + v32 * v28, v51);
      }

      v34 = *(v16 + 40);
      sub_1AE23E31C();
      sub_1AE23BFAC();
      MEMORY[0x1B26FCBD0](*&v12[*(v47 + 20)]);
      result = sub_1AE23E34C();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      sub_1ADDDE540(v12, *(v16 + 48) + v29 * v24, type metadata accessor for Replica);
      result = (*v49)(*(v16 + 56) + v32 * v24, v50, v51);
      ++*(v16 + 16);
      v13 = v44;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43[0];
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43[0];
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1ADDDE338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE4D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDDE678(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Replica();
  sub_1ADDDE540(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for Replica);
  v10 = a4[7];
  v11 = sub_1AE23C12C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1ADDDE768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Replica();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ADDDE7F8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v46[3] = *MEMORY[0x1E69E9840];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v44 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v41 = v14;
    v40 = HIDWORD(a1) - a1;
    v42 = v10;
    v43 = BYTE6(a2);
    v37 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v43;
          if (v13)
          {
            v26 = v40;
            if (v41)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          goto LABEL_61;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
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
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        goto LABEL_61;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v46[0] = v17;
          LOWORD(v46[1]) = v16;
          BYTE2(v46[1]) = BYTE2(v16);
          BYTE3(v46[1]) = BYTE3(v16);
          BYTE4(v46[1]) = BYTE4(v16);
          BYTE5(v46[1]) = BYTE5(v16);
          sub_1ADDD86D8(v17, v16);
          sub_1ADDD8820(v46, v9, v8, &v45);
          sub_1ADDCC35C(v17, v16);
          if (v45)
          {
            goto LABEL_61;
          }

          v10 = v42;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_1ADDD86D8(v17, v16);
        v31 = sub_1AE23BB7C();
        if (v31)
        {
          v33 = sub_1AE23BBAC();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_1ADDD86D8(v17, v16);
        v31 = sub_1AE23BB7C();
        if (v31)
        {
          v32 = sub_1AE23BBAC();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        sub_1AE23BB9C();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_1ADDD8820(v34, a1, a2, v46);
        sub_1ADDCC35C(v17, v16);
        if (v46[0])
        {
          goto LABEL_61;
        }

        v4 = v37;
        v10 = v42;
        goto LABEL_13;
      }

      memset(v46, 0, 14);
      sub_1ADDD86D8(v17, v16);
      sub_1ADDD8820(v46, v9, v8, &v45);
      sub_1ADDCC35C(v17, v16);
      if (v45)
      {
        goto LABEL_61;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v44) & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_61:
  v35 = *MEMORY[0x1E69E9840];
  return v6;
}