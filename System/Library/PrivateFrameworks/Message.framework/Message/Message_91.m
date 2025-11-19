Swift::Void __swiftcall ByteBuffer.moveWriterIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 12);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else if (*(v1 + 16) - (*(v1 + 22) | (*(v1 + 20) << 8)) >= v4)
  {
    *(v1 + 12) = v4;
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall ByteBuffer.moveWriterIndex(to:)(Swift::Int to)
{
  if (*(v1 + 16) - (*(v1 + 22) | (*(v1 + 20) << 8)) < to)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = to;
  }
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ByteBuffer.copyBytes(at:to:length:)(Swift::Int at, Swift::Int to, Swift::Int length)
{
  if (length < 0)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v4 = length;
  if (!length)
  {
    return v4;
  }

  if (*(v3 + 2) > at)
  {
LABEL_6:
    v6 = 1;
LABEL_8:
    sub_1B0D51D24();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
    return v4;
  }

  if (__OFADD__(at, length))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *(v3 + 3);
  if (at + length > v5)
  {
    goto LABEL_6;
  }

  v9 = at;
  v10 = *v3;
  at = swift_isUniquelyReferenced_nonNull_native();
  if (at)
  {
LABEL_15:
    if (!HIDWORD(v4))
    {
      v12 = to;
      ByteBuffer._ensureAvailableCapacity(_:at:)(v4, to);
      ByteBuffer._copyStorageAndRebaseIfNeeded()();
      v13 = *v3;
      v14 = *(v3 + 4);
      v15 = *(v3 + 10);
      v16 = *(v3 + 22);
      swift_beginAccess();
      v17 = v16 | (v15 << 8);
      v18 = *(v13 + 24) + v17;
      v19 = sub_1B04391FC(v12, v18, v18 + (v14 - v17));
      if (v20)
      {
        memmove((v20 + v19), (v18 + v9), v4);
      }

      return v4;
    }

    goto LABEL_19;
  }

  if (!__OFADD__(to, v4))
  {
    if (v5 <= to + v4)
    {
      LODWORD(v5) = to + v4;
    }

    v11 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v5, v11 & 1);
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return at;
}

uint64_t ByteBuffer.CopyBytesError.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

uint64_t ByteBuffer.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  v6 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
  return sub_1B0E46C38();
}

uint64_t ByteBuffer.hashValue.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  swift_beginAccess();
  v5 = *(a1 + 24) + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3));
  sub_1B0E46C38();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D51BA0()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 10);
  v5 = *(v0 + 22);
  sub_1B0E46C28();
  swift_beginAccess();
  v6 = *(v1 + 24) + (v5 | (v4 << 8));
  sub_1B0E46C38();
  return sub_1B0E46CB8();
}

uint64_t ByteBuffer.modifyIfUniquelyOwned<A>(_:)@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    result = a1(v3);
    if (v4)
    {
      return result;
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(*(a2 - 8) + 56))(a3, v10, 1, a2);
}

void sub_1B0D51CD4(const void *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (a1)
  {
    v7 = a1 + a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v3 + 16);
  ByteBuffer._setBytes(_:at:)(a1, v7, v6);
  *a3 = v9;
}

unint64_t sub_1B0D51D24()
{
  result = qword_1EB6E70C8;
  if (!qword_1EB6E70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E70C8);
  }

  return result;
}

unint64_t sub_1B0D51D7C()
{
  result = qword_1EB6E70D0;
  if (!qword_1EB6E70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E70D0);
  }

  return result;
}

unint64_t sub_1B0D51DD4()
{
  result = qword_1EB6E70D8;
  if (!qword_1EB6E70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E70D8);
  }

  return result;
}

_DWORD *__swift_memcpy7_4(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _ByteBufferSlice(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 7))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ByteBufferSlice(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
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

  *(result + 7) = v3;
  return result;
}

__n128 __swift_memcpy23_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_1B0D51EC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 23))
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

uint64_t sub_1B0D51F08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 22) = 0;
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 23) = 1;
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

    *(result + 23) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0D51FA8()
{
  result = qword_1EB6E70E0;
  if (!qword_1EB6E70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E70E0);
  }

  return result;
}

uint64_t ByteBuffer.setInteger<A>(_:at:endianness:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v12 = sub_1B0E46558();
  }

  else
  {
    v12 = sub_1B0E46578();
  }

  MEMORY[0x1EEE9AC00](v12);
  v17 = a2;
  v16 = 803;
  sub_1B0D528BC(v10, sub_1B0D52874, &v18[-4], a5, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v13);
  (*(v7 + 8))(v10, a5);
  result = v18[2];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ByteBuffer.writeInteger<A>(_:endianness:as:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = ByteBuffer.setInteger<A>(_:at:endianness:as:)(a1, *(v4 + 12), a2 & 1, a4, a4);
  v6 = *(v4 + 12);
  v7 = __CFADD__(v6, result);
  v8 = v6 + result;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 12) = v8;
  }

  return result;
}

uint64_t ByteBuffer._toEndianness<A>(value:endianness:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_1B0E46558();
  }

  else
  {
    return sub_1B0E46578();
  }
}

uint64_t ByteBuffer.readInteger<A>(endianness:as:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = sub_1B0E45D88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *v2;
  v11 = *(v2 + 2);
  ByteBuffer.getInteger<A>(at:endianness:as:)(v11, v11 | (*(v2 + 3) << 32), *(v2 + 4) | (*(v2 + 10) << 32) | (*(v2 + 22) << 48), a1, &v18 - v8);
  v12 = *(a1 - 8);
  if ((*(v12 + 48))(v9, 1, a1) == 1)
  {
    (*(v6 + 8))(v9, v5);
    v13 = 1;
    return (*(v12 + 56))(a2, v13, 1, a1);
  }

  result = (*(v12 + 32))(a2, v9, a1);
  v15 = *(v12 + 64);
  v16 = __CFADD__(v11, v15);
  v17 = v11 + v15;
  if (!v16)
  {
    v13 = 0;
    *(v2 + 2) = v17;
    return (*(v12 + 56))(a2, v13, 1, a1);
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.getInteger<A>(at:endianness:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  if (a1 < a2 || v8 < 0 || (HIDWORD(a2) - a2) - v8 < a1 - a2)
  {
    v9 = *(v7 + 56);

    return v9(a5, 1, 1, a4);
  }

  else
  {
    v41 = v5;
    v42 = v6;
    v11 = MEMORY[0x1E69E7508];
    if (a4 == MEMORY[0x1E69E7508])
    {
      v40 = v7;
      MEMORY[0x1EEE9AC00](a1);
      v36 = v11;
      v37 = v26;
      v38 = v27;
      v39 = v28;
      v31 = v30;
      ByteBuffer.withUnsafeReadableBytes<A>(_:)(sub_1B0D529F8, v35, v32, v33, v29 & 0xFFFFFFFFFFFFFFLL);
      return (*(v40 + 56))(v31, 0, 1, v11);
    }

    else
    {
      MEMORY[0x1EEE9AC00](HIDWORD(a3));
      v34[2] = v12;
      v34[3] = v13;
      v35[0] = v14;
      v35[1] = v15;
      v36 = v16;
      v37 = __PAIR64__(v18, v17);
      LODWORD(v38) = v19;
      WORD2(v38) = v20;
      BYTE6(v38) = v21;
      HIBYTE(v38) = v22 & 1;
      v23 = v17;
      v24 = v16;
      v25 = v19;
      sub_1B0E45D88();
      return ByteBuffer.withUnsafeReadableBytes<A>(_:)(sub_1B0D529B0, v34, v24, v23, v25 & 0xFFFFFFFFFFFFFFLL);
    }
  }
}

uint64_t sub_1B0D525E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v23 = a4;
  v24 = a5;
  v21 = a2;
  v22 = a3;
  v25 = a6;
  v31 = *MEMORY[0x1E69E9840];
  v9 = *(*(*(a8 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  sub_1B0E46B38();
  sub_1B0E46A38();
  v27 = a1;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  sub_1B0D528BC(v16, sub_1B0D53534, v26, a7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v17);
  v18 = v25;
  if (v24)
  {
    sub_1B0E46558();
  }

  else
  {
    sub_1B0E46578();
  }

  (*(v12 + 8))(v16, a7);
  result = (*(v12 + 56))(v18, 0, 1, a7);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B0D52874(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 24);
  v6 = *(v3 + 16);
  ByteBuffer._setBytes(_:at:)(a1, a2, v5);
  *a3 = v7;
}

uint64_t sub_1B0D528BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t sub_1B0D529B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = *(v3 + 64) | (*(v3 + 68) << 32) | (*(v3 + 70) << 48);
  return sub_1B0D525E0(a1, a2, *(v3 + 32), *(v3 + 40), *(v3 + 71), a3, *(v3 + 16), *(v3 + 24));
}

uint64_t sub_1B0D529F8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(a1 + *(v1 + 32));
  return swift_dynamicCast();
}

uint64_t FixedWidthInteger.nextPowerOf2()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 8);
  v44 = v7[3];
  v45 = a2;
  v8 = *(v44 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v22 = sub_1B0E45FB8();
  v46 = a3;
  if ((v22 & 1) == 0)
  {
    v23 = v13;
    v24 = sub_1B0E45FB8();
    v25 = sub_1B0E45FA8();
    if (v24)
    {
      if (v25 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        sub_1B0E46B38();
        sub_1B0E46A38();
        v26 = *(v7[4] + 8);
        v27 = sub_1B0E44918();
        v13 = v23;
        (*(v23 + 8))(v21, a1);
        if ((v27 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_3;
      }
    }

    else if (v25 < 64)
    {
      v13 = v23;
      if (!sub_1B0E45F98())
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    v47 = 0;
    sub_1B03948EC();
    sub_1B0E45F78();
    v36 = *(v7[2] + 8);
    v37 = sub_1B0E44A28();
    v13 = v23;
    (*(v23 + 8))(v21, a1);
    if ((v37 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    swift_getAssociatedConformanceWitness();
    sub_1B0E46B38();
    return sub_1B0E46A38();
  }

  if (sub_1B0E45FA8() >= 64)
  {
    v47 = 0;
    sub_1B03948EC();
    sub_1B0E45F78();
    v28 = *(v7[2] + 8);
    v29 = sub_1B0E44A28();
    (*(v13 + 8))(v21, a1);
    if ((v29 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_3:
  if (!sub_1B0E45F98())
  {
    goto LABEL_16;
  }

LABEL_10:
  v38 = v7;
  swift_getAssociatedConformanceWitness();
  v40 = v4;
  sub_1B0E46B38();
  sub_1B0E46A38();
  v39 = sub_1B0E46548();
  sub_1B0E46B38();
  v30 = v41;
  sub_1B0E46A38();
  v31 = *(v44 + 8);
  v32 = v42;
  sub_1B0E465E8();
  v33 = *(v13 + 8);
  v33(v30, a1);
  v34 = sub_1B0E46568();
  result = (v33)(v32, a1);
  if (__OFSUB__(v39, v34))
  {
    __break(1u);
  }

  else
  {
    v47 = v39 - v34;
    sub_1B03948EC();
    sub_1B0E45F88();
    return (v33)(v21, a1);
  }

  return result;
}

uint64_t FixedWidthInteger.previousPowerOf2()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a2;
  v21[2] = a3;
  v4 = *(a2 + 8);
  v5 = *(v4[3] + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1B0E45FB8())
  {
    if (sub_1B0E45FA8() >= 64)
    {
LABEL_13:
      v22 = 0;
      sub_1B03948EC();
      sub_1B0E45F78();
      v19 = *(v4[2] + 8);
      v20 = sub_1B0E44A28();
      (*(v8 + 8))(v12, a1);
      if (v20)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v13 = sub_1B0E45FB8();
    v14 = sub_1B0E45FA8();
    if (v13)
    {
      if (v14 > 64)
      {
        goto LABEL_13;
      }

      swift_getAssociatedConformanceWitness();
      sub_1B0E46B38();
      sub_1B0E46A38();
      v15 = *(v4[4] + 8);
      v16 = sub_1B0E44918();
      (*(v8 + 8))(v12, a1);
      if ((v16 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (v14 >= 64)
    {
      goto LABEL_13;
    }
  }

  if (!sub_1B0E45F98())
  {
LABEL_14:
    swift_getAssociatedConformanceWitness();
    sub_1B0E46B38();
    return sub_1B0E46A38();
  }

LABEL_10:
  swift_getAssociatedConformanceWitness();
  sub_1B0E46B38();
  sub_1B0E46A38();
  result = sub_1B0E46548();
  v18 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    result = sub_1B0E46568();
    if (!__OFSUB__(v18, result))
    {
      v22 = v18 - result;
      sub_1B03948EC();
      sub_1B0E45F88();
      return (*(v8 + 8))(v12, a1);
    }
  }

  __break(1u);
  return result;
}

char *Endianness.host.unsafeMutableAddressor()
{
  if (qword_1EB6E6DA8 != -1)
  {
    swift_once();
  }

  return &static Endianness.host;
}

uint64_t static Endianness.host.getter()
{
  if (qword_1EB6E6DA8 != -1)
  {
    swift_once();
  }

  return static Endianness.host;
}

uint64_t Endianness.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D534D0()
{
  result = qword_1EB6E70E8;
  if (!qword_1EB6E70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E70E8);
  }

  return result;
}

void *sub_1B0D53534(void *result)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = (v2 + v1[4]);
  }

  else
  {
    v3 = 0;
  }

  if (result && v3)
  {
    if (v2)
    {
      v4 = v2 + v1[5];
    }

    else
    {
      v4 = 0;
    }

    return memmove(result, v3, v4 - v3);
  }

  return result;
}

uint64_t ByteBuffer.readableBytesView.getter@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = HIDWORD(a2);
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
  }

  else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= v4)
  {
    *a4 = result;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3;
    *(a4 + 20) = WORD2(a3);
    *(a4 + 22) = BYTE6(a3);
    *(a4 + 24) = a2;
    *(a4 + 32) = v4;
  }

  __break(1u);
  return result;
}

uint64_t ByteBufferView._buffer.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4) | (*(v0 + 10) << 32) | (*(v0 + 22) << 48);
}

uint64_t ByteBufferView._buffer.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);
  v10 = *v3;

  *v3 = a1;
  *(v3 + 2) = v5;
  *(v3 + 3) = v7;
  *(v3 + 4) = v4;
  *(v3 + 10) = v8;
  *(v3 + 22) = v9;
  return result;
}

uint64_t ByteBufferView._range.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ByteBufferView._range.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ByteBufferView.init(_:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = HIDWORD(a2);
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
  }

  else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= v4)
  {
    *a4 = result;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3;
    *(a4 + 20) = WORD2(a3);
    *(a4 + 22) = BYTE6(a3);
    *(a4 + 24) = a2;
    *(a4 + 32) = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D53704(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  result = swift_beginAccess();
  v8 = a1[3];
  v9 = a1[4];
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
  }

  else if (v9 == v8)
  {
    return 0;
  }

  else
  {
    v10 = (*(v4 + 24) + (v6 | (v5 << 8)) + v8);
    v11 = ~v8 + v9;
    do
    {
      v12 = *v10++;
      result = v12 == a2;
    }

    while (v12 != a2 && v11-- != 0);
  }

  return result;
}

uint64_t ByteBufferView.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 20);
  v9 = *(v3 + 22);
  v11[2] = a3;
  v11[3] = a1;
  v11[4] = a2;
  return ByteBuffer.withVeryUnsafeBytes<A>(_:)(sub_1B0D56690, v11, v5, v6, v7 | (v8 << 32) | (v9 << 48));
}

