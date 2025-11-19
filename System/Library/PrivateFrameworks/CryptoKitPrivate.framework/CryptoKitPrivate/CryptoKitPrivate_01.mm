__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C0CF9240(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C0CF9288(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0CF92E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for OPRF.Ciphersuite();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0CF945C()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v11 = *(v0 + 8);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  v4 = PEC.SimilarityClientConfig.plaintextModuli()();
  v5 = *(v4 + 16);
  if (v5)
  {
    v10 = MEMORY[0x1E69E7CC0];
    result = sub_1C0D78E3C();
    v7 = 0;
    while (v7 < *(v4 + 16))
    {
      v8 = *(v4 + 8 * v7 + 32);
      v16 = v2;
      HE.RlweParams.init(inParams:plaintextModulus:)(&v16, v8, v15);
      if (v1)
      {
      }

      v15[1] = v3;
      _s12ParamContextCMa();
      swift_allocObject();
      sub_1C0D14150(v15);
      ++v7;
      sub_1C0D78E0C();
      v9 = *(v10 + 16);
      sub_1C0D78E4C();
      sub_1C0D78E5C();
      result = sub_1C0D78E1C();
      if (v5 == v7)
      {

        return v10;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t PEC.SimilarityClientConfig.plaintextModuli()()
{
  v1 = *v0;
  v2 = *(v0 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0C0, &qword_1C0D7B840);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C0D7B690;
  v4 = dword_1C0D7B994[v1];
  sub_1C0D78BFC();
  *(v3 + 32) = cche_encryption_params_plaintext_modulus();
  sub_1C0CF9724(v2);
  return v3;
}

void PEC.SimilarityClientConfig.encryptionParams.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_BYTE *PEC.SimilarityClientConfig.init(encryptionParams:scalingFactor:plaintextPacking:embeddingDimension:galoisElements:similarityMetric:extraPlaintextModuli:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v7 = result[1];
  v8 = *a3;
  *a7 = *result;
  *(a7 + 1) = v7;
  *(a7 + 8) = a2;
  *(a7 + 16) = v8;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_1C0CF9724(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1C0CF4C3C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1C0CF9810(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 24) >> 1;
  if (v14 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v15 = v8 + v6;
      }

      else
      {
        v15 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_1C0CF4C50(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v14 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v7 + 16);
  if (v14 - v16 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 8 * v16 + 32), (a2 + 8 * a3), 8 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v7 + 16) = v19;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1C0CF9924@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *(*v3 + 16);
  v8 = v7 + result;
  if (__OFADD__(v7, result))
  {
    goto LABEL_35;
  }

  v4 = a2;
  v5 = result;
  v9 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v11 = *(v6 + 24) >> 1, v11 < v8))
  {
    if (v7 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v7;
    }

    result = sub_1C0CF4C50(result, v12, 1, v6);
    v6 = result;
    v11 = *(result + 24) >> 1;
  }

  v13 = *(v6 + 16);
  a3 = v11 - v13;
  if (v11 != v13)
  {
    if (a3 >= 1)
    {
      v10 = v5;
      if (!v5)
      {
        goto LABEL_28;
      }

      v14 = (v6 + 8 * v13);
      v15 = &v14[2];
      v16 = v5 & ~(v5 >> 63);
      v17 = v11 + ~v13;
      if (v16 < v17)
      {
        v17 = v5 & ~(v5 >> 63);
      }

      if (v17 >= v5 - 1)
      {
        v17 = v5 - 1;
      }

      if (v17 > 3)
      {
        v20 = v17 + 1;
        v21 = v20 & 3;
        if ((v20 & 3) == 0)
        {
          v21 = 4;
        }

        v18 = v20 - v21;
        v19 = v18 + 1;
        v15 += v18;
        v22 = vdupq_n_s64(v4);
        v23 = v14 + 3;
        v24 = v18;
        do
        {
          v23[-1] = v22;
          *v23 = v22;
          v23 += 2;
          v24 -= 4;
        }

        while (v24);
      }

      else
      {
        v18 = 0;
        v19 = 1;
      }

      while (1)
      {
        if (v18 == v16)
        {
          goto LABEL_34;
        }

        v18 = v19;
        *v15 = v4;
        if (a3 == v19)
        {
          break;
        }

        ++v15;
        ++v19;
        if (v5 + 1 == v18 + 1)
        {
          v10 = v5;
          goto LABEL_28;
        }
      }

      v10 = a3;
      if (a3 >= v5)
      {
LABEL_28:
        if (v10 > 0)
        {
          v25 = *(v6 + 16);
          v26 = __OFADD__(v25, v10);
          v27 = v25 + v10;
          if (v26)
          {
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
            return result;
          }

          *(v6 + 16) = v27;
        }

        goto LABEL_31;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v5 > 0)
  {
    goto LABEL_50;
  }

  v10 = 0;
LABEL_31:
  if (v10 != a3)
  {
    goto LABEL_32;
  }

LABEL_36:
  if (a3 == v5)
  {
    goto LABEL_32;
  }

  if (a3 >= v5)
  {
    goto LABEL_54;
  }

  v28 = *(v6 + 16);
  v29 = a3 + 1;
  while (1)
  {
    v30 = *(v6 + 24);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v28 + 1)
    {
      break;
    }

    if (v28 < v31)
    {
      goto LABEL_42;
    }

LABEL_39:
    *(v6 + 16) = v28;
  }

  v34 = v6;
  v35 = v29;
  v36 = v28;
  result = sub_1C0CF4C50((v30 > 1), v28 + 1, 1, v34);
  v28 = v36;
  v29 = v35;
  v6 = result;
  v31 = *(result + 24) >> 1;
  if (v36 >= v31)
  {
    goto LABEL_39;
  }

LABEL_42:
  v32 = v29 + v31 - v28;
  v10 = v28 + 4;
  v33 = v29;
  while (1)
  {
    *(v6 + 8 * v10) = v4;
    if (v5 == v33)
    {
      break;
    }

    if (v29 < 0 || v33 >= v5)
    {
      goto LABEL_53;
    }

    ++v33;
    if (++v10 - v31 == 4)
    {
      v28 = v31;
      v29 = v32;
      goto LABEL_39;
    }
  }

LABEL_51:
  *(v6 + 16) = v10 - 3;
LABEL_32:
  *v3 = v6;
  return result;
}

uint64_t sub_1C0CF9B90(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C0CF51C4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C0CF9C84(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1C0CF48F4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C0CF9D70(uint64_t result, char *a2)
{
  v5 = &a2[-result];
  if (result)
  {
    v6 = &a2[-result];
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  v10 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v11 = *(v7 + 24) >> 1, v11 < v9))
  {
    if (v8 <= v9)
    {
      v12 = v8 + v6;
    }

    else
    {
      v12 = v8;
    }

    result = sub_1C0CF48F4(result, v12, 1, v7);
    v7 = result;
    v11 = *(result + 24) >> 1;
  }

  v13 = *(v7 + 16);
  v14 = v11 - v13;
  v15 = 0;
  if (v3 && v4 && v4 > v3 && v11 != v13)
  {
    if (v5 >= v14)
    {
      v15 = v11 - v13;
    }

    else
    {
      v15 = v5;
    }

    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove((v7 + v13 + 32), v3, v15);
    v3 += v15;
  }

  if (v15 < v6)
  {
    goto LABEL_34;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v15);
  v18 = v16 + v15;
  if (!v17)
  {
    *(v7 + 16) = v18;
LABEL_24:
    if (v15 != v14 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v21 = *(v7 + 16);
  v24 = *v3;
  v22 = v3 + 1;
  v23 = v24;
  while (1)
  {
    v25 = *(v7 + 24);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v21 + 1)
    {
      break;
    }

    if (v21 < v26)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 16) = v21;
  }

  result = sub_1C0CF48F4((v25 > 1), v21 + 1, 1, v7);
  v7 = result;
  v26 = *(result + 24) >> 1;
  if (v21 >= v26)
  {
    goto LABEL_37;
  }

LABEL_40:
  v27 = v21 + 32;
  while (1)
  {
    *(v7 + v27) = v23;
    if (v22 == v4)
    {
      break;
    }

    v28 = *v22++;
    v23 = v28;
    if (++v27 - v26 == 32)
    {
      v21 = v26;
      goto LABEL_37;
    }
  }

  *(v7 + 16) = v27 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

void *sub_1C0CF9F20(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C0CF53F8(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0B0, &qword_1C0D7B5D8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s16CryptoKitPrivate3PECO22SimilarityClientConfigV2eeoiySbAE_AEtFZ_0(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 1);
  v4 = a1[16];
  v21 = *(a1 + 4);
  v22 = *(a1 + 3);
  v5 = a2[1];
  v6 = *(a2 + 1);
  v7 = a2[16];
  v8 = *(a2 + 3);
  v19 = *(a1 + 5);
  v20 = *(a2 + 4);
  v18 = *(a2 + 5);
  v24 = *a1;
  v23 = *a2;
  v9 = HE.RlweParams.rawValue.getter();
  v11 = v10;
  if (v9 == HE.RlweParams.rawValue.getter() && v11 == v12)
  {
  }

  else
  {
    v13 = sub_1C0D78F3C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (v2)
  {
    v14 = 5654338;
  }

  else
  {
    v14 = 5654082;
  }

  if (v5)
  {
    v15 = 5654338;
  }

  else
  {
    v15 = 5654082;
  }

  if (v14 != v15)
  {
    v16 = sub_1C0D78F3C();
    swift_bridgeObjectRelease_n();
    if (v16)
    {
      goto LABEL_14;
    }

    return 0;
  }

  swift_bridgeObjectRelease_n();
LABEL_14:
  if (v3 != v6 || v4 != v7 || v22 != v8 || (sub_1C0D63338(v21, v20) & 1) == 0)
  {
    return 0;
  }

  return sub_1C0D63394(v19, v18);
}

unint64_t sub_1C0CFA1D8()
{
  result = qword_1EBE6D2B0[0];
  if (!qword_1EBE6D2B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6D2B0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C0CFA250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C0CFA298(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1C0CFA2F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C0CFA350(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C0CFA3A4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C0CFA400(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v4;
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v7 <= 0x3F)
  {
    if (v5 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      result = type metadata accessor for ARC.Ciphersuite();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C0CFA580(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_checkMetadataState() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  v13 = *(v10 + 64);
  if (v11 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v8 + 64) + v12;
  v16 = v13 + v12;
  v17 = v13 + 7;
  if (v14 >= a2)
  {
    goto LABEL_29;
  }

  v18 = ((v17 + ((v16 + ((v12 + ((v17 + ((v16 + ((v16 + (v15 & ~v12)) & ~v12)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v12)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v19 = v18 & 0xFFFFFFF8;
  if ((v18 & 0xFFFFFFF8) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = a2 - v14 + 1;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v25 = v23 - 1;
    if (v19)
    {
      v25 = 0;
      v26 = *a1;
    }

    else
    {
      v26 = 0;
    }

    return v14 + (v26 | v25) + 1;
  }

  if (v22)
  {
    v23 = *(a1 + v18);
    if (v23)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v9 == v14)
  {
    v27 = *(v8 + 48);

    return v27(a1, v9, AssociatedTypeWitness);
  }

  else
  {
    v28 = ~v12;
    v29 = (a1 + v15) & v28;
    if (v11 == v14)
    {
      v30 = *(v10 + 48);

      return v30(v29);
    }

    else
    {
      v31 = *(((v17 + ((v16 + ((v16 + v29) & v28)) & v28)) & 0xFFFFFFFFFFFFFFF8) + 16);
      if (v31 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      return (v31 + 1);
    }
  }
}

double sub_1C0CFA8DC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(swift_checkMetadataState() - 8);
  v14 = *(v12 + 84);
  v15 = *(v10 + 64);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  if (v14 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = *(v12 + 84);
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  v19 = v15 + v16;
  v20 = v17 + v16;
  v21 = (v17 + v16 + ((v17 + v16 + ((v15 + v16) & ~v16)) & ~v16)) & ~v16;
  v22 = v17 + 7;
  v23 = ((v17 + 7 + ((v17 + v16 + ((v16 + ((v17 + 7 + v21) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v16)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v18 >= a3)
  {
    v26 = 0;
    v27 = a2 - v18;
    if (a2 <= v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((v17 + 7 + ((v17 + v16 + ((v16 + ((v17 + 7 + v21) & 0xFFFFFFF8) + 40) & ~v16)) & ~v16)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v24 = a3 - v18 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = a2 - v18;
    if (a2 <= v18)
    {
LABEL_19:
      if (v26 > 1)
      {
        if (v26 != 2)
        {
          *(a1 + v23) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(a1 + v23) = 0;
      }

      else if (v26)
      {
        *(a1 + v23) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v11 == v18)
      {
        v30 = *(v10 + 56);

        v30(a1, a2, v11, AssociatedTypeWitness);
      }

      else
      {
        v31 = ~v16;
        v32 = (a1 + v19) & v31;
        if (v14 == v18)
        {
          v33 = *(v12 + 56);

          v33(v32, a2);
        }

        else
        {
          v34 = (v22 + ((v20 + ((v20 + v32) & v31)) & v31)) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            result = 0.0;
            *(v34 + 8) = 0u;
            *(v34 + 24) = 0u;
            *v34 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v34 + 16) = (a2 - 1);
          }
        }
      }

      return result;
    }
  }

  if (v23)
  {
    v28 = 1;
  }

  else
  {
    v28 = v27;
  }

  if (v23)
  {
    v29 = ~v18 + a2;
    bzero(a1, v23);
    *a1 = v29;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      *(a1 + v23) = v28;
    }

    else
    {
      *(a1 + v23) = v28;
    }
  }

  else if (v26)
  {
    *(a1 + v23) = v28;
  }

  return result;
}

uint64_t sub_1C0CFACAC(uint64_t a1, unint64_t a2, int64_t a3, uint64_t a4, char a5)
{
  if (a3 <= 0)
  {
    goto LABEL_25;
  }

  v7 = v5;
  v6 = a4;
  v8 = a3;
  v11 = a5;
  if (a5)
  {
    v6 = sub_1C0CFC348(a3);
  }

  v12 = *v5;
  if (!*(*v7 + 16) || (sub_1C0D0EF60(a1, a2), (v13 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D090, &qword_1C0D7B730);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C0D7B690;
    *(inited + 32) = v6;
    v29 = sub_1C0CFC428(inited);
    swift_setDeallocating();
    sub_1C0CF6468(a1, a2);
    v30 = *v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *v7;
    sub_1C0CFB794(v8, v29, a1, a2, isUniquelyReferenced_nonNull_native);
    sub_1C0CF448C(a1, a2);
    *v7 = v50;
    return v6;
  }

  if (!*(v12 + 16))
  {
    __break(1u);
    goto LABEL_43;
  }

  v14 = sub_1C0D0EF60(a1, a2);
  if ((v15 & 1) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v16 = (*(v12 + 56) + 16 * v14);
  if (*v16 != v8)
  {
LABEL_25:
    sub_1C0CFC3D4();
    swift_allocError();
    v27 = 1;
    goto LABEL_26;
  }

  v17 = v16[1];
  v18 = *(v17 + 16);
  if (v18 >= v8)
  {
    goto LABEL_41;
  }

  v49 = v17;
  if (!v18)
  {
    sub_1C0D78BFC();
LABEL_30:
    v33 = *v7;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *v7;
    v35 = v52;
    v8 = sub_1C0D0EF60(a1, a2);
    v37 = *(v35 + 16);
    v38 = (v36 & 1) == 0;
    v39 = v37 + v38;
    if (!__OFADD__(v37, v38))
    {
      v11 = v36;
      if (*(v35 + 24) >= v39)
      {
        if ((v34 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        sub_1C0CFB314(v39, v34);
        v40 = sub_1C0D0EF60(a1, a2);
        if ((v11 & 1) != (v41 & 1))
        {
          result = sub_1C0D78F7C();
          __break(1u);
          return result;
        }

        v8 = v40;
      }

      while ((v11 & 1) == 0)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        sub_1C0CFBA7C();
      }

      v42 = v52;
      v43 = (*(v52 + 56) + 16 * v8);
      v44 = *v43;
      v45 = v43[1];

      v50 = v44;
      v51 = v45;
      sub_1C0CFBBF4(&v53, v6);
      v46 = v51;
      if (v51)
      {
        v47 = (*(v42 + 56) + 16 * v8);
        *v47 = v50;
        v47[1] = v46;
      }

      else
      {
        sub_1C0CFC540(*(v42 + 48) + 16 * v8);
        sub_1C0CFB5DC(v8, v42);
      }

      *v7 = v42;
      return v6;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v19 = v17 + 56;
  sub_1C0D78BFC();
  v48 = -v8 % v8;
  v20 = v49;
  while (1)
  {
    v21 = *(v20 + 40);
    v22 = sub_1C0D78FEC();
    v23 = -1 << *(v49 + 32);
    v24 = v22 & ~v23;
    if (((*(v19 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      goto LABEL_30;
    }

    v25 = ~v23;
    while (*(*(v49 + 48) + 8 * v24) != v6)
    {
      v24 = (v24 + 1) & v25;
      if (((*(v19 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    if ((v11 & 1) == 0)
    {
      break;
    }

    v50 = 0;
    MEMORY[0x1C68E4EC0](&v50, 8);
    v6 = (v50 * v8) >> 64;
    if (v50 * v8 >= v8)
    {
      goto LABEL_22;
    }

    v20 = v49;
    if (v48 > v50 * v8)
    {
      do
      {
        v50 = 0;
        MEMORY[0x1C68E4EC0](&v50, 8);
      }

      while (v48 > v50 * v8);
      v6 = (v50 * v8) >> 64;
LABEL_22:
      v20 = v49;
    }

    if (!*(v20 + 16))
    {
      goto LABEL_30;
    }
  }

LABEL_41:
  sub_1C0CFC3D4();
  swift_allocError();
  v27 = 2;
LABEL_26:
  *v26 = v27;
  swift_willThrow();
  return v6;
}

uint64_t sub_1C0CFB0A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D350, &unk_1C0D7BAA0);
  result = sub_1C0D78EFC();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 4 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
        sub_1C0D78BFC();
      }

      result = MEMORY[0x1C68E3FC0](*(v8 + 40), v22, 4);
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C0CFB314(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D340, &qword_1C0D7BA90);
  v38 = a2;
  result = sub_1C0D78EFC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + v23);
      v26 = *v25;
      v27 = v25[1];
      v39 = v24;
      if ((v38 & 1) == 0)
      {
        sub_1C0CF6468(v24, *(&v24 + 1));
        sub_1C0D78BFC();
      }

      v28 = *(v8 + 40);
      sub_1C0D78FFC();
      sub_1C0D7833C();
      result = sub_1C0D7902C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v17 = v39;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v17 = v39;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = 16 * v16;
      *(*(v8 + 48) + v18) = v17;
      v19 = (*(v8 + 56) + v18);
      *v19 = v26;
      v19[1] = v27;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C0CFB5DC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C0D78D6C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1C0D78FFC();
      sub_1C0CF6468(v11, v12);
      sub_1C0D7833C();
      v13 = sub_1C0D7902C();
      result = sub_1C0CF448C(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C0CFB794(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1C0D0EF60(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1C0CFB314(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1C0D0EF60(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1C0D78F7C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1C0CFBA7C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;

  return sub_1C0CF6468(a3, a4);
}

void *sub_1C0CFB920()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D350, &unk_1C0D7BAA0);
  v2 = *v0;
  v3 = sub_1C0D78EEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_1C0D78BFC();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C0CFBA7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D340, &qword_1C0D7BA90);
  v2 = *v0;
  v3 = sub_1C0D78EEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 56) + v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v21;
        v22 = (*(v4 + 56) + v17);
        *v22 = v19;
        v22[1] = v20;
        sub_1C0CF6468(v21, *(&v21 + 1));
        result = sub_1C0D78BFC();
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1C0CFBBF4(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1C0D78FEC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1C0CFBEF8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C0CFBCD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D348, &qword_1C0D7BA98);
  result = sub_1C0D78D8C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1C0D78FEC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C0CFBEF8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C0CFBCD4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1C0CFC018();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1C0CFC158(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1C0D78FEC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C0D78F6C();
  __break(1u);
  return result;
}

void *sub_1C0CFC018()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D348, &qword_1C0D7BA98);
  v2 = *v0;
  v3 = sub_1C0D78D7C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1C0CFC158(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D348, &qword_1C0D7BA98);
  result = sub_1C0D78D8C();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_1C0D78FEC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

unint64_t sub_1C0CFC348(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1C68E4EC0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1C68E4EC0](&v3, 8);
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

unint64_t sub_1C0CFC3D4()
{
  result = qword_1EBE6D338;
  if (!qword_1EBE6D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D338);
  }

  return result;
}

uint64_t sub_1C0CFC428(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D348, &qword_1C0D7BA98);
    v3 = sub_1C0D78D9C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      v12 = *(v3 + 40);
      result = sub_1C0D78FEC();
      v14 = result & v7;
      v15 = (result & v7) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v7);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v11)
        {
          v14 = (v14 + 1) & v7;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t APSIC.SupportedCurves.hashValue.getter()
{
  v1 = *v0;
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v1);
  return sub_1C0D7902C();
}

uint64_t sub_1C0CFC628()
{
  v1 = *v0;
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v1);
  return sub_1C0D7902C();
}

uint64_t sub_1C0CFC670()
{
  v1 = *v0;
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v1);
  return sub_1C0D7902C();
}

uint64_t sub_1C0CFC6C4()
{
  v0 = ccec_compressed_x962_export_pub_size();
  v6 = sub_1C0D0F990(v0);
  v7 = v1;
  v5 = 0;
  sub_1C0CFD310(&v6, &v5);
  v2 = v5;
  if (!v5)
  {
    return v6;
  }

  sub_1C0CF8DE0();
  swift_allocError();
  *v3 = v2;
  *(v3 + 4) = 0;
  swift_willThrow();
  return sub_1C0CF448C(v6, v7);
}

uint64_t sub_1C0CFC764(uint64_t a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = getccec_pub_ctx_size();
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v4)
  {
    v5 = v4;
    v6 = sub_1C0D78C2C();
    *(v6 + 16) = v5;
    bzero((v6 + 32), v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_21;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = sub_1C0D7812C();
    if (v10)
    {
      v11 = sub_1C0D7815C();
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_33;
      }

      v10 += v8 - v11;
    }

    if (__OFSUB__(v9, v8))
    {
      goto LABEL_31;
    }

    a1 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1C0D7814C();
    if (v10)
    {
LABEL_19:
      v17 = ccec_x963_import_pub();
      if (!v17)
      {
        if (ccec_validate_pub())
        {
          goto LABEL_26;
        }

        sub_1C0CF8DE0();
        swift_allocError();
        *v19 = -19;
        goto LABEL_25;
      }

      v18 = v17;
LABEL_24:
      sub_1C0CF8DE0();
      swift_allocError();
      *v19 = v18;
LABEL_25:
      *(v19 + 4) = 0;
      swift_willThrow();

      goto LABEL_26;
    }

    __break(1u);
  }

  else if (!v7)
  {
LABEL_21:
    v18 = ccec_x963_import_pub();
    if (!v18)
    {
      if (ccec_validate_pub())
      {
LABEL_26:
        v20 = *MEMORY[0x1E69E9840];
        return v6;
      }

      v18 = -19;
    }

    goto LABEL_24;
  }

  if (a1 >> 32 < a1)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v12 = sub_1C0D7812C();
  if (!v12)
  {
    result = sub_1C0D7814C();
    goto LABEL_35;
  }

  v13 = v12;
  v14 = sub_1C0D7815C();
  if (__OFSUB__(a1, v14))
  {
    goto LABEL_32;
  }

  v15 = a1 - v14 + v13;
  result = sub_1C0D7814C();
  if (v15)
  {
    goto LABEL_19;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1C0CFCA20(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = getccec_pub_ctx_size();
  if (v4 < 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  if (v4)
  {
    v5 = v4;
    v6 = sub_1C0D78C2C();
    *(v6 + 16) = v5;
    bzero((v6 + 32), v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      goto LABEL_19;
    }

LABEL_15:
    if (a1 >> 32 >= a1)
    {
      v12 = sub_1C0D7812C();
      if (!v12)
      {
        result = sub_1C0D7814C();
        goto LABEL_28;
      }

      v13 = v12;
      v14 = sub_1C0D7815C();
      if (!__OFSUB__(a1, v14))
      {
        v15 = a1 - v14 + v13;
        result = sub_1C0D7814C();
        if (v15)
        {
          goto LABEL_19;
        }

LABEL_28:
        __break(1u);
        return result;
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = sub_1C0D7812C();
    if (v10)
    {
      v11 = sub_1C0D7815C();
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_26;
      }

      v10 += v8 - v11;
    }

    if (__OFSUB__(v9, v8))
    {
      goto LABEL_24;
    }

    a1 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1C0D7814C();
    if (!v10)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

LABEL_19:
  v17 = ccec_x963_import_pub();
  if (v17)
  {

    sub_1C0CF8DE0();
    swift_allocError();
    *v18 = v17;
    *(v18 + 4) = 0;
    swift_willThrow();
  }

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t APSIC.Client.init(publicKey:domainSeparationTag:curveType:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X8>)
{
  if (*a5)
  {
    if (*a5 != 1)
    {
      goto LABEL_7;
    }

    result = MEMORY[0x1C68E41C0]();
    if (result)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  result = MEMORY[0x1C68E41B0]();
  if (result)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  result = ccec_cp_521();
  if (!result)
  {
LABEL_36:
    __break(1u);
    return result;
  }

LABEL_8:
  v13 = result;
  v30 = result;
  v14 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v16 = *(a3 + 16);
      v15 = *(a3 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v18 > 128)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!v14)
    {
      if (BYTE6(a4) <= 0x80uLL)
      {
        goto LABEL_18;
      }

LABEL_15:
      sub_1C0CF8DE0();
      swift_allocError();
      *v19 = 1;
      *(v19 + 4) = 1;
      swift_willThrow();
      sub_1C0CF448C(a3, a4);
      return sub_1C0CF448C(a1, a2);
    }

    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      v13 = sub_1C0CFD670(v13);
      goto LABEL_24;
    }

    if (HIDWORD(a3) - a3 > 128)
    {
      goto LABEL_15;
    }
  }

LABEL_18:
  v20 = getccec_pub_ctx_size();
  v31 = v20;
  if (v20 < 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v20)
  {
    v21 = v20;
    v22 = sub_1C0D78C2C();
    *(v22 + 16) = v21;
    bzero((v22 + 32), v21);
  }

  v23 = sub_1C0CFC764(a1, a2);
  if (v6)
  {
    sub_1C0CF448C(a3, a4);
    sub_1C0CF448C(a1, a2);
  }

  v13 = v23;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_24:
  result = ccapsic_client_state_sizeof();
  *&v32 = v13;
  if (result < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (result)
  {
    v24 = result;
    v25 = sub_1C0D78C2C();
    *(v25 + 16) = v24;
    bzero((v25 + 32), v24);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  v34 = 0;
  *(&v32 + 1) = v25;
  v33 = v25 + 32;
  sub_1C0CF6468(a3, a4);
  sub_1C0D78BFC();
  sub_1C0CFD6FC(a3, a4, &v30, &v34, v25 + 32, a3, a4);

  v26 = v34;
  if (v34)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v27 = v26;
    *(v27 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(a3, a4);
    sub_1C0CF448C(a1, a2);
  }

  else
  {
    sub_1C0CF448C(a3, a4);
    result = sub_1C0CF448C(a1, a2);
    v28 = v31;
    v29 = v33;
    *a6 = v30;
    *(a6 + 8) = v28;
    *(a6 + 16) = v32;
    *(a6 + 32) = v29;
  }

  return result;
}

uint64_t APSIC.Client.computeIntersectResponse(element:matchPoint:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *(v4 + 16);
  v22[0] = *v4;
  v22[1] = v8;
  v23 = *(v4 + 32);
  result = sub_1C0CFCA20(a3, a4);
  if (v5)
  {
    return a1;
  }

  v21 = result;
  v10 = *(&v22[0] + 1);
  if ((*(&v22[0] + 1) & 0x8000000000000000) == 0)
  {
    if (*(&v22[0] + 1))
    {
      v11 = sub_1C0D78C2C();
      *(v11 + 16) = *(&v22[0] + 1);
      bzero((v11 + 32), v10);
      v20 = v11;
      v12 = sub_1C0D78C2C();
      *(v12 + 16) = v10;
      bzero((v12 + 32), v10);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
      v20 = MEMORY[0x1E69E7CC0];
    }

    v19 = v12;
    v17 = xmmword_1C0D7BAB0;
    v18 = xmmword_1C0D7BAB0;
    sub_1C0CFE384(v22, v15);
    sub_1C0CF6468(a1, a2);
    sub_1C0CFDB3C(a1, a2, &v21, &v20, &v19, v22, &v16, a1, a2, &v18, &v17);
    v13 = *(&v18 + 1);
    a1 = v18;
    v14 = v17;
    sub_1C0CF6468(v18, *(&v18 + 1));
    sub_1C0CF6468(v14, *(&v14 + 1));
    sub_1C0CF448C(v14, *(&v14 + 1));
    sub_1C0CF448C(a1, v13);

    return a1;
  }

  __break(1u);
  return result;
}

void APSIC.Client.computeGuaranteedMatchResponse()()
{
  v2 = v0[1];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *v0;
    v4 = v0[4];
    if (v2)
    {
      v5 = sub_1C0D78C2C();
      *(v5 + 16) = v2;
      bzero((v5 + 32), v2);
      v6 = sub_1C0D78C2C();
      *(v6 + 16) = v2;
      bzero((v6 + 32), v2);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
      v5 = MEMORY[0x1E69E7CC0];
    }

    *(v5 + 32) = v3;
    *(v6 + 32) = v3;
    match_response = ccapsic_client_generate_match_response();
    if (match_response)
    {
      v8 = match_response;
      sub_1C0CF8DE0();
      swift_allocError();
      *v9 = v8;
      *(v9 + 4) = 0;
      swift_willThrow();
LABEL_8:

      sub_1C0CF448C(0, 0xC000000000000000);

      return;
    }

    sub_1C0CFC6C4();
    if (v1)
    {
      goto LABEL_8;
    }

    sub_1C0CFC6C4();
  }
}

uint64_t sub_1C0CFD310(uint64_t *a1, _DWORD *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      result = ccec_compressed_x962_export_pub();
      *a2 = result;
      goto LABEL_20;
    }

    v8 = *a1;

    sub_1C0CF448C(v5, v4);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v9 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v10 = *(v5 + 16);
    result = sub_1C0D7812C();
    if (!result)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (!__OFSUB__(v10, sub_1C0D7815C()))
    {
      sub_1C0D7814C();
      result = ccec_compressed_x962_export_pub();
      *a2 = result;
      v11 = v9 | 0x8000000000000000;
      *a1 = v5;
LABEL_19:
      a1[1] = v11;
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v6)
  {
    sub_1C0CF448C(v5, v4);
    LOWORD(v20) = v4;
    BYTE2(v20) = BYTE2(v4);
    HIBYTE(v20) = BYTE3(v4);
    LOBYTE(v21) = BYTE4(v4);
    HIBYTE(v21) = BYTE5(v4);
    result = ccec_compressed_x962_export_pub();
    *a2 = result;
    *a1 = v5;
    a1[1] = v20 | ((v21 | (BYTE6(v4) << 16)) << 32);
LABEL_20:
    v18 = *MEMORY[0x1E69E9840];
    return result;
  }

  v12 = v4 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1C0CF448C(v5, v4);
  *a1 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  v13 = v5 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v13 < v5)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (sub_1C0D7812C() && __OFSUB__(v5, sub_1C0D7815C()))
    {
LABEL_25:
      __break(1u);
    }

    v14 = sub_1C0D7818C();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = sub_1C0D7810C();

    v12 = v17;
  }

  if (v13 < v5)
  {
    goto LABEL_22;
  }

  result = sub_1C0D7812C();
  if (result)
  {
    if (!__OFSUB__(v5, sub_1C0D7815C()))
    {
      sub_1C0D7814C();
      *a2 = ccec_compressed_x962_export_pub();

      v11 = v12 | 0x4000000000000000;
      *a1 = v5;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C0CFD6FC(uint64_t result, unint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v33 = *MEMORY[0x1E69E9840];
  v13 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v13)
    {
      goto LABEL_22;
    }

    v7 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1C0CFD670(v7);
      *(a3 + 16) = v7;
    }

    result = ccrng();
    if (!result)
    {
      __break(1u);
LABEL_67:
      sub_1C0D7814C();
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v15 = a7 >> 62;
    if ((a7 >> 62) > 1)
    {
      if (v15 == 2)
      {
        v31 = *(a6 + 24);
        if (__OFSUB__(v31, *(a6 + 16)))
        {
          __break(1u);
          goto LABEL_41;
        }
      }

LABEL_58:
      *a4 = ccapsic_client_init();
      *(a3 + 16) = v7;
      result = sub_1C0CF448C(a6, a7);
      v32 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (!v15)
    {
      goto LABEL_58;
    }

    LODWORD(v13) = HIDWORD(a6) - a6;
    if (!__OFSUB__(HIDWORD(a6), a6))
    {
      goto LABEL_58;
    }

    __break(1u);
  }

  if (v13 != 2)
  {
    v7 = *(a3 + 16);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v7;
    if ((v30 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_33;
  }

  v16 = *(result + 16);
  v17 = sub_1C0D7812C();
  if (!v17)
  {
    goto LABEL_67;
  }

  v18 = v17;
  v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  v19 = sub_1C0D7815C();
  if (__OFSUB__(v16, v19))
  {
    __break(1u);
    __break(1u);
    goto LABEL_62;
  }

  v20 = v16 - v19 + v18;
  sub_1C0D7814C();
  if (!v20)
  {
    goto LABEL_68;
  }

  v7 = *(a3 + 16);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v7;
  if ((v21 & 1) == 0)
  {
    goto LABEL_63;
  }

  while (1)
  {
    result = ccrng();
    if (!result)
    {
      goto LABEL_72;
    }

    v22 = a7 >> 62;
    if ((a7 >> 62) > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_58;
      }

      v29 = *(a6 + 24);
      if (!__OFSUB__(v29, *(a6 + 16)))
      {
        goto LABEL_58;
      }

      __break(1u);
      goto LABEL_50;
    }

    if (!v22 || !__OFSUB__(HIDWORD(a6), a6))
    {
      goto LABEL_58;
    }

    __break(1u);
LABEL_22:
    v23 = result;
    if (result > result >> 32)
    {
      break;
    }

    v24 = sub_1C0D7812C();
    if (!v24)
    {
      goto LABEL_70;
    }

    v25 = v24;
    v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v26 = sub_1C0D7815C();
    if (!__OFSUB__(v23, v26))
    {
      v27 = v23 - v26 + v25;
      result = sub_1C0D7814C();
      if (!v27)
      {
        goto LABEL_71;
      }

      v7 = *(a3 + 16);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v7;
      if ((v28 & 1) == 0)
      {
        v7 = sub_1C0CFD670(v7);
        *(a3 + 16) = v7;
      }

      result = ccrng();
      if (!result)
      {
        goto LABEL_73;
      }

      v29 = a7 >> 62;
      if ((a7 >> 62) <= 1)
      {
        if (!v29 || !__OFSUB__(HIDWORD(a6), a6))
        {
          goto LABEL_58;
        }

        goto LABEL_65;
      }

LABEL_50:
      if (v29 == 2 && __OFSUB__(*(a6 + 24), *(a6 + 16)))
      {
        __break(1u);
      }

      goto LABEL_58;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    v7 = sub_1C0CFD670(v7);
    *(a3 + 16) = v7;
  }

  __break(1u);
LABEL_60:
  v7 = sub_1C0CFD670(v7);
  *(a3 + 16) = v7;
LABEL_33:
  if (ccrng())
  {
    v31 = a7 >> 62;
    if ((a7 >> 62) <= 1)
    {
      if (!v31 || !__OFSUB__(HIDWORD(a6), a6))
      {
        goto LABEL_58;
      }

      __break(1u);
LABEL_65:
      __break(1u);
    }

LABEL_41:
    if (v31 == 2 && __OFSUB__(*(a6 + 24), *(a6 + 16)))
    {
      __break(1u);
    }

    goto LABEL_58;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_1C0D7814C();
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1C0CFDB3C(uint64_t a1, unint64_t a2, uint64_t *a3, char **a4, char **a5, uint64_t **a6, _DWORD *a7, uint64_t a8, unint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v85 = *MEMORY[0x1E69E9840];
  v16 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v16)
    {
      goto LABEL_28;
    }

    v15 = *a3;
    sub_1C0CFE384(a6, v84);
    sub_1C0CF6468(a8, a9);
    sub_1C0CFE384(a6, v84);
    sub_1C0CF6468(a8, a9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1C0CFD670(v15);
      *v14 = v15;
    }

    v18 = *v13;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v18;
    if ((v19 & 1) == 0)
    {
      v18 = sub_1C0CFD670(v18);
      *v13 = v18;
    }

    v13 = a5;
    v20 = *a5;
    a1 = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v20;
    if ((a1 & 1) == 0)
    {
      a1 = sub_1C0CFD670(v20);
      v20 = a1;
      *a5 = a1;
    }

    v21 = *a6;
    *(v18 + 4) = *a6;
    *(v20 + 4) = v21;
    v14 = (v20 + 32);
    v22 = a9 >> 62;
    if ((a9 >> 62) <= 1)
    {
      if (!v22)
      {
        goto LABEL_68;
      }

      LODWORD(v16) = HIDWORD(a8) - a8;
      if (!__OFSUB__(HIDWORD(a8), a8))
      {
        goto LABEL_68;
      }

      __break(1u);
      goto LABEL_14;
    }

    if (v22 == 2)
    {
      v47 = *(a8 + 24);
      if (__OFSUB__(v47, *(a8 + 16)))
      {
        __break(1u);
        goto LABEL_53;
      }
    }

LABEL_68:
    v48 = a6[4];
    v77 = v15;
    v49 = ccapsic_client_check_intersect_response();
    *a7 = v49;
    if (v49)
    {
      v50 = v49;
      sub_1C0CF8DE0();
      swift_allocError();
      *v51 = v50;
      *(v51 + 4) = 0;
      swift_willThrow();
    }

    else
    {
      v52 = sub_1C0CFC6C4();
      if (!v79)
      {
        v56 = *a10;
        v57 = a10[1];
        *a10 = v52;
        a10[1] = v53;
        sub_1C0CF448C(v56, v57);
        v58 = sub_1C0CFC6C4();
        v55 = v15;
        v71 = *a11;
        v72 = a11[1];
        *a11 = v58;
        a11[1] = v73;
        sub_1C0CF448C(v71, v72);
        *a5 = v20;
        *a4 = v18;
        v54 = a3;
LABEL_72:
        *v54 = v55;
LABEL_80:
        sub_1C0CFE688(a6);
        sub_1C0CF448C(a8, a9);
        sub_1C0CFE688(a6);
        sub_1C0CF448C(a8, a9);
        sub_1C0CFE688(a6);
        result = sub_1C0CF448C(a8, a9);
        v67 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    v54 = a3;
    v55 = v77;
    *a5 = v20;
    *a4 = v18;
    goto LABEL_72;
  }

LABEL_14:
  if (v16 != 2)
  {
    v15 = *v14;
    sub_1C0CFE384(a6, v84);
    sub_1C0CF6468(a8, a9);
    sub_1C0CFE384(a6, v84);
    sub_1C0CF6468(a8, a9);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    if ((v43 & 1) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_42;
  }

  v23 = *(a1 + 16);
  sub_1C0CFE384(a6, v84);
  sub_1C0CF6468(a8, a9);
  sub_1C0CFE384(a6, v84);
  sub_1C0CF6468(a8, a9);
  sub_1C0CFE384(a6, v84);
  sub_1C0CF6468(a8, a9);
  v24 = sub_1C0D7812C();
  if (v24)
  {
    v25 = v24;
    v26 = (v15 & 0x3FFFFFFFFFFFFFFFLL);
    v27 = sub_1C0D7815C();
    if (__OFSUB__(v23, v27))
    {
      __break(1u);
      goto LABEL_85;
    }

    v25 = (v25 + v23 - v27);
    sub_1C0D7814C();
    if (v25)
    {
      v15 = *v14;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      *v14 = v15;
      v26 = a4;
      if ((v28 & 1) == 0)
      {
        goto LABEL_86;
      }

      while (1)
      {
        v29 = *v26;
        v30 = swift_isUniquelyReferenced_nonNull_native();
        *v26 = v29;
        if ((v30 & 1) == 0)
        {
          v29 = sub_1C0CFD670(v29);
          *v26 = v29;
        }

        v31 = *a5;
        a1 = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v31;
        v13 = v25;
        if ((a1 & 1) == 0)
        {
          a1 = sub_1C0CFD670(v31);
          v31 = a1;
          *a5 = a1;
        }

        v14 = *a6;
        *(v29 + 4) = *a6;
        *(v31 + 4) = v14;
        v32 = a9 >> 62;
        if ((a9 >> 62) > 1)
        {
          break;
        }

        if (!v32 || !__OFSUB__(HIDWORD(a8), a8))
        {
          goto LABEL_75;
        }

        __break(1u);
LABEL_28:
        v33 = a1;
        if (a1 > a1 >> 32)
        {
          __break(1u);
LABEL_83:
          v15 = sub_1C0CFD670(v15);
          *v14 = v15;
LABEL_42:
          v18 = *v13;
          v44 = swift_isUniquelyReferenced_nonNull_native();
          *v13 = v18;
          if ((v44 & 1) == 0)
          {
            v18 = sub_1C0CFD670(v18);
            *v13 = v18;
          }

          v20 = *a5;
          v45 = swift_isUniquelyReferenced_nonNull_native();
          *a5 = v20;
          if ((v45 & 1) == 0)
          {
            v20 = sub_1C0CFD670(v20);
            *a5 = v20;
          }

          v46 = *a6;
          *(v18 + 4) = *a6;
          *(v20 + 4) = v46;
          v47 = a9 >> 62;
          if ((a9 >> 62) <= 1)
          {
            if (!v47 || !__OFSUB__(HIDWORD(a8), a8))
            {
              goto LABEL_68;
            }

            __break(1u);
LABEL_88:
            __break(1u);
          }

LABEL_53:
          if (v47 == 2 && __OFSUB__(*(a8 + 24), *(a8 + 16)))
          {
            __break(1u);
          }

          goto LABEL_68;
        }

        sub_1C0CFE384(a6, v84);
        sub_1C0CF6468(a8, a9);
        sub_1C0CFE384(a6, v84);
        sub_1C0CF6468(a8, a9);
        sub_1C0CFE384(a6, v84);
        sub_1C0CF6468(a8, a9);
        v34 = sub_1C0D7812C();
        if (!v34)
        {
          goto LABEL_91;
        }

        v25 = v34;
        v26 = (v15 & 0x3FFFFFFFFFFFFFFFLL);
        v35 = sub_1C0D7815C();
        if (!__OFSUB__(v33, v35))
        {
          v36 = v25 + v33 - v35;
          result = sub_1C0D7814C();
          if (!v36)
          {
            goto LABEL_92;
          }

          v15 = *v14;
          v38 = swift_isUniquelyReferenced_nonNull_native();
          *v14 = v15;
          if ((v38 & 1) == 0)
          {
            v15 = sub_1C0CFD670(v15);
            *v14 = v15;
          }

          v29 = *a4;
          v39 = swift_isUniquelyReferenced_nonNull_native();
          *a4 = v29;
          if ((v39 & 1) == 0)
          {
            v29 = sub_1C0CFD670(v29);
            *a4 = v29;
          }

          v31 = *a5;
          v40 = swift_isUniquelyReferenced_nonNull_native();
          *a5 = v31;
          if ((v40 & 1) == 0)
          {
            v31 = sub_1C0CFD670(v31);
            *a5 = v31;
          }

          v41 = *a6;
          *(v29 + 4) = *a6;
          *(v31 + 4) = v41;
          v42 = a9 >> 62;
          if ((a9 >> 62) <= 1)
          {
            if (v42 && __OFSUB__(HIDWORD(a8), a8))
            {
              goto LABEL_88;
            }

LABEL_75:
            v59 = a6[4];
            v78 = v15;
            v60 = ccapsic_client_check_intersect_response();
            *a7 = v60;
            if (v60)
            {
              v61 = v60;
              sub_1C0CF8DE0();
              swift_allocError();
              *v62 = v61;
              *(v62 + 4) = 0;
              swift_willThrow();
              goto LABEL_78;
            }

            v63 = sub_1C0CFC6C4();
            if (v79)
            {
LABEL_78:
              v65 = a3;
              v66 = v78;
              *a5 = v31;
              *a4 = v29;
            }

            else
            {
              v68 = *a10;
              v69 = a10[1];
              *a10 = v63;
              a10[1] = v64;
              sub_1C0CF448C(v68, v69);
              v70 = sub_1C0CFC6C4();
              v66 = v15;
              v74 = *a11;
              v75 = a11[1];
              *a11 = v70;
              a11[1] = v76;
              sub_1C0CF448C(v74, v75);
              *a5 = v31;
              *a4 = v29;
              v65 = a3;
            }

            *v65 = v66;
            sub_1C0CFE688(a6);
            sub_1C0CF448C(a8, a9);
            goto LABEL_80;
          }

LABEL_62:
          if (v42 == 2 && __OFSUB__(*(a8 + 24), *(a8 + 16)))
          {
            __break(1u);
          }

          goto LABEL_75;
        }

LABEL_85:
        __break(1u);
LABEL_86:
        v15 = sub_1C0CFD670(v15);
        *v14 = v15;
      }

      if (v32 != 2)
      {
        goto LABEL_75;
      }

      v42 = *(a8 + 24);
      if (!__OFSUB__(v42, *(a8 + 16)))
      {
        goto LABEL_75;
      }

      __break(1u);
      goto LABEL_62;
    }
  }

  else
  {
    sub_1C0D7814C();
  }

  __break(1u);
LABEL_91:
  result = sub_1C0D7814C();
LABEL_92:
  __break(1u);
  return result;
}

unint64_t sub_1C0CFE3C0()
{
  result = qword_1EBE6D358;
  if (!qword_1EBE6D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D358);
  }

  return result;
}

unint64_t sub_1C0CFE418()
{
  result = qword_1EBE6D360;
  if (!qword_1EBE6D360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE6D368, &qword_1C0D7BB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D360);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OPRF.Mode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OPRF.Mode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C0CFE5E8(uint64_t a1, int a2)
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

uint64_t sub_1C0CFE630(uint64_t result, int a2, int a3)
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

uint64_t PEC.PlaintextMatrixDims.init(rowCount:colCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (result < 1 || a2 <= 0)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v3 = 1;
    *(v3 + 4) = 1;
    return swift_willThrow();
  }

  else
  {
    *a3 = result;
    a3[1] = a2;
  }

  return result;
}

uint64_t sub_1C0CFE738@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v33 = *(a3 + 16);
  if (!v33)
  {

    sub_1C0CF8DE0();
    swift_allocError();
    *v22 = 1;
    *(v22 + 4) = 1;
    return swift_willThrow();
  }

  v29 = a1[1];
  v30 = *a1;
  v35 = *a2;
  v5 = *(*(a3 + 32) + 16);

  v7 = 0;
  v31 = v5;
  v32 = v4;
  while (v7 < *(v4 + 16))
  {
    v8 = *(v4 + 8 * v7++ + 32);
    v9 = *(v8 + 16);
    v10 = *(v9 + 41);
    v11 = *(v5 + 40);
    v12 = *(v5 + 41);
    v13 = 0xD00000000000001DLL;
    v14 = "bssa";
    switch(*(v9 + 40))
    {
      case 1:
        v13 = 0xD000000000000020;
        v14 = "insecure_n_8_logq_5x18_logt_5";
        break;
      case 2:
        v13 = 0xD00000000000001BLL;
        v14 = "ogq_4x60_logt_20";
        break;
      case 3:
        v13 = 0xD00000000000001CLL;
        v14 = "n_4096_logq_16_33_33_logt_4";
        break;
      case 4:
        v13 = 0xD00000000000001BLL;
        v14 = "n_4096_logq_27_28_28_logt_13";
        break;
      case 5:
        v13 = 0xD000000000000018;
        v14 = "n_4096_logq_27_28_28_logt_5";
        break;
      case 6:
        v13 = 0xD000000000000018;
        v14 = "n_8192_logq_3x55_logt_42";
        break;
      case 7:
        v13 = 0xD000000000000018;
        v14 = "n_8192_logq_3x55_logt_30";
        break;
      case 8:
        v13 = 0xD000000000000018;
        v14 = "n_8192_logq_3x55_logt_29";
        break;
      case 9:
        v13 = 0xD00000000000001CLL;
        v14 = "n_8192_logq_3x55_logt_24";
        break;
      case 0xA:
        v13 = 0xD00000000000001CLL;
        v14 = "n_8192_logq_29_60_60_logt_15";
        break;
      case 0xB:
        v13 = 0xD00000000000001CLL;
        v14 = "n_8192_logq_40_60_60_logt_26";
        break;
      case 0xC:
        v13 = 0xD00000000000001DLL;
        v14 = "n_8192_logq_28_60_60_logt_20";
        break;
      case 0xD:
        v13 = 0xD00000000000001BLL;
        v14 = "insecure_n_16_logq_60_logt_15";
        break;
      case 0xE:
        v13 = 0xD00000000000001CLL;
        v14 = "n_4096_logq_27_28_28_logt_6";
        break;
      case 0xF:
        v13 = 0xD00000000000001CLL;
        v14 = "n_4096_logq_27_28_28_logt_16";
        break;
      case 0x10:
        v13 = 0xD00000000000001BLL;
        v14 = "n_4096_logq_27_28_28_logt_17";
        break;
      default:
        break;
    }

    v15 = v14 | 0x8000000000000000;
    v16 = 0xD00000000000001DLL;
    v17 = "bssa";
    switch(v11)
    {
      case 1:
        v16 = 0xD000000000000020;
        v17 = "insecure_n_8_logq_5x18_logt_5";
        break;
      case 2:
        v16 = 0xD00000000000001BLL;
        v17 = "ogq_4x60_logt_20";
        break;
      case 3:
        v16 = 0xD00000000000001CLL;
        v17 = "n_4096_logq_16_33_33_logt_4";
        break;
      case 4:
        v16 = 0xD00000000000001BLL;
        v17 = "n_4096_logq_27_28_28_logt_13";
        break;
      case 5:
        v16 = 0xD000000000000018;
        v17 = "n_4096_logq_27_28_28_logt_5";
        break;
      case 6:
        v16 = 0xD000000000000018;
        v17 = "n_8192_logq_3x55_logt_42";
        break;
      case 7:
        v16 = 0xD000000000000018;
        v17 = "n_8192_logq_3x55_logt_30";
        break;
      case 8:
        v16 = 0xD000000000000018;
        v17 = "n_8192_logq_3x55_logt_29";
        break;
      case 9:
        v16 = 0xD00000000000001CLL;
        v17 = "n_8192_logq_3x55_logt_24";
        break;
      case 10:
        v16 = 0xD00000000000001CLL;
        v17 = "n_8192_logq_29_60_60_logt_15";
        break;
      case 11:
        v16 = 0xD00000000000001CLL;
        v17 = "n_8192_logq_40_60_60_logt_26";
        break;
      case 12:
        v16 = 0xD00000000000001DLL;
        v17 = "n_8192_logq_28_60_60_logt_20";
        break;
      case 13:
        v16 = 0xD00000000000001BLL;
        v17 = "insecure_n_16_logq_60_logt_15";
        break;
      case 14:
        v16 = 0xD00000000000001CLL;
        v17 = "n_4096_logq_27_28_28_logt_6";
        break;
      case 15:
        v16 = 0xD00000000000001CLL;
        v17 = "n_4096_logq_27_28_28_logt_16";
        break;
      case 16:
        v16 = 0xD00000000000001BLL;
        v17 = "n_4096_logq_27_28_28_logt_17";
        break;
      default:
        break;
    }

    if (v13 == v16 && v15 == (v17 | 0x8000000000000000))
    {
    }

    else
    {
      v18 = sub_1C0D78F3C();

      if ((v18 & 1) == 0)
      {

LABEL_57:

        sub_1C0CF8DE0();
        swift_allocError();
        *v26 = 5;
        goto LABEL_58;
      }
    }

    if (v10)
    {
      v19 = 5654338;
    }

    else
    {
      v19 = 5654082;
    }

    if (v12)
    {
      v20 = 5654338;
    }

    else
    {
      v20 = 5654082;
    }

    if (v19 == v20)
    {

      swift_bridgeObjectRelease_n();

      v5 = v31;
      v4 = v32;
    }

    else
    {
      v21 = sub_1C0D78F3C();

      swift_bridgeObjectRelease_n();

      v5 = v31;
      v4 = v32;
      if ((v21 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    if (v33 == v7)
    {
      v23 = *(v5 + 41);
      v37[0] = *(v5 + 40);
      v37[1] = v23;
      v34[0] = v30;
      v34[1] = v29;
      v24 = v35;
      v36 = v35;
      v25 = sub_1C0CFFC20(v37, v34, &v36);
      if (v28)
      {
      }

      if (*(v4 + 16) == v25)
      {

        *a4 = v30;
        *(a4 + 8) = v29;
        *(a4 + 16) = v24;
        *(a4 + 24) = v4;
        return result;
      }

      sub_1C0CF8DE0();
      swift_allocError();
      *v26 = 1;
LABEL_58:
      *(v26 + 4) = 1;
      swift_willThrow();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0CFED34@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v60 = result;
  v4 = v2[3];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v3;
    v7 = *v2;
    v8 = v2[1];
    v52 = *(v2 + 16);
    v67 = MEMORY[0x1E69E7CC0];
    result = sub_1C0CF7A90(0, v5, 0);
    if (*(v4 + 16))
    {
      v53 = v8;
      v51 = v7;
      v9 = v67;
      v62 = v4 + 32;
      result = cche_rng_seed_sizeof();
      v10 = 0;
      v61 = result;
      v54 = result << 32;
      v55 = result << 48;
      v58 = v5;
      v59 = v4;
      while (v10 < *(v4 + 16))
      {
        v63 = v6;
        v11 = *(v62 + 8 * v10);
        v12 = *(*v62 + 16);
        v13 = *(v12 + 32);
        v14 = cche_param_ctx_ciphertext_ctx_nmoduli();
        v15 = cche_ciphertext_sizeof();
        type metadata accessor for HE.ObjectStorage();
        inited = swift_initStackObject();
        inited[2] = v12;
        swift_retain_n();
        v17 = v11;

        result = swift_slowAlloc();
        v18 = result;
        inited[3] = result;
        inited[4] = result + v15;
        if (v61)
        {
          if (v61 < 15)
          {
            if (v61 < 0)
            {
              goto LABEL_43;
            }

            result = 0;
            v24 = v57 & 0xF00000000000000 | v55;
            v57 = v24;
          }

          else
          {
            v19 = sub_1C0D7818C();
            v20 = *(v19 + 48);
            v21 = *(v19 + 52);
            swift_allocObject();
            v22 = sub_1C0D7813C();
            v23 = v22;
            if (v61 >= 0x7FFFFFFF)
            {
              sub_1C0D7828C();
              result = swift_allocObject();
              *(result + 16) = 0;
              *(result + 24) = v61;
              v24 = v23 | 0x8000000000000000;
            }

            else
            {
              v24 = v22 | 0x4000000000000000;
              result = v54;
            }
          }
        }

        else
        {
          result = 0;
          v24 = 0xC000000000000000;
        }

        *&v66 = result;
        *(&v66 + 1) = v24;
        v25 = *(v17 + 24);
        if (!v25)
        {
          goto LABEL_46;
        }

        v26 = *(v60 + 24);
        if (!v26)
        {
          goto LABEL_47;
        }

        v27 = sub_1C0D51ED4(&v66, v18, v25, v12, v26, v14);
        v6 = v63;

        if (v27)
        {
          sub_1C0CF8DE0();
          swift_allocError();
          *v42 = v27;
          *(v42 + 4) = 0;
          swift_willThrow();
          swift_setDeallocating();

          MEMORY[0x1C68E4EB0](v18, -1, -1);

          sub_1C0CF448C(v66, *(&v66 + 1));
        }

        v28 = v66;
        sub_1C0CF6468(v66, *(&v66 + 1));
        sub_1C0CF448C(v28, *(&v28 + 1));
        result = cche_serialize_seeded_ciphertext_coeff_nbytes();
        if (result)
        {
          v29 = result;
          if (result <= 14)
          {
            if (result < 0)
            {
              goto LABEL_44;
            }

            result = 0;
            v34 = v56 & 0xF00000000000000 | (v29 << 48);
            v56 = v34;
          }

          else
          {
            v30 = sub_1C0D7818C();
            v31 = *(v30 + 48);
            v32 = *(v30 + 52);
            swift_allocObject();
            v33 = sub_1C0D7813C();
            if (v29 >= 0x7FFFFFFF)
            {
              sub_1C0D7828C();
              result = swift_allocObject();
              *(result + 16) = 0;
              *(result + 24) = v29;
              v34 = v33 | 0x8000000000000000;
            }

            else
            {
              result = v29 << 32;
              v34 = v33 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v34 = 0xC000000000000000;
        }

        *&v66 = result;
        *(&v66 + 1) = v34;
        v35 = sub_1C0D52488(&v66, inited);
        if (v35)
        {
          v43 = v35;
          sub_1C0CF8DE0();
          swift_allocError();
          *v44 = v43;
          *(v44 + 4) = 0;
          swift_willThrow();

          sub_1C0CF448C(v28, *(&v28 + 1));
          swift_setDeallocating();
          v46 = inited[2];
          v45 = inited[3];

          if (v45)
          {
            MEMORY[0x1C68E4EB0](v45, -1, -1);
          }

          sub_1C0CF448C(v66, *(&v66 + 1));
        }

        swift_setDeallocating();
        v36 = inited[2];
        v37 = inited[3];

        if (v37)
        {
          MEMORY[0x1C68E4EB0](v37, -1, -1);
        }

        v38 = v66;
        v67 = v9;
        v40 = *(v9 + 16);
        v39 = *(v9 + 24);
        if (v40 >= v39 >> 1)
        {
          v64 = v66;
          result = sub_1C0CF7A90((v39 > 1), v40 + 1, 1);
          v38 = v64;
          v9 = v67;
        }

        *(v9 + 16) = v40 + 1;
        v41 = v9 + 32 * v40;
        *(v41 + 32) = v38;
        ++v10;
        *(v41 + 48) = v28;
        v4 = v59;
        if (v58 == v10)
        {
          if (!*(v59 + 16))
          {
            goto LABEL_48;
          }

          v47 = *(*v62 + 16);
          v48 = *(v47 + 41);
          LOBYTE(v67) = *(v47 + 40);
          BYTE1(v67) = v48;
          *&v66 = v51;
          *(&v66 + 1) = v53;
          v65 = v52;
          result = sub_1C0CFFC20(&v67, &v66, &v65);
          if (v6)
          {
          }

          if (*(v9 + 16) == result)
          {
            *a2 = v51;
            *(a2 + 8) = v53;
            *(a2 + 16) = v52;
            *(a2 + 24) = v9;
          }

          else
          {

            sub_1C0CF8DE0();
            swift_allocError();
            *v49 = 1;
            *(v49 + 4) = 1;
            return swift_willThrow();
          }

          return result;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

LABEL_48:
  __break(1u);
  return result;
}

void sub_1C0CFF2F8()
{
  if (*(v0 + 16))
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v1 = 5;
    *(v1 + 4) = 1;
    swift_willThrow();
    return;
  }

  v2 = *(v0 + 24);
  if (!*(v2 + 16))
  {
    goto LABEL_92;
  }

  v4 = *v0;
  v3 = *(v0 + 8);
  v5 = *(*(v2 + 32) + 16);

  v46 = sub_1C0D1440C();

  v51 = v2 + 32;
  if (!*(v2 + 16))
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (!v4)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v46 == 0x8000000000000000 && v4 == -1)
  {
    goto LABEL_97;
  }

  v7 = v46 / v4;
  if (v46 / v4 + 0x4000000000000000 < 0)
  {
    goto LABEL_95;
  }

  v8 = v4 * v3;
  if ((v4 * v3) >> 64 != (v4 * v3) >> 63)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v9 = sub_1C0CF4C50(0, v8 & ~(v8 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v52 = v9;
  v50 = *(v2 + 16);
  if (v50)
  {
    v10 = 0;
    v48 = v4 * v7;
    v49 = 2 * v7;
    v45 = (v4 * v7) >> 64 != (v4 * v7) >> 63;
    v47 = v2;
    while (v10 < *(v2 + 16))
    {
      v11 = *(v51 + 8 * v10);
      v12 = *(*v51 + 16);
      v13 = *(v12 + 32);
      v14 = cche_param_ctx_polynomial_degree();
      if (v14)
      {

        v15 = sub_1C0D78C2C();
        *(v15 + 16) = v14;
        if (!*(v11 + 24))
        {
          goto LABEL_100;
        }
      }

      else
      {

        v15 = MEMORY[0x1E69E7CC0];
        if (!*(v11 + 24))
        {
          goto LABEL_100;
        }
      }

      v16 = *(v12 + 32);
      v17 = cche_decode_simd_int64();
      if (v17)
      {
        v33 = v17;
        sub_1C0CF8DE0();
        swift_allocError();
        *v34 = v33;
        *(v34 + 4) = 0;
        swift_willThrow();
        *(v15 + 16) = 0;

        goto LABEL_69;
      }

      v18 = *(v12 + 32);
      v19 = cche_param_ctx_polynomial_degree();
      if (v14 < v19)
      {
        goto LABEL_77;
      }

      *(v15 + 16) = v19;

      if (v49 <= 1)
      {
        v31 = *(v52 + 2) % v4;
        v21 = __OFSUB__(v4, v31);
        v28 = v4 - v31;
        if (v21)
        {
          goto LABEL_79;
        }

        if (v28 < 0)
        {
          goto LABEL_80;
        }

        v27 = 0;
        if (v28 >= *(v15 + 16))
        {
          v28 = *(v15 + 16);
        }
      }

      else
      {
        if (v45)
        {
          goto LABEL_78;
        }

        v20 = *(v52 + 2);
        v21 = __OFSUB__(v8, v20);
        v22 = v8 - v20;
        if (v21)
        {
          goto LABEL_81;
        }

        if (v22 >= v48)
        {
          v22 = v48;
        }

        if (v22 < 0)
        {
          goto LABEL_82;
        }

        if (*(v15 + 16) < v22)
        {
          goto LABEL_83;
        }

        v23 = (2 * v22) | 1;
        v24 = sub_1C0D78BFC();
        sub_1C0CF9810(v24, v15 + 32, 0, v23);
        v25 = *(v52 + 2);
        v21 = __OFSUB__(v8, v25);
        v26 = v8 - v25;
        if (v21)
        {
          goto LABEL_84;
        }

        if (v26 >= v48)
        {
          v26 = v48;
        }

        v27 = v46;
        v21 = __OFADD__(v46, v26);
        v28 = v46 + v26;
        if (v21)
        {
          goto LABEL_85;
        }

        if (v28 < v46)
        {
          goto LABEL_86;
        }

        if (v46 < 0)
        {
          goto LABEL_87;
        }

        v29 = *(v15 + 16);
        if (v29 < v46 || v29 < v28)
        {
          goto LABEL_88;
        }
      }

      ++v10;
      sub_1C0CF9810(v15, v15 + 32, v27, (2 * v28) | 1);

      v2 = v47;
      if (v50 == v10)
      {
        v32 = v52;
        goto LABEL_49;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v32 = v9;
LABEL_49:
  if (*(v32 + 2) == v8)
  {
    if (v4 < 0)
    {
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      return;
    }

    if (v3 < 0)
    {
      goto LABEL_99;
    }

    sub_1C0D78BFC();
    v35 = 0;
    v36 = 0;
    v37 = 32;
    v38 = v32;
    while (v36 < v4)
    {
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_90;
      }

      if (v3)
      {
        if ((v36 * v3) >> 64 != (v36 * v3) >> 63)
        {
          goto LABEL_91;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1C0CFD684(v38);
        }

        v40 = 0;
        v41 = *(v32 + 2);
        while (1)
        {
          v42 = v40 * v4;
          if ((v40 * v4) >> 64 != (v40 * v4) >> 63)
          {
            break;
          }

          v21 = __OFADD__(v42, v36);
          v43 = v42 + v36;
          if (v21)
          {
            goto LABEL_72;
          }

          if (v43 >= v41)
          {
            goto LABEL_73;
          }

          if (v35 < 0)
          {
            goto LABEL_74;
          }

          if ((v35 + v40) >= *(v38 + 2))
          {
            goto LABEL_75;
          }

          *&v38[8 * v40++ + v37] = *&v32[8 * v43 + 32];
          if (v3 == v40)
          {
            goto LABEL_53;
          }
        }

        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

LABEL_53:
      v35 += v3;
      v37 += 8 * v3;
      ++v36;
      if (v39 == v4)
      {
        goto LABEL_69;
      }
    }

    goto LABEL_89;
  }

  sub_1C0CF8DE0();
  swift_allocError();
  *v44 = 5;
  *(v44 + 4) = 1;
  swift_willThrow();
LABEL_69:
}

void sub_1C0CFF838()
{
  if (*(v0 + 16) != 1)
  {
    goto LABEL_48;
  }

  v2 = v0[3];
  if (!*(v2 + 16))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v3 = v1;
  v4 = *v0;
  v5 = v0[1];
  v49 = v2 + 32;
  v6 = *(*(v2 + 32) + 16);

  v7 = sub_1C0D1440C();

  v8 = sub_1C0D51C90(v5);
  if (!v8)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v9 = v8;
  if (v7 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_67;
  }

  v11 = sub_1C0D51C90(v5);
  v12 = v11 - v5;
  if (__OFSUB__(v11, v5))
  {
    goto LABEL_65;
  }

  v50 = v7;
  v13 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  v14 = sub_1C0CF4C50(0, v13 & ~(v13 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v51 = v14;
  v47 = *(v2 + 16);
  if (v47)
  {
    v15 = 0;
    v16 = v7 / v9;
    v46 = v2;
    while (v15 < *(v2 + 16))
    {
      v48 = v15;
      v17 = *(v49 + 8 * v15);
      v18 = *(*v49 + 16);
      v19 = *(v18 + 32);
      v20 = cche_param_ctx_polynomial_degree();
      swift_retain_n();
      swift_retain_n();
      v21 = sub_1C0D00C60(v20, v17, v18);
      if (v3)
      {

        return;
      }

      v22 = v21;

      if (v16 < 0)
      {
        goto LABEL_62;
      }

      if (v16)
      {
        v23 = 0;
        while (1)
        {
          v24 = v23 * v5;
          if ((v23 * v5) >> 64 != (v23 * v5) >> 63)
          {
            break;
          }

          v25 = v23 * v12;
          if ((v23 * v12) >> 64 != (v23 * v12) >> 63)
          {
            goto LABEL_53;
          }

          v26 = v24 + v25;
          if (__OFADD__(v24, v25))
          {
            goto LABEL_54;
          }

          v27 = *(v14 + 2);
          v28 = __OFSUB__(v13, v27);
          v29 = v13 - v27;
          if (v28)
          {
            goto LABEL_55;
          }

          if (v29 >= v5)
          {
            v29 = v5;
          }

          v28 = __OFADD__(v26, v29);
          v30 = v26 + v29;
          if (v28)
          {
            goto LABEL_56;
          }

          if (v30 < v26)
          {
            goto LABEL_57;
          }

          if (v26 < 0)
          {
            goto LABEL_58;
          }

          v31 = *(v22 + 16);
          if (v31 < v26 || v31 < v30)
          {
            goto LABEL_59;
          }

          v32 = (2 * v30) | 1;
          v33 = sub_1C0D78BFC();
          sub_1C0CF9810(v33, v22 + 32, v26, v32);
          v14 = v51;
          if (*(v51 + 2) == v13)
          {
LABEL_49:

            return;
          }

          if (v16 == ++v23)
          {
            v34 = 0;
            while (1)
            {
              v35 = v34 * v5;
              if ((v34 * v5) >> 64 != (v34 * v5) >> 63)
              {
                goto LABEL_52;
              }

              v28 = __OFADD__(v50, v35);
              v36 = v50 + v35;
              if (v28)
              {
                goto LABEL_60;
              }

              v37 = v34 * v12;
              if ((v34 * v12) >> 64 != (v34 * v12) >> 63)
              {
                goto LABEL_53;
              }

              v38 = v36 + v37;
              if (__OFADD__(v36, v37))
              {
                goto LABEL_54;
              }

              v39 = *(v14 + 2);
              v28 = __OFSUB__(v13, v39);
              v40 = v13 - v39;
              if (v28)
              {
                goto LABEL_55;
              }

              if (v40 >= v5)
              {
                v40 = v5;
              }

              v28 = __OFADD__(v38, v40);
              v41 = v38 + v40;
              if (v28)
              {
                goto LABEL_56;
              }

              if (v41 < v38)
              {
                goto LABEL_57;
              }

              if (v38 < 0)
              {
                goto LABEL_58;
              }

              v42 = *(v22 + 16);
              if (v42 < v38 || v42 < v41)
              {
                goto LABEL_59;
              }

              v43 = (2 * v41) | 1;
              v44 = sub_1C0D78BFC();
              sub_1C0CF9810(v44, v22 + 32, v38, v43);
              v14 = v51;
              if (*(v51 + 2) == v13)
              {
                goto LABEL_49;
              }

              if (v16 == ++v34)
              {
                goto LABEL_45;
              }
            }
          }
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        break;
      }

LABEL_45:

      v15 = v48 + 1;
      v2 = v46;
      v3 = 0;
      if (v48 + 1 == v47)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_46:
  if (*(v14 + 2) != v13)
  {

LABEL_48:
    sub_1C0CF8DE0();
    swift_allocError();
    *v45 = 5;
    *(v45 + 4) = 1;
    swift_willThrow();
  }
}

uint64_t sub_1C0CFFC20(char *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  v7 = dword_1C0D7BC14[v3];
  result = cche_encryption_params_polynomial_degree();
  v9 = result >> 1;
  if (v6)
  {
    if (v6 != 1)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v10 = 5;
      *(v10 + 4) = 1;
      return swift_willThrow();
    }

    result = sub_1C0D51C90(v5);
    if (result)
    {
      return sub_1C0D33418(2 * (v9 / result), v4);
    }

    __break(1u);
    goto LABEL_12;
  }

  if (!v4)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (v9 / v4 >= 1)
  {
    return sub_1C0D33418(2 * (v9 / v4), v5);
  }

  v11 = dword_1C0D7BC14[v3];
  v12 = cche_encryption_params_polynomial_degree();
  v13 = sub_1C0D33418(v12, v4);
  result = v5 * v13;
  if ((v5 * v13) >> 64 != (v5 * v13) >> 63)
  {
    goto LABEL_13;
  }

  return result;
}

char *sub_1C0CFFD38(uint64_t a1, uint64_t *a2, uint64_t a3, int64_t a4)
{
  v5 = v4;
  v8 = a1;
  v10 = *a2;
  v9 = a2[1];
  v11 = *(a1 + 32);
  LODWORD(v12) = cche_param_ctx_polynomial_degree();
  v13 = sub_1C0D1440C();
  v14 = *(v8 + 41);
  v62[0] = *(v8 + 40);
  v62[1] = v14;
  v59[0] = v10;
  v59[1] = v9;
  v61 = 0;
  v15 = sub_1C0CFFC20(v62, v59, &v61);
  if (v4)
  {
    return v5;
  }

  v53 = v13;
  v12 = v12;
  v16 = MEMORY[0x1E69E7CC0];
  v5 = sub_1C0CF4D60(0, v15 & ~(v15 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v58 = v12;
  v17 = sub_1C0CF4C50(0, v12, 0, v16);
  if (v9 < 0)
  {
    goto LABEL_99;
  }

  v19 = v17;
  v54 = v8;
  v60 = a4;
  if (v9)
  {
    if (v10 < 0)
    {
      goto LABEL_103;
    }

    v57 = 0;
    v55 = a3 + 32;
    v56 = v10;
    v51 = a3;
    v52 = v53 + 1;
    v20 = __OFADD__(v53, 1);
    v50 = v20;
    v21 = v17;
    while (1)
    {
      if (v10)
      {
        a4 = 0;
        v8 = *(v51 + 16);
        v19 = v21;
        while (1)
        {
          v18 = a4 * v9;
          if ((a4 * v9) >> 64 != (a4 * v9) >> 63)
          {
            break;
          }

          v22 = __OFADD__(v18, v57);
          v18 += v57;
          if (v22)
          {
            goto LABEL_94;
          }

          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_95;
          }

          if (v18 >= v8)
          {
            goto LABEL_96;
          }

          v23 = *(v55 + 8 * v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1C0CF4C50(0, *(v19 + 2) + 1, 1, v19);
          }

          v25 = *(v19 + 2);
          v24 = *(v19 + 3);
          v26 = v25 + 1;
          if (v25 >= v24 >> 1)
          {
            v19 = sub_1C0CF4C50((v24 > 1), v25 + 1, 1, v19);
          }

          *(v19 + 2) = v26;
          v12 = (v19 + 32);
          *&v19[8 * v25 + 32] = v23;
          if (v26 == v58)
          {
            v27 = cche_plaintext_sizeof();
            type metadata accessor for HE.ObjectStorage();
            v28 = swift_allocObject();
            v28[2] = v54;

            v29 = swift_slowAlloc();
            v28[3] = v29;
            v28[4] = v29 + v27;
            v18 = HIDWORD(*(v19 + 2));
            v10 = v56;
            if (v18)
            {
              goto LABEL_97;
            }

            if (v60)
            {
              v30 = cche_encode_simd_reduced_int64();
              if (v30)
              {
                goto LABEL_84;
              }
            }

            else
            {
              v30 = cche_encode_simd_int64();
              if (v30)
              {
                goto LABEL_84;
              }
            }

            v32 = *(v5 + 2);
            v31 = *(v5 + 3);
            if (v32 >= v31 >> 1)
            {
              v5 = sub_1C0CF4D60((v31 > 1), v32 + 1, 1, v5);
            }

            *(v5 + 2) = v32 + 1;
            *&v5[8 * v32 + 32] = v28;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v12 = *(v19 + 2);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_1C0CF4C50(0, v12, 1, v19);
              }

              if (v12)
              {
                v33 = &v19[8 * v12 + 32];
                v12 = *(v19 + 2) - v12;
                memmove(v19 + 32, v33, 8 * v12);
                *(v19 + 2) = v12;
              }
            }

            else
            {
              v12 = *(v19 + 3);
              if (v12 > 1)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE6D0F0, &qword_1C0D7B800);
                v12 = swift_allocObject();
                v34 = _swift_stdlib_malloc_size(v12);
                v35 = v34 - 32;
                if (v34 < 32)
                {
                  v35 = v34 - 25;
                }

                *(v12 + 16) = 0;
                *(v12 + 24) = 2 * (v35 >> 3);

                v19 = v12;
              }

              else
              {

                v19 = MEMORY[0x1E69E7CC0];
              }
            }
          }

          else
          {
            v10 = v56;
          }

          ++a4;
          v21 = v19;
          if (v10 == a4)
          {
            goto LABEL_41;
          }
        }

        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        v5 = sub_1C0CF4D60((v18 > 1), v12, 1, v5);
LABEL_90:
        *(v5 + 2) = v12;
        *&v5[8 * a4 + 32] = v8;
        return v5;
      }

LABEL_41:
      v8 = *(v21 + 16);
      v18 = v8 + v10;
      if (__OFADD__(v8, v10))
      {
        goto LABEL_98;
      }

      if (v8 >= v53)
      {
        break;
      }

      if (v50)
      {
        goto LABEL_100;
      }

      if (v52 > v58)
      {
        goto LABEL_101;
      }

      if (v18 < v52 || v18 > v58)
      {
        break;
      }

      v18 = v58 - v8;
      v36 = (v58 - v8) % v53;
      if (v36 < 0)
      {
        goto LABEL_104;
      }

      if (v36)
      {
        v12 = sub_1C0D78C2C();
        *(v12 + 16) = v36;
        bzero((v12 + 32), 8 * v36);
        v8 = *(v21 + 16);
        a4 = v8 + v36;
        if (__OFADD__(v8, v36))
        {
          goto LABEL_105;
        }
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
        v36 = *(MEMORY[0x1E69E7CC0] + 16);
        a4 = v8 + v36;
        if (__OFADD__(v8, v36))
        {
          goto LABEL_105;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && a4 <= *(v21 + 24) >> 1)
      {
        v19 = v21;
        if (*(v12 + 16))
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v8 <= a4)
        {
          v43 = a4;
        }

        else
        {
          v43 = v8;
        }

        v19 = sub_1C0CF4C50(isUniquelyReferenced_nonNull_native, v43, 1, v21);
        if (*(v12 + 16))
        {
LABEL_77:
          v18 = *(v19 + 2);
          if (((*(v19 + 3) >> 1) - v18) < v36)
          {
            goto LABEL_107;
          }

          memcpy(&v19[8 * v18 + 32], (v12 + 32), 8 * v36);

          if (v36)
          {
            v44 = *(v19 + 2);
            v22 = __OFADD__(v44, v36);
            v18 = v44 + v36;
            if (v22)
            {
              goto LABEL_108;
            }

            *(v19 + 2) = v18;
          }

LABEL_9:
          v21 = v19;
          goto LABEL_10;
        }
      }

      v21 = v19;
      if (v36)
      {
        goto LABEL_106;
      }

LABEL_10:
      if (++v57 == v9)
      {
        goto LABEL_86;
      }
    }

    if (v18 <= v58)
    {
      goto LABEL_10;
    }

    v12 = cche_plaintext_sizeof();
    type metadata accessor for HE.ObjectStorage();
    v37 = swift_allocObject();
    v37[2] = v54;

    v38 = swift_slowAlloc();
    v37[3] = v38;
    v37[4] = v38 + v12;
    v18 = HIDWORD(*(v21 + 16));
    if (v18)
    {
      goto LABEL_102;
    }

    if (v60)
    {
      v30 = cche_encode_simd_reduced_int64();
    }

    else
    {
      v30 = cche_encode_simd_int64();
    }

    if (v30)
    {
LABEL_84:
      v47 = v30;
      sub_1C0CF8DE0();
      swift_allocError();
      *v48 = v47;
      *(v48 + 4) = 0;
      swift_willThrow();

      return v5;
    }

    v40 = *(v5 + 2);
    v39 = *(v5 + 3);
    if (v40 >= v39 >> 1)
    {
      v5 = sub_1C0CF4D60((v39 > 1), v40 + 1, 1, v5);
    }

    *(v5 + 2) = v40 + 1;
    *&v5[8 * v40 + 32] = v37;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      v12 = *(v19 + 3);
      if (v12 > 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE6D0F0, &qword_1C0D7B800);
        v21 = swift_allocObject();
        v45 = _swift_stdlib_malloc_size(v21);
        v46 = v45 - 32;
        if (v45 < 32)
        {
          v46 = v45 - 25;
        }

        *(v21 + 16) = 0;
        *(v21 + 24) = 2 * (v46 >> 3);

        v19 = v21;
      }

      else
      {

        v21 = MEMORY[0x1E69E7CC0];
        v19 = MEMORY[0x1E69E7CC0];
      }

      goto LABEL_10;
    }

    v12 = *(v19 + 2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1C0CF4C50(0, v12, 1, v19);
    }

    if (v12)
    {
      v41 = &v19[8 * v12 + 32];
      v12 = *(v19 + 2) - v12;
      memmove(v19 + 32, v41, 8 * v12);
      *(v19 + 2) = v12;
    }

    goto LABEL_9;
  }

  v21 = v17;
LABEL_86:
  if (*(v21 + 16))
  {
    sub_1C0D14484(v21, v60 & 1, v59);

    v8 = v59[0];
    a4 = *(v5 + 2);
    v18 = *(v5 + 3);
    v12 = a4 + 1;
    if (a4 >= v18 >> 1)
    {
      goto LABEL_109;
    }

    goto LABEL_90;
  }

  return v5;
}

char *sub_1C0D00538(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v6 = v4;
  v73 = a4;
  v8 = *a2;
  v9 = a2[1];
  v62 = *(a1 + 32);
  v10 = cche_param_ctx_polynomial_degree();
  v11 = sub_1C0D1440C();
  if (v11 < v9)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v12 = 1;
    *(v12 + 4) = 1;
    swift_willThrow();
    return v5;
  }

  v13 = v11;
  v14 = *(a1 + 41);
  LOBYTE(v71) = *(a1 + 40);
  BYTE1(v71) = v14;
  v72[0] = v8;
  v72[1] = v9;
  v74 = 1;
  v15 = sub_1C0CFFC20(&v71, v72, &v74);
  v16 = v4;
  if (v4)
  {
    return v5;
  }

  v5 = sub_1C0CF4D60(0, v15 & ~(v15 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v18 = sub_1C0D51C90(v9);
  v67 = v9;
  v20 = v18 - v9;
  if (__OFSUB__(v18, v9))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v63 = v8;
  if (v20 < 0)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    v5 = sub_1C0CF4D60((v19 > 1), v20, 1, v5);
LABEL_85:

    *(v5 + 2) = v20;
    *&v5[8 * v16 + 32] = v6;

    return v5;
  }

  v21 = v10;
  if (v20)
  {
    v22 = sub_1C0D78C2C();
    *(v22 + 16) = v20;
    v68 = v22;
    bzero((v22 + 32), 8 * v20);
  }

  else
  {
    v68 = MEMORY[0x1E69E7CC0];
  }

  v23 = v9;
  v24 = sub_1C0CF4C50(0, v21, 0, MEMORY[0x1E69E7CC0]);
  v72[0] = v24;
  v19 = v63;
  if (v63 < 0)
  {
    goto LABEL_99;
  }

  v20 = v24;
  if (!v63)
  {

    v19 = *(v20 + 16);
    if (v19)
    {
      goto LABEL_70;
    }

    goto LABEL_76;
  }

  v61 = 0;
  if (v9 < 0)
  {
    goto LABEL_100;
  }

  v6 = 0;
  v25 = 0;
  v19 = a3;
  v16 = a3 + 32;
  v65 = v21;
  v66 = v13;
  do
  {
    v69 = v5;
    v70 = v25;
    if (v23)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1C0CF4C50(0, *(v20 + 16) + 1, 1, v20);
      }

      v32 = *(a3 + 16);
      v33 = v32 >= v6;
      v19 = v32 - v6;
      if (v33)
      {
        v34 = v19;
      }

      else
      {
        v34 = 0;
      }

      v5 = v23;
      while (v34)
      {
        v35 = *(v16 + 8 * v6);
        v37 = *(v20 + 16);
        v36 = *(v20 + 24);
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v20 = sub_1C0CF4C50((v36 > 1), v37 + 1, 1, v20);
        }

        *(v20 + 16) = v38;
        v19 = v20 + 8 * v37;
        *(v19 + 32) = v35;
        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_88;
        }

        ++v6;
        --v34;
        if (!--v5)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v38 = *(v20 + 16);
LABEL_35:
    v39 = *(v68 + 16);
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_89;
    }

    sub_1C0D78BFC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v40 > *(v20 + 24) >> 1)
    {
      if (v38 <= v40)
      {
        v42 = v38 + v39;
      }

      else
      {
        v42 = v38;
      }

      v20 = sub_1C0CF4C50(isUniquelyReferenced_nonNull_native, v42, 1, v20);
    }

    v23 = v67;
    v5 = v69;
    if (*(v68 + 16))
    {
      v19 = *(v20 + 16);
      if ((*(v20 + 24) >> 1) - v19 < v39)
      {
        goto LABEL_92;
      }

      memcpy((v20 + 8 * v19 + 32), (v68 + 32), 8 * v39);

      v19 = *(v20 + 16);
      if (v39)
      {
        v43 = __OFADD__(v19, v39);
        v19 += v39;
        v29 = v70;
        if (v43)
        {
          goto LABEL_95;
        }

        *(v20 + 16) = v19;
        goto LABEL_50;
      }
    }

    else
    {

      if (v39)
      {
        goto LABEL_90;
      }

      v19 = *(v20 + 16);
    }

    v29 = v70;
LABEL_50:
    v72[0] = v20;
    v21 = v65;
    v13 = v66;
    if (v66 > v19)
    {
      if (__OFADD__(v19, v67))
      {
        goto LABEL_93;
      }

      if (v66 < v19 + v67)
      {
        if (v66 - v19 < 0)
        {
          goto LABEL_96;
        }

        sub_1C0CF9924(v66 - v19, 0, v19);
        v29 = v70;
        v20 = v72[0];
        v19 = *(v72[0] + 16);
      }
    }

    v43 = __OFADD__(v19, v67);
    v19 += v67;
    if (v43)
    {
      goto LABEL_91;
    }

    if (v19 > v65)
    {
      v44 = cche_plaintext_sizeof();
      type metadata accessor for HE.ObjectStorage();
      v45 = swift_allocObject();
      v45[2] = a1;

      v46 = swift_slowAlloc();
      v45[3] = v46;
      v45[4] = v46 + v44;
      v19 = HIDWORD(*(v20 + 16));
      if (v19)
      {
        goto LABEL_94;
      }

      if (v73)
      {
        v47 = cche_encode_simd_reduced_int64();
      }

      else
      {
        v47 = cche_encode_simd_int64();
      }

      if (v47)
      {
        v59 = v47;
        sub_1C0CF8DE0();
        swift_allocError();
        *v60 = v59;
        *(v60 + 4) = 0;
        swift_willThrow();

        return v5;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v48 = *(v20 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1C0CF4C50(0, v48, 1, v20);
        }

        if (v48)
        {
          v49 = *(v20 + 16) - v48;
          memmove((v20 + 32), (v20 + 32 + 8 * v48), 8 * v49);
          *(v20 + 16) = v49;
        }
      }

      else if (*(v20 + 24) > 1uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE6D0F0, &qword_1C0D7B800);
        v26 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v26[2] = 0;
        v26[3] = 2 * (v28 >> 3);

        v20 = v26;
      }

      else
      {

        v20 = MEMORY[0x1E69E7CC0];
      }

      v29 = v70;
      v72[0] = v20;
      v31 = *(v69 + 2);
      v30 = *(v69 + 3);
      if (v31 >= v30 >> 1)
      {
        v50 = sub_1C0CF4D60((v30 > 1), v31 + 1, 1, v69);
        v29 = v70;
        v5 = v50;
      }

      *(v5 + 2) = v31 + 1;
      *&v5[8 * v31 + 32] = v45;
      v21 = v65;
      v13 = v66;
      v23 = v67;
    }

    v25 = v29 + 1;
    v19 = v63;
  }

  while (v25 != v63);
  while (1)
  {

    v16 = v61;
    v19 = *(v20 + 16);
    if (!v19)
    {
      break;
    }

LABEL_70:
    if (!v13)
    {
      goto LABEL_101;
    }

    v51 = v19 % v13;
    if (!(v19 % v13))
    {
      v53 = 0;
LABEL_78:
      v20 = v72;
      sub_1C0CF9924(v53, 0, v19);
      v54 = 0;
      v55 = v72[0];
      v56 = *(v72[0] + 16);
      if (v13 < v56)
      {
        v54 = v13;
        if (v13 < 0)
        {
          goto LABEL_103;
        }
      }

      sub_1C0D78BFC();
      v57 = v55;
      if (v56 < v21)
      {
        do
        {
          v58 = swift_unknownObjectRetain();
          sub_1C0CF9810(v58, v55 + 32, v54, (2 * v56) | 1);
          v57 = v72[0];
        }

        while (*(v72[0] + 16) < v21);
      }

      sub_1C0D14484(v57, v73 & 1, &v71);
      if (v16)
      {

        return v5;
      }

      v6 = v71;
      v16 = *(v5 + 2);
      v19 = *(v5 + 3);
      v20 = v16 + 1;
      if (v16 >= v19 >> 1)
      {
        goto LABEL_104;
      }

      goto LABEL_85;
    }

    v52 = sub_1C0D51C90(v19 % v13);
    v43 = __OFSUB__(v52, v51);
    v53 = v52 - v51;
    if (v43)
    {
      goto LABEL_102;
    }

    if ((v53 & 0x8000000000000000) == 0)
    {
      goto LABEL_78;
    }

    __break(1u);
  }

LABEL_76:

  return v5;
}

uint64_t sub_1C0D00C60(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  if (result)
  {
    result = sub_1C0D78C2C();
    *(result + 16) = v5;
    if (*(a2 + 24))
    {
      if (!HIDWORD(v5))
      {
        v6 = result;
LABEL_8:
        v7 = *(a3 + 32);
        v8 = cche_decode_simd_int64();
        if (v8)
        {
          v9 = v8;
          sub_1C0CF8DE0();
          swift_allocError();
          *v10 = v9;
          *(v10 + 4) = 0;
          swift_willThrow();
          *(v6 + 16) = 0;

          return v6;
        }

        result = cche_param_ctx_polynomial_degree();
        if (result <= v5)
        {
          *(v6 + 16) = result;
          return v6;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
    }
  }

  else if (*(a2 + 24))
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D00D6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for Proof();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0D00E68(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 64);
  v14 = *(v8 + 80);
  if (v12 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v13 + v14;
  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = *(*(v10 - 8) + 64) + 7;
  if (v16 >= a2)
  {
    goto LABEL_30;
  }

  v20 = (v19 & 0xFFFFFFFFFFFFFFF8) + ((v13 + (v17 & ~v14) + v18) & ~v18) + 8;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v16 + 1;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v27 = v25 - 1;
    if (v21)
    {
      v27 = 0;
      v28 = *a1;
    }

    else
    {
      v28 = 0;
    }

    return v16 + (v28 | v27) + 1;
  }

  if (v24)
  {
    v25 = *(a1 + v20);
    if (v25)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v9 >= v15)
  {
    v31 = *(v8 + 48);

    return v31(a1, v9, AssociatedTypeWitness);
  }

  else
  {
    v29 = (((a1 + v17) & ~v14) + v13 + v18) & ~v18;
    if (v12 < 0x7FFFFFFF)
    {
      v32 = *((v19 + v29) & 0xFFFFFFFFFFFFFFF8);
      if (v32 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      return (v32 + 1);
    }

    else
    {
      v30 = *(v11 + 48);

      return v30(v29);
    }
  }
}

void sub_1C0D011AC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = *(v10 + 64);
  v16 = *(v10 + 80);
  if (v14 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  if (v17 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v13 + 80) & 0xF8 | 7;
  v20 = *(*(v12 - 8) + 64) + 7;
  v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = ((v15 + ((v15 + v16) & ~v16) + v19) & ~v19) + v21;
  if (v22)
  {
    v23 = 2;
  }

  else
  {
    v23 = a3 - v18 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v18 < a3)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (a2 > v18)
  {
    if (v22)
    {
      v27 = 1;
    }

    else
    {
      v27 = a2 - v18;
    }

    if (v22)
    {
      v28 = ~v18 + a2;
      bzero(a1, ((v15 + ((v15 + v16) & ~v16) + v19) & ~v19) + v21);
      *a1 = v28;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        *(a1 + v22) = v27;
      }

      else
      {
        *(a1 + v22) = v27;
      }
    }

    else if (v26)
    {
      *(a1 + v22) = v27;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v22) = 0;
  }

  else if (v26)
  {
    *(a1 + v22) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v11 >= v17)
  {
    v31 = *(v10 + 56);

    v31(a1, a2, v11, AssociatedTypeWitness);
  }

  else
  {
    v29 = ((((a1 + v15 + v16) & ~v16) + v15 + v19) & ~v19);
    if (v17 >= a2)
    {
      if (v14 < 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v33 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v33 = (a2 - 1);
        }

        *((v29 + v20) & 0xFFFFFFFFFFFFFFF8) = v33;
      }

      else
      {
        v32 = *(v13 + 56);

        v32(v29, a2);
      }
    }

    else if ((v20 & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v30 = ~v17 + a2;
      bzero(v29, v21);
      *v29 = v30;
    }
  }
}

uint64_t sub_1C0D01560@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_1C0D428BC(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1C0D42858(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1C0D782DC();
    v15 = v14;
    result = sub_1C0CF448C(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C0D016A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3 - a2;
    if (!a2)
    {
      v3 = 0;
    }

    if ((v3 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C0D016DC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = a3 - a2;
    }

    else
    {
      v4 = 0;
    }

    result = sub_1C0D73074(0, v4, a2, a3);
    if (v3 && result < v3)
    {
      v3 = v4;
      if ((v4 & 0x8000000000000000) == 0)
      {
        return 0;
      }

      __break(1u);
    }

    if (v4 >= v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D01768(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D410, "Pi");
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = (MEMORY[0x1EEE9AC00])();
  v12 = &v17[-v11];
  v19 = a1;
  v20 = a2;
  if (!a3)
  {
    return result;
  }

  MEMORY[0x1EEE9AC00](result);
  *&v17[-32] = &v19;
  *&v17[-24] = a3;
  *&v17[-16] = a4;
  *&v17[-8] = a3;
  result = sub_1C0D044C8(sub_1C0D05310, &v17[-48], a1, a2);
  if ((result & 1) == 0)
  {
    return result;
  }

  v13 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_9;
    }

    v14 = *(v19 + 16);
  }

  else if (!v13)
  {
    goto LABEL_9;
  }

  sub_1C0CF6468(v19, v20);
LABEL_9:
  sub_1C0D7837C();
  sub_1C0D7836C();
  sub_1C0D05330(&qword_1ED9076D8, MEMORY[0x1E6969050]);
  result = sub_1C0D78D4C();
  v15 = 0;
  if (v18)
  {
LABEL_13:
    *&v12[*(v8 + 36)] = v15;
    return sub_1C0D05378(v12);
  }

  else
  {
    v16 = 0;
    while (1)
    {
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      *(a3 + v16) = v17[6];
      result = sub_1C0D78D4C();
      ++v16;
      if (v18 == 1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1C0D01960(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a5)
  {
    return result;
  }

  v7 = result;
  if (!a3)
  {
    v12 = sub_1C0D73074(0, result, 0, a4);
    result = sub_1C0D73074(v7, a2, 0, a4);
    if (!__OFADD__(v12, result))
    {
      if (result + v12 >= v12)
      {
        return result;
      }

LABEL_14:
      __break(1u);
      return result;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = sub_1C0D73074(0, result, a3, a4);
  result = sub_1C0D73074(v7, a2, a3, a4);
  if (__OFADD__(v10, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result + v10 < v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return memmove(a5, (a3 + v10), result);
}

uint64_t sub_1C0D01A58(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      v15[0] = a1;
      LOWORD(v15[1]) = a2;
      BYTE2(v15[1]) = BYTE2(a2);
      BYTE3(v15[1]) = BYTE3(a2);
      BYTE4(v15[1]) = BYTE4(a2);
      BYTE5(v15[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v11 = sub_1C0D04C40(v9, v10, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4, a5);
    sub_1C0CF448C(a4, a5);
    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v15, 0, 14);
LABEL_9:
  sub_1C0D02A7C(v15, a3, a4, a5, &v14);
  v11 = v5;
  sub_1C0CF448C(a4, a5);
  if (!v5)
  {
    v11 = v14;
  }

LABEL_11:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t CKSecretSharing.ShamirShare.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  v6 = "Private11SecureBytes7Backing";
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 >= 6)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 6)
      {
        goto LABEL_8;
      }

LABEL_13:
      v16 = 31;
      v17 = 0xD000000000000021;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (BYTE6(a2) < 6uLL)
  {
    goto LABEL_13;
  }

LABEL_8:
  result = sub_1C0D01E94(a1, a2);
  if ((result & 0x100) == 0)
  {
    if (result == 1)
    {
      v21 = 0;
      sub_1C0CF6468(a1, a2);
      sub_1C0D01F1C(1, a1, a2, v22);
      sub_1C0D01560(4, v22[0], v22[1], v23);
      v13 = *v23;
      sub_1C0D01768(v23[0], v23[1], &v21, v22);
      sub_1C0CF448C(v13, *(&v13 + 1));
      v14 = bswap32(v21);
      result = sub_1C0D01F1C(5, a1, a2, v23);
      v15 = *v23;
      *a3 = 1;
      *(a3 + 4) = v14;
      *(a3 + 8) = v15;
LABEL_16:
      v20 = *MEMORY[0x1E69E9840];
      return result;
    }

    v6 = "CKRawShamirSecretSharing.swift";
    v17 = 0xD00000000000002BLL;
    v16 = 35;
LABEL_15:
    v18 = v6 | 0x8000000000000000;
    sub_1C0D01E40();
    swift_allocError();
    *(v19 + 4) = 0;
    *(v19 + 8) = 1;
    *(v19 + 12) = 0;
    *(v19 + 16) = 256;
    *(v19 + 64) = v17;
    *(v19 + 72) = v18;
    *v19 = 10;
    *(v19 + 24) = v16;
    *(v19 + 32) = 0x293A5F2874696E69;
    *(v19 + 40) = 0xE800000000000000;
    *(v19 + 48) = 0xD00000000000006ELL;
    *(v19 + 56) = 0x80000001C0D7FE80;
    swift_willThrow();
    result = sub_1C0CF448C(a1, a2);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C0D01E40()
{
  result = qword_1EBE6D3F0;
  if (!qword_1EBE6D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D3F0);
  }

  return result;
}

uint64_t sub_1C0D01E94(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_1C0D782EC();
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t sub_1C0D01F1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_1C0D428BC(v10, v9, a2, a3);
    if (v6 && v11 < v6)
    {
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = sub_1C0D42858(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = sub_1C0D782DC();
    v17 = v16;
    result = sub_1C0CF448C(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

unint64_t sub_1C0D0206C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v5 = a3 - a2;
  if (a2)
  {
    v6 = a3 - a2;
  }

  else
  {
    v6 = 0;
  }

  result = sub_1C0D73074(0, v6, a2, a3);
  if (!v4)
  {
    if (!a2)
    {
      return 0;
    }

LABEL_12:
    if (v5 >= v4)
    {
      return v4;
    }

    goto LABEL_15;
  }

  if (result < v4)
  {
    v4 = v5;
    if (a2)
    {
      return v4;
    }

    return 0;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t CKSecretSharing.ShamirShare.serialize()()
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v15 = xmmword_1C0D7BAB0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D3F8, &qword_1C0D7BD40);
  v14 = sub_1C0D0225C();
  LOBYTE(v12[0]) = v1;
  LOBYTE(v11) = *__swift_project_boxed_opaque_existential_1(v12, v13);
  sub_1C0D782AC();
  __swift_destroy_boxed_opaque_existential_1(v12);
  v11 = bswap32(v2);
  v13 = MEMORY[0x1E69E6290];
  v14 = MEMORY[0x1E6969DF8];
  v12[0] = &v11;
  v12[1] = v12;
  v5 = __swift_project_boxed_opaque_existential_1(v12, MEMORY[0x1E69E6290]);
  v7 = *v5;
  v6 = v5[1];
  sub_1C0D782CC();
  __swift_destroy_boxed_opaque_existential_1(v12);
  sub_1C0D7834C();
  v8 = v15;
  sub_1C0CF6468(v15, *(&v15 + 1));
  sub_1C0CF448C(v8, *(&v8 + 1));
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

unint64_t sub_1C0D0225C()
{
  result = qword_1ED9076A0;
  if (!qword_1ED9076A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D3F8, &qword_1C0D7BD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9076A0);
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t static CKSecretSharing.ShamirShare.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    return sub_1C0D04660(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0D02380(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    return sub_1C0D04660(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

void *sub_1C0D023B0(uint64_t a1)
{
  v1[2] = a1;
  if ((a1 - 0x7FFFFFFF) >= 0xFFFFFFFF80000003)
  {
    ccss_sizeof_parameters_fix();
    v1[3] = swift_slowAlloc();
    v7 = ccss_shamir_parameters_init();
    if (!v7)
    {
      ccss_sizeof_share();
      v1[4] = swift_slowAlloc();
      v10 = v1[3];
      ccss_sizeof_generator();
      v1[5] = swift_slowAlloc();
      v12 = v1[3];
      v11 = v1[4];
      ccss_shamir_share_init();
      return v1;
    }

    MEMORY[0x1C68E4EB0](v1[3], -1, -1);
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000031, 0x80000001C0D804A0);
    v8 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v8);

    sub_1C0D01E40();
    swift_allocError();
    *(v4 + 12) = 0;
    *(v4 + 16) = 256;
    *(v4 + 4) = v7;
    *(v4 + 8) = 0;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0xE000000000000000;
    v5 = 3;
    v6 = 89;
  }

  else
  {
    sub_1C0D78DAC();

    v2 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v2);

    MEMORY[0x1C68E3B00](8236, 0xE200000000000000);
    v3 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v3);

    MEMORY[0x1C68E3B00](93, 0xE100000000000000);
    sub_1C0D01E40();
    swift_allocError();
    *(v4 + 4) = 0;
    v5 = 1;
    *(v4 + 8) = 1;
    *(v4 + 12) = 0;
    *(v4 + 16) = 256;
    *(v4 + 64) = 0xD000000000000016;
    *(v4 + 72) = 0x80000001C0D80500;
    v6 = 78;
  }

  *v4 = v5;
  *(v4 + 24) = v6;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x80000001C0D804E0;
  *(v4 + 48) = 0xD00000000000006ELL;
  *(v4 + 56) = 0x80000001C0D7FE80;
  swift_willThrow();
  _s32CKShamirShareSharedInternalStateCMa();
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t sub_1C0D0268C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = *(a3 + 24);
    v4 = *(a3 + 40);
    result = ccss_shamir_share_generator_deserialize();
    if (result)
    {
      v5 = result;
      sub_1C0D78DAC();
      MEMORY[0x1C68E3B00](0xD00000000000003DLL, 0x80000001C0D80460);
      v6 = sub_1C0D78F2C();
      MEMORY[0x1C68E3B00](v6);

      sub_1C0D01E40();
      swift_allocError();
      *(v7 + 12) = 0;
      *(v7 + 16) = 256;
      *(v7 + 4) = v5;
      *(v7 + 8) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0xE000000000000000;
      *v7 = 17;
      *(v7 + 24) = xmmword_1C0D7BC90;
      *(v7 + 40) = 0xE800000000000000;
      *(v7 + 48) = 0xD00000000000006ELL;
      *(v7 + 56) = 0x80000001C0D7FE80;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D027DC()
{
  MEMORY[0x1C68E4EB0](*(v0 + 24), -1, -1);
  MEMORY[0x1C68E4EB0](*(v0 + 32), -1, -1);
  memset_s(*(v0 + 40), 8uLL, 0, 8uLL);
  MEMORY[0x1C68E4EB0](*(v0 + 40), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t CKSecretSharing.ShamirShareGenerator.init(threshold:secret:supportedPrime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  _s32CKShamirShareSharedInternalStateCMa();
  v9 = swift_allocObject();
  sub_1C0D023B0(a1);
  if (v4)
  {
    return sub_1C0CF448C(a2, a3);
  }

  v19 = v9;
  sub_1C0CF6468(a2, a3);
  v11 = sub_1C0D01A58(a2, a3, &v19, a2, a3);
  v12 = v11;
  if (v11 == -120)
  {
    v13 = 0x80000001C0D7FF90;
    sub_1C0D01E40();
    swift_allocError();
    v15 = 0xD00000000000004BLL;
    v16 = 1;
    v17 = 152;
  }

  else
  {
    if (!v11)
    {
      result = sub_1C0CF448C(a2, a3);
      *a4 = v19;
      return result;
    }

    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000036, 0x80000001C0D7FF20);
    v18 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v18);

    v15 = 0;
    v13 = 0xE000000000000000;
    sub_1C0D01E40();
    swift_allocError();
    v16 = 3;
    v17 = 154;
  }

  *(v14 + 12) = 0;
  *(v14 + 16) = 256;
  *(v14 + 4) = v12;
  *(v14 + 8) = 0;
  *(v14 + 64) = v15;
  *(v14 + 72) = v13;
  *v14 = v16;
  *(v14 + 24) = v17;
  *(v14 + 32) = 0xD000000000000026;
  *(v14 + 40) = 0x80000001C0D7FF60;
  *(v14 + 48) = 0xD00000000000006ELL;
  *(v14 + 56) = 0x80000001C0D7FE80;
  swift_willThrow();
  sub_1C0CF448C(a2, a3);
}

uint64_t sub_1C0D02A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, _DWORD *a5@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = *(*a2 + 40);
  v10 = *(*a2 + 24);
  if (!ccrng())
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (!a1)
  {
    goto LABEL_14;
  }

  v11 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v11 == 2 && __OFSUB__(*(a3 + 24), *(a3 + 16)))
  {
    __break(1u);
LABEL_10:
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_11:
  result = ccss_shamir_share_generator_init_with_secrets_less_than_prime();
  *a5 = result;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t CKSecretSharing.ShamirShareGenerator.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1C0D04D04(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_1C0D02BC0(int a1)
{
  if (!a1)
  {
    sub_1C0D01E40();
    swift_allocError();
    *(v7 + 4) = 0;
    v8 = 1;
    *(v7 + 8) = 1;
    *(v7 + 12) = 0;
    *(v7 + 16) = 256;
    *(v7 + 64) = 0xD000000000000022;
    *(v7 + 72) = 0x80000001C0D802F0;
    v9 = 173;
    goto LABEL_5;
  }

  v2 = *v1;
  v4 = *(*v1 + 32);
  v3 = *(*v1 + 40);
  share = ccss_shamir_share_generator_generate_share();
  if (share)
  {
    v6 = share;
    sub_1C0D01E40();
    swift_allocError();
    *(v7 + 12) = 0;
    *(v7 + 16) = 256;
    *(v7 + 4) = v6;
    *(v7 + 8) = 0;
    *(v7 + 64) = 0xD000000000000041;
    *(v7 + 72) = 0x80000001C0D80350;
    v8 = 3;
    v9 = 177;
LABEL_5:
    *v7 = v8;
    *(v7 + 24) = v9;
    *(v7 + 32) = 0xD000000000000020;
    *(v7 + 40) = 0x80000001C0D80320;
    *(v7 + 48) = 0xD00000000000006ELL;
    *(v7 + 56) = 0x80000001C0D7FE80;
    return swift_willThrow();
  }

  return [objc_allocWithZone(MEMORY[0x1E6999658]) initWithParams:*(v2 + 24) share:v4];
}

void CKSecretSharing.ShamirShareGenerator.generateShare(shareIndex:)(int a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 - 1) > 0x7FFFFFFC)
  {
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000031, 0x80000001C0D7FFE0);
    v13 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v13);

    sub_1C0D01E40();
    swift_allocError();
    *(v14 + 4) = 0;
    *(v14 + 8) = 1;
    *(v14 + 12) = 0;
    *(v14 + 16) = 256;
    *(v14 + 64) = 0;
    *(v14 + 72) = 0xE000000000000000;
    *v14 = 1;
    *(v14 + 24) = xmmword_1C0D7BCA0;
    *(v14 + 40) = 0x80000001C0D80020;
    *(v14 + 48) = 0xD00000000000006ELL;
    *(v14 + 56) = 0x80000001C0D7FE80;
    swift_willThrow();
  }

  else
  {
    v15 = *v2;
    v5 = sub_1C0D02BC0(a1);
    if (!v3)
    {
      v6 = v5;
      v7 = [v5 x];
      v8 = [v6 y];
      if (v8)
      {
        v9 = v8;
        v10 = sub_1C0D7832C();
        v12 = v11;

        *a2 = 1;
        *(a2 + 4) = v7;
        *(a2 + 8) = v10;
        *(a2 + 16) = v12;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void CKSecretSharing.ShamirShareGenerator.generateShares(_:)(uint64_t a1)
{
  v26 = *v1;
  if (*(*v1 + 16) > a1)
  {
    sub_1C0D01E40();
    v3 = swift_allocError();
    *(v4 + 4) = 0;
    *(v4 + 8) = 1;
    *(v4 + 12) = 0;
    *(v4 + 16) = 256;
    *(v4 + 72) = 0xE000000000000000;
    *v4 = 5;
    v5 = xmmword_1C0D7BCC0;
    goto LABEL_5;
  }

  v6 = a1;
  if (a1 > 2147483646)
  {
    sub_1C0D01E40();
    v3 = swift_allocError();
    *(v4 + 4) = 0;
    *(v4 + 8) = 1;
    *(v4 + 12) = 0;
    *(v4 + 16) = 256;
    *(v4 + 72) = 0xE000000000000000;
    *v4 = 6;
    v5 = xmmword_1C0D7BCB0;
LABEL_5:
    *(v4 + 24) = v5;
    *(v4 + 40) = 0x80000001C0D800B0;
    *(v4 + 48) = 0xD00000000000006ELL;
    *(v4 + 56) = 0x80000001C0D7FE80;
    *(v4 + 64) = 0;
    v7 = v3;
    swift_willThrow();
LABEL_6:
    v30 = v7;
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D400, &qword_1C0D7BD48);
    if (swift_dynamicCast())
    {

      if (BYTE4(v27) == 1)
      {
        if (v27 == 1)
        {
          sub_1C0D01E40();
          swift_allocError();
          *(v9 + 4) = 0;
          *(v9 + 8) = 1;
          *(v9 + 12) = 0;
          *(v9 + 16) = 256;
          *(v9 + 64) = 0xD000000000000049;
          *(v9 + 72) = 0x80000001C0D800D0;
          *v9 = 1;
          *(v9 + 24) = xmmword_1C0D7BCE0;
          *(v9 + 40) = 0x80000001C0D800B0;
          *(v9 + 48) = 0xD00000000000006ELL;
          *(v9 + 56) = 0x80000001C0D7FE80;
        }

        else
        {
          sub_1C0CF8DE0();
          swift_allocError();
          *v24 = v27;
          *(v24 + 4) = 1;
        }
      }

      else
      {
        v28 = 0;
        *&v29 = 0xE000000000000000;
        sub_1C0D78DAC();
        MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D80040);
        sub_1C0D78E9C();
        MEMORY[0x1C68E3B00](0xD000000000000012, 0x80000001C0D80090);
        v21 = v28;
        v22 = v29;
        sub_1C0D01E40();
        swift_allocError();
        *(v23 + 12) = 0;
        *(v23 + 16) = 256;
        *(v23 + 4) = v27;
        *(v23 + 8) = 0;
        *(v23 + 64) = v21;
        *(v23 + 72) = v22;
        *v23 = 3;
        *(v23 + 24) = xmmword_1C0D7BCD0;
        *(v23 + 40) = 0x80000001C0D800B0;
        *(v23 + 48) = 0xD00000000000006ELL;
        *(v23 + 56) = 0x80000001C0D7FE80;
      }

      swift_willThrow();
    }

    return;
  }

  if (a1)
  {
    v10 = (a1 - 1) + 1;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C0CF7BE0(0, v10, 0);
    v11 = 0;
    v12 = v30;
    v13 = 1;
    while (!v11)
    {
      v27 = v26;
      CKSecretSharing.ShamirShareGenerator.generateShare(shareIndex:)(v13, &v28);
      if (v2)
      {
        v7 = v2;

        goto LABEL_6;
      }

      v14 = v28;
      v15 = HIDWORD(v28);
      v16 = v29;
      v30 = v12;
      v18 = v12[2];
      v17 = v12[3];
      if (v18 >= v17 >> 1)
      {
        v25 = v29;
        sub_1C0CF7BE0((v17 > 1), v18 + 1, 1);
        v16 = v25;
        v12 = v30;
      }

      v12[2] = v18 + 1;
      v19 = &v12[3 * v18];
      *(v19 + 32) = v14;
      *(v19 + 9) = v15;
      *(v19 + 5) = v16;
      v11 = v13 == v6;
      if (v13 == v6)
      {
        v13 = 0;
      }

      else if (__CFADD__(v13++, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (!--v10)
      {
        return;
      }
    }
  }

  else
  {
LABEL_28:
    __break(1u);
  }

  __break(1u);
}

uint64_t CKSecretSharing.ShamirShareGenerator.serializedData()()
{
  v2 = type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;

  sub_1C0D034C4(v7, v5);
  if (!v1)
  {
    sub_1C0D05330(qword_1EBE6CBC8, type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization);
    v2 = sub_1C0D784EC();
    sub_1C0D03EF4(v5 + 2);
    sub_1C0D05170(v5);
  }

  return v2;
}

uint64_t sub_1C0D034C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = sub_1C0D7825C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = xmmword_1C0D7BAB0;
  v9 = a2 + *(type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization(0) + 32);
  sub_1C0D783DC();
  v30 = 0;
  v10 = *(a1 + 40);
  if (ccss_sizeof_shamir_share_generator_serialization())
  {
    v11 = swift_slowAlloc();
    v12 = *(a1 + 40);
    v13 = ccss_shamir_share_generator_serialize();
    if (!v13)
    {
      v22 = v30;
      (*(v5 + 104))(v8, *MEMORY[0x1E6969000], v4);
      v23 = sub_1C0D04A08(v11, v22, v8);
      v25 = v24;
      *a2 = 1;
      v26 = *(a1 + 16);

      *(a2 + 8) = v26;
      result = sub_1C0CF448C(*(a2 + 16), *(a2 + 24));
      *(a2 + 16) = v23;
      *(a2 + 24) = v25;
      *(a2 + 4) = 1;
      goto LABEL_6;
    }

    v14 = v13;
    MEMORY[0x1C68E4EB0](v11, -1, -1);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000038, 0x80000001C0D802B0);
    v27[3] = v14;
    v15 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v15);

    v17 = v28;
    v16 = v29;
    sub_1C0D01E40();
    swift_allocError();
    *(v18 + 4) = 0;
    *(v18 + 8) = 1;
    *(v18 + 12) = 0;
    *(v18 + 16) = 256;
    v19 = 311;
  }

  else
  {
    v16 = 0x80000001C0D80270;
    sub_1C0D01E40();
    swift_allocError();
    *(v18 + 12) = 0;
    *(v18 + 16) = 256;
    *(v18 + 4) = -7;
    *(v18 + 8) = 0;
    v17 = 0xD00000000000003ALL;
    v19 = 303;
  }

  *(v18 + 64) = v17;
  *(v18 + 72) = v16;
  *v18 = 3;
  *(v18 + 24) = v19;
  *(v18 + 32) = 0x293A5F2874696E69;
  *(v18 + 40) = 0xE800000000000000;
  *(v18 + 48) = 0xD00000000000006ELL;
  *(v18 + 56) = 0x80000001C0D7FE80;
  swift_willThrow();

  result = sub_1C0D05170(a2);
LABEL_6:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void *CKSecretSharing.ShamirShareSecretReconstructor.init(threshold:supportedPrime:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  _s32CKShamirShareSharedInternalStateCMa();
  v5 = swift_allocObject();
  result = sub_1C0D023B0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_1C0D03850(unint64_t a1)
{
  v3 = *v1;
  v4 = *(v3 + 16);
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1C0D78ECC() < v4)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < v4)
  {
LABEL_3:
    sub_1C0D01E40();
    swift_allocError();
    *(v6 + 4) = 0;
    *(v6 + 8) = 1;
    *(v6 + 12) = 0;
    *(v6 + 16) = 256;
    *(v6 + 64) = 0xD00000000000002DLL;
    *(v6 + 72) = 0x80000001C0D80200;
    *v6 = 5;
    *(v6 + 24) = xmmword_1C0D7BD00;
    *(v6 + 40) = 0x80000001C0D801D0;
    *(v6 + 48) = 0xD00000000000006ELL;
    *(v6 + 56) = 0x80000001C0D7FE80;
    swift_willThrow();
    return;
  }

  v7 = *(v3 + 24);
  ccss_sizeof_share_bag();
  v8 = swift_slowAlloc();
  v9 = *(v3 + 24);
  ccss_shamir_share_bag_init();
  v10 = *(v3 + 16);
  if (v10 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!v5)
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v10)
    {
      v12 = *(v3 + 16);
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_23;
  }

  v14 = sub_1C0D78ECC();
  if ((sub_1C0D78ECC() & 0x8000000000000000) == 0)
  {
    if (v14 >= v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v14;
    }

    if (v14 < 0)
    {
      v15 = v10;
    }

    if (v10)
    {
      v13 = v15;
    }

    else
    {
      v13 = 0;
    }

    v11 = sub_1C0D78ECC();
LABEL_23:
    if (v11 < v13)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if ((a1 & 0xC000000000000001) != 0 && v13)
    {
      sub_1C0D052C4();
      sub_1C0D78BFC();
      v16 = 0;
      do
      {
        v17 = v16 + 1;
        sub_1C0D78DCC();
        v16 = v17;
      }

      while (v13 != v17);
      if (!v5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_1C0D78BFC();
      if (!v5)
      {
LABEL_29:
        v18 = 0;
        v19 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_32:
        swift_unknownObjectRetain();
        v23 = v13 - v18;
        if (v13 == v18)
        {
LABEL_40:
          swift_unknownObjectRelease_n();

          sub_1C0CF3E64(0x10uLL);

          MEMORY[0x1C68E4EB0](v8, -1, -1);
          return;
        }

        if (v13 <= v18)
        {
          v24 = v18;
        }

        else
        {
          v24 = v13;
        }

        v25 = v24 - v18;
        v26 = (v19 + 8 * v18);
        while (v25)
        {
          v27 = *v26;
          [v27 share];
          v28 = ccss_shamir_share_bag_add_share();
          if (v28)
          {
            v29 = v28;
            swift_unknownObjectRelease();
            sub_1C0D78DAC();
            MEMORY[0x1C68E3B00](0xD000000000000035, 0x80000001C0D80190);
            v30 = sub_1C0D78F2C();
            MEMORY[0x1C68E3B00](v30);

            sub_1C0D01E40();
            swift_allocError();
            *(v31 + 12) = 0;
            *(v31 + 16) = 256;
            *(v31 + 4) = v29;
            *(v31 + 8) = 0;
            *(v31 + 64) = 0;
            *(v31 + 72) = 0xE000000000000000;
            *v31 = 3;
            *(v31 + 24) = xmmword_1C0D7BCF0;
            *(v31 + 40) = 0x80000001C0D801D0;
            *(v31 + 48) = 0xD00000000000006ELL;
            *(v31 + 56) = 0x80000001C0D7FE80;
            swift_willThrow();
            swift_unknownObjectRelease();

            MEMORY[0x1C68E4EB0](v8, -1, -1);
            return;
          }

          --v25;
          ++v26;
          if (!--v23)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
        goto LABEL_43;
      }
    }

    sub_1C0D78EDC();
    v19 = v20;
    v18 = v21;
    v13 = v22 >> 1;
    goto LABEL_32;
  }

LABEL_45:
  __break(1u);
}

uint64_t CKSecretSharing.ShamirShareSecretReconstructor.recoverSecret(shares:)(uint64_t a1)
{
  v3 = v2;
  v5 = sub_1C0D7825C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v1;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v26 = v2;
    v27 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = v6;
    v29 = MEMORY[0x1E69E7CC0];
    v30 = v5;
    sub_1C0D78E3C();
    v13 = (a1 + 48);
    do
    {
      v14 = *(v13 - 3);
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(v10 + 24);
      v18 = objc_allocWithZone(MEMORY[0x1E6999658]);
      sub_1C0CF6468(v15, v16);
      sub_1C0CF6468(v15, v16);
      v19 = sub_1C0D7830C();
      [v18 initWithParams:v17 x:v14 y:v19];

      sub_1C0CF448C(v15, v16);
      sub_1C0CF448C(v15, v16);
      sub_1C0D78E0C();
      v20 = *(v29 + 16);
      sub_1C0D78E4C();
      sub_1C0D78E5C();
      sub_1C0D78E1C();
      v13 += 3;
      --v11;
    }

    while (v11);
    v6 = v28;
    v12 = v29;
    v5 = v30;
    v3 = v26;
    v9 = v27;
  }

  v29 = v10;
  sub_1C0D03850(v12);
  v22 = v21;

  if (!v3)
  {
    swift_beginAccess();
    v23 = *(v22 + 16);
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *v9 = sub_1C0D051CC;
    v9[1] = v24;
    (*(v6 + 104))(v9, *MEMORY[0x1E6969028], v5);

    v3 = sub_1C0D04A08(v22 + 32, v23, v9);
  }

  return v3;
}

uint64_t sub_1C0D03EF4(uint64_t *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      *(&__s + 7) = 0;
      *&__s = 0;
      result = memset_s(&__s, 0, 0, 0);
      goto LABEL_18;
    }

    v7 = *a1;

    sub_1C0CF448C(v3, v2);
    *&__s = v3;
    *(&__s + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v8 = *(&__s + 1);
    v9 = *(__s + 16);
    v10 = *(__s + 24);
    result = sub_1C0D7812C();
    if (!result)
    {
      __break(1u);
      goto LABEL_34;
    }

    v11 = result;
    v12 = sub_1C0D7815C();
    v13 = v9 - v12;
    if (!__OFSUB__(v9, v12))
    {
      v14 = __OFSUB__(v10, v9);
      v15 = v10 - v9;
      if (!v14)
      {
        v16 = sub_1C0D7814C();
        if (v16 >= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v16;
        }

        result = memset_s((v11 + v13), v17, 0, v17);
        *a1 = __s;
        a1[1] = v8 | 0x8000000000000000;
        goto LABEL_18;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v4)
  {
    sub_1C0CF448C(v3, v2);
    *&__s = v3;
    WORD4(__s) = v2;
    BYTE10(__s) = BYTE2(v2);
    BYTE11(__s) = BYTE3(v2);
    BYTE12(__s) = BYTE4(v2);
    BYTE13(__s) = BYTE5(v2);
    BYTE14(__s) = BYTE6(v2);
    result = memset_s(&__s, BYTE6(v2), 0, BYTE6(v2));
    v6 = DWORD2(__s) | ((WORD6(__s) | (BYTE14(__s) << 16)) << 32);
    *a1 = __s;
    a1[1] = v6;
LABEL_18:
    v20 = *MEMORY[0x1E69E9840];
    return result;
  }

  v18 = v2 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1C0CF448C(v3, v2);
  *a1 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  v19 = v3 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v19 < v3)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (sub_1C0D7812C() && __OFSUB__(v3, sub_1C0D7815C()))
    {
LABEL_32:
      __break(1u);
    }

    v21 = sub_1C0D7818C();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_1C0D7810C();

    v18 = v24;
  }

  if (v19 < v3)
  {
    goto LABEL_28;
  }

  result = sub_1C0D7812C();
  if (!result)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v25 = result;
  v26 = sub_1C0D7815C();
  v27 = v3 - v26;
  if (__OFSUB__(v3, v26))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v28 = sub_1C0D7814C();
  if (v28 >= v19 - v3)
  {
    v29 = v19 - v3;
  }

  else
  {
    v29 = v28;
  }

  v30 = memset_s((v25 + v27), v29, 0, v29);

  *a1 = v3;
  a1[1] = v18 | 0x4000000000000000;
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

uint64_t sub_1C0D04280(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      BYTE5(v11[1]) = BYTE5(a2);
      v6 = v11 + BYTE6(a2);
LABEL_9:
      sub_1C0D0268C(v11, v6, a3);
      goto LABEL_10;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_1C0D043E8(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_10:

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D043E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C0D7812C();
  v8 = result;
  if (result)
  {
    result = sub_1C0D7815C();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1C0D7814C();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1C0D0268C(v8, v14, a4);
}

uint64_t sub_1C0D044C8(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      *v11 = a3;
      *&v11[8] = a4;
      v11[10] = BYTE2(a4);
      v11[11] = BYTE3(a4);
      v11[12] = BYTE4(a4);
      v11[13] = BYTE5(a4);
      result = (a1)(&v12, v11, BYTE6(a4));
      if (v4)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_1C0D04960(v8, v9, a4 & 0x3FFFFFFFFFFFFFFFLL, a1);
    if (v4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_8;
  }

  memset(v11, 0, sizeof(v11));
  result = (a1)(&v12, v11, 0);
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_12:
  LOBYTE(result) = 0;
LABEL_13:
  result &= 1u;
LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D0461C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  a3(&var1, a1, v3);
  return 0;
}

uint64_t sub_1C0D04660(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1C0CF6468(a3, a4);
          return sub_1C0D6DE04(v13, a2, a3, a4) & 1;
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

void *sub_1C0D047EC(void *result, void *a2)
{
  if (*result)
  {
    v3 = result[1] - *result;
    result = ccss_shamir_share_bag_recover_secret();
    if (result)
    {
      v4 = result;
      sub_1C0D78DAC();
      MEMORY[0x1C68E3B00](0xD00000000000003ALL, 0x80000001C0D80230);
      v5 = sub_1C0D78F2C();
      MEMORY[0x1C68E3B00](v5);

      sub_1C0D01E40();
      swift_allocError();
      *(v6 + 12) = 0;
      *(v6 + 16) = 256;
      *(v6 + 4) = v4;
      *(v6 + 8) = 0;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0xE000000000000000;
      *v6 = 3;
      *(v6 + 24) = xmmword_1C0D7BD10;
      *(v6 + 40) = 0x80000001C0D801D0;
      *(v6 + 48) = 0xD00000000000006ELL;
      *(v6 + 56) = 0x80000001C0D7FE80;
      return swift_willThrow();
    }

    else
    {
      *a2 = 16;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D04960(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_1C0D7812C();
  v8 = result;
  if (result)
  {
    result = sub_1C0D7815C();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1C0D7814C();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_1C0D0461C(v8, v14, a4) & 1;
}

uint64_t sub_1C0D04A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C0D7825C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C0D7824C();
  if (a2)
  {
    v11 = sub_1C0D7818C();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = sub_1C0D7810C();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E6969010])
    {
      v15 = sub_1C0D7817C();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_1C0D54938(v14, a2);
  }

  else
  {
    v17 = sub_1C0D7824C();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

uint64_t sub_1C0D04C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  result = sub_1C0D7812C();
  v13 = result;
  if (result)
  {
    result = sub_1C0D7815C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v13 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C0D7814C();
  result = sub_1C0D02A7C(v13, a4, a5, a6, &v14);
  if (!v6)
  {
    return v14;
  }

  return result;
}

unint64_t sub_1C0D04D04(uint64_t a1, unint64_t a2)
{
  v5 = sub_1C0D7840C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_1C0CF6468(a1, a2);
  sub_1C0D783FC();
  sub_1C0D05330(qword_1EBE6CBC8, type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization);
  v11 = v7;
  sub_1C0D784DC();
  if (!v2)
  {
    if (*(v10 + 1) == 1)
    {
      v12 = MEMORY[0x1E69E7CC0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = v12;
      *&v28 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C0CF7BC0(0, *(v12 + 16) + 1, 1);
        v14 = v28;
      }

      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_1C0CF7BC0((v15 > 1), v16 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v17;
    }

    else if (!*(MEMORY[0x1E69E7CC0] + 16))
    {

      v11 = 0x80000001C0D803E0;
      sub_1C0D01E40();
      swift_allocError();
      *(v25 + 4) = 0;
      *(v25 + 8) = 1;
      *(v25 + 12) = 0;
      *(v25 + 16) = 256;
      *(v25 + 64) = 0xD000000000000078;
      *(v25 + 72) = 0x80000001C0D803E0;
      *v25 = 17;
      *(v25 + 24) = xmmword_1C0D7BD20;
      *(v25 + 40) = 0xE800000000000000;
      *(v25 + 48) = 0xD00000000000006ELL;
      *(v25 + 56) = 0x80000001C0D7FE80;
      goto LABEL_14;
    }

    v18 = *v10;
    if (*v10 == 1)
    {
      v19 = *(v10 + 2);
      _s32CKShamirShareSharedInternalStateCMa();
      v11 = swift_allocObject();
      sub_1C0D023B0(v19);
      v20 = *(v10 + 2);
      v21 = *(v10 + 3);
      swift_retain_n();
      sub_1C0D04280(v20, v21, v11);

      sub_1C0D03EF4(v10 + 2);
      sub_1C0CF448C(a1, a2);
      sub_1C0D05170(v10);
      return v11;
    }

    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000037, 0x80000001C0D803A0);
    v27[3] = v18;
    v22 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v22);

    MEMORY[0x1C68E3B00](46, 0xE100000000000000);
    v23 = *(&v28 + 1);
    v11 = v28;
    sub_1C0D01E40();
    swift_allocError();
    *(v24 + 4) = 0;
    *(v24 + 8) = 1;
    *(v24 + 12) = 0;
    *(v24 + 16) = 256;
    *(v24 + 64) = v11;
    *(v24 + 72) = v23;
    *v24 = 18;
    *(v24 + 24) = xmmword_1C0D7BD30;
    *(v24 + 40) = 0xE800000000000000;
    *(v24 + 48) = 0xD00000000000006ELL;
    *(v24 + 56) = 0x80000001C0D7FE80;
LABEL_14:
    swift_willThrow();
    sub_1C0D03EF4(v10 + 2);
    sub_1C0CF448C(a1, a2);
    sub_1C0D05170(v10);
    return v11;
  }

  sub_1C0CF448C(a1, a2);
  return v11;
}

uint64_t sub_1C0D05170(uint64_t a1)
{
  v2 = type metadata accessor for CryptoKitSecretSharing_ShamirShareGeneratorSerialization(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_1C0D051F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C0D05244(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1C0D052C4()
{
  result = qword_1EBE6D408;
  if (!qword_1EBE6D408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE6D408);
  }

  return result;
}

void *sub_1C0D05310(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

uint64_t sub_1C0D05330(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C0D05378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D410, "Pi");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0D053E8(unint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x8000000000000000) != 0 || (v4 = a2 - 1, a2 < 1))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v5 = a1;
  if (a1 <= 1)
  {
    v5 = 1;
  }

  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    goto LABEL_69;
  }

  v8 = ceil(log2(v7) * 0.125);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v9 = v8;
  if (v8 > a2)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v44 = sub_1C0D0F990(a2);
  v45 = v10;
  sub_1C0D42424(&v44, 0);
  v11 = a2 - v9;
  if (__OFSUB__(a2, v9))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v11 >= a2)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  v13 = v44;
  v12 = v45;
  v14 = v9 - 1;
  v42 = v4;
  while (1)
  {
    v15 = v4 - v11;
    if (__OFSUB__(v4, v11))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
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
      goto LABEL_68;
    }

    if ((v15 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_57;
    }

    v16 = 8 * v15;
    if ((v16 - 65) < 0xFFFFFFFFFFFFFF7FLL)
    {
LABEL_17:
      LOBYTE(v17) = 0;
      goto LABEL_21;
    }

    if (v16 < 0)
    {
      if (v16 == -64)
      {
        goto LABEL_17;
      }

      v17 = a1 << (-v16 & 0x38);
    }

    else
    {
      if (v16 == 64)
      {
        goto LABEL_17;
      }

      v17 = a1 >> (v16 & 0x38);
    }

LABEL_21:
    v18 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      break;
    }

    if (v18)
    {
      if (v11 >= v13 >> 32 || v11 < v13)
      {
        goto LABEL_61;
      }

      v22 = v12 & 0x3FFFFFFFFFFFFFFFLL;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (sub_1C0D7812C() && __OFSUB__(v13, sub_1C0D7815C()))
        {
          goto LABEL_66;
        }

        v23 = sub_1C0D7818C();
        v24 = *(v23 + 48);
        v25 = *(v23 + 52);
        swift_allocObject();
        v26 = sub_1C0D7810C();

        v22 = v26;
        v4 = v42;
      }

      sub_1C0D780FC();
      v27 = sub_1C0D7812C();
      if (!v27)
      {
        goto LABEL_77;
      }

      v28 = v27;
      v29 = sub_1C0D7815C();
      if (__OFSUB__(v11, v29))
      {
        goto LABEL_63;
      }

      *(v28 + v11 - v29) = v17;
      v12 = v22 | 0x4000000000000000;
      if (!v14)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v44 = v13;
      LOWORD(v45) = v12;
      BYTE2(v45) = BYTE2(v12);
      BYTE3(v45) = BYTE3(v12);
      BYTE4(v45) = BYTE4(v12);
      BYTE5(v45) = BYTE5(v12);
      BYTE6(v45) = BYTE6(v12);
      if (v11 >= BYTE6(v12))
      {
        goto LABEL_59;
      }

      *(&v44 + v11) = v17;
      v13 = v44;
      v2 = v2 & 0xF00000000000000 | v45 | ((WORD2(v45) | (BYTE6(v45) << 16)) << 32);
      v12 = v2;
      if (!v14)
      {
        goto LABEL_55;
      }
    }

LABEL_13:
    --v14;
    v6 = __OFADD__(v11++, 1);
    if (v6)
    {
      goto LABEL_58;
    }
  }

  if (v18 != 2)
  {
    goto LABEL_76;
  }

  if (v11 < *(v13 + 16))
  {
    goto LABEL_60;
  }

  if (v11 >= *(v13 + 24))
  {
    goto LABEL_62;
  }

  v19 = v12 & 0x3FFFFFFFFFFFFFFFLL;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = *(v13 + 16);
    v21 = *(v13 + 24);
    if (sub_1C0D7812C())
    {
      if (__OFSUB__(v20, sub_1C0D7815C()))
      {
        goto LABEL_67;
      }

      if (__OFSUB__(v21, v20))
      {
        goto LABEL_65;
      }
    }

    else if (__OFSUB__(v21, v20))
    {
      goto LABEL_65;
    }

    v30 = sub_1C0D7818C();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    v33 = sub_1C0D7810C();

    v19 = v33;
    v4 = v42;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = *(v13 + 16);
    v35 = *(v13 + 24);
    sub_1C0D7828C();
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = v35;
    v4 = v42;

    v13 = v36;
  }

  sub_1C0D780FC();
  v37 = sub_1C0D7812C();
  if (!v37)
  {
    goto LABEL_78;
  }

  v38 = v37;
  v39 = sub_1C0D7815C();
  if (__OFSUB__(v11, v39))
  {
    goto LABEL_64;
  }

  *(v38 + v11 - v39) = v17;
  v12 = v19 | 0x8000000000000000;
  if (v14)
  {
    goto LABEL_13;
  }

LABEL_55:
  v40 = *MEMORY[0x1E69E9840];
  return v13;
}