Swift::Int __swiftcall ByteBufferView.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBufferView.subscript.getter(uint64_t result)
{
  if (v1[3] > result || v1[4] <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  v4 = *(v1 + 2);
  if (result < v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result - v4 < (*(v1 + 3) - v4))
  {
    v5 = *v1;
    v6 = *(v1 + 10);
    v7 = *(v1 + 22);
    swift_beginAccess();
    return *(*(v5 + 24) + (v7 | (v6 << 8)) + v3);
  }

LABEL_10:
  __break(1u);
  return result;
}

char *ByteBufferView.subscript.setter(char a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (v2[3] > a2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = a2;
  if (v2[4] <= a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v13 = a1;
  v4 = a2 + 1;
  if (a2 == -1)
  {
    goto LABEL_12;
  }

  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = *(v2 + 4);
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v9, v10 & 1);
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v3);
  result = ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(&v13, &v14, v3);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void (*ByteBufferView.subscript.modify(void (**a1)(uint64_t a1), uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v6 = result;
  *a1 = result;
  *(result + 3) = a2;
  *(result + 4) = v2;
  if (v2[3] > a2 || v2[4] <= a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(v2 + 2);
  if (a2 < v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a2 - v7 < (*(v2 + 3) - v7))
  {
    v8 = *v2;
    v9 = *(v2 + 10);
    v10 = *(v2 + 22);
    swift_beginAccess();
    *(v6 + 40) = *(*(v8 + 24) + (v10 | (v9 << 8)) + a2);
    return sub_1B0D53A9C;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1B0D53A9C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  ByteBufferView.subscript.setter(*(*a1 + 40), *(*a1 + 24));

  free(v1);
}

uint64_t ByteBufferView.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0 || (v6 = *(v3 + 16), v7 = *(v3 + 20), v8 = *(v3 + 22), v6 - (v8 | (v7 << 8)) < a2))
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v11 = *v3;
    result = sub_1B0D56C9C(v3, v10);
    *a3 = v11;
    *(a3 + 16) = v6;
    *(a3 + 20) = v7;
    *(a3 + 22) = v8;
    *(a3 + 24) = v9;
    *(a3 + 32) = a2;
  }

  return result;
}

uint64_t ByteBufferView.subscript.setter(uint64_t *a1, uint64_t a2, Swift::Int at)
{
  sub_1B0D53BB8(a2, at, a1);

  return sub_1B04394F4(a1);
}

char *sub_1B0D53BB8(uint64_t a1, Swift::Int at, uint64_t *a3)
{
  v4 = v3[3];
  if (v4 > a1)
  {
    __break(1u);
    goto LABEL_51;
  }

  v5 = v3[4];
  if (v5 < at)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v8 = a3[3];
  v7 = a3[4];
  v9 = v7 - v8;
  v10 = __OFSUB__(v7, v8);
  v11 = at - a1;
  if (__OFSUB__(at, a1))
  {
    goto LABEL_52;
  }

  if (v9 == v11)
  {
    v12 = *a3;
    v13 = *(a3 + 10);
    v14 = *(a3 + 22);
    swift_beginAccess();
    if (!v10)
    {
      v15 = a1 + v9;
      if (!__CFADD__(a1, v9))
      {
        v16 = *(v12 + 24);
        v17 = *v3;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = *(v3 + 4);
          v19 = v15 >= v18;
          v20 = v15 - v18;
          if (v19)
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }

          v22 = sub_1B03904C0();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v21, v22 & 1);
        }

        if (v9 <= 0xFFFFFFFFLL)
        {
          ByteBuffer._ensureAvailableCapacity(_:at:)(v9, a1);
          return ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v16 + (v14 | (v13 << 8)) + v8), v16 + (v14 | (v13 << 8)) + v8 + v9, a1);
        }

        goto LABEL_55;
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v9 >= v11)
  {
    if (!__OFADD__(a1, v9))
    {
      v40 = *(v3 + 3);
      v37 = __OFSUB__(v40, at);
      v41 = v40 - at;
      if (!v37)
      {
        ByteBuffer.copyBytes(at:to:length:)(at, a1 + v9, v41);
        if (v43)
        {
LABEL_74:
          swift_unexpectedError();
          __break(1u);
          goto LABEL_75;
        }

        v44 = *a3;
        v61 = *(a3 + 10);
        v45 = *(a3 + 22);
        swift_beginAccess();
        if (!v10)
        {
          atb = v45;
          v46 = a1 + v9;
          if (!__CFADD__(a1, v9))
          {
            v47 = *(v44 + 24);
            v48 = *v3;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = *(v3 + 4);
              v19 = v46 >= v49;
              v50 = v46 - v49;
              if (v19)
              {
                v51 = v50;
              }

              else
              {
                v51 = 0;
              }

              v52 = sub_1B03904C0();
              ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v51, v52 & 1);
            }

            if (v9 <= 0xFFFFFFFFLL)
            {
              ByteBuffer._ensureAvailableCapacity(_:at:)(v9, a1);
              result = ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v47 + (atb | (v61 << 8)) + v8), v47 + (atb | (v61 << 8)) + v8 + v9, a1);
              v53 = v9 - v11;
              if (!__OFSUB__(v9, v11))
              {
                v54 = *(v3 + 3);
                v19 = __CFADD__(v54, v53);
                v55 = v54 + v53;
                if (!v19)
                {
                  if (*(v3 + 4) - (*(v3 + 22) | (*(v3 + 10) << 8)) >= v55)
                  {
                    *(v3 + 3) = v55;
                    v37 = __OFADD__(v5, v53);
                    v56 = v5 + v53;
                    if (!v37)
                    {
                      if (v56 >= v4)
                      {
                        v3[3] = v4;
                        v3[4] = v56;
                        return result;
                      }

                      goto LABEL_73;
                    }

LABEL_72:
                    __break(1u);
LABEL_73:
                    __break(1u);
                    goto LABEL_74;
                  }

LABEL_71:
                  __break(1u);
                  goto LABEL_72;
                }

                goto LABEL_69;
              }

              goto LABEL_67;
            }

            goto LABEL_65;
          }

          goto LABEL_63;
        }

        goto LABEL_61;
      }

      goto LABEL_59;
    }

    goto LABEL_57;
  }

  v24 = *a3;
  v25 = *(a3 + 10);
  v60 = *(a3 + 22);
  swift_beginAccess();
  if (v10)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v57 = v25;
  v26 = a1 + v9;
  if (__CFADD__(a1, v9))
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v27 = *(v24 + 24);
  v28 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = *(v3 + 4);
    v19 = v26 >= v29;
    v30 = v26 - v29;
    if (v19)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v31, v32 & 1);
  }

  if (v9 > 0xFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(v9, a1);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v27 + (v60 | (v57 << 8)) + v8), v27 + (v60 | (v57 << 8)) + v8 + v9, a1);
  if (__OFADD__(a1, v9))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v33 = *(v3 + 3);
  if (__OFSUB__(v33, at))
  {
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
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  ByteBuffer.copyBytes(at:to:length:)(at, a1 + v9, v33 - at);
  if (!v34)
  {
    v35 = v11 - v9;
    if (!__OFSUB__(v11, v9))
    {
      v36 = *(v3 + 3);
      v37 = __OFSUB__(v36, v35);
      v38 = v36 - v35;
      if (!v37)
      {
        if (*(v3 + 4) - (*(v3 + 22) | (*(v3 + 10) << 8)) >= v38)
        {
          *(v3 + 3) = v38;
          result = sub_1B0D55730(v35, v4, v5);
          v3[3] = result;
          v3[4] = v39;
          return result;
        }

        goto LABEL_70;
      }

      goto LABEL_68;
    }

    goto LABEL_66;
  }

LABEL_75:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B0D53F80(uint64_t a1, Swift::Int at, uint64_t a3)
{
  v4 = *(v3 + 24);
  if (v4 > a1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = *(v3 + 32);
  if (v5 < at)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = at - a1;
  if (__OFSUB__(at, a1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v7 != 1)
  {
    if (v7 <= 1)
    {
      if (!__OFADD__(a1, 1))
      {
        v14 = *(v3 + 12);
        v15 = __OFSUB__(v14, at);
        v16 = v14 - at;
        if (!v15)
        {
          ByteBuffer.copyBytes(at:to:length:)(at, a1 + 1, v16);
          if (v18)
          {
LABEL_37:
            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

          result = sub_1B0D4F474(a3, a1);
          v19 = 1 - v7;
          if (!__OFSUB__(1, v7))
          {
            v20 = *(v3 + 12);
            v21 = __CFADD__(v20, v19);
            v22 = v20 + v19;
            if (!v21)
            {
              if (*(v3 + 16) - (*(v3 + 22) | (*(v3 + 20) << 8)) >= v22)
              {
                *(v3 + 12) = v22;
                v15 = __OFADD__(v5, v19);
                v23 = v5 + v19;
                if (!v15)
                {
                  if (v23 >= v4)
                  {
                    *(v3 + 24) = v4;
                    *(v3 + 32) = v23;
                    return result;
                  }

                  goto LABEL_35;
                }

LABEL_34:
                __break(1u);
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      goto LABEL_27;
    }

    sub_1B0D4F474(a3, a1);
    if (!__OFADD__(a1, 1))
    {
      v10 = *(v3 + 12);
      if (!__OFSUB__(v10, at))
      {
        ByteBuffer.copyBytes(at:to:length:)(at, a1 + 1, v10 - at);
        if (v11)
        {
LABEL_36:
          swift_unexpectedError();
          __break(1u);
          goto LABEL_37;
        }

        v12 = *(v3 + 12) - (v7 - 1);
        if (*(v3 + 16) - (*(v3 + 22) | (*(v3 + 20) << 8)) >= v12)
        {
          *(v3 + 12) = v12;
          result = sub_1B0D55730(v7 - 1, v4, v5);
          *(v3 + 24) = result;
          *(v3 + 32) = v13;
          return result;
        }

        goto LABEL_30;
      }

      goto LABEL_28;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  return sub_1B0D4F474(a3, a1);
}

uint64_t sub_1B0D5418C(Swift::Int to, Swift::Int at)
{
  v3 = *(v2 + 24);
  if (v3 > to)
  {
    __break(1u);
    goto LABEL_22;
  }

  v5 = *(v2 + 32);
  if (v5 < at)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = at - to;
  if (__OFSUB__(at, to))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v7)
  {
    if (v7 <= 0)
    {
      v13 = *(v2 + 12);
      if (!__OFSUB__(v13, at))
      {
        ByteBuffer.copyBytes(at:to:length:)(at, to, v13 - at);
        if (v14)
        {
LABEL_33:
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        result = sub_1B0D4EC3C(to);
        v15 = -v7;
        if (!__OFSUB__(0, v7))
        {
          v16 = *(v2 + 12);
          v17 = __CFADD__(v16, v15);
          v18 = v16 - v7;
          if (!v17)
          {
            if (*(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8)) >= v18)
            {
              *(v2 + 12) = v18;
              v19 = __OFADD__(v5, v15);
              v20 = v5 - v7;
              if (!v19)
              {
                if (v20 >= v3)
                {
                  *(v2 + 24) = v3;
                  *(v2 + 32) = v20;
                  return result;
                }

                goto LABEL_31;
              }

LABEL_30:
              __break(1u);
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_1B0D4EC3C(to);
    v8 = *(v2 + 12);
    if (!__OFSUB__(v8, at))
    {
      ByteBuffer.copyBytes(at:to:length:)(at, to, v8 - at);
      if (v9)
      {
LABEL_32:
        swift_unexpectedError();
        __break(1u);
        goto LABEL_33;
      }

      v10 = *(v2 + 12) - v7;
      if (*(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8)) >= v10)
      {
        *(v2 + 12) = v10;
        result = sub_1B0D55730(v7, v3, v5);
        *(v2 + 24) = result;
        *(v2 + 32) = v12;
        return result;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return sub_1B0D4EC3C(to);
}

uint64_t ByteBufferView.replaceSubrange<A>(_:with:)(uint64_t a1, Swift::Int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 24);
  if (v6 > a1)
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = *(v5 + 32);
  if (v8 < a2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = sub_1B0E45698();
  v14 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v13 != v14)
  {
    if (sub_1B0E45698() >= v14)
    {
      v27 = sub_1B0E45698();
      if (!__OFADD__(a1, v27))
      {
        v28 = *(v5 + 12);
        if (!__OFSUB__(v28, a2))
        {
          ByteBuffer.copyBytes(at:to:length:)(a2, a1 + v27, v28 - a2);
          if (v29)
          {
LABEL_41:
            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

          v30 = *(a5 + 8);
          ByteBuffer.setBytes<A>(_:at:)(a3, a1, a4);
          result = sub_1B0E45698();
          v31 = result - v14;
          if (!__OFSUB__(result, v14))
          {
            v32 = *(v5 + 12);
            v33 = __CFADD__(v32, v31);
            v34 = v32 + v31;
            if (!v33)
            {
              if (*(v5 + 16) - (*(v5 + 22) | (*(v5 + 20) << 8)) >= v34)
              {
                *(v5 + 12) = v34;
                v22 = __OFADD__(v8, v31);
                v35 = v8 + v31;
                if (!v22)
                {
                  if (v35 >= v6)
                  {
                    *(v5 + 24) = v6;
                    *(v5 + 32) = v35;
                    return result;
                  }

                  goto LABEL_39;
                }

LABEL_38:
                __break(1u);
LABEL_39:
                __break(1u);
                goto LABEL_40;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            goto LABEL_35;
          }

          goto LABEL_33;
        }

        goto LABEL_31;
      }

      goto LABEL_29;
    }

    v17 = *(a5 + 8);
    ByteBuffer.setBytes<A>(_:at:)(a3, a1, a4);
    v18 = sub_1B0E45698();
    if (!__OFADD__(a1, v18))
    {
      v19 = *(v5 + 12);
      if (!__OFSUB__(v19, a2))
      {
        ByteBuffer.copyBytes(at:to:length:)(a2, a1 + v18, v19 - a2);
        if (v20)
        {
LABEL_40:
          swift_unexpectedError();
          __break(1u);
          goto LABEL_41;
        }

        v21 = sub_1B0E45698();
        v22 = __OFSUB__(v14, v21);
        v23 = v14 - v21;
        if (!v22)
        {
          v24 = *(v5 + 12);
          v22 = __OFSUB__(v24, v23);
          v25 = v24 - v23;
          if (!v22)
          {
            if (*(v5 + 16) - (*(v5 + 22) | (*(v5 + 20) << 8)) >= v25)
            {
              *(v5 + 12) = v25;
              result = sub_1B0D55730(v23, v6, v8);
              *(v5 + 24) = result;
              *(v5 + 32) = v26;
              return result;
            }

            goto LABEL_36;
          }

          goto LABEL_34;
        }

        goto LABEL_32;
      }

      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = *(a5 + 8);

  return ByteBuffer.setBytes<A>(_:at:)(a3, a1, a4);
}

void (*ByteBufferView.subscript.modify(void (**a1)(uint64_t *a1, char a2), uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xE0uLL);
  }

  *a1 = result;
  *(result + 26) = a3;
  *(result + 27) = v3;
  *(result + 25) = a2;
  if (a2 < 0 || (v8 = *(v3 + 16), v9 = *(v3 + 20), v10 = *(v3 + 22), v8 - (v10 | (v9 << 8)) < a3))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v3 + 8);
    *(result + 10) = *v3;
    *(result + 11) = v11;
    *(result + 24) = v8;
    *(result + 50) = v9;
    *(result + 102) = v10;
    *(result + 13) = a2;
    *(result + 14) = a3;

    return sub_1B0D546E8;
  }

  return result;
}

void sub_1B0D546E8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 208);
    v3 = *(v2 + 216);
    v5 = *(v2 + 200);
    v6 = *(v2 + 96);
    *v2 = *(v2 + 80);
    *(v2 + 16) = v6;
    *(v2 + 32) = *(v2 + 112);
    sub_1B0D56C9C(v2, v2 + 160);
    sub_1B0D53BB8(v5, v4, v2);
    sub_1B04394F4(v2);
    v7 = *(v2 + 96);
    *(v2 + 120) = *(v2 + 80);
    *(v2 + 136) = v7;
    *(v2 + 152) = *(v2 + 112);
    v8 = v2 + 120;
  }

  else
  {
    v9 = *(v2 + 208);
    v10 = *(v2 + 216);
    v11 = *(v2 + 200);
    v12 = *(v2 + 96);
    *(v2 + 40) = *(v2 + 80);
    *(v2 + 56) = v12;
    *(v2 + 72) = *(v2 + 112);
    sub_1B0D53BB8(v11, v9, (v2 + 40));
    v8 = v2 + 40;
  }

  sub_1B04394F4(v8);

  free(v2);
}

uint64_t sub_1B0D547AC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  result = swift_beginAccess();
  v8 = a1[3];
  v9 = a1[4];
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
  }

  else
  {
    sub_1B03C829C(*(v4 + 24) + (v6 | (v5 << 8)) + v8, v9 - v8, a2);
    return 0;
  }

  return result;
}

uint64_t ByteBufferView.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  result = ByteBufferView.withUnsafeBytes<A>(_:)(sub_1B0D56CD4, v8, a3);
  if (!v4)
  {
    return (*(*(a3 - 8) + 56))(a4, 0, 1, a3);
  }

  return result;
}

Swift::Int_optional_optional __swiftcall ByteBufferView._customIndexOfEquatableElement(_:)(Swift::UInt8 a1)
{
  v3 = *v1;
  v4 = *(v1 + 10);
  v5 = *(v1 + 22);
  v6 = swift_beginAccess();
  v8 = v1[3];
  v9 = v1[4];
  v10 = __OFSUB__(v9, v8);
  v11 = v9 - v8;
  if (v10)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else if (v11)
  {
    v12 = 0;
    while (*(*(v3 + 24) + v8 + (v4 << 8) + v5 + v12) != a1)
    {
      if ((v11 & ~(v11 >> 63)) == v12)
      {
        __break(1u);
        goto LABEL_12;
      }

      if (v11 == ++v12)
      {
        goto LABEL_7;
      }
    }

    v6 = v12 + v8;
    if (__OFADD__(v12, v8))
    {
      goto LABEL_13;
    }

    v7 = 0;
  }

  else
  {
LABEL_7:
    v6 = 0;
    v7 = 1;
  }

  result.value.value = v6;
  result.value.is_nil = v7;
  return result;
}

Swift::Int_optional_optional __swiftcall ByteBufferView._customLastIndexOfEquatableElement(_:)(Swift::UInt8 a1)
{
  v3 = *v1;
  v4 = *(v1 + 10);
  v5 = *(v1 + 22);
  v6 = swift_beginAccess();
  v9 = v1[3];
  v8 = v1[4];
  v10 = __OFSUB__(v8, v9);
  v11 = v8 - v9;
  if (v10)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = *(v3 + 24) + (v5 | (v4 << 8)) + v9;
  v6 = sub_1B0D54AA4(a1, v12, v12 + v11);
  if ((v7 & 1) == 0)
  {
    v10 = __OFADD__(v6, v9);
    v6 += v9;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  v7 &= 1u;
LABEL_7:
  result.value.value = v6;
  result.value.is_nil = v7;
  return result;
}

uint64_t sub_1B0D54A38@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!result)
  {
LABEL_9:
    v5 = 0;
LABEL_10:
    v8 = 1;
LABEL_11:
    *a5 = v5;
    *(a5 + 8) = v8;
    return result;
  }

  v5 = a2 - result;
  if (a2 == result)
  {
    goto LABEL_10;
  }

  v6 = a2 - result;
  while (1)
  {
    v7 = __OFSUB__(v6--, 1);
    if (v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v6 < 0 || v6 >= v5)
    {
      goto LABEL_15;
    }

    if (*(result + v6) == a3)
    {
      break;
    }

    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v9 = *(a4 + 24);
  v7 = __OFADD__(v6, v9);
  v5 = v6 + v9;
  if (!v7)
  {
    v8 = 0;
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B0D54AA4(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3 == a2)
  {
    return 0;
  }

  v3 = a1;
  result = a3 - a2;
  while (!__OFSUB__(result--, 1))
  {
    if (result < 0 || result >= a3 - a2)
    {
      goto LABEL_12;
    }

    if (*(a2 + result) == v3 || !result)
    {
      return result;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

Swift::Bool_optional __swiftcall ByteBufferView._customContainsEquatableElement(_:)(Swift::UInt8 a1)
{
  v3 = *v1;
  v4 = *(v1 + 10);
  v5 = *(v1 + 22);
  result.value = swift_beginAccess();
  v7 = v1[3];
  v8 = v1[4];
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
  }

  else if (v8 == v7)
  {
    return 0;
  }

  else
  {
    v9 = (*(v3 + 24) + (v5 | (v4 << 8)) + v7);
    v10 = ~v7 + v8;
    do
    {
      v11 = *v9++;
      result.value = v11 == a1;
    }

    while (v11 != a1 && v10-- != 0);
  }

  return result;
}

uint64_t ByteBufferView._copyContents(initializing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = v5 - v4;
  v7 = __OFSUB__(v5, v4);
  if (v6 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  __dst = result;
  v10 = *v3;
  v11 = *(v3 + 8);
  v18 = *(v3 + 16);
  v12 = *(v3 + 20);
  v13 = *(v3 + 22);
  result = swift_beginAccess();
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = 0;
  v15 = v13 | (v12 << 8);
  if (a2 && v6)
  {
    result = memcpy(__dst, (*(v10 + 24) + v15 + v4), v5 - v4);
    v14 = v5 - v4;
  }

  if (v5 <= (v18 - v15) && v14 == v6)
  {
    result = sub_1B0D56C9C(v3, v19);
    *a3 = v10;
    *(a3 + 8) = v11;
    *(a3 + 16) = v18;
    *(a3 + 20) = v12;
    *(a3 + 22) = v13;
    *(a3 + 24) = v5;
    *(a3 + 32) = v5;
    *(a3 + 40) = v5;
    *(a3 + 48) = v6;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_1B0D54CC0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_1B0D54CD8(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t sub_1B0D54D08(_BYTE *a1, uint64_t *a2)
{
  result = *a2;
  if (*a2 >= *(v2 + 24) && result < *(v2 + 32))
  {
    result = sub_1B0D56C08(result, *v2, *(v2 + 8), *(v2 + 16) | (*(v2 + 22) << 48) | (*(v2 + 20) << 32));
    if ((result & 0x100) == 0)
    {
      *a1 = result;
      return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0D54D84@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], v5 = *(v2 + 16), v6 = *(v2 + 20), v7 = *(v2 + 22), v4 > v5 - (v7 | (v6 << 8))))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2;
    *(a2 + 8) = *(v2 + 8);
    *(a2 + 16) = v5;
    *(a2 + 20) = v6;
    *(a2 + 22) = v7;
    *(a2 + 24) = v3;
    *(a2 + 32) = v4;
  }

  return result;
}

void sub_1B0D54DD4(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (v3 < v2)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2;
    a1[1] = v3;
  }
}

uint64_t sub_1B0D54E2C@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(_OWORD *, void, _OWORD *)@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  v9 = *(v3 + 32);
  result = a2(v8, *a1, v8);
  *a3 = result;
  *(a3 + 8) = v7 & 1;
  *(a3 + 9) = 0;
  return result;
}

void *sub_1B0D54E94@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1B0D54EAC(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_1B0D54EC4@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 16) = *(v1 + 16);
  result = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = result.n128_u64[0];
  return result;
}

uint64_t sub_1B0D54EE4(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v4[0] = *v1;
  v4[1] = v2;
  v5 = *(v1 + 32);
  return sub_1B0D53704(v4, *a1) & 1;
}

void *sub_1B0D54F2C()
{
  v1 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v1;
  v2 = *(v0 + 32);
  v9 = v2;
  v3 = v2 - *(&v1 + 1);
  if (v2 == *(&v1 + 1))
  {
    sub_1B04394F4(v8);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v5 = sub_1B03B7A3C(v2 - *(&v1 + 1), 0);
    ByteBufferView._copyContents(initializing:)((v5 + 4), v3, v7);
    v6 = v7[6];
    sub_1B04394F4(v8);

    result = v5;
    if (v6 != v3)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B0D54FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v22[0] = *v3;
  v22[1] = v5;
  v23 = *(v3 + 32);
  ByteBufferView._copyContents(initializing:)(a2, a3, v15);
  v6 = v15[0];
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v14 = v19;
  v11 = v20;
  v10 = v21;
  v12 = v15[1];
  sub_1B04394F4(v22);
  *a1 = v6;
  *(a1 + 8) = v12;
  *(a1 + 16) = v7;
  *(a1 + 20) = v8;
  *(a1 + 22) = v9;
  *(a1 + 24) = v14;
  *(a1 + 40) = v11;
  return v10;
}

uint64_t sub_1B0D5508C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 4);
  return ByteBufferView.withContiguousStorageIfAvailable<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_1B0D550D4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a1 = v2;
  *(a1 + 8) = result;
  if (result >= *(v2 + 24) && result < *(v2 + 32))
  {
    result = sub_1B0D56C08(result, *v2, *(v2 + 8), *(v2 + 16) | (*(v2 + 22) << 48) | (*(v2 + 20) << 32));
    if ((result & 0x100) == 0)
    {
      *(a1 + 16) = result;
      return sub_1B0D55154;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D5517C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  sub_1B0D53BB8(*a2, a2[1], v4);
  return sub_1B04394F4(v4);
}

void (*sub_1B0D551BC(void (**a1)(uint64_t *a1, char a2), uint64_t *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xE0uLL);
  }

  *a1 = result;
  v6 = *a2;
  v7 = a2[1];
  *(result + 25) = v2;
  *(result + 26) = v6;
  *(result + 27) = v7;
  if (v6 < 0 || (v8 = *(v2 + 16), v9 = *(v2 + 20), v10 = *(v2 + 22), v7 > v8 - (v10 | (v9 << 8))))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v2 + 8);
    *(result + 10) = *v2;
    *(result + 11) = v11;
    *(result + 24) = v8;
    *(result + 50) = v9;
    *(result + 102) = v10;
    *(result + 13) = v6;
    *(result + 14) = v7;

    return sub_1B0D55284;
  }

  return result;
}

void sub_1B0D55284(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = *(v2 + 200);
    v6 = *(v2 + 96);
    *v2 = *(v2 + 80);
    *(v2 + 16) = v6;
    *(v2 + 32) = *(v2 + 112);
    sub_1B0D56C9C(v2, v2 + 160);
    sub_1B0D53BB8(v3, v4, v2);
    sub_1B04394F4(v2);
    v7 = *(v2 + 96);
    *(v2 + 120) = *(v2 + 80);
    *(v2 + 136) = v7;
    *(v2 + 152) = *(v2 + 112);
    v8 = v2 + 120;
  }

  else
  {
    v9 = *(v2 + 208);
    v10 = *(v2 + 216);
    v11 = *(v2 + 200);
    v12 = *(v2 + 96);
    *(v2 + 40) = *(v2 + 80);
    *(v2 + 56) = v12;
    *(v2 + 72) = *(v2 + 112);
    sub_1B0D53BB8(v9, v10, (v2 + 40));
    v8 = v2 + 40;
  }

  sub_1B04394F4(v8);

  free(v2);
}

char *sub_1B0D55348@<X0>(char *a1@<X0>, char **a2@<X8>)
{
  result = sub_1B0D566DC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_1B0D55380(char *result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v5 = v2[3];
    v4 = v2[4];
    if (v5 > result || v4 <= result)
    {
      __break(1u);
    }

    else
    {
      v7 = *(v2 + 2);
      if (result >= v7)
      {
        v8 = (*(v2 + 3) - v7);
        if (&result[-v7] < v8)
        {
          v10 = *v2;
          v11 = *(v2 + 10);
          v12 = *(v2 + 22);
          result = swift_beginAccess();
          if (v5 <= a2 && v4 > a2)
          {
            if (a2 >= v7)
            {
              if (a2 - v7 < v8)
              {
                v13 = *(v10 + 24) + (v12 | (v11 << 8));
                v14 = *(v13 + v3);
                ByteBufferView.subscript.setter(*(v13 + a2), v3);
                return ByteBufferView.subscript.setter(v14, a2);
              }

LABEL_19:
              __break(1u);
              return result;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

double ByteBufferView.init()@<D0>(uint64_t a1@<X8>)
{
  sub_1B0D56EF8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

Swift::Void __swiftcall ByteBufferView.reserveCapacity(_:)(Swift::Int a1)
{
  v2 = v1[4] - v1[3];
  v3 = __OFSUB__(a1, v2);
  v4 = a1 - v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v4 < 1)
  {
    return;
  }

  v5 = *(v1 + 4) - (*(v1 + 22) | (*(v1 + 10) << 8));
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
LABEL_14:
    __break(1u);
    return;
  }

  if (v6 > v5)
  {
    v7 = *v1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      ByteBuffer._ensureAvailableCapacity(_:at:)(v6, 0);
    }

    else
    {
      v8 = sub_1B03904C0() & 1;

      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v6, v8);
    }
  }
}

Swift::Void __swiftcall ByteBufferView.append(_:)(Swift::UInt8 a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = v1[4];
  v12 = a1;
  v3 = v2 + 1;
  if (v2 == -1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = *(v1 + 4);
    v6 = v3 >= v5;
    v7 = v3 - v5;
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v8, v9 & 1);
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v2);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(&v12, &v13, v2);
  v10 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    goto LABEL_12;
  }

  if (v10 < v1[3])
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  v1[4] = v10;
  if (*(v1 + 4) - (*(v1 + 22) | (*(v1 + 10) << 8)) < v10)
  {
    goto LABEL_14;
  }

  *(v1 + 3) = v10;
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t ByteBufferView.append<A>(contentsOf:)(uint64_t *a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  result = ByteBuffer.setBytes<A>(_:at:)(a1, v3, a2);
  v5 = v3 + result;
  if (__OFADD__(v3, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 < *(v2 + 24))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v2 + 32) = v5;
  if (*(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8)) >= v5)
  {
    *(v2 + 12) = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B0D55730(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = a2 - a3;
  if (__OFSUB__(a2, a3))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = -result;
  if (v3 <= 0 && v3 > v4)
  {
    return a2;
  }

  v5 = a3 - result;
  if (__OFADD__(a3, v4))
  {
    goto LABEL_11;
  }

  if (v5 >= a2 && v5 <= a3)
  {
    return a2;
  }

LABEL_12:
  __break(1u);
  return result;
}

double sub_1B0D55788@<D0>(uint64_t a1@<X8>)
{
  sub_1B0D56EF8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1B0D557CC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  ByteBufferView.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

uint64_t sub_1B0D55858@<X0>(int a1@<W0>, int64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B0D56EF8(&v13);
  v10 = v13;
  v11 = v14;
  v12 = v15;
  if (!a2)
  {
    goto LABEL_7;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(&v14 + 1);
  v7 = v15;
  result = sub_1B0D4EAB8(a2, a1, v15);
  v9 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9 < v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(&v11 + 1) = v8;
  v12 = v7 + result;
  if (v11 - (BYTE6(v11) | (WORD2(v11) << 8)) >= v9)
  {
    HIDWORD(v10) = v7 + result;
LABEL_7:
    *a3 = v10;
    *(a3 + 16) = v11;
    *(a3 + 32) = v12;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1B0D55948(uint64_t *a1, uint64_t a2)
{
  ByteBufferView.append<A>(contentsOf:)(a1, a2);
  v4 = *(*(a2 - 8) + 8);

  return v4(a1, a2);
}

uint64_t sub_1B0D559DC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (v4 == v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *result;
  if (*result < v4 || v6 >= v5)
  {
    goto LABEL_10;
  }

  result = sub_1B0D56C08(*result, *v2, *(v2 + 8), *(v2 + 16) | (*(v2 + 22) << 48) | (*(v2 + 20) << 32));
  if ((result & 0x100) == 0)
  {
    v8 = result;
    result = sub_1B0D5418C(v6, v6 + 1);
    *a2 = v8;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1B0D55A70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B0D55AA0();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1B0D55AA0()
{
  v1 = v0[4];
  v2 = v1 - 1;
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v0[3];
  if (v2 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 >= v1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v3 == v1)
  {
    goto LABEL_18;
  }

  v4 = *(v0 + 2);
  if (v2 < v4 || v2 - v4 >= (*(v0 + 3) - v4))
  {
    goto LABEL_18;
  }

  v6 = *v0;
  v7 = *(v0 + 10);
  v8 = *(v0 + 22);
  swift_beginAccess();
  v9 = *(*(v6 + 24) + (v8 | (v7 << 8)) + v2);
  v22 = v0[4];
  v10 = *(v0 + 1);
  v20 = *v0;
  v21 = v10;
  v11 = *(&v10 + 1);
  v12 = v22;
  v23[0] = v20;
  v23[1] = v10;
  v24 = v22;
  sub_1B0D56C9C(&v20, v19);
  result = sub_1B04394F4(v23);
  v14 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v14 < v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v11 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = v21;
  v16 = WORD2(v21);
  v17 = BYTE6(v21);
  if (v14 <= v21 - (BYTE6(v21) | (WORD2(v21) << 8)))
  {
    v18 = *(&v20 + 1);
    *v0 = v20;
    v0[1] = v18;
    *(v0 + 4) = v15;
    *(v0 + 10) = v16;
    *(v0 + 22) = v17;
    v0[3] = v11;
    v0[4] = v14;
    return v9;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1B0D55BF8(uint64_t result)
{
  v2 = -result;
  if (__OFSUB__(0, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(v1 + 3);
  v3 = *(v1 + 4);
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v5)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v2 < 1)
  {
    goto LABEL_7;
  }

  if ((v6 & 0x8000000000000000) == 0 && v6 < v2)
  {
    do
    {
      __break(1u);
LABEL_7:
      ;
    }

    while (v6 <= 0 && v2 < v6);
  }

  v8 = v3 - result;
  if (__OFADD__(v3, v2))
  {
    goto LABEL_18;
  }

  v9 = v1[1];
  v16 = *v1;
  v17 = v9;
  v18 = *(v1 + 4);
  v10 = *(&v9 + 1);
  v19[0] = v16;
  v19[1] = v9;
  v20 = v18;
  sub_1B0D56C9C(&v16, v15);
  result = sub_1B04394F4(v19);
  if (v8 < v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = v17;
  v12 = WORD2(v17);
  v13 = BYTE6(v17);
  if (v8 <= v17 - (BYTE6(v17) | (WORD2(v17) << 8)))
  {
    v14 = *(&v16 + 1);
    *v1 = v16;
    *(v1 + 1) = v14;
    *(v1 + 4) = v11;
    *(v1 + 10) = v12;
    *(v1 + 22) = v13;
    *(v1 + 3) = v10;
    *(v1 + 4) = v8;
    return 1;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1B0D55CF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B0D55D20();
  *a1 = result;
  return result;
}

uint64_t sub_1B0D55D20()
{
  v2 = v0[3];
  v1 = v0[4];
  if (v2 == v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v0 + 2);
  if (v2 < v3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 - v3 >= (*(v0 + 3) - v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v0;
  v5 = *(v0 + 10);
  v6 = *(v0 + 22);
  result = swift_beginAccess();
  v8 = *(*(v4 + 24) + (v6 | (v5 << 8)) + v2);
  v20 = v0[4];
  v9 = *(v0 + 1);
  v18 = *v0;
  v19 = v9;
  v10 = *(&v9 + 1) + 1;
  if (__OFADD__(*(&v9 + 1), 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v20;
  v12 = *(v0 + 1);
  v21[0] = *v0;
  v21[1] = v12;
  v22 = v0[4];
  sub_1B0D56C9C(&v18, &v17);
  result = sub_1B04394F4(v21);
  if (v11 < v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v19;
  v14 = WORD2(v19);
  v15 = BYTE6(v19);
  if (v11 <= v19 - (BYTE6(v19) | (WORD2(v19) << 8)))
  {
    v16 = *(&v18 + 1);
    *v0 = v18;
    v0[1] = v16;
    *(v0 + 4) = v13;
    *(v0 + 10) = v14;
    *(v0 + 22) = v15;
    v0[3] = v10;
    v0[4] = v11;
    return v8;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1B0D55E68(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(v1 + 3);
      v3 = *(v1 + 4);
      v4 = __OFSUB__(v3, v2);
      v5 = v3 - v2;
      if (!v4)
      {
        if (v5 < result)
        {
LABEL_17:
          __break(1u);
          return result;
        }

        v6 = v2 + result;
        if (!__OFADD__(v2, result))
        {
          v7 = v1[1];
          v14 = *v1;
          v15 = v7;
          v16 = *(v1 + 4);
          v8 = v16;
          v17[0] = v14;
          v17[1] = v7;
          v18 = v16;
          sub_1B0D56C9C(&v14, v13);
          result = sub_1B04394F4(v17);
          if (v8 >= v6)
          {
            if ((v6 & 0x8000000000000000) == 0)
            {
              v9 = v15;
              v10 = WORD2(v15);
              v11 = BYTE6(v15);
              if (v8 <= v15 - (BYTE6(v15) | (WORD2(v15) << 8)))
              {
                v12 = *(&v14 + 1);
                *v1 = v14;
                *(v1 + 1) = v12;
                *(v1 + 4) = v9;
                *(v1 + 10) = v10;
                *(v1 + 22) = v11;
                *(v1 + 3) = v6;
                *(v1 + 4) = v8;
                return result;
              }

              goto LABEL_16;
            }

LABEL_15:
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

Swift::Int sub_1B0D55F48(char a1)
{
  if (a1)
  {
    result = *(v1 + 24);
    v3 = *(v1 + 32);
    if (v3 < result)
    {
      __break(1u);
    }

    else
    {

      return sub_1B0D5418C(result, v3);
    }
  }

  else
  {
    v4 = *(v1 + 16);
    v6[0] = *v1;
    v6[1] = v4;
    v7 = *(v1 + 32);
    sub_1B04394F4(v6);
    result = sub_1B0D56EF8(v8);
    v5 = v8[1];
    *v1 = v8[0];
    *(v1 + 16) = v5;
    *(v1 + 32) = v9;
  }

  return result;
}

Swift::Int sub_1B0D55FC8(uint64_t (*a1)(char *))
{
  result = sub_1B0D56864(a1);
  if (!v2)
  {
    v4 = *(v1 + 32);
    if (v4 < result)
    {
      __break(1u);
    }

    else
    {
      return sub_1B0D5418C(result, v4);
    }
  }

  return result;
}

uint64_t ByteBuffer.viewBytes(at:length:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = 0;
  if (a2 < 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (a4 > result)
  {
LABEL_10:
    *a6 = v6;
    a6[1] = v7;
    a6[2] = v8;
    a6[3] = v9;
    a6[4] = v10;
    return result;
  }

  if ((HIDWORD(a4) - a2) < result)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v10 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v10 < result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a5 - (BYTE6(a5) | (a5 >> 24) & 0xFFFF00) >= v10)
  {
    v8 = a5 & 0xFFFFFFFFFFFFFFLL;
    v11 = result;
    v12 = a6;

    a6 = v12;
    v6 = a3;
    v7 = a4;
    v9 = v11;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t static ByteBufferView.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = v4 - result;
  if (__OFSUB__(v4, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 != v10)
  {
    return 0;
  }

  result = ByteBuffer.getSlice(at:length:)(result, v5, *a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  if (result)
  {
    v13 = result;
    v14 = v11;
    v15 = v12;
    result = ByteBuffer.getSlice(at:length:)(v8, v5, *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48));
    if (result)
    {
      v18 = sub_1B0C2DB54(v13, v14, v15 & 0xFFFFFFFFFFFFFFLL, result, v16, v17 & 0xFFFFFFFFFFFFFFLL);

      return v18;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1B0D56280(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = v4 - result;
  if (__OFSUB__(v4, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = __OFSUB__(v6, v7);
  v9 = v6 - v7;
  if (v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 != v9)
  {
    return 0;
  }

  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 20);
  v14 = *(a2 + 22);
  result = ByteBuffer.getSlice(at:length:)(result, v5, *a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  if (result)
  {
    v17 = result;
    v18 = v15;
    v19 = v16;
    result = ByteBuffer.getSlice(at:length:)(v7, v5, v10, v11, v12 | (v13 << 32) | (v14 << 48));
    if (result)
    {
      v22 = sub_1B0C2DB54(v17, v18, v19 & 0xFFFFFFFFFFFFFFLL, result, v20, v21 & 0xFFFFFFFFFFFFFFLL);

      return v22;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t ByteBufferView.hash(into:)()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  if (__OFSUB__(v2, result))
  {
    __break(1u);
  }

  else
  {
    result = ByteBuffer.getSlice(at:length:)(result, v2 - result, *v0, *(v0 + 8), *(v0 + 16) | (*(v0 + 22) << 48) | (*(v0 + 20) << 32));
    if (result)
    {
      v4 = v3;
      v5 = result;
      swift_beginAccess();
      v6 = *(v5 + 24) + ((v4 >> 24) & 0xFFFF00 | BYTE6(v4));
      sub_1B0E46C38();
    }
  }

  __break(1u);
  return result;
}

uint64_t ByteBufferView.hashValue.getter()
{
  sub_1B0E46C28();
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  if (__OFSUB__(v2, result))
  {
    __break(1u);
  }

  else
  {
    result = ByteBuffer.getSlice(at:length:)(result, v2 - result, *v0, *(v0 + 8), *(v0 + 16) | (*(v0 + 22) << 48) | (*(v0 + 20) << 32));
    if (result)
    {
      v4 = v3;
      v5 = result;
      swift_beginAccess();
      v6 = *(v5 + 24) + ((v4 >> 24) & 0xFFFF00 | BYTE6(v4));
      sub_1B0E46C38();

      return sub_1B0E46CB8();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D56518()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *(v0 + 22);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  result = sub_1B0E46C28();
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
  }

  else
  {
    result = ByteBuffer.getSlice(at:length:)(v7, v6 - v7, v1, v2, v3 | (v4 << 32) | (v5 << 48));
    if (result)
    {
      v10 = v9;
      v11 = result;
      swift_beginAccess();
      v12 = *(v11 + 24) + ((v10 >> 24) & 0xFFFF00 | BYTE6(v10));
      sub_1B0E46C38();

      return sub_1B0E46CB8();
    }
  }

  __break(1u);
  return result;
}

double ByteBufferView.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B0D56FB0(a1, v5);

  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_1B0D56640@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B0D56FB0(a1, v5);

  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1B0D56690(uint64_t result)
{
  if (result)
  {
    v2 = v1[5];
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      v7 = v1[3];
      v8 = v1[4];
      return v7(result + v4, result + v4 + v6);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1B0D566DC(char *result)
{
  v16 = result;
  v3 = v1[3];
  v15 = v1[4];
  if (v3 >= v15)
  {
    return v3;
  }

  v4 = v1;
  while (1)
  {
LABEL_3:
    v5 = v4[4];
    if (v3 < v4[3] || v3 >= v5)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = *(v4 + 2);
    if (v3 < v7)
    {
      goto LABEL_23;
    }

    v8 = (*(v4 + 3) - v7);
    if (&v3[-v7] >= v8)
    {
      goto LABEL_24;
    }

    v9 = *v4;
    v10 = *(v4 + 10);
    v11 = *(v4 + 22);
    swift_beginAccess();
    v12 = v11 | (v10 << 8);
    v17 = v3[*(v9 + 24) + v12];
    result = v16(&v17);
    if (v2)
    {
      return v3;
    }

    if (result)
    {
      break;
    }

    if (++v3 >= v15)
    {
      return v3;
    }
  }

  v13 = v15;
  while (!__OFSUB__(v13--, 1))
  {
    if (v3 >= v13)
    {
      return v3;
    }

    if (v15 > v5)
    {
      goto LABEL_26;
    }

    if (v13 - v7 >= v8)
    {
      goto LABEL_27;
    }

    v17 = *(*(v9 + 24) + v12 + v13);
    result = v16(&v17);
    if ((result & 1) == 0)
    {
      result = sub_1B0D55380(v3++, v13);
      v15 = v13;
      if (v3 < v13)
      {
        goto LABEL_3;
      }

      return v3;
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B0D56864(uint64_t (*a1)(char *))
{
  v2 = v1;
  v3 = *v1;
  v5 = *(v1 + 2);
  v4 = *(v1 + 3);
  v6 = *(v2 + 10);
  v7 = *(v2 + 22);
  v9 = v2[3];
  v8 = v2[4];
  result = swift_beginAccess();
  if (v9 == v8)
  {
    return v9;
  }

  v11 = v5 + (v4 - v5);
  v50 = v9 - v8;
  v45 = v6;
  v46 = v8;
  if (v9 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  if (v9 > v11)
  {
    v11 = v9;
  }

  v13 = v9 - v11;
  v14 = v9 - v12;
  v44 = v7;
  v15 = v9 + (v6 << 8) + v7;
  v16 = 1;
  while (1)
  {
    if (v14 + v16 == 1)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v9 < v5)
    {
      goto LABEL_50;
    }

    if (v13 + v16 == 1)
    {
      goto LABEL_51;
    }

    v52[0] = *(*(v3 + 24) + v15 + v16 - 1);
    result = a1(v52);
    if (v47)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v16;
    if (v50 + v16 == 1)
    {
      return v46;
    }
  }

  v43 = v9 + v16;
  result = v9 + v16 - 1;
  if (!(v50 + v16))
  {
    return result;
  }

  while (v43 >= v9 && v9 + v16 < v46)
  {
    v17 = *(v2 + 2);
    if (v9 + v16 < v17)
    {
      goto LABEL_53;
    }

    v18 = (*(v2 + 3) - v17);
    if (v9 + v16 - v17 >= v18)
    {
      goto LABEL_54;
    }

    v48 = v9 + v16;
    *at = result;
    swift_beginAccess();
    v19 = v44 | (v45 << 8);
    v54 = *(*(v3 + 24) + v19 + v9 + v16);
    if (a1(&v54))
    {
      result = *at;
    }

    else
    {
      result = *at;
      if (v48 != *at)
      {
        if (*at < v9 || *at >= v46)
        {
          goto LABEL_55;
        }

        if (*at < v17)
        {
          goto LABEL_56;
        }

        if (*at - v17 >= v18)
        {
          goto LABEL_57;
        }

        v20 = at[0] + 1;
        if (at[0] == -1)
        {
          goto LABEL_58;
        }

        v21 = *(v3 + 24) + v19;
        v53 = *(v21 + *at);
        v22 = *(v21 + v9 + v16);
        v23 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = *(v2 + 4);
          v25 = v20 >= v24;
          v26 = v20 - v24;
          if (v25)
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v28 = sub_1B03904C0();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v27, v28 & 1);
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(1u, at[0]);
        v29 = *v2;
        v30 = *(v2 + 4);
        v31 = *(v2 + 10);
        v32 = *(v2 + 22);
        swift_beginAccess();
        result = sub_1B04391FC(at[0], *(v29 + 24) + (v32 | (v31 << 8)), *(v29 + 24) + (v32 | (v31 << 8)) + v30 - (v32 | (v31 << 8)));
        if (v33)
        {
          *(v33 + result) = v22;
        }

        v34 = v9 + v16 + 1;
        if (v9 + v16 == -1)
        {
          goto LABEL_59;
        }

        v35 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          if (v34 >= v30)
          {
            v36 = v34 - v30;
          }

          else
          {
            v36 = 0;
          }

          v37 = sub_1B03904C0();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v36, v37 & 1);
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v9 + v16);
        v3 = *v2;
        v38 = *(v2 + 4);
        v39 = *(v2 + 10);
        v40 = *(v2 + 22);
        swift_beginAccess();
        v44 = v40;
        v45 = v39;
        v41 = sub_1B04391FC(v48, *(v3 + 24) + (v40 | (v39 << 8)), *(v3 + 24) + (v40 | (v39 << 8)) + v38 - (v40 | (v39 << 8)));
        if (v42)
        {
          *(v42 + v41) = v53;
        }

        result = *at;
      }

      ++result;
    }

    ++v16;
    if (!(v50 + v16))
    {
      return result;
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
  return result;
}

uint64_t sub_1B0D56C08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 < a3 || (HIDWORD(a3) - a3) <= a1 - a3)
  {
    return 256;
  }

  swift_beginAccess();
  return *(*(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4)) + a1);
}

uint64_t sub_1B0D56CD4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  return v3(a1, v5);
}

uint64_t sub_1B0D56D08(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D56D5C(uint64_t *a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 10);
  v8 = *(a1 + 22);
  result = swift_beginAccess();
  v11 = a1[3];
  v10 = a1[4];
  v12 = __OFSUB__(v10, v11);
  v13 = v10 - v11;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else if (v13)
  {
    v14 = 0;
    v15 = *(v6 + 24) + v11 + (v7 << 8) + v8;
    while (*(v15 + v14) != a2)
    {
      if ((v13 & ~(v13 >> 63)) == v14)
      {
        __break(1u);
        goto LABEL_11;
      }

      if (v13 == ++v14)
      {
        return 0;
      }
    }

    v16 = *(a3 + 24);
    result = v14 + v16;
    if (__OFADD__(v14, v16))
    {
      goto LABEL_12;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B0D56E44(uint64_t *a1, unsigned __int8 a2, uint64_t a3)
{
  v7 = *a1;
  v8 = *(a1 + 10);
  v9 = *(a1 + 22);
  result = swift_beginAccess();
  v11 = a1[3];
  v12 = a1[4];
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v7 + 24) + (v9 | (v8 << 8)) + v11;
    result = sub_1B0D54A38(v15, v15 + v14, a2, a3, &v16);
    if (!v3)
    {
      return v16;
    }
  }

  return result;
}

uint64_t sub_1B0D56EF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB6DE5C0 != -1)
  {
    v7 = a1;
    result = swift_once();
    a1 = v7;
  }

  v2 = qword_1EB737EB0;
  v3 = HIDWORD(qword_1EB737EB0);
  if (HIDWORD(qword_1EB737EB0) < qword_1EB737EB0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = dword_1EB737EB8;
  v5 = word_1EB737EBC;
  v6 = byte_1EB737EBE;
  if (dword_1EB737EB8 - (byte_1EB737EBE | (word_1EB737EBC << 8)) < HIDWORD(qword_1EB737EB0))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a1 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 22) = v6;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

void sub_1B0D56FB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B0D56EF8(&v9);
  v5 = *(&v10 + 1);
  v4 = v11;
  sub_1B0CFC01C(a1, v11);
  v7 = v4 + v6;
  if (__OFADD__(v4, v6))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 < v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(&v10 + 1) = v5;
  v11 = v4 + v6;
  if (v10 - (BYTE6(v10) | (WORD2(v10) << 8)) >= v7)
  {
    HIDWORD(v9) = v4 + v6;
    *(a2 + 32) = v11;
    v8 = v10;
    *a2 = v9;
    *(a2 + 16) = v8;
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_1B0D5705C()
{
  result = qword_1EB6E70F0;
  if (!qword_1EB6E70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E70F0);
  }

  return result;
}

unint64_t sub_1B0D570E8()
{
  result = qword_1EB6E7100;
  if (!qword_1EB6E7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7100);
  }

  return result;
}

unint64_t sub_1B0D5713C()
{
  result = qword_1EB6E7108;
  if (!qword_1EB6E7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7108);
  }

  return result;
}

unint64_t sub_1B0D571C8()
{
  result = qword_1EB6E7118;
  if (!qword_1EB6E7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7118);
  }

  return result;
}

uint64_t sub_1B0D5725C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1850, &unk_1B0E9B040);
    sub_1B06D5674();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B0D572D8()
{
  result = qword_1EB6E7120;
  if (!qword_1EB6E7120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E7128, &qword_1B0EF0438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7120);
  }

  return result;
}

unint64_t sub_1B0D57340()
{
  result = qword_1EB6E7130;
  if (!qword_1EB6E7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7130);
  }

  return result;
}

unint64_t sub_1B0D57398()
{
  result = qword_1EB6E7138;
  if (!qword_1EB6E7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7138);
  }

  return result;
}

unint64_t sub_1B0D573F0()
{
  result = qword_1EB6E7140;
  if (!qword_1EB6E7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7140);
  }

  return result;
}

uint64_t ByteRange.length.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

NIOIMAPCore2::ByteRange __swiftcall ByteRange.init(offset:length:)(Swift::Int offset, Swift::Int_optional length)
{
  length.is_nil &= 1u;
  result.length = length;
  result.offset = offset;
  return result;
}

uint64_t static ByteRange.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t ByteRange.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x1B2728D70](a2);
  if (a4)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return MEMORY[0x1B2728D70](a3);
}

uint64_t ByteRange.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  sub_1B0E46C68();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x1B2728D70](a2);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D575E8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2);
  sub_1B0E46C68();
  if (v3 != 1)
  {
    MEMORY[0x1B2728D70](v1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D57668()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x1B2728D70](*v0);
  if (v2 == 1)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return MEMORY[0x1B2728D70](v1);
}

uint64_t sub_1B0D576C4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2);
  sub_1B0E46C68();
  if (v3 != 1)
  {
    MEMORY[0x1B2728D70](v1);
  }

  return sub_1B0E46CB8();
}

unint64_t sub_1B0D57744()
{
  result = qword_1EB6E7148;
  if (!qword_1EB6E7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7148);
  }

  return result;
}

uint64_t sub_1B0D57798(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B0D577EC()
{
  v1 = v0;
  v2 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v2);

  MEMORY[0x1B2726E80](46, 0xE100000000000000);
  v3 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v3);

  MEMORY[0x1B2726E80](62, 0xE100000000000000);
  v4 = *(v0 + 20);
  v5 = sub_1B0CFC1B0(60, 0xE100000000000000, (v0 + 8), *(v0 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 60;
    v7._object = 0xE100000000000000;
    v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = v5;

  v10 = *(v1 + 20);
  v11 = __CFADD__(v10, v8);
  v12 = v10 + v8;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 20) = v12;
    return v8;
  }

  return result;
}

uint64_t sub_1B0D57928(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_1B0E469C8();
  v8 = v7;
  v9 = *(v3 + 20);
  v10 = sub_1B0CFC1B0(v6, v7, (v4 + 8), *(v4 + 20));
  if (v11)
  {
    v12._countAndFlagsBits = v6;
    v12._object = v8;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;

  v15 = *(v3 + 20);
  v16 = (v15 + v13);
  if (__CFADD__(v15, v13))
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v3 + 20) = v16;
  if (a3)
  {
    v17 = 0;
  }

  else
  {
    v18 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v18);

    v19 = sub_1B0CFC1B0(46, 0xE100000000000000, (v3 + 8), v16);
    if (v20)
    {
      v21._countAndFlagsBits = 46;
      v21._object = 0xE100000000000000;
      v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v16);
    }

    v17 = v19;

    v22 = *(v4 + 20);
    v23 = __CFADD__(v22, v17);
    v24 = v22 + v17;
    if (v23)
    {
      goto LABEL_14;
    }

    *(v4 + 20) = v24;
  }

  result = v13 + v17;
  if (__OFADD__(v13, v17))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t Capability.name.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v5 = sub_1B0E44EE8();
    a1 = MEMORY[0x1B2726D00](v5);
  }

  return a1;
}

unint64_t sub_1B0D57AFC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1B0E44EE8();
  }

  __break(1u);
  return result;
}

uint64_t Capability.value.getter(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v7 = sub_1B0E44D08();
  v8 = sub_1B0D57AFC(v7, a1, a2);
  v9 = MEMORY[0x1B2726D00](v8);

  return v9;
}

uint64_t Capability.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (a5)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return MEMORY[0x1B2728DB0](a4 >> 14);
}

uint64_t Capability.hashValue.getter(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x1B2728DB0](a3 >> 14);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D57CF8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if (v4 != 1)
  {
    MEMORY[0x1B2728DB0](v3 >> 14);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D57D84()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v4 == 1)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return MEMORY[0x1B2728DB0](v3 >> 14);
}

uint64_t sub_1B0D57DE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if (v4 != 1)
  {
    MEMORY[0x1B2728DB0](v3 >> 14);
  }

  return sub_1B0E46CB8();
}

NIOIMAPCore2::Capability::RightsKind __swiftcall Capability.RightsKind.init(_:)(Swift::String a1)
{
  v1 = sub_1B0E44BB8();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result.rawValue._object = v5;
  result.rawValue._countAndFlagsBits = v4;
  return result;
}

uint64_t static Capability.RightsKind.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t _s12NIOIMAPCore210CapabilityV10RightsKindV9hashValueSivg_0()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D58084()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x30000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.acl = 4997953;
  unk_1EB738460 = 0xE300000000000000;
  qword_1EB738468 = v0;
  byte_1EB738470 = v5 & 1;
  return result;
}

uint64_t *Capability.acl.unsafeMutableAddressor()
{
  if (qword_1EB6E6DB0 != -1)
  {
    swift_once();
  }

  return &static Capability.acl;
}

uint64_t static Capability.acl.getter()
{
  if (qword_1EB6E6DB0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.acl;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

void sub_1B0D58230()
{
  if (("CREATE-SPECIAL-USE" & 0x2000000000000000) != 0)
  {
    v0 = ("CREATE-SPECIAL-USE" >> 40) & 0xF0000;
  }

  else
  {
    v0 = 1376256;
  }

  v1 = v0 == 0;
  if (v0)
  {
    v2 = 15;
    while (sub_1B0E44EA8() != 61 || v3 != 0xE100000000000000)
    {
      v4 = sub_1B0E46A78();

      if (v4)
      {
        goto LABEL_12;
      }

      v2 = sub_1B0E44D08();
      v1 = (v0 ^ v2) < 0x4000;
      if ((v0 ^ v2) < 0x4000)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

LABEL_12:
  static Capability.annotateExperiment1 = 0xD000000000000015;
  unk_1EB738480 = 0x80000001B0F2FCB0;
  qword_1EB738488 = v2;
  byte_1EB738490 = v1;
}

uint64_t *Capability.annotateExperiment1.unsafeMutableAddressor()
{
  if (qword_1EB6E6DB8 != -1)
  {
    swift_once();
  }

  return &static Capability.annotateExperiment1;
}

uint64_t static Capability.annotateExperiment1.getter()
{
  if (qword_1EB6E6DB8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.annotateExperiment1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D58410()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x60000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  *&static Capability.binary = 0x5952414E4942;
  *(&static Capability.binary + 1) = 0xE600000000000000;
  qword_1EB737FF0 = v0;
  byte_1EB737FF8 = v5 & 1;
  return result;
}

__int128 *Capability.binary.unsafeMutableAddressor()
{
  if (qword_1EB6DEA10 != -1)
  {
    swift_once();
  }

  return &static Capability.binary;
}

uint64_t static Capability.binary.getter()
{
  if (qword_1EB6DEA10 != -1)
  {
    swift_once();
  }

  v0 = static Capability.binary;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D585B8()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.catenate = 0x4554414E45544143;
  unk_1EB7384A0 = 0xE800000000000000;
  qword_1EB7384A8 = v0;
  byte_1EB7384B0 = v5 & 1;
  return result;
}

uint64_t *Capability.catenate.unsafeMutableAddressor()
{
  if (qword_1EB6E6DC0 != -1)
  {
    swift_once();
  }

  return &static Capability.catenate;
}

uint64_t static Capability.catenate.getter()
{
  if (qword_1EB6E6DC0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.catenate;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D58764()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.children = 0x4E4552444C494843;
  unk_1EB7384C0 = 0xE800000000000000;
  qword_1EB7384C8 = v0;
  byte_1EB7384D0 = v5 & 1;
  return result;
}

uint64_t *Capability.children.unsafeMutableAddressor()
{
  if (qword_1EB6E6DC8 != -1)
  {
    swift_once();
  }

  return &static Capability.children;
}

uint64_t static Capability.children.getter()
{
  if (qword_1EB6E6DC8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.children;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t static Capability.condStore.getter()
{
  if (qword_1EB6DE9E8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.condStore;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

void sub_1B0D58990()
{
  if (("XYMHIGHESTMODSEQ" & 0x2000000000000000) != 0)
  {
    v0 = ("XYMHIGHESTMODSEQ" >> 40) & 0xF0000;
  }

  else
  {
    v0 = 1179648;
  }

  v1 = v0 == 0;
  if (v0)
  {
    v2 = 15;
    while (sub_1B0E44EA8() != 61 || v3 != 0xE100000000000000)
    {
      v4 = sub_1B0E46A78();

      if (v4)
      {
        goto LABEL_12;
      }

      v2 = sub_1B0E44D08();
      v1 = (v0 ^ v2) < 0x4000;
      if ((v0 ^ v2) < 0x4000)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

LABEL_12:
  static Capability.createSpecialUse = 0xD000000000000012;
  unk_1EB7384E0 = 0x80000001B0F2FC90;
  qword_1EB7384E8 = v2;
  byte_1EB7384F0 = v1;
}

uint64_t *Capability.createSpecialUse.unsafeMutableAddressor()
{
  if (qword_1EB6E6DD0 != -1)
  {
    swift_once();
  }

  return &static Capability.createSpecialUse;
}

uint64_t static Capability.createSpecialUse.getter()
{
  if (qword_1EB6E6DD0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.createSpecialUse;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D58B70()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x60000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.enable = 0x454C42414E45;
  *algn_1EB737FC8 = 0xE600000000000000;
  qword_1EB737FD0 = v0;
  byte_1EB737FD8 = v5 & 1;
  return result;
}

uint64_t *Capability.enable.unsafeMutableAddressor()
{
  if (qword_1EB6DEA08 != -1)
  {
    swift_once();
  }

  return &static Capability.enable;
}

uint64_t static Capability.enable.getter()
{
  if (qword_1EB6DEA08 != -1)
  {
    swift_once();
  }

  v0 = static Capability.enable;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t static Capability.extendedSearch.getter()
{
  if (qword_1EB6DEA48 != -1)
  {
    swift_once();
  }

  v0 = static Capability.extendedSearch;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D58D98()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x50000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.esort = 0x54524F5345;
  unk_1EB738500 = 0xE500000000000000;
  qword_1EB738508 = v0;
  byte_1EB738510 = v5 & 1;
  return result;
}

uint64_t *Capability.esort.unsafeMutableAddressor()
{
  if (qword_1EB6E6DD8 != -1)
  {
    swift_once();
  }

  return &static Capability.esort;
}

uint64_t static Capability.esort.getter()
{
  if (qword_1EB6E6DD8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.esort;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D58F40()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.filters = 0x535245544C4946;
  unk_1EB738520 = 0xE700000000000000;
  qword_1EB738528 = v0;
  byte_1EB738530 = v5 & 1;
  return result;
}

uint64_t *Capability.filters.unsafeMutableAddressor()
{
  if (qword_1EB6E6DE0 != -1)
  {
    swift_once();
  }

  return &static Capability.filters;
}

uint64_t static Capability.filters.getter()
{
  if (qword_1EB6E6DE0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.filters;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D590EC()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x20000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.id = 17481;
  *algn_1EB738068 = 0xE200000000000000;
  qword_1EB738070 = v0;
  byte_1EB738078 = v5 & 1;
  return result;
}

uint64_t *Capability.id.unsafeMutableAddressor()
{
  if (qword_1EB6DEA30 != -1)
  {
    swift_once();
  }

  return &static Capability.id;
}

uint64_t static Capability.id.getter()
{
  if (qword_1EB6DEA30 != -1)
  {
    swift_once();
  }

  v0 = static Capability.id;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t static Capability.idle.getter()
{
  if (qword_1EB6DEA20 != -1)
  {
    swift_once();
  }

  v0 = static Capability.idle;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D59304()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x90000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.imap4rev1 = 0x7665723450414D49;
  unk_1EB738540 = 0xE900000000000031;
  qword_1EB738548 = v0;
  byte_1EB738550 = v4 & 1;
  return result;
}

uint64_t *Capability.imap4rev1.unsafeMutableAddressor()
{
  if (qword_1EB6E6DE8 != -1)
  {
    swift_once();
  }

  return &static Capability.imap4rev1;
}

uint64_t static Capability.imap4rev1.getter()
{
  if (qword_1EB6E6DE8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.imap4rev1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D594C0()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x50000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.imap4 = 0x3450414D49;
  unk_1EB738560 = 0xE500000000000000;
  qword_1EB738568 = v0;
  byte_1EB738570 = v5 & 1;
  return result;
}

uint64_t *Capability.imap4.unsafeMutableAddressor()
{
  if (qword_1EB6E6DF0 != -1)
  {
    swift_once();
  }

  return &static Capability.imap4;
}

uint64_t static Capability.imap4.getter()
{
  if (qword_1EB6E6DF0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.imap4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D59668()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.language = 0x45474155474E414CLL;
  unk_1EB738580 = 0xE800000000000000;
  qword_1EB738588 = v0;
  byte_1EB738590 = v5 & 1;
  return result;
}

uint64_t *Capability.language.unsafeMutableAddressor()
{
  if (qword_1EB6E6DF8 != -1)
  {
    swift_once();
  }

  return &static Capability.language;
}

uint64_t static Capability.language.getter()
{
  if (qword_1EB6E6DF8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.language;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t static Capability.listStatus.getter()
{
  if (qword_1EB6DEA78 != -1)
  {
    swift_once();
  }

  v0 = static Capability.listStatus;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D59894()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xD0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  strcpy(&static Capability.listExtended, "LIST-EXTENDED");
  unk_1EB7385A6 = -4864;
  qword_1EB7385A8 = v0;
  byte_1EB7385B0 = v4 & 1;
  return result;
}

uint64_t *Capability.listExtended.unsafeMutableAddressor()
{
  if (qword_1EB6E6E00 != -1)
  {
    swift_once();
  }

  return &static Capability.listExtended;
}

uint64_t static Capability.listExtended.getter()
{
  if (qword_1EB6E6E00 != -1)
  {
    swift_once();
  }

  v0 = static Capability.listExtended;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D59A50()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xD0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  strcpy(&static Capability.loginDisabled, "LOGINDISABLED");
  unk_1EB7385C6 = -4864;
  qword_1EB7385C8 = v0;
  byte_1EB7385D0 = v4 & 1;
  return result;
}

uint64_t *Capability.loginDisabled.unsafeMutableAddressor()
{
  if (qword_1EB6E6E08 != -1)
  {
    swift_once();
  }

  return &static Capability.loginDisabled;
}

uint64_t static Capability.loginDisabled.getter()
{
  if (qword_1EB6E6E08 != -1)
  {
    swift_once();
  }

  v0 = static Capability.loginDisabled;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D59C0C()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xF0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.loginReferrals = 0x45522D4E49474F4CLL;
  unk_1EB7385E0 = 0xEF534C4152524546;
  qword_1EB7385E8 = v0;
  byte_1EB7385F0 = v4 & 1;
  return result;
}

uint64_t *Capability.loginReferrals.unsafeMutableAddressor()
{
  if (qword_1EB6E6E10 != -1)
  {
    swift_once();
  }

  return &static Capability.loginReferrals;
}

uint64_t static Capability.loginReferrals.getter()
{
  if (qword_1EB6E6E10 != -1)
  {
    swift_once();
  }

  v0 = static Capability.loginReferrals;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t static Capability.mailboxSpecificAppendLimit.getter()
{
  if (qword_1EB6DEA38 != -1)
  {
    swift_once();
  }

  v0 = static Capability.mailboxSpecificAppendLimit;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D59E48()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.metadata = 0x415441444154454DLL;
  unk_1EB738600 = 0xE800000000000000;
  qword_1EB738608 = v0;
  byte_1EB738610 = v5 & 1;
  return result;
}

uint64_t *Capability.metadata.unsafeMutableAddressor()
{
  if (qword_1EB6E6E18 != -1)
  {
    swift_once();
  }

  return &static Capability.metadata;
}

uint64_t static Capability.metadata.getter()
{
  if (qword_1EB6E6E18 != -1)
  {
    swift_once();
  }

  v0 = static Capability.metadata;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D59FF4()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xF0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.metadataServer = 0x415441444154454DLL;
  unk_1EB738620 = 0xEF5245565245532DLL;
  qword_1EB738628 = v0;
  byte_1EB738630 = v4 & 1;
  return result;
}

uint64_t *Capability.metadataServer.unsafeMutableAddressor()
{
  if (qword_1EB6E6E20 != -1)
  {
    swift_once();
  }

  return &static Capability.metadataServer;
}

uint64_t static Capability.metadataServer.getter()
{
  if (qword_1EB6E6E20 != -1)
  {
    swift_once();
  }

  v0 = static Capability.metadataServer;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t static Capability.move.getter()
{
  if (qword_1EB6DEA18 != -1)
  {
    swift_once();
  }

  v0 = static Capability.move;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5A230()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.multiSearch = 0x41455349544C554DLL;
  unk_1EB738640 = 0xEB00000000484352;
  qword_1EB738648 = v0;
  byte_1EB738650 = v4 & 1;
  return result;
}

uint64_t *Capability.multiSearch.unsafeMutableAddressor()
{
  if (qword_1EB6E6E28 != -1)
  {
    swift_once();
  }

  return &static Capability.multiSearch;
}

uint64_t static Capability.multiSearch.getter()
{
  if (qword_1EB6E6E28 != -1)
  {
    swift_once();
  }

  v0 = static Capability.multiSearch;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t static Capability.namespace.getter()
{
  if (qword_1EB6DE9E0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.namespace;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5A468()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.objectID = 0x44495443454A424FLL;
  unk_1EB738660 = 0xE800000000000000;
  qword_1EB738668 = v0;
  byte_1EB738670 = v5 & 1;
  return result;
}

uint64_t *Capability.objectID.unsafeMutableAddressor()
{
  if (qword_1EB6E6E30 != -1)
  {
    swift_once();
  }

  return &static Capability.objectID;
}

uint64_t static Capability.objectID.getter()
{
  if (qword_1EB6E6E30 != -1)
  {
    swift_once();
  }

  v0 = static Capability.objectID;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5A614()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.qresync = 0x434E5953455251;
  unk_1EB738680 = 0xE700000000000000;
  qword_1EB738688 = v0;
  byte_1EB738690 = v5 & 1;
  return result;
}

uint64_t *Capability.qresync.unsafeMutableAddressor()
{
  if (qword_1EB6E6E38 != -1)
  {
    swift_once();
  }

  return &static Capability.qresync;
}

uint64_t static Capability.qresync.getter()
{
  if (qword_1EB6E6E38 != -1)
  {
    swift_once();
  }

  v0 = static Capability.qresync;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5A7C0()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x50000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.quota = 0x41544F5551;
  unk_1EB7386A0 = 0xE500000000000000;
  qword_1EB7386A8 = v0;
  byte_1EB7386B0 = v5 & 1;
  return result;
}

uint64_t *Capability.quota.unsafeMutableAddressor()
{
  if (qword_1EB6E6E40 != -1)
  {
    swift_once();
  }

  return &static Capability.quota;
}

uint64_t static Capability.quota.getter()
{
  if (qword_1EB6E6E40 != -1)
  {
    swift_once();
  }

  v0 = static Capability.quota;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5A968()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.saslIR = 0x52492D4C534153;
  *algn_1EB737FA8 = 0xE700000000000000;
  qword_1EB737FB0 = v0;
  byte_1EB737FB8 = v5 & 1;
  return result;
}

uint64_t *Capability.saslIR.unsafeMutableAddressor()
{
  if (qword_1EB6DEA00 != -1)
  {
    swift_once();
  }

  return &static Capability.saslIR;
}

uint64_t static Capability.saslIR.getter()
{
  if (qword_1EB6DEA00 != -1)
  {
    swift_once();
  }

  v0 = static Capability.saslIR;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5AB14()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x90000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.searchRes = 0x4552484352414553;
  unk_1EB7386C0 = 0xE900000000000053;
  qword_1EB7386C8 = v0;
  byte_1EB7386D0 = v4 & 1;
  return result;
}

uint64_t *Capability.searchRes.unsafeMutableAddressor()
{
  if (qword_1EB6E6E48 != -1)
  {
    swift_once();
  }

  return &static Capability.searchRes;
}

uint64_t static Capability.searchRes.getter()
{
  if (qword_1EB6E6E48 != -1)
  {
    swift_once();
  }

  v0 = static Capability.searchRes;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t static Capability.specialUse.getter()
{
  if (qword_1EB6DEA70 != -1)
  {
    swift_once();
  }

  v0 = static Capability.specialUse;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5AD50()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.startTLS = 0x534C545452415453;
  unk_1EB7386E0 = 0xE800000000000000;
  qword_1EB7386E8 = v0;
  byte_1EB7386F0 = v5 & 1;
  return result;
}

uint64_t *Capability.startTLS.unsafeMutableAddressor()
{
  if (qword_1EB6E6E50 != -1)
  {
    swift_once();
  }

  return &static Capability.startTLS;
}

uint64_t static Capability.startTLS.getter()
{
  if (qword_1EB6E6E50 != -1)
  {
    swift_once();
  }

  v0 = static Capability.startTLS;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5AEFC()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.uidPlus = 0x53554C50444955;
  unk_1EB738700 = 0xE700000000000000;
  qword_1EB738708 = v0;
  byte_1EB738710 = v5 & 1;
  return result;
}

uint64_t *Capability.uidPlus.unsafeMutableAddressor()
{
  if (qword_1EB6E6E58 != -1)
  {
    swift_once();
  }

  return &static Capability.uidPlus;
}

uint64_t static Capability.uidPlus.getter()
{
  if (qword_1EB6E6E58 != -1)
  {
    swift_once();
  }

  v0 = static Capability.uidPlus;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5B0A8()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xA0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.uidBatches = 0x4843544142444955;
  *algn_1EB738148 = 0xEA00000000005345;
  qword_1EB738150 = v0;
  byte_1EB738158 = v4 & 1;
  return result;
}

uint64_t *Capability.uidBatches.unsafeMutableAddressor()
{
  if (qword_1EB6DEA68 != -1)
  {
    swift_once();
  }

  return &static Capability.uidBatches;
}

uint64_t static Capability.uidBatches.getter()
{
  if (qword_1EB6DEA68 != -1)
  {
    swift_once();
  }

  v0 = static Capability.uidBatches;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5B264()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.unselect = 0x5443454C45534E55;
  unk_1EB738720 = 0xE800000000000000;
  qword_1EB738728 = v0;
  byte_1EB738730 = v5 & 1;
  return result;
}

uint64_t *Capability.unselect.unsafeMutableAddressor()
{
  if (qword_1EB6E6E60 != -1)
  {
    swift_once();
  }

  return &static Capability.unselect;
}

uint64_t static Capability.unselect.getter()
{
  if (qword_1EB6E6E60 != -1)
  {
    swift_once();
  }

  v0 = static Capability.unselect;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5B410()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.partialURL = 0x545241502D4C5255;
  unk_1EB738740 = 0xEB000000004C4149;
  qword_1EB738748 = v0;
  byte_1EB738750 = v4 & 1;
  return result;
}

uint64_t *Capability.partialURL.unsafeMutableAddressor()
{
  if (qword_1EB6E6E68 != -1)
  {
    swift_once();
  }

  return &static Capability.partialURL;
}

uint64_t static Capability.partialURL.getter()
{
  if (qword_1EB6E6E68 != -1)
  {
    swift_once();
  }

  v0 = static Capability.partialURL;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t static Capability.partial.getter()
{
  if (qword_1EB6DE9F8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.partial;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5B648()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.authenticatedURL = 0x485455414C5255;
  unk_1EB738760 = 0xE700000000000000;
  qword_1EB738768 = v0;
  byte_1EB738770 = v5 & 1;
  return result;
}

uint64_t *Capability.authenticatedURL.unsafeMutableAddressor()
{
  if (qword_1EB6E6E70 != -1)
  {
    swift_once();
  }

  return &static Capability.authenticatedURL;
}

uint64_t static Capability.authenticatedURL.getter()
{
  if (qword_1EB6E6E70 != -1)
  {
    swift_once();
  }

  v0 = static Capability.authenticatedURL;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5B7F4()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x60000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.within = 0x4E4948544957;
  unk_1EB738780 = 0xE600000000000000;
  qword_1EB738788 = v0;
  byte_1EB738790 = v5 & 1;
  return result;
}

uint64_t *Capability.within.unsafeMutableAddressor()
{
  if (qword_1EB6E6E78 != -1)
  {
    swift_once();
  }

  return &static Capability.within;
}

uint64_t static Capability.within.getter()
{
  if (qword_1EB6E6E78 != -1)
  {
    swift_once();
  }

  v0 = static Capability.within;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t static Capability.gmailExtensions.getter()
{
  if (qword_1EB6DEA40 != -1)
  {
    swift_once();
  }

  v0 = static Capability.gmailExtensions;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t static Capability.yahooMailHighestModificationSequence.getter()
{
  if (qword_1EB6DEA28 != -1)
  {
    swift_once();
  }

  v0 = static Capability.yahooMailHighestModificationSequence;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5BA9C()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  *&static Capability.literalPlus = 0x2B4C41524554494CLL;
  *(&static Capability.literalPlus + 1) = 0xE800000000000000;
  qword_1EB738130 = v0;
  byte_1EB738138 = v5 & 1;
  return result;
}

__int128 *Capability.literalPlus.unsafeMutableAddressor()
{
  if (qword_1EB6DEA60 != -1)
  {
    swift_once();
  }

  return &static Capability.literalPlus;
}

uint64_t static Capability.literalPlus.getter()
{
  if (qword_1EB6DEA60 != -1)
  {
    swift_once();
  }

  v0 = static Capability.literalPlus;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5BC48()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  *&static Capability.literalMinus = 0x2D4C41524554494CLL;
  *(&static Capability.literalMinus + 1) = 0xE800000000000000;
  qword_1EB738110 = v0;
  byte_1EB738118 = v5 & 1;
  return result;
}

__int128 *Capability.literalMinus.unsafeMutableAddressor()
{
  if (qword_1EB6DEA58 != -1)
  {
    swift_once();
  }

  return &static Capability.literalMinus;
}

uint64_t static Capability.literalMinus.getter()
{
  if (qword_1EB6DEA58 != -1)
  {
    swift_once();
  }

  v0 = static Capability.literalMinus;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5BDF4()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.preview = 0x57454956455250;
  unk_1EB7387A0 = 0xE700000000000000;
  qword_1EB7387A8 = v0;
  byte_1EB7387B0 = v5 & 1;
  return result;
}

uint64_t *Capability.preview.unsafeMutableAddressor()
{
  if (qword_1EB6E6E80 != -1)
  {
    swift_once();
  }

  return &static Capability.preview;
}

uint64_t static Capability.preview.getter()
{
  if (qword_1EB6E6E80 != -1)
  {
    swift_once();
  }

  v0 = static Capability.preview;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5BFA0()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.uidOnly = 0x594C4E4F444955;
  *algn_1EB737F68 = 0xE700000000000000;
  qword_1EB737F70 = v0;
  byte_1EB737F78 = v5 & 1;
  return result;
}

uint64_t *Capability.uidOnly.unsafeMutableAddressor()
{
  if (qword_1EB6DE9F0 != -1)
  {
    swift_once();
  }

  return &static Capability.uidOnly;
}

uint64_t static Capability.uidOnly.getter()
{
  if (qword_1EB6DE9F0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.uidOnly;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

uint64_t sub_1B0D5C1AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v3);

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = 4 * v4;
    while (sub_1B0E44EA8() != 61 || v6 != 0xE100000000000000)
    {
      v7 = sub_1B0E46A78();

      if ((v7 & 1) != 0 || v5 == sub_1B0E44D08() >> 14)
      {
        return a2;
      }
    }
  }

  return a2;
}

uint64_t static Capability.sort(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x1B2726E80]();
    v2 = 0x3D54524F53;
    while (sub_1B0E44EA8() != 61 || v3 != 0xE100000000000000)
    {
      v4 = sub_1B0E46A78();

      if ((v4 & 1) != 0 || sub_1B0E44D08() >> 14 == 20)
      {
        return v2;
      }
    }
  }

  else
  {
    v2 = 1414680403;
    while (sub_1B0E44EA8() != 61 || v5 != 0xE100000000000000)
    {
      v7 = sub_1B0E46A78();

      if ((v7 & 1) != 0 || (sub_1B0E44D08() & 0xFFFFFFFFFFFFC000) == 0x40000)
      {
        return v2;
      }
    }
  }

  return v2;
}

uint64_t sub_1B0D5C530(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  MEMORY[0x1B2726E80]();
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = 4 * v4;
    while (sub_1B0E44EA8() != 61 || v6 != 0xE100000000000000)
    {
      v7 = sub_1B0E46A78();

      if ((v7 & 1) != 0 || v5 == sub_1B0E44D08() >> 14)
      {
        return a3;
      }
    }
  }

  return a3;
}

uint64_t sub_1B0D5C638(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x494C494241504143, 0xEA00000000005954, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x494C494241504143;
    v7._object = 0xEA00000000005954;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_20;
  }

  *(v1 + 20) = v10;
  v26 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v1 + 8), v10);
    if (v12)
    {
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v25[2] = sub_1B0D5C820;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = &v26;
  v25[6] = 32;
  v25[7] = 0xE100000000000000;
  result = sub_1B0DE5DBC(0, sub_1B0D5CCB4, v25, a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    goto LABEL_21;
  }

  if (!v11)
  {
    v24 = v14 + result;
    goto LABEL_16;
  }

  v19 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v2 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v8 + v24;
  if (__OFADD__(v8, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D5C820(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 20);
  result = sub_1B0CFC1B0(*a1, v4, (a2 + 8), v5);
  if (v7)
  {
    v8._countAndFlagsBits = v3;
    v8._object = v4;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = *(a2 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 20) = v11;
  }

  return result;
}

uint64_t sub_1B0D5C8A4@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v11 = *a1;
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  v14 = *(a2 + 32);
  v15 = *a6;
  v17 = *a2;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  result = sub_1B0E22C0C(v11, &v17, a3, a4, a5, v15, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1B0D5C8FC(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1B0E46A78(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a8 & 1) != 0 || (a7 ^ a3) >> 14)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

unint64_t sub_1B0D5C988()
{
  result = qword_1EB6DE9D0;
  if (!qword_1EB6DE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE9D0);
  }

  return result;
}

unint64_t sub_1B0D5C9E0()
{
  result = qword_1EB6E7150;
  if (!qword_1EB6E7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7150);
  }

  return result;
}

unint64_t sub_1B0D5CA38()
{
  result = qword_1EB6E7158;
  if (!qword_1EB6E7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7158);
  }

  return result;
}

unint64_t sub_1B0D5CA90()
{
  result = qword_1EB6E7160;
  if (!qword_1EB6E7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7160);
  }

  return result;
}

unint64_t sub_1B0D5CAE8()
{
  result = qword_1EB6E7168;
  if (!qword_1EB6E7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7168);
  }

  return result;
}

unint64_t sub_1B0D5CB40()
{
  result = qword_1EB6E7170;
  if (!qword_1EB6E7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7170);
  }

  return result;
}

unint64_t sub_1B0D5CB98()
{
  result = qword_1EB6E7178;
  if (!qword_1EB6E7178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7178);
  }

  return result;
}

unint64_t sub_1B0D5CBF0()
{
  result = qword_1EB6E7180;
  if (!qword_1EB6E7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7180);
  }

  return result;
}

BOOL static ChangedSinceModifier.__derived_struct_equals(_:_:)(_BOOL8 result, uint64_t a2)
{
  if (((a2 | result) & 0x8000000000000000) == 0)
  {
    return a2 == result;
  }

  __break(1u);
  return result;
}

uint64_t _s12NIOIMAPCore220ChangedSinceModifierV9hashValueSivg_0(uint64_t a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](a1);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D5CE38()
{
  result = qword_1EB6E7188;
  if (!qword_1EB6E7188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7188);
  }

  return result;
}

unint64_t sub_1B0D5CE90()
{
  result = qword_1EB6E7190;
  if (!qword_1EB6E7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7190);
  }

  return result;
}

uint64_t static Base64.encodeString<A>(bytes:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B0E45698();
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (((result + 2) / 3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  MEMORY[0x1EEE9AC00](result);
  v20[-2] = v13;
  v20[-1] = a2;
  v14 = *(a4 + 8);
  sub_1B0E44F38();
  if (v20[3])
  {
    return v20[2];
  }

  (*(v8 + 16))(v11, a1, a3);
  result = sub_1B0E45378();
  v15 = *(result + 16);
  if (__OFADD__(v15, 2))
  {
    goto LABEL_11;
  }

  if (((v15 + 2) / 3uLL - 0x2000000000000000) >> 62 != 3)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  MEMORY[0x1EEE9AC00](result);
  v20[-4] = v16;
  v20[-3] = v17;
  v20[-2] = v18;
  v20[-1] = a2;
  v19 = sub_1B0E44CB8();

  return v19;
}

uint64_t static Base64.decode(string:options:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v6 = sub_1B0A6C2B0();
    v13 = v12;

    v5 = v13;
LABEL_9:
    v10 = static Base64.decode(string:options:)(v6, v5, a3);
    if (v3)
    {
    }

    v11 = v10;

    return v11;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
    v14[0] = a1;
    v14[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    v7 = v14;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = sub_1B0E46368();
  }

  result = sub_1B0D5DDF4(v7, v8, a3, &v15);
  if (!v3)
  {
    result = v15;
    if (!v15)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t static Base64.encodeBytes<A>(bytes:options:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B0E45698();
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (((result + 2) / 3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  MEMORY[0x1EEE9AC00](result);
  v13 = *(a4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B0E44F38();
  v14 = v25;
  if (v25)
  {
    return v14;
  }

  (*(v8 + 16))(v11, a1, a3);
  result = sub_1B0E45378();
  v15 = *(result + 16);
  v16 = v15 + 2;
  if (__OFADD__(v15, 2))
  {
    goto LABEL_23;
  }

  v17 = v16 / 3;
  if ((v16 / 3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = 4 * v17;
  if (((4 * v17) & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = result;
  if (v16 >= 3)
  {
    v14 = sub_1B0E45278();
    *(v14 + 16) = v18;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v25 = 0;
  if (a2)
  {
    v20 = &unk_1F272F550;
  }

  else
  {
    v20 = &unk_1F272F790;
  }

  v21 = &unk_1F272F780;
  if (a2)
  {
    v21 = &unk_1F272F540;
  }

  v22 = &unk_1F272F660;
  if (a2)
  {
    v23 = &unk_1F272F670;
  }

  else
  {
    v22 = &unk_1F272F8A0;
    v23 = &unk_1F272F8B0;
  }

  sub_1B0D5D95C(v20, *v21, v23, *v22, v19 + 32, v15, v14 + 32, v18, (a2 & 2) != 0, &v25);

  if (v18 >= v25)
  {
    *(v14 + 16) = v25;

    return v14;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B0D5D5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v11 = sub_1B0E45278();
      *(v11 + 16) = a3;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v17 = 0;
    v12 = &unk_1F272F540;
    if (a4)
    {
      v13 = &unk_1F272F550;
    }

    else
    {
      v13 = &unk_1F272F790;
    }

    if ((a4 & 1) == 0)
    {
      v12 = &unk_1F272F780;
    }

    v14 = &unk_1F272F660;
    if (a4)
    {
      v15 = &unk_1F272F670;
    }

    else
    {
      v14 = &unk_1F272F8A0;
      v15 = &unk_1F272F8B0;
    }

    sub_1B0D5D95C(v13, *v12, v15, *v14, a1, a2, v11 + 32, a3, (a4 & 2) != 0, &v17);
    if (v5)
    {
      goto LABEL_18;
    }

    if (v17 <= a3)
    {
      *(v11 + 16) = v17;
      *a5 = v11;
      return result;
    }
  }

  __break(1u);
LABEL_18:

  __break(1u);
  return result;
}

uint64_t static Base64._encodeChromium(input:buffer:length:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    v8 = &unk_1F272F550;
  }

  else
  {
    v8 = &unk_1F272F790;
  }

  v9 = &unk_1F272F780;
  if (a6)
  {
    v9 = &unk_1F272F540;
  }

  v10 = &unk_1F272F660;
  if (a6)
  {
    v11 = &unk_1F272F670;
  }

  else
  {
    v10 = &unk_1F272F8A0;
    v11 = &unk_1F272F8B0;
  }

  sub_1B0D5D95C(v8, *v9, v11, *v10, a1, a2, a3, a4, (a6 & 2) != 0, a5);
}

uint64_t sub_1B0D5D81C@<X0>(uint64_t *a1@<X8>)
{
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  result = sub_1B0E44CB8();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B0D5D874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = a3;
  v8 = &unk_1F272F540;
  if (a6)
  {
    v9 = &unk_1F272F550;
  }

  else
  {
    v9 = &unk_1F272F790;
  }

  if ((a6 & 1) == 0)
  {
    v8 = &unk_1F272F780;
  }

  v10 = &unk_1F272F660;
  if (a6)
  {
    v11 = &unk_1F272F670;
  }

  else
  {
    v10 = &unk_1F272F8A0;
    v11 = &unk_1F272F8B0;
  }

  sub_1B0D5D95C(v9, *v8, v11, *v10, a4, a5, a1, a2, (a6 & 2) != 0, &v13);
  if (v6)
  {

    __break(1u);
  }

  else
  {

    return v13;
  }

  return result;
}

uint64_t sub_1B0D5D95C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10)
{
  v10 = 3 * (a6 / 3);
  v11 = a6 % 3;
  if (v10 > 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = (a7 + 3);
    do
    {
      if (__OFADD__(v13, 3))
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13 + 3;
      }

      v16 = v13 + 2;
      if (__OFADD__(v13, 2))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v17 = (a5 + v13);
      v18 = *v17;
      v19 = *(a5 + v16);
      v20 = v17[1];
      *(v14 - 3) = *(result + v18);
      *(v14 - 2) = *(a3 + ((v20 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v18 & 3))));
      *(v14 - 1) = *(a3 + ((v19 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v20 & 0xF))));
      *v14 = *(a3 + v19);
      v21 = v12 + 4;
      if (__OFADD__(v12, 4))
      {
        goto LABEL_43;
      }

      v14 += 4;
      v12 += 4;
      v13 = v15;
    }

    while (v15 < v10);
    if (v11 > 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

  if (v11 < 1)
  {
LABEL_40:
    v21 = 0;
    goto LABEL_41;
  }

  v21 = 0;
LABEL_13:
  v22 = v10 + 1;
  if (v10 + 1 >= a6)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(a5 + v22);
  }

  v24 = v10 + 2;
  if (__OFADD__(v10, 2))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v25 = *(a5 + v10);
  LOBYTE(v10) = a9;
  if (v24 < a6)
  {
    v26 = *(a5 + v24);
    *(a7 + v21) = *(result + v25);
    if (v22 >= a6)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v21, 1))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v22 = (v23 >> 4) & 0xFFFFFFCF | (16 * (v25 & 3));
    *(a7 + v21 + 1) = *(a3 + v22);
    if (__OFADD__(v21, 2))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v25 = (v26 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v23 & 0xF));
    *(a7 + v21 + 2) = *(a3 + v25);
    v10 = v21 + 3;
    if (__OFADD__(v21, 3))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v23 = *(a3 + v26);
    *(a7 + v10) = v23;
    v27 = __OFADD__(v21, 4);
    v21 += 4;
    if (!v27)
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  *(a7 + v21) = *(result + v25);
  if (v22 < a6)
  {
    if (__OFADD__(v21, 1))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    *(a7 + v21 + 1) = *(a3 + ((v23 >> 4) & 0xFFFFFFCF | (16 * (v25 & 3))));
    v25 = v21 + 2;
    if (__OFADD__(v21, 2))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    *(a7 + v25) = *(a3 + 4 * (v23 & 0xF));
    v27 = __OFADD__(v21, 3);
    v21 += 3;
    if (v27)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v10)
    {
      goto LABEL_41;
    }

    LOBYTE(v10) = 61;
    *(a7 + v21) = 61;
    v27 = __OFADD__(v21++, 1);
    if (!v27)
    {
      goto LABEL_41;
    }

    __break(1u);
  }

LABEL_33:
  if (__OFADD__(v21, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(a7 + v21 + 1) = *(a3 + 16 * (v25 & 3));
  v27 = __OFADD__(v21, 2);
  v21 += 2;
  if (v27)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v10)
  {
LABEL_41:
    *a10 = v21;
    return result;
  }

  *(a7 + v21) = 61;
  if (!__OFADD__(v21, 1))
  {
    *(a7 + v21 + 1) = 61;
    v27 = __OFADD__(v21, 2);
    v21 += 2;
    if (!v27)
    {
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t static Base64.withUnsafeEncodingTablesAsBufferPointers<A>(options:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = &unk_1F272F650;
  }

  else
  {
    v5 = &unk_1F272F890;
  }

  v9[2] = a4;
  v9[3] = v5;
  v9[4] = a2;
  v9[5] = a3;
  if (a1)
  {
    v6 = &unk_1F272F530;
  }

  else
  {
    v6 = &unk_1F272F770;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  sub_1B0D5DD2C(sub_1B0D5EF60, v9, v6, MEMORY[0x1E69E7508], a4, v7, MEMORY[0x1E69E7288], &v10);
}

uint64_t sub_1B0D5DC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13[2] = a6;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a1;
  v13[6] = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  result = sub_1B0D5DD2C(sub_1B0D5F590, v13, a3, MEMORY[0x1E69E7508], a6, v11, MEMORY[0x1E69E7288], &v14);
  if (v7)
  {
    *a7 = v14;
  }

  return result;
}

uint64_t sub_1B0D5DD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B0D5F0EC(v15, v16, v17, v18, v19, v20, v21, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a6);
  }

  return result;
}

uint64_t sub_1B0D5DDF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  if (a2 < 1)
  {
    goto LABEL_7;
  }

  if (__OFADD__(a2, 3))
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  v9 = 3 * ((a2 + 3) >> 2);
  v10 = sub_1B0E45278();
  v11 = v10;
  *(v10 + 16) = v9;
  if (!v8)
  {
    v16 = 0;
    v14 = v10 + 32;
    v15 = v9;
    result = sub_1B0D5E798(&v14, &v16, 0, 0, a3);
    v12 = v16;
    v13 = v9 < v16;
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v9 >= v16)
    {
LABEL_10:
      *(v11 + 16) = v12;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = 0;
  v14 = v10 + 32;
  v15 = v9;
  result = sub_1B0D5E798(&v14, &v16, v8, a2, a3);
  v12 = v16;
  v13 = v9 < v16;
  if (v4)
  {
    if (v9 < v16)
    {
      __break(1u);
LABEL_7:
      *a4 = MEMORY[0x1E69E7CC0];
      return result;
    }

    goto LABEL_10;
  }

  if (v9 >= v16)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:
  if (!v13)
  {
LABEL_14:
    *(v11 + 16) = v12;
    *a4 = v11;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t static Base64._decodeChromium(from:into:length:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a2 + 3;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  v7 = a2 - (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if ((a6 & 2) != 0)
  {
    if (v7 == 1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = a2 + 3;
    if (__OFADD__(a2, 3))
    {
      __break(1u);
    }

    else
    {
      if (v10 < 0)
      {
        v10 = a2 + 6;
      }

      if (3 * (v10 >> 2) <= a4)
      {
        v11 = (v6 >> 2) - (a2 == (v6 & 0xFFFFFFFFFFFFFFFCLL));
        v12 = &unk_1F272D400;
        if ((a6 & 1) == 0)
        {
          v12 = &unk_1F272E480;
        }

        v13 = &unk_1F272D820;
        if ((a6 & 1) == 0)
        {
          v13 = &unk_1F272E8A0;
        }

        v14 = &unk_1F272DC40;
        if ((a6 & 1) == 0)
        {
          v14 = &unk_1F272ECC0;
        }

        v15 = &unk_1F272E060;
        if ((a6 & 1) == 0)
        {
          v15 = &unk_1F272F0E0;
        }

        if (v11 < 1)
        {
          v22 = 0;
        }

        else
        {
          v16 = 0;
          v17 = (a3 + 2);
          v18 = (a1 + 3);
          v19 = v11;
          do
          {
            v20 = *(v18 - 3);
            v21 = v13[*(v18 - 2)] | v12[v20] | v14[*(v18 - 1)] | v15[*v18];
            if (v21 >= 0x1FFFFFF)
            {
              goto LABEL_50;
            }

            v18 += 4;
            *(v17 - 1) = v21;
            *v17 = BYTE2(v21);
            v17 += 3;
            v16 -= 3;
            --v19;
          }

          while (v19);
          v22 = -v16;
        }

        if ((v11 - 0x2000000000000000) >> 62 == 3)
        {
          v23 = 4 * v11;
          v24 = (a1 + 4 * v11);
          v20 = *v24;
          v25 = v24[1];
          if ((v23 | 2) >= a2)
          {
            v28 = 0;
            v27 = 1;
          }

          else
          {
            v26 = *(a1 + (v23 | 2));
            v27 = v26 == 61;
            if (v26 == 61)
            {
              v28 = 0;
            }

            else
            {
              v28 = *(a1 + (v23 | 2));
            }
          }

          v29 = v23 | 3;
          if (v29 >= a2)
          {
            v34 = v12[v20];
            v35 = v13[v25];
            v36 = 65;
            if (!v27)
            {
              v36 = v28;
            }

            v31 = v35 | v34 | v14[v36];
          }

          else
          {
            v30 = *(a1 + v29);
            if (v27)
            {
              v28 = 65;
            }

            v31 = v13[v25] | v12[v20] | v14[v28];
            if (v30 == 61)
            {
              LOBYTE(v32) = 0;
            }

            else
            {
              LOBYTE(v32) = v30;
            }

            if (v30 != 61)
            {
              v33 = 0;
              v32 = v32;
              goto LABEL_43;
            }
          }

          v33 = 1;
          v32 = 65;
LABEL_43:
          v37 = v15[v32] | v31;
          if (v37 > 0x1FFFFFE)
          {
LABEL_50:
            sub_1B0D5EF84();
            swift_allocError();
            *v40 = v20;
            v40[1] = 0;
            swift_willThrow();
            goto LABEL_51;
          }

          *(a3 + v22) = v37;
          v38 = v22 + 1;
          if (!__OFADD__(v22, 1))
          {
            if (v27 || (*(a3 + v38) = BYTE1(v37), v39 = __OFADD__(v38, 1), v38 = v22 + 2, !v39))
            {
              if ((v33 & 1) != 0 || (*(a3 + v38) = BYTE2(v37), v39 = __OFADD__(v38, 1), ++v38, !v39))
              {
                *a5 = v38;
LABEL_51:

                goto LABEL_52;
              }

LABEL_58:
              __break(1u);
            }

LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  if (v7 < 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_1B0D5EF84();
  swift_allocError();
  *v8 = 256;
  result = swift_willThrow();
LABEL_52:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0D5E2B8(uint64_t result, char a2)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (__OFADD__(v3, 3))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  v6 = 3 * ((v3 + 3) >> 2);
  v7 = sub_1B0E45278();
  *(v7 + 16) = v6;
  v8[1] = v6;
  v9 = 0;
  v8[0] = v7 + 32;
  result = sub_1B0D5E798(v8, &v9, v5 + 32, v3, a2);
  if (v2)
  {
    if (v6 >= v9)
    {
      *(v7 + 16) = v9;
      v7 = v2;

      return v7;
    }

    goto LABEL_11;
  }

  if (v6 >= v9)
  {
    *(v7 + 16) = v9;
    return v7;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B0D5E39C(uint64_t *a1, char a2)
{
  v4 = a1[3];
  v3 = a1[4];
  v5 = v3 - v4;
  v6 = __OFSUB__(v3, v4);
  if (v5 < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = *a1;
  v9 = *(a1 + 10);
  v10 = *(a1 + 22);
  result = swift_beginAccess();
  if (v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, 3))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = *(v8 + 24);
  v13 = (v10 | (v9 << 8)) + v4;
  v14 = 3 * ((v5 + 3) >> 2);
  v15 = sub_1B0E45278();
  *(v15 + 16) = v14;
  v16[1] = v14;
  v17 = 0;
  v16[0] = v15 + 32;
  result = sub_1B0D5E798(v16, &v17, v12 + v13, v5, a2);
  if (v2)
  {
    if (v14 >= v17)
    {
      *(v15 + 16) = v17;

      return v15;
    }

    goto LABEL_16;
  }

  if (v14 >= v17)
  {
    *(v15 + 16) = v17;
    return v15;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t static Base64.decode<A>(bytes:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B0E45698();
  if (v13 < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v13);
  *(&v18 - 2) = a2;
  v14 = *(a4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  result = sub_1B0E44F38();
  if (!v4)
  {
    result = v19;
    if (!v19)
    {
      (*(v9 + 16))(v12, a1, a3);
      v16 = sub_1B0E45378();
      v17 = sub_1B0D5E2B8(v16, a2);

      return v17;
    }
  }

  return result;
}

uint64_t sub_1B0D5E694@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v6 = a2 + 3;
  if (__OFADD__(a2, 3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = a2 + 6;
  if (v6 >= 0)
  {
    v7 = a2 + 3;
  }

  if (v6 < -3)
  {
    goto LABEL_15;
  }

  v10 = result;
  v11 = 3 * (v7 >> 2);
  if (v6 < 4)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v12 = sub_1B0E45278();
    *(v12 + 16) = v11;
  }

  v13[1] = v11;
  v14 = 0;
  v13[0] = v12 + 32;
  result = sub_1B0D5E798(v13, &v14, v10, a2, a3);
  if (v4)
  {
    if (v11 >= v14)
    {
      *(v12 + 16) = v14;
    }

    goto LABEL_16;
  }

  if (v11 < v14)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v12 + 16) = v14;
  *a4 = v12;
  return result;
}

uint64_t sub_1B0D5E798(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a4 + 3;
  if (a4 >= 0)
  {
    v6 = a4;
  }

  v7 = a4 - (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if ((a5 & 2) != 0)
  {
    if (v7 == 1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = a4 + 3;
    if (__OFADD__(a4, 3))
    {
      __break(1u);
    }

    else
    {
      if (v10 < 0)
      {
        v10 = a4 + 6;
      }

      if (a1[1] >= 3 * (v10 >> 2))
      {
        v11 = (v6 >> 2) - (a4 == (v6 & 0xFFFFFFFFFFFFFFFCLL));
        v12 = &unk_1F272D400;
        if ((a5 & 1) == 0)
        {
          v12 = &unk_1F272E480;
        }

        v13 = &unk_1F272D820;
        if ((a5 & 1) == 0)
        {
          v13 = &unk_1F272E8A0;
        }

        v14 = &unk_1F272DC40;
        if ((a5 & 1) == 0)
        {
          v14 = &unk_1F272ECC0;
        }

        v15 = &unk_1F272E060;
        if ((a5 & 1) == 0)
        {
          v15 = &unk_1F272F0E0;
        }

        if (v11 < 1)
        {
          v22 = 0;
        }

        else
        {
          v16 = 0;
          v17 = (v5 + 2);
          v18 = (a3 + 3);
          v19 = v11;
          do
          {
            v20 = *(v18 - 3);
            v21 = v13[*(v18 - 2)] | v12[v20] | v14[*(v18 - 1)] | v15[*v18];
            if (v21 >= 0x1FFFFFF)
            {
              goto LABEL_50;
            }

            v18 += 4;
            *(v17 - 1) = v21;
            *v17 = BYTE2(v21);
            v17 += 3;
            v16 -= 3;
            --v19;
          }

          while (v19);
          v22 = -v16;
        }

        if ((v11 - 0x2000000000000000) >> 62 == 3)
        {
          v23 = 4 * v11;
          v24 = (a3 + 4 * v11);
          v20 = *v24;
          v25 = v24[1];
          if ((v23 | 2) >= a4)
          {
            v28 = 0;
            v27 = 1;
          }

          else
          {
            v26 = *(a3 + (v23 | 2));
            v27 = v26 == 61;
            if (v26 == 61)
            {
              v28 = 0;
            }

            else
            {
              v28 = *(a3 + (v23 | 2));
            }
          }

          v29 = v23 | 3;
          if (v29 >= a4)
          {
            v34 = v12[v20];
            v35 = v13[v25];
            v36 = 65;
            if (!v27)
            {
              v36 = v28;
            }

            v31 = v35 | v34 | v14[v36];
          }

          else
          {
            v30 = *(a3 + v29);
            if (v27)
            {
              v28 = 65;
            }

            v31 = v13[v25] | v12[v20] | v14[v28];
            if (v30 == 61)
            {
              LOBYTE(v32) = 0;
            }

            else
            {
              LOBYTE(v32) = v30;
            }

            if (v30 != 61)
            {
              v33 = 0;
              v32 = v32;
              goto LABEL_43;
            }
          }

          v33 = 1;
          v32 = 65;
LABEL_43:
          v37 = v15[v32] | v31;
          if (v37 > 0x1FFFFFE)
          {
LABEL_50:
            sub_1B0D5EF84();
            swift_allocError();
            *v40 = v20;
            v40[1] = 0;
            swift_willThrow();
            goto LABEL_51;
          }

          *(v5 + v22) = v37;
          v38 = v22 + 1;
          if (!__OFADD__(v22, 1))
          {
            if (v27 || (*(v5 + v38) = BYTE1(v37), v39 = __OFADD__(v38, 1), v38 = v22 + 2, !v39))
            {
              if ((v33 & 1) != 0 || (*(v5 + v38) = BYTE2(v37), v39 = __OFADD__(v38, 1), ++v38, !v39))
              {
                *a2 = v38;
LABEL_51:

                goto LABEL_52;
              }

LABEL_58:
              __break(1u);
            }

LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  if (v7 < 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_1B0D5EF84();
  swift_allocError();
  *v8 = 256;
  result = swift_willThrow();
LABEL_52:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static Base64.withUnsafeDecodingTablesAsBufferPointers<A>(options:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = &unk_1F272E040;
  }

  else
  {
    v5 = &unk_1F272F0C0;
  }

  if (a1)
  {
    v6 = &unk_1F272D800;
  }

  else
  {
    v6 = &unk_1F272E880;
  }

  v11[2] = a4;
  v11[3] = v6;
  if (a1)
  {
    v7 = &unk_1F272DC20;
  }

  else
  {
    v7 = &unk_1F272ECA0;
  }

  v11[4] = v7;
  v11[5] = v5;
  v11[6] = a2;
  v11[7] = a3;
  if (a1)
  {
    v8 = &unk_1F272D3E0;
  }

  else
  {
    v8 = &unk_1F272E460;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  sub_1B0D5DD2C(sub_1B0D5EFF4, v11, v8, MEMORY[0x1E69E7668], a4, v9, MEMORY[0x1E69E7288], &v12);
}

uint64_t sub_1B0D5ECB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14[2] = a8;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v14[7] = a1;
  v14[8] = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  result = sub_1B0D5DD2C(sub_1B0D5F028, v14, a3, MEMORY[0x1E69E7668], a8, v12, MEMORY[0x1E69E7288], &v15);
  if (v9)
  {
    *a9 = v15;
  }

  return result;
}

uint64_t sub_1B0D5ED68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v14[2] = a9;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v14[7] = a8;
  v14[8] = a1;
  v14[9] = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  result = sub_1B0D5DD2C(sub_1B0D5F060, v14, a3, MEMORY[0x1E69E7668], a9, v12, MEMORY[0x1E69E7288], &v15);
  if (v10)
  {
    *a10 = v15;
  }

  return result;
}

uint64_t sub_1B0D5EE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v15[2] = a10;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v15[7] = a8;
  v15[8] = a9;
  v15[9] = a1;
  v15[10] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  result = sub_1B0D5DD2C(sub_1B0D5F09C, v15, a3, MEMORY[0x1E69E7668], a10, v13, MEMORY[0x1E69E7288], &v16);
  if (v11)
  {
    *a11 = v16;
  }

  return result;
}

unint64_t sub_1B0D5EF84()
{
  result = qword_1EB6DE118;
  if (!qword_1EB6DE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE118);
  }

  return result;
}

uint64_t sub_1B0D5F09C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 32);
  result = (*(v3 + 24))(*(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_1B0D5F0EC(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v30 = a1;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v26 = v31;
    result = sub_1B0D5F33C(v30, a2, a3, a4, a5, a6, v28, v19);
    v16 = v19;
    if (v26)
    {
      return (*(v13 + 32))(v29, v16, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v20 = (((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8));
    }

    else
    {
      v20 = (a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      v23 = sub_1B0E46138();
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v22 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v22 = a3;
      }

      v23 = *(v22 + 16);
    }

    v24 = v31;
    result = v30(v20, v23, v16);
    if (v24)
    {
      return (*(v13 + 32))(v29, v16, a6);
    }
  }

  return result;
}

uint64_t sub_1B0D5F33C(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B0D5F494(v15);
  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = *(v16 + 2);

  v19 = v23;
  result = a1(&v16[v17], v18, v14);
  if (v19)
  {
    return (*(v11 + 32))(v22, v14, a6);
  }

  return result;
}

void *sub_1B0D5F494(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v1, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v3 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v1);
    v4 = objc_getAssociatedObject(v1, MEMORY[0x1E69E7CC0]);
    if (v4)
    {
      v3 = v4;
      swift_retain_n();
    }

    else
    {
      sub_1B0E46318();
      swift_getWitnessTable();
      v3 = sub_1B0E46B18();

      objc_setAssociatedObject(v1, MEMORY[0x1E69E7CC0], v3, 1);
    }

    objc_sync_exit(v1);
  }

  return v3;
}

uint64_t sub_1B0D5F590(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 32);
  result = (*(v3 + 24))(*(v3 + 40), *(v3 + 48), a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t CircularBuffer._buffer.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

Swift::Void __swiftcall CircularBuffer.advanceHeadIdx(by:)(Swift::Int by)
{
  v3 = *v2;
  v4 = *(v1 + 16);
  v5 = v2[1] + by;
  sub_1B0E45D88();
  v2[1] = (sub_1B0E46448() - 1) & v5;
}

Swift::Int __swiftcall CircularBuffer.indexAdvanced(index:by:)(Swift::Int index, Swift::Int by)
{
  v2 = by + index;
  sub_1B0E45D88();
  return (sub_1B0E46448() - 1) & v2;
}

Swift::Void __swiftcall CircularBuffer.advanceTailIdx(by:)(Swift::Int by)
{
  v3 = *v2;
  v4 = *(v1 + 16);
  v5 = v2[2] + by;
  sub_1B0E45D88();
  v2[2] = (sub_1B0E46448() - 1) & v5;
}

Swift::Int __swiftcall CircularBuffer.indexBeforeHeadIdx()()
{
  v1 = v0 - 1;
  sub_1B0E45D88();
  return (sub_1B0E46448() - 1) & v1;
}

Swift::Int __swiftcall CircularBuffer.indexBeforeTailIdx()()
{
  v1 = v0 - 1;
  sub_1B0E45D88();
  return (sub_1B0E46448() - 1) & v1;
}

uint64_t CircularBuffer.Index._backingCheck.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 6) = BYTE2(result);
  return result;
}

uint64_t static CircularBuffer.Index.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xFFFFFFFFFFFFFFLL) == (a2 & 0xFFFFFFFFFFFFFFLL))
  {
    return HIBYTE(a1) & 1 ^ ((a2 & 0x100000000000000) == 0);
  }

  else
  {
    return 0;
  }
}

BOOL static CircularBuffer.Index.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1 < a2;
  if ((a2 & 0x100000000000000) != 0)
  {
    v2 = 0;
    v3 = a1 < a2;
  }

  else
  {
    v3 = 1;
  }

  if ((a1 & 0x100000000000000) != 0)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t CircularBuffer.count.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (a3 < a2)
  {
    sub_1B0E45D88();
    v3 += sub_1B0E46448();
  }

  return v3;
}

uint64_t sub_1B0D5FA3C(unsigned int *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t, unint64_t))
{
  if (*(a1 + 7))
  {
    v5 = 0x100000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 7))
  {
    v6 = 0x100000000000000;
  }

  else
  {
    v6 = 0;
  }

  return a5(v5 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, v6 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2);
}

uint64_t CircularBuffer.description.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v38 = a2;
  v39 = a4;
  v5 = sub_1B0E45D88();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v31 - v9;
  v11 = sub_1B0E45D88();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v31 - v13;
  v45 = 8283;
  v46 = 0xE200000000000000;
  v32 = a1;
  v43 = a1;
  v15 = sub_1B0E46498();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B2727080](&v40, v15, WitnessTable);
  v42 = v40;
  sub_1B0E46628();
  sub_1B0E465F8();
  v37 = sub_1B0E46618();
  sub_1B0E46608();
  v36 = *(v7 + 48);
  if (v36(v14, 1, TupleTypeMetadata2) != 1)
  {
    v21 = *(v5 - 8);
    v22 = *(v21 + 32);
    v34 = v21 + 32;
    v35 = v22;
    v23 = (v7 + 8);
    do
    {
      v29 = *v14;
      v30 = *(TupleTypeMetadata2 + 48);
      *v10 = *v14;
      v25 = v35(&v10[v30], &v14[v30], v5);
      if (v29 == v38)
      {
        v24 = 60;
      }

      else
      {
        if (v29 != v33)
        {
          goto LABEL_6;
        }

        v24 = 62;
      }

      v25 = MEMORY[0x1B2726E80](v24, 0xE100000000000000);
LABEL_6:
      MEMORY[0x1EEE9AC00](v25);
      *(&v31 - 2) = v39;
      sub_1B03F1A20(sub_1B0D65954, (&v31 - 4), v5, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v26, &v40);
      if (v41)
      {
        v27 = v40;
      }

      else
      {
        v27 = 8287;
      }

      if (v41)
      {
        v28 = v41;
      }

      else
      {
        v28 = 0xE200000000000000;
      }

      MEMORY[0x1B2726E80](v27, v28);

      (*v23)(v10, TupleTypeMetadata2);
      sub_1B0E46608();
    }

    while (v36(v14, 1, TupleTypeMetadata2) != 1);
  }

  MEMORY[0x1B2726E80](93, 0xE100000000000000);
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_1B0E46298();

  v43 = 0xD000000000000012;
  v44 = 0x80000001B0F2FCE0;
  v17 = v32;
  v40 = sub_1B0E46448();
  v18 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v18);

  MEMORY[0x1B2726E80](0x654C676E6972202CLL, 0xEE00203A6874676ELL);
  v40 = CircularBuffer.count.getter(v17, v38, v33);
  v19 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v19);

  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  MEMORY[0x1B2726E80](v43, v44);

  return v45;
}

unint64_t CircularBuffer.index(_:offsetBy:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2 + a1;
  sub_1B0E45D88();
  v9 = sub_1B0E46448() - 1;
  result = CircularBuffer.count.getter(a3, a4, a5);
  v11 = v9 & v8;
  if ((v9 & v8) < 0 != v12)
  {
    __break(1u);
  }

  else if (!HIDWORD(v11))
  {
    return v11 | ((v11 >= a4) << 56) | 0xFFFFFF00000000;
  }

  __break(1u);
  return result;
}

uint64_t CircularBuffer.subscript.getter@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v4 = sub_1B0E45D88();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  sub_1B0E464A8();
  v8 = *(a1 - 8);
  result = (*(v8 + 48))(v7, 1, a1);
  if (result != 1)
  {
    return (*(v8 + 32))(a2, v7, a1);
  }

  __break(1u);
  return result;
}

uint64_t CircularBuffer.subscript.setter(uint64_t a1, unsigned int a2, uint64_t a3)
{
  sub_1B0D65B24(a1, a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void (*CircularBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  v14 = *v3;
  CircularBuffer.subscript.getter(v10, v13);
  return sub_1B0D602E0;
}

{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  CircularBuffer.subscript.getter(a2, *v3, *(v3 + 8), *(v3 + 16), v10, v13);
  return sub_1B0D63B20;
}

void sub_1B0D602E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_1B0D65B24(v3, v9, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_1B0D65B24((*a1)[6], v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CircularBuffer.startIndex.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = CircularBuffer.count.getter(a1, a2, a3);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    return a2 | 0x1FFFFFF00000000;
  }

  __break(1u);
  return result;
}

unint64_t CircularBuffer.endIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CircularBuffer.count.getter(a1, a2, a3);
  if (a3 < 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a3))
  {
    return a3 | ((a3 >= a2) << 56) | 0xFFFFFF00000000;
  }

  __break(1u);
  return result;
}

unint64_t CircularBuffer.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  sub_1B0E45D88();
  v4 = sub_1B0E46448();
  if ((a1 & 0x100000000000000) != 0)
  {
    if ((a2 & 0x100000000000000) != 0)
    {
      return a2 - a1;
    }

    else
    {
      return v4 - a1 + a2;
    }
  }

  else if ((a2 & 0x100000000000000) != 0)
  {
    v6 = a1 - a2 + v4;
    result = -v6;
    if (__OFSUB__(0, v6))
    {
      __break(1u);
    }
  }

  else
  {
    return a2 - a1;
  }

  return result;
}

uint64_t CircularBuffer._copyContents(initializing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v46 = a7;
  v47 = a1;
  v12 = sub_1B0E45D88();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v22 = a3;
  result = CircularBuffer.count.getter(a3, a4, a5);
  if (result > a2)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sub_1B0E45DA8();
  if (!result)
  {

    v31 = CircularBuffer.startIndex.getter(v30, a4, a5);
    result = 0;
LABEL_22:
    v43 = v46;
    *v46 = a3;
    v43[1] = a4;
    v43[2] = a5;
    *(v43 + 6) = v31;
    *(v43 + 14) = WORD2(v31);
    *(v43 + 30) = BYTE6(v31);
    *(v43 + 31) = HIBYTE(v31) != 0;
    v43[4] = result;
    return result;
  }

  v24 = result;
  v47 = a5;
  v45 = a4;
  if (a5 >= a4)
  {
    if (a4 != a5)
    {
      v32 = v45;
      do
      {
        sub_1B0E464A8();
        v33 = *(a6 - 8);
        result = (*(v33 + 48))(v21, 1, a6);
        if (result == 1)
        {
          goto LABEL_28;
        }

        ++v32;
        (*(v33 + 32))(v24, v21, a6);
        v24 += *(v33 + 72);
        a5 = v47;
      }

      while (v47 != v32);
    }

LABEL_20:
    v34 = v22;
    v35 = v22;
    v36 = v45;
    v37 = CircularBuffer.endIndex.getter(v35, v45, a5);
    v38 = a5;
    v52 = v37;
    v53 = WORD2(v37);
    v54 = BYTE6(v37);
    v55 = HIBYTE(v37) != 0;
    v39 = CircularBuffer.endIndex.getter(v34, v36, a5);
    v48 = v39;
    v49 = WORD2(v39);
    v50 = BYTE6(v39);
    v51 = HIBYTE(v39) != 0;
    type metadata accessor for CircularBuffer.Index();
    swift_getWitnessTable();
    result = sub_1B0E44958();
    if (result)
    {
      a3 = sub_1B0D659B8(v37 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v37) != 0) << 56), v39 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v39) != 0) << 56), v34, v36, a5);
      a4 = v40;
      a5 = v41;
      v42 = swift_retain_n();
      v31 = CircularBuffer.startIndex.getter(v42, a4, a5);

      result = CircularBuffer.count.getter(v34, v36, v38);
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  v25 = *(a3 + 16);
  if (v25 >= a4)
  {
    if (v25 != a4)
    {
      v26 = v45;
      do
      {
        sub_1B0E464A8();
        v27 = *(a6 - 8);
        result = (*(v27 + 48))(v18, 1, a6);
        if (result == 1)
        {
          goto LABEL_29;
        }

        ++v26;
        result = (*(v27 + 32))(v24, v18, a6);
        v24 += *(v27 + 72);
      }

      while (v25 != v26);
    }

    a5 = v47;
    if (v47 < 0)
    {
      goto LABEL_26;
    }

    if (v47)
    {
      v28 = 0;
      while (1)
      {
        sub_1B0E464A8();
        v29 = *(a6 - 8);
        result = (*(v29 + 48))(v15, 1, a6);
        if (result == 1)
        {
          goto LABEL_27;
        }

        ++v28;
        (*(v29 + 32))(v24, v15, a6);
        v24 += *(v29 + 72);
        a5 = v47;
        if (v47 == v28)
        {
          goto LABEL_20;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1B0D60A58@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X2>, uint64_t a3@<X8>)
{
  result = a2(*v3, v3[1], v3[2], *(a1 + 16));
  *a3 = result;
  *(a3 + 4) = WORD2(result);
  *(a3 + 6) = BYTE6(result);
  *(a3 + 7) = HIBYTE(result) != 0;
  return result;
}

void (*sub_1B0D60AB8(uint64_t **a1, unsigned int *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v8 = 0x100000000000000;
  if (!*(a2 + 7))
  {
    v8 = 0;
  }

  v7[4] = sub_1B0D60BB4(v7, v8 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2, *v3, v3[1], v3[2], *(a3 + 16));
  return sub_1B0D60B6C;
}

void sub_1B0D60B6C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1B0D60BB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *a1)
{
  v8 = *(a6 - 8);
  *a1 = a6;
  a1[1] = v8;
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  CircularBuffer.subscript.getter(a6, v9);
  return sub_1B0D60C88;
}

void sub_1B0D60C88(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1B0D60CD4@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v7 = 0x100000000000000;
  }

  else
  {
    v7 = 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v6 = 0;
  }

  *a3 = sub_1B0D659B8(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48) | v7, a1[2] | (*(a1 + 6) << 32) | (*(a1 + 14) << 48) | v6, *v3, *(v3 + 8), *(v3 + 16));
  a3[1] = v8;
  a3[2] = v9;
}

uint64_t sub_1B0D60DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 7);
  *(a2 + 6);
  *(a2 + 4);
  sub_1B0D65B24(a1, *a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void (*sub_1B0D60E58(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = v3;
  v8[1] = a3;
  v10 = *(a3 + 16);
  v8[2] = v10;
  v11 = *(v10 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[5] = v13;
  *(v9 + 12) = *a2;
  *(v9 + 26) = *(a2 + 4);
  *(v9 + 54) = *(a2 + 6);
  *(v9 + 55) = *(a2 + 7);
  v14 = *v3;
  CircularBuffer.subscript.getter(v10, v13);
  return sub_1B0D60FB0;
}

void sub_1B0D60FB0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v8 = **a1;
  v9 = (*a1)[1];
  *(*a1 + 55);
  *(*a1 + 54);
  *(*a1 + 26);
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1B0D65B24(v4, v3, v9);
    v10 = *(v7 + 8);
    v10(v4, v6);
    v10(v5, v6);
  }

  else
  {
    sub_1B0D65B24((*a1)[5], v3, v9);
    (*(v7 + 8))(v5, v6);
  }

  free(v5);
  free(v4);

  free(v2);
}

uint64_t sub_1B0D610D0(uint64_t *a1, unsigned int *a2, void *a3)
{
  v3 = *a1;
  v4 = 0x100000000000000;
  if (*(a2 + 7))
  {
    v5 = 0x100000000000000;
  }

  else
  {
    v5 = 0;
  }

  if ((*(a2 + 15) & 1) == 0)
  {
    v4 = 0;
  }

  sub_1B0D65DBC(*a1, a1[1], a1[2], *a2 | (*(a2 + 2) << 32) | (*(a2 + 6) << 48) | v5, a2[2] | (*(a2 + 6) << 32) | (*(a2 + 14) << 48) | v4, a3);
}

uint64_t CircularBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1B0D65DBC(a1, a2, a3, a4 & 0x1FFFFFFFFFFFFFFLL, a5 & 0x1FFFFFFFFFFFFFFLL, a6);
}

void (*sub_1B0D611A4(uint64_t *a1, unsigned int *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 24) = v3;
  *(v7 + 32) = a3;
  v9 = *a2;
  v10 = *(a2 + 2);
  *(v7 + 48) = v10;
  v11 = *(a2 + 6);
  *(v7 + 52) = v11;
  v12 = *(a2 + 7);
  *(v7 + 53) = v12;
  v13 = a2[2];
  *(v7 + 40) = v9;
  *(v7 + 44) = v13;
  v14 = *(a2 + 6);
  *(v7 + 50) = v14;
  v15 = *(a2 + 14);
  v16 = v9 | (v10 << 32);
  *(v7 + 54) = v15;
  v17 = *(a2 + 15);
  v18 = v16 | (v11 << 48);
  *(v7 + 55) = v17;
  if (v12)
  {
    v19 = 0x100000000000000;
  }

  else
  {
    v19 = 0;
  }

  v20 = v13 | (v14 << 32) | (v15 << 48);
  if (v17)
  {
    v21 = 0x100000000000000;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(a3 + 16);
  *v7 = sub_1B0D659B8(v18 | v19, v20 | v21, *v3, *(v3 + 8), *(v3 + 16));
  *(v8 + 8) = v23;
  *(v8 + 16) = v24;

  return sub_1B0D612AC;
}