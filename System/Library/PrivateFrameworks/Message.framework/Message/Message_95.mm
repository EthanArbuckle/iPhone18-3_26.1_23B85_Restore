uint64_t sub_1B0D8EDF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B0D8EFD8(*a1, 2);
  v6 = v5;
  v7 = sub_1B0D8EFD8(*(a1 + 8), 2);
  v9 = v8;
  v10 = *(v2 + 20);
  v11 = sub_1B0D8EFD8(*(a1 + 16), 2);
  v13 = v12;
  MEMORY[0x1B2726E80](58, 0xE100000000000000);
  MEMORY[0x1B2726E80](v7, v9);

  MEMORY[0x1B2726E80](58, 0xE100000000000000);
  MEMORY[0x1B2726E80](v11, v13);

  v14 = sub_1B0CFC1B0(v4, v6, (v2 + 8), v10);
  if (v15)
  {
    v16._countAndFlagsBits = v4;
    v16._object = v6;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v10);
  }

  v17 = v14;

  v19 = *(v2 + 20);
  v20 = (v19 + v17);
  if (__CFADD__(v19, v17))
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v2 + 20) = v20;
  if (*(a1 + 32))
  {
    v21 = 0;
  }

  else
  {
    v29 = *(a1 + 24);
    v22 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v22);

    v23 = sub_1B0CFC1B0(46, 0xE100000000000000, (v2 + 8), v20);
    if (v24)
    {
      v25._countAndFlagsBits = 46;
      v25._object = 0xE100000000000000;
      v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v20);
    }

    v21 = v23;

    v26 = *(v2 + 20);
    v27 = __CFADD__(v26, v21);
    v28 = v26 + v21;
    if (v27)
    {
      goto LABEL_14;
    }

    *(v2 + 20) = v28;
  }

  result = v17 + v21;
  if (__OFADD__(v17, v21))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D8EFD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B0E469C8();
  v5 = v4;
  if (sub_1B0E44CF8() >= a2)
  {
    return v3;
  }

  result = sub_1B0E44CF8();
  if (!__OFSUB__(a2, result))
  {
    v7 = sub_1B0E44E88();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](v3, v5);

    return v7;
  }

  __break(1u);
  return result;
}

BOOL _s12NIOIMAPCore212FullDateTimeV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v4 = *(a2 + 56);
  if (*(a1 + 56))
  {
    return (*(a2 + 56) & 1) != 0;
  }

  return (*(a2 + 56) & 1) == 0 && *(a1 + 48) == *(a2 + 48);
}

unint64_t sub_1B0D8F12C()
{
  result = qword_1EB6E7518;
  if (!qword_1EB6E7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7518);
  }

  return result;
}

unint64_t sub_1B0D8F184()
{
  result = qword_1EB6E7520;
  if (!qword_1EB6E7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7520);
  }

  return result;
}

unint64_t sub_1B0D8F1DC()
{
  result = qword_1EB6E7528;
  if (!qword_1EB6E7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7528);
  }

  return result;
}

uint64_t sub_1B0D8F260(char *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  v6 = *(a1 + 2);
  if (!v6)
  {
    if (qword_1EB6DE5C0 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_4;
  }

  v7 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(*(a1 + 2), a2, a3, a4, a5);
  swift_beginAccess();
  v8 = 0;
  v9 = *(v7 + 16);
  for (i = v6; ; i = 0)
  {
    v11 = v8 + i;
    if (!__CFADD__(v8, i))
    {
      break;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
LABEL_4:
    v7 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v8 = HIDWORD(qword_1EB737EB0);
    v9 = dword_1EB737EB8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v11 >= v9)
    {
      v12 = v11 - v9;
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v12, v13 & 1);
  }

  if (HIDWORD(v6))
  {
    goto LABEL_15;
  }

  v5 += 32;
  ByteBuffer._ensureAvailableCapacity(_:at:)(i, v8);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v5, &v5[v6], v8);
  if (__CFADD__(v8, i))
  {
    goto LABEL_16;
  }

  return v7;
}

uint64_t GmailLabel.init(mailboxName:)(char *a1)
{
  v1 = sub_1B0D8F260(a1, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);

  return v1;
}

uint64_t GmailLabel.init(useAttribute:)(uint64_t a1, unint64_t a2)
{
  v2 = ByteBufferAllocator.buffer(string:)(a1, a2, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);

  return v2;
}

Swift::String __swiftcall GmailLabel.makeDisplayString()()
{
  v3 = sub_1B0DF0B3C(v0, v1, v2 & 0xFFFFFFFFFFFFFFLL);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t GmailLabel.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  v6 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
  return sub_1B0E46C38();
}

uint64_t GmailLabel.hashValue.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  swift_beginAccess();
  v5 = *(a1 + 24) + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3));
  sub_1B0E46C38();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8F72C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *(v0 + 22);
  sub_1B0E46C28();
  GmailLabel.hash(into:)(v7, v1, v2, v3 | (v4 << 32) | (v5 << 48));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8F798(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v1 + 8), *(v1 + 20));
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1B0CFC1B0(40, 0xE100000000000000, (v1 + 8), v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  MEMORY[0x1EEE9AC00](result);
  v31[2] = sub_1B0D8F9B8;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1B0DED0E0(0, sub_1B0D80728, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1B0CFC1B0(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, (v2 + 8), v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1B0D8F9B8(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 22);
  if (v2 == v3)
  {
    return sub_1B0D4B6B8(v1, v3 | (v2 << 32), v4 | (v5 << 32) | (v6 << 48));
  }

  swift_beginAccess();
  if (*(*(v1 + 24) + (v6 | (v5 << 8)) + v3) != 92)
  {
    return sub_1B0D4B6B8(v1, v3 | (v2 << 32), v4 | (v5 << 32) | (v6 << 48));
  }

  v8 = v1;
  v9 = v3;
  v10 = v2;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  return EncodeBuffer.writeBuffer(_:)(&v8);
}

unint64_t sub_1B0D8FA78()
{
  result = qword_1EB6DE9C8;
  if (!qword_1EB6DE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE9C8);
  }

  return result;
}

void sub_1B0D8FADC(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v18 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v16 = *(a1 + 20);
      v17 = *(a1 + 22);

      sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, v9, a3);
      v18 = v8;
      if (!v8)
      {
        sub_1B0D9009C(a1, v9, a3, a4, a5, a6, a7, v58);
        sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, v9, a3);

        v46 = v58[8];
        v47 = v58[9];
        v48 = v58[10];
        v42 = v58[4];
        v43 = v58[5];
        v44 = v58[6];
        v45 = v58[7];
        v38 = v58[0];
        v39 = v58[1];
        v40 = v58[2];
        v41 = v58[3];
        sub_1B0BD2F88(&v38);
LABEL_15:
        v69 = v46;
        v70 = v47;
        v71 = v48;
        v72 = v49;
        v65 = v42;
        v66 = v43;
        v67 = v44;
        v68 = v45;
        v61 = v38;
        v62 = v39;
        v63 = v40;
        v64 = v41;
        v29 = v47;
        *(a8 + 128) = v46;
        *(a8 + 144) = v29;
        *(a8 + 160) = v71;
        *(a8 + 176) = v72;
        v30 = v66;
        *(a8 + 64) = v65;
        *(a8 + 80) = v30;
        v31 = v68;
        *(a8 + 96) = v67;
        *(a8 + 112) = v31;
        v32 = v62;
        *a8 = v61;
        *(a8 + 16) = v32;
        v33 = v64;
        *(a8 + 32) = v63;
        *(a8 + 48) = v33;
        return;
      }

      v19 = *a1;

      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v17;
    }

    swift_willThrow();
    v50[0] = v18;
    v21 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v50[0] = v18;
      v22 = v18;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v28 = a3;
      swift_willThrow();
      return;
    }

    v23 = *a1;
    v24 = *(a1 + 8);
    v25 = *(a1 + 16);
    v26 = *(a1 + 20);
    v27 = *(a1 + 22);

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, v9, a3);
    sub_1B0D90514(a1, v9, a3, a4, a5, a6, a7, v59);
    v54 = v59[4];
    v55 = v59[5];
    v56 = v59[6];
    v57 = v60;
    *v50 = v59[0];
    v51 = v59[1];
    v52 = v59[2];
    v53 = v59[3];
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, v9, a3);

    v42 = v54;
    v43 = v55;
    v44 = v56;
    *&v45 = v57;
    v38 = *v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    sub_1B0BE2C24(&v38);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_1B0D8FF38@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v12 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v8 = *result;
    v9 = *(result + 8);
    v10 = *(result + 16);
    v19 = *(result + 22);
    v20 = *(result + 20);

    sub_1B0D911A4(v7, v5, a3, v21);
    if (v4)
    {
      v11 = *v7;

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v20;
      *(v7 + 22) = v19;
      return swift_willThrow();
    }

    v13 = v21[9];
    *(a4 + 128) = v21[8];
    *(a4 + 144) = v13;
    *(a4 + 160) = v21[10];
    *(a4 + 176) = v22;
    v14 = v21[5];
    *(a4 + 64) = v21[4];
    *(a4 + 80) = v14;
    v15 = v21[7];
    *(a4 + 96) = v21[6];
    *(a4 + 112) = v15;
    v16 = v21[1];
    *a4 = v21[0];
    *(a4 + 16) = v16;
    v17 = v21[3];
    *(a4 + 32) = v21[2];
    *(a4 + 48) = v17;
  }

  return result;
}

void sub_1B0D9009C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v19 = swift_allocError();
      *v21 = a3;
    }

    else
    {
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v16 = *(a1 + 20);
      v17 = *(a1 + 22);

      sub_1B0D96D48(a1, v9, a3, a4, a5, a6, a7, v55);
      v19 = v8;
      if (!v8)
      {
        v38 = &v56;

        v39 = v55;
        goto LABEL_21;
      }

      v20 = *a1;

      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v17;
    }

    swift_willThrow();
    v54 = v19;
    v22 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v54 = v19;
      v23 = v19;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v9 < a3)
    {
      v24 = *a1;
      v25 = *(a1 + 8);
      v26 = *(a1 + 16);
      v27 = *(a1 + 20);
      v49 = *(a1 + 22);

      sub_1B0D97420(a1, v9, a3, a4, a5, a6, a7, v57);
      v38 = &v58;

      v39 = v57;
LABEL_21:
      v40 = *(v38 + 3);
      v63 = *(v38 + 2);
      v64 = v40;
      v65 = *(v38 + 4);
      v41 = *(v38 + 1);
      v61 = *v38;
      v62 = v41;
      v42 = v39[2];
      *(a8 + 16) = v39[1];
      *(a8 + 32) = v42;
      v43 = v39[4];
      *(a8 + 48) = v39[3];
      *(a8 + 64) = v43;
      v44 = v61;
      *(a8 + 104) = v62;
      *(a8 + 88) = v44;
      v45 = v64;
      *(a8 + 152) = v65;
      v46 = v63;
      *(a8 + 136) = v45;
      v66 = v38[10];
      v47 = *(v39 + 10);
      v48 = *(v39 + 1);
      *a8 = *v39;
      *(a8 + 8) = v48;
      *(a8 + 80) = v47;
      *(a8 + 168) = v66;
      *(a8 + 120) = v46;
      return;
    }

    sub_1B0439BCC();
    v28 = swift_allocError();
    *v29 = a3;
    swift_willThrow();
    v54 = v28;
    v30 = v28;
    if (swift_dynamicCast())
    {

LABEL_16:

      if (v9 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v37 = a3;
        swift_willThrow();
        return;
      }

      v32 = *a1;
      v33 = *(a1 + 8);
      v34 = *(a1 + 16);
      v35 = *(a1 + 20);
      v36 = *(a1 + 22);

      sub_1B0D96A2C(a1, v9, a3, a4, a5, a6, a7, v59);
      v38 = &v60;

      v39 = v59;
      goto LABEL_21;
    }

    v54 = v28;
    v31 = v28;
    if (swift_dynamicCast())
    {

      goto LABEL_16;
    }

LABEL_18:

    return;
  }

  __break(1u);
}

uint64_t *sub_1B0D90514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v18 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v14 = a3;
  if (v18 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v21 = v14;
    return swift_willThrow();
  }

  v13 = a7;
  v8 = a6;
  v15 = a5;
  v12 = a4;
  v11 = a1;
  v95 = a8;
  v19 = *a1;
  v16 = *(a1 + 8);
  LODWORD(v130) = *(a1 + 16);
  v98 = *(a1 + 20);
  v96 = *(a1 + 22);
  v115 = MEMORY[0x1E69E7CC0];

  sub_1B0E04AE8(v11, &v115, v18, v14, v12, v15, v8, v13);
  if (v9)
  {

    v20 = *v11;

LABEL_9:
    *v11 = v19;
    *(v11 + 8) = v16;
    *(v11 + 16) = v130;
    *(v11 + 20) = v98;
    *(v11 + 22) = v96;
    return swift_willThrow();
  }

  v93 = v19;

  v22 = *v11;
  if (v18 + 1 >= v14)
  {

    sub_1B0439BCC();
    swift_allocError();
    *v23 = v14;
    swift_willThrow();
    v19 = v93;
    goto LABEL_9;
  }

  v92 = v115;
  sub_1B0436204(v11);
  v25 = sub_1B0DB4978(v11, v18, v14, v12, v15, v8, v13);
  v10 = 0;
  v19 = v93;
  v90 = v26;
  v91 = *v11;
  v86 = v25;
  v17 = *(v11 + 8);
  v88 = *(v11 + 20);
  v89 = *(v11 + 16);
  v87 = *(v11 + 22);
  if (v18 + 2 >= v14)
  {
    sub_1B0439BCC();
    v10 = swift_allocError();
    *v27 = v14;
LABEL_25:
    v34 = v91;
    goto LABEL_26;
  }

  sub_1B0436204(v11);
  v28 = *v11;
  v85 = v18 + 3;
  if (v18 + 3 < v14)
  {
    v29 = *(v11 + 8);
    v83 = *(v11 + 16);
    v81 = *(v11 + 20);
    v79 = *(v11 + 22);
    swift_retain_n();
    a1 = sub_1B0D95C08(v11, v18 + 3, v14, v12, v15, v8, v13);
LABEL_31:
    v80 = a3;
    v82 = a2;
    v84 = a1;
    goto LABEL_32;
  }

  sub_1B0439BCC();
  v10 = swift_allocError();
  *v30 = v14;

  swift_willThrow();
  *&v107 = v10;
  v31 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {
  }

  else
  {

    *&v107 = v10;
    v32 = v10;
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_24;
    }

    v19 = v93;
  }

  if (v85 >= v14)
  {

    sub_1B0439BCC();
    v10 = swift_allocError();
    *v33 = v14;
    swift_willThrow();
LABEL_24:

    goto LABEL_25;
  }

  sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v11, v85, v14);
  v10 = 0;
  v47 = sub_1B0C740DC(MEMORY[0x1E69E7CC0]);
  v82 = v48;
  v84 = v47;
  v80 = v49;
LABEL_32:

  v50 = *v11;
  v51 = *(v11 + 8);
  v77 = *(v11 + 20);
  v78 = *(v11 + 16);
  v52 = v18 + 4;
  v76 = *(v11 + 22);
  if (v52 >= v14)
  {
    sub_1B0439BCC();
    v10 = swift_allocError();
    *v53 = v14;
  }

  else
  {

    sub_1B0436204(v11);
    if (!v10)
    {
      v63 = *v11;
      v64 = *(v11 + 8);
      v75 = *(v11 + 16);
      v74 = *(v11 + 20);
      v73 = *(v11 + 22);

      sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v11, v52, v14);

      sub_1B0E027D8(v11, v85, v14, v12, v15, v8, v13);
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;

      v107 = 0uLL;
      v108 = 0uLL;
      *&v109 = 0;
      *(&v109 + 1) = v66;
      *&v110 = v68;
      *(&v110 + 1) = v70;
      *&v111 = v72;
      v115 = 0;
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = v66;
      v121 = v68;
      v122 = v70;
      v123 = v72;
      sub_1B0D7AEF8(&v107, v100);
      sub_1B0D7AF30(&v115);
      v62 = *(&v107 + 1);
      v130 = v107;
      v56 = *(&v108 + 1);
      v55 = v108;
      v58 = *(&v109 + 1);
      v57 = v109;
      v60 = *(&v110 + 1);
      v59 = v110;
      v61 = v111;
      goto LABEL_38;
    }
  }

  swift_willThrow();
  v34 = v91;
  *v11 = v50;
  *(v11 + 8) = v51;
  *(v11 + 16) = v78;
  *(v11 + 20) = v77;
  *(v11 + 22) = v76;
  swift_willThrow();
  *&v107 = v10;
  v54 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {

    v130 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 1;
LABEL_38:
    v101 = xmmword_1B0EA4610;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    *&v105 = 0;
    sub_1B0398EFC(&v101, &qword_1EB6E6F88, &qword_1B0EEEB30);
    *&v107 = v84;
    *(&v107 + 1) = v82;
    *&v108 = v80;
    *(&v108 + 1) = v130;
    *&v109 = v62;
    *(&v109 + 1) = v55;
    *&v110 = v56;
    *(&v110 + 1) = v57;
    *&v111 = v58;
    *(&v111 + 1) = v59;
    *&v112 = v60;
    *(&v112 + 1) = v61;
    v115 = v84;
    v116 = v82;
    v117 = v80;
    v118 = v130;
    v119 = v62;
    v120 = v55;
    v121 = v56;
    v122 = v57;
    v123 = v58;
    v124 = v59;
    v125 = v60;
    v126 = v61;
    sub_1B0D995BC(&v107, v100);
    sub_1B0D99618(&v115);
    v130 = v107;
    v97 = v108;
    v99 = *(&v107 + 1);
    v94 = *(&v108 + 1);
    v37 = *(&v109 + 1);
    v36 = v109;
    v39 = *(&v110 + 1);
    v38 = v110;
    v41 = *(&v111 + 1);
    v40 = v111;
    v43 = *(&v112 + 1);
    v42 = v112;
    goto LABEL_28;
  }

  v19 = v93;
LABEL_26:
  swift_willThrow();
  *v11 = v34;
  *(v11 + 8) = v17;
  *(v11 + 16) = v89;
  *(v11 + 20) = v88;
  *(v11 + 22) = v87;
  swift_willThrow();
  *&v107 = v10;
  v35 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (!swift_dynamicCast())
  {

    goto LABEL_9;
  }

  v130 = 0;
  v97 = 0;
  v99 = 0;
  v94 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
LABEL_28:
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  v101 = 0u;
  sub_1B0398EFC(&v101, &qword_1EB6E6F78, &qword_1B0EEEB20);
  *&v107 = v92;
  *(&v107 + 1) = v86;
  *&v108 = v90;
  *(&v108 + 1) = v130;
  *&v109 = v99;
  *(&v109 + 1) = v97;
  *&v110 = v94;
  *(&v110 + 1) = v36;
  *&v111 = v37;
  *(&v111 + 1) = v38;
  *&v112 = v39;
  *(&v112 + 1) = v40;
  *&v113 = v41;
  *(&v113 + 1) = v42;
  v114 = v43;
  v115 = v92;
  v116 = v86;
  v117 = v90;
  v118 = v130;
  v119 = v99;
  v120 = v97;
  v121 = v94;
  v122 = v36;
  v123 = v37;
  v124 = v38;
  v125 = v39;
  v126 = v40;
  v127 = v41;
  v128 = v42;
  v129 = v43;
  sub_1B07AD120(&v107, v100);
  result = sub_1B0717020(&v115);
  v44 = v112;
  *(v95 + 64) = v111;
  *(v95 + 80) = v44;
  *(v95 + 96) = v113;
  *(v95 + 112) = v114;
  v45 = v108;
  *v95 = v107;
  *(v95 + 16) = v45;
  v46 = v110;
  *(v95 + 32) = v109;
  *(v95 + 48) = v46;
  return result;
}

void sub_1B0D911A4(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3;
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v4)
  {
    return;
  }

  sub_1B0E00124(a1, a2, v5);
  v10 = v9;
  v11 = 0;
  v71 = a2 + 1;
  v12 = __OFADD__(a2, 1);
  v99 = v12;
  v68 = 1;
  v73 = a2;
  while (1)
  {

    v13 = *(a1 + 8);
    if (*(a1 + 12) == v13)
    {
LABEL_60:
      sub_1B0D3EA30();
      swift_allocError();
LABEL_58:
      swift_willThrow();
      return;
    }

    v14 = a4;
    v15 = v11;
    v16 = *(a1 + 22);
    v17 = *(a1 + 20);
    v18 = *a1;
    swift_beginAccess();
    if (v13 == -1)
    {
      goto LABEL_80;
    }

    v19 = v15 + (HIDWORD(v10) - v10) + 1;
    LODWORD(v16) = *(*(v18 + 24) + (v16 | (v17 << 8)) + v13);
    *(a1 + 8) = v13 + 1;
    if (v16 > 40)
    {
      a4 = v14;
      if (v16 == 41)
      {
        v26 = v68 - 1;
        if (__OFSUB__(v68, 1))
        {
          goto LABEL_82;
        }

        --v68;
        v22 = v73;
        if (v26 <= 0)
        {
          sub_1B0ACEC60(&v77);
          v57 = v86;
          *(v14 + 128) = v85;
          *(v14 + 144) = v57;
          *(v14 + 160) = v87;
          *(v14 + 176) = v88;
          v58 = v82;
          *(v14 + 64) = v81;
          *(v14 + 80) = v58;
          v59 = v84;
          *(v14 + 96) = v83;
          *(v14 + 112) = v59;
          v60 = v78;
          *v14 = v77;
          *(v14 + 16) = v60;
          v61 = v80;
          *(v14 + 32) = v79;
          *(v14 + 48) = v61;
          return;
        }

        v11 = v19;
        v21 = 0;
      }

      else
      {
        if (v16 != 123)
        {
LABEL_67:
          *&v77 = 0;
          *(&v77 + 1) = 0xE000000000000000;
          sub_1B0E46298();

          *&v77 = 0xD000000000000010;
          *(&v77 + 1) = 0x80000001B0F2FE20;
          LOBYTE(v91) = v16;
          v54 = sub_1B0E469C8();
          MEMORY[0x1B2726E80](v54);

          MEMORY[0x1B2726E80](0xD000000000000012, 0x80000001B0F2FE40);
          v55 = v77;
          sub_1B0436554();
          swift_allocError();
          *v56 = v55;
          *(v56 + 16) = 0xD000000000000020;
          *(v56 + 24) = 0x80000001B0F2FA10;
          *(v56 + 32) = 130;
          goto LABEL_58;
        }

        v11 = v19;
        v22 = v73;
        v23 = sub_1B0DFF3DC(a1, v73, v5, 1);
        v24 = v23;
        if ((v23 & 0x8000000000000000) != 0)
        {
          sub_1B0436554();
          v62 = swift_allocError();
          *v63 = 0xD000000000000011;
          v63[1] = 0x80000001B0F2FEE0;
          v63[2] = 0xD000000000000020;
          v63[3] = 0x80000001B0F2FA10;
          v63[4] = 202;
LABEL_71:
          v65 = v62;
          swift_willThrow();
          sub_1B0436554();
          swift_allocError();
          *v66 = 0xD000000000000022;
          v66[1] = 0x80000001B0F2FEB0;
          v66[2] = 0xD000000000000020;
          v66[3] = 0x80000001B0F2FA10;
          v66[4] = 115;
          swift_willThrow();

          return;
        }

        v25 = (200000 - v11) & ~((200000 - v11) >> 63);
        if (v25 < v23)
        {
          sub_1B0D98DC0();
          v62 = swift_allocError();
          *v64 = v24;
          v64[1] = v25;
          goto LABEL_71;
        }

        sub_1B0DFE880(0x7DuLL, 0xE100000000000000, 0, 0, a1, v73, v5);
        sub_1B0448078(a1, v73, v5);
        if (!ByteBuffer.readSlice(length:)(v24))
        {
          goto LABEL_60;
        }

        v21 = 0;
      }
    }

    else
    {
      a4 = v14;
      if (v16 == 34)
      {
        v21 = 1;
        v22 = v73;
        v11 = v19;
      }

      else
      {
        if (v16 != 40)
        {
          goto LABEL_67;
        }

        v20 = __OFADD__(v68++, 1);
        if (v20)
        {
          goto LABEL_83;
        }

        v11 = v19;
        v21 = 0;
        v22 = v73;
      }
    }

    v69 = v5;
    v70 = a4;
    if (v11 >= 200000)
    {
      goto LABEL_61;
    }

LABEL_24:
    if (v21)
    {
      break;
    }

    sub_1B0E00124(a1, v22, v5);
    v10 = v47;
  }

  if (v99)
  {
    __break(1u);
    goto LABEL_73;
  }

  if (v71 >= v5)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v49 = v5;
    goto LABEL_58;
  }

  v28 = *(a1 + 8);
  v27 = *(a1 + 12);
  if (v27 < v28)
  {
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
    goto LABEL_78;
  }

  v72 = v11;
  v16 = *(a1 + 16);
  v29 = *(a1 + 20);
  v30 = *(a1 + 22);
  v75 = v30 | (v29 << 8);
  if (v16 - v75 < v27)
  {
    goto LABEL_74;
  }

  v31 = *a1;
  *&v77 = *a1;
  *(&v77 + 1) = __PAIR64__(v27, v28);
  LODWORD(v78) = v16;
  v76 = v29;
  WORD2(v78) = v29;
  v74 = v30;
  BYTE6(v78) = v30;
  *(&v78 + 1) = v28;
  *&v79 = v27;
  v32 = v28;
  while (1)
  {
    if (v27 == v32)
    {
      swift_retain_n();
      sub_1B04394F4(&v77);
      sub_1B0D3EA30();
      swift_allocError();
      swift_willThrow();

      *a1 = v31;
      *(a1 + 8) = v28;
      *(a1 + 12) = v27;
      *(a1 + 16) = v16;
      *(a1 + 20) = v76;
      *(a1 + 22) = v74;
      goto LABEL_58;
    }

    if (v32 < DWORD2(v77))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if ((v32 - DWORD2(v77)) >= (HIDWORD(v77) - DWORD2(v77)))
    {
      goto LABEL_65;
    }

    v33 = v77;
    v34 = WORD2(v78);
    v35 = BYTE6(v78);
    swift_beginAccess();
    v36 = *(*(v33 + 24) + (v35 | (v34 << 8)) + v32);
    if (v36 == 34 || v36 == 92)
    {
      break;
    }

    v20 = __OFADD__(v32++, 1);
    if (v20)
    {
      goto LABEL_66;
    }
  }

  v37 = v31;
  swift_retain_n();
  sub_1B04394F4(&v77);
  v91 = v31;
  v92 = v28;
  v93 = v27;
  v94 = v16;
  v95 = v76;
  v96 = v74;
  v97 = v28;
  v98 = v27;

  sub_1B04394F4(&v91);
  v20 = __OFSUB__(v32, v97);
  v38 = v32 - v97;
  if (v20)
  {
    goto LABEL_75;
  }

  if (v27 < v38 || (v27 - v38) < v28)
  {
    goto LABEL_76;
  }

  if (__CFADD__(v75, v28))
  {
    goto LABEL_77;
  }

  if ((v75 + v28) >> 24)
  {
    v67 = v67 & 0xFF00000000000000 | v16 | (v76 << 32) | (v74 << 48);
    ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v28, v38, v31);
    v40 = v39;

    v41 = HIDWORD(v40);
  }

  else
  {

    LODWORD(v40) = 0;
    LODWORD(v41) = v38;
  }

  v42 = v28 + v38;
  if (__CFADD__(v28, v38))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  *(a1 + 8) = v42;
  v5 = v69;
  a4 = v70;
  if (v27 == v42)
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  v43 = v42 + 1;
  if (v42 == -1)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v11 = v72 + (v41 - v40) + 1;
  v44 = *(*(v37 + 24) + v75 + v42);
  *(a1 + 8) = v43;
  if (v44 == 34)
  {
    v21 = 0;
LABEL_54:
    v22 = v73;
    if (v11 < 200000)
    {
      goto LABEL_24;
    }

LABEL_61:
    sub_1B0436554();
    swift_allocError();
    *v48 = 0xD000000000000017;
    v48[1] = 0x80000001B0F2FE60;
    v48[2] = 0xD000000000000020;
    v48[3] = 0x80000001B0F2FA10;
    v48[4] = 89;
    swift_willThrow();
  }

  else
  {
    if (v44 != 92)
    {
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_1B0E46298();

      v89 = 0xD000000000000010;
      v90 = 0x80000001B0F2FE20;
      v100 = v44;
      v50 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v50);

      MEMORY[0x1B2726E80](0xD000000000000020, 0x80000001B0F2FE80);
      v51 = v89;
      v52 = v90;
      sub_1B0436554();
      swift_allocError();
      *v53 = v51;
      v53[1] = v52;
      v53[2] = 0xD000000000000020;
      v53[3] = 0x80000001B0F2FA10;
      v53[4] = 152;
      swift_willThrow();
      return;
    }

    if (v27 == v43)
    {
      goto LABEL_60;
    }

    v45 = __CFADD__(v43, 1);
    v46 = v43 + 1;
    if (!v45)
    {
      *(a1 + 8) = v46;
      ++v11;
      v21 = 1;
      goto LABEL_54;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }
}

void sub_1B0D91AD0(unint64_t a1, uint64_t a2, int64_t a3, char **a4, uint64_t a5, uint64_t a6, int64_t a7, uint64_t a8)
{
  v14 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v14 >= a3)
  {
    sub_1B0439BCC();
    v27 = swift_allocError();
    *v29 = a3;
  }

  else
  {
    v21 = *a1;
    v22 = *(a1 + 8);
    v23 = *(a1 + 16);
    v44 = *(a1 + 22);
    v45 = *(a1 + 20);

    sub_1B0DB3F50(a1, v14, a3, a5, a6, a7, a8);
    v27 = v8;
    if (!v8)
    {
      v11 = v25;
      v10 = v26;
      v14 = v24;

      v12 = 0;
      goto LABEL_17;
    }

    v28 = *a1;

    *a1 = v21;
    *(a1 + 8) = v22;
    *(a1 + 16) = v23;
    *(a1 + 20) = v45;
    *(a1 + 22) = v44;
  }

  swift_willThrow();
  v47 = v27;
  v30 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {
  }

  else
  {

    v47 = v27;
    v31 = v27;
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }
  }

  if (v14 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v39 = a3;
    swift_willThrow();
    return;
  }

  v32 = *a1;
  v33 = *(a1 + 8);
  v34 = *(a1 + 16);
  v35 = *(a1 + 20);
  v36 = *(a1 + 22);

  v37 = sub_1B0DFF3DC(a1, v14, a3, 1);
  if ((v37 & 0x8000000000000000) != 0)
  {
    sub_1B0436554();
    swift_allocError();
    *v43 = 0xD000000000000011;
    v43[1] = 0x80000001B0F2FEE0;
    v43[2] = 0xD000000000000020;
    v43[3] = 0x80000001B0F2FA10;
    v43[4] = 202;
    swift_willThrow();
    v38 = *a1;

    *a1 = v32;
    *(a1 + 8) = v33;
    *(a1 + 16) = v34;
    *(a1 + 20) = v35;
    *(a1 + 22) = v36;
    swift_willThrow();
    return;
  }

  v14 = v37;

  v11 = 0;
  v10 = 0;
  v12 = 1;
LABEL_17:
  v13 = a4;
  v9 = *a4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_23:
    v9 = sub_1B0DF5760(0, *(v9 + 2) + 1, 1, v9);
  }

  v41 = *(v9 + 2);
  v40 = *(v9 + 3);
  if (v41 >= v40 >> 1)
  {
    v9 = sub_1B0DF5760((v40 > 1), v41 + 1, 1, v9);
  }

  *(v9 + 2) = v41 + 1;
  v42 = &v9[24 * v41];
  *(v42 + 4) = v14;
  *(v42 + 5) = v11;
  v42[54] = BYTE6(v10);
  *(v42 + 26) = WORD2(v10);
  *(v42 + 12) = v10;
  v42[55] = v12;
  *v13 = v9;
}

void sub_1B0D91E7C(unint64_t a1, uint64_t a2, int64_t a3, char **a4, uint64_t a5, uint64_t a6, int64_t a7, uint64_t a8)
{
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    sub_1B0D92288(a1, a2, a3, a4, a5, a6, a7, a8);
    v35 = a8;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v17 = *a1;
      v18 = *(a1 + 8);
      v19 = *(a1 + 16);
      v31 = *(a1 + 22);
      v33 = *(a1 + 20);
      v36 = a2;
      if (a2 + 1 < a3)
      {
        swift_retain_n();
        sub_1B0436204(a1);
        while (1)
        {

          v22 = *a1;
          v23 = *(a1 + 8);
          v29 = *(a1 + 20);
          v30 = *(a1 + 16);
          v28 = *(a1 + 22);

          sub_1B0D91AD0(a1, v36, a3, a4, a5, a6, a7, v35);

          v20 = *a1;
          v21 = *(a1 + 8);
          LODWORD(v22) = *(a1 + 16);
          v32 = *(a1 + 22);
          v34 = *(a1 + 20);
          swift_retain_n();
          sub_1B0436204(a1);
        }
      }

      sub_1B0439BCC();
      v24 = swift_allocError();
      *v25 = a3;

      swift_willThrow();
      v26 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
        v27 = *a1;

        *a1 = v17;
        *(a1 + 8) = v18;
        *(a1 + 16) = v19;
        *(a1 + 20) = v33;
        *(a1 + 22) = v31;

        sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
      }

      else
      {
      }
    }
  }
}

void sub_1B0D92288(unint64_t a1, uint64_t a2, int64_t a3, char **a4, uint64_t a5, uint64_t a6, int64_t a7, uint64_t a8)
{
  v17 = *a1;
  v18 = *(a1 + 8);
  v22 = *(a1 + 20);
  v23 = *(a1 + 16);
  v21 = *(a1 + 22);

  sub_1B0D91AD0(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
      v20 = *a1;

      *a1 = v17;
      *(a1 + 8) = v18;
      *(a1 + 16) = v23;
      *(a1 + 20) = v22;
      *(a1 + 22) = v21;

      sub_1B0D91E7C(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  else
  {
  }
}

uint64_t sub_1B0D9241C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v24 = *(result + 22);
    v25 = *(result + 20);

    sub_1B0D92570(v11, v9, a3, a4, a5, a6, a7, v26);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v25;
      *(v11 + 22) = v24;
      return swift_willThrow();
    }

    v21 = v26[3];
    *(a8 + 32) = v26[2];
    *(a8 + 48) = v21;
    *(a8 + 64) = v26[4];
    *(a8 + 80) = v27;
    v22 = v26[1];
    *a8 = v26[0];
    *(a8 + 16) = v22;
  }

  return result;
}

void sub_1B0D92570(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a5;
  sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    v66 = a8;
    if (v17)
    {
      v63 = v11;
      v20 = v18;
      v21 = v19;

      v23 = sub_1B0DFF2E8(v22, v20, v21 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 231);
      v25 = v24;

      v62 = v23;
      v11 = v63;
    }

    else
    {
      v62 = 0;
      v25 = 0;
    }

    v26 = __OFADD__(a2, 1);
    v27 = a2 + 1;
    if (v26)
    {
      __break(1u);
    }

    else
    {
      v65 = v25;
      if (v27 >= a3)
      {
        sub_1B0439BCC();
        v29 = swift_allocError();
        *v30 = a3;
      }

      else
      {
        v28 = *(a1 + 8);
        v59 = *(a1 + 20);
        v60 = *(a1 + 16);
        v58 = *(a1 + 22);
        v61 = *a1;
        if (v27 + 1 < a3)
        {

          sub_1B0436204(a1);
          v64 = v11;
          v36 = *a1;
          v37 = *(a1 + 8);
          v38 = *(a1 + 16);
          v57 = *(a1 + 20);
          v56 = *(a1 + 22);

          sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, a1, v27 + 1, a3);
          v87 = 0;

          sub_1B0E027D8(a1, v27, a3, a4, v64, a6, a7);
          v40 = v39;
          v42 = v41;
          v44 = v43;
          v46 = v45;

          v70[0] = 0;
          v70[1] = 0;
          v71 = 0uLL;
          *&v72 = 0;
          *(&v72 + 1) = v40;
          *&v73 = v42;
          *(&v73 + 1) = v44;
          *&v74 = v46;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = v40;
          v82 = v42;
          v83 = v44;
          v84 = v46;
          sub_1B0D7AEF8(v70, v67);
          sub_1B0D7AF30(&v76);
          v47 = v70[0];
          v48 = v70[1];
          v50 = *(&v71 + 1);
          v49 = v71;
          v52 = *(&v72 + 1);
          v51 = v72;
          v54 = *(&v73 + 1);
          v53 = v73;
          v55 = v74;
LABEL_13:
          v68[0] = xmmword_1B0EA4610;
          memset(&v68[1], 0, 48);
          v69 = 0;
          sub_1B0398EFC(v68, &qword_1EB6E6F88, &qword_1B0EEEB30);
          v70[0] = v62;
          v70[1] = v65;
          *&v71 = v47;
          *(&v71 + 1) = v48;
          *&v72 = v49;
          *(&v72 + 1) = v50;
          *&v73 = v51;
          *(&v73 + 1) = v52;
          *&v74 = v53;
          *(&v74 + 1) = v54;
          v75 = v55;
          v76 = v62;
          v77 = v65;
          v78 = v47;
          v79 = v48;
          v80 = v49;
          v81 = v50;
          v82 = v51;
          v83 = v52;
          v84 = v53;
          v85 = v54;
          v86 = v55;
          sub_1B0D98E14(v70, v67);
          sub_1B0D98E70(&v76);
          v34 = v73;
          *(v66 + 32) = v72;
          *(v66 + 48) = v34;
          *(v66 + 64) = v74;
          *(v66 + 80) = v75;
          v35 = v71;
          *v66 = *v70;
          *(v66 + 16) = v35;
          return;
        }

        sub_1B0439BCC();
        v31 = swift_allocError();
        *v32 = a3;
        v87 = v31;
        swift_willThrow();
        *a1 = v61;
        *(a1 + 8) = v28;
        *(a1 + 16) = v60;
        *(a1 + 20) = v59;
        *(a1 + 22) = v58;
        v29 = v87;
      }

      swift_willThrow();
      v70[0] = v29;
      v33 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        v47 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v87 = 0;
        v48 = 1;
        goto LABEL_13;
      }
    }
  }
}

uint64_t sub_1B0D92B7C(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v10 = result;
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v19 = swift_allocError();
      *v21 = a3;
    }

    else
    {
      v11 = *result;
      v12 = *(result + 8);
      v13 = *(result + 16);
      v31 = *(result + 22);
      v32 = *(result + 20);

      v18 = sub_1B0D95C08(v10, v8, a3, a4, a5, a6, a7);
      v19 = v7;
      if (!v7)
      {
LABEL_14:
        v23 = v18;

        return v23;
      }

      v20 = *v10;

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v32;
      *(v10 + 22) = v31;
    }

    swift_willThrow();
    v34 = v19;
    v22 = v19;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v34 = v19;
      v24 = v19;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return v23;
      }

      v23 = v33;
    }

    if (v8 < a3)
    {
      v25 = *v10;
      v26 = *(v10 + 8);
      v27 = *(v10 + 16);
      v28 = *(v10 + 20);
      v29 = *(v10 + 22);

      sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v10, v8, a3);
      v18 = sub_1B0C740DC(MEMORY[0x1E69E7CC0]);
      goto LABEL_14;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v30 = a3;
    swift_willThrow();
    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D92E2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v24 = *(result + 22);
    v25 = *(result + 20);

    sub_1B0D92F70(v11, v9, a3, a4, a5, a6, a7, v26);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v25;
      *(v11 + 22) = v24;
      return swift_willThrow();
    }

    v21 = v26[3];
    a8[2] = v26[2];
    a8[3] = v21;
    a8[4] = v26[4];
    v22 = v26[1];
    *a8 = v26[0];
    a8[1] = v22;
  }

  return result;
}

uint64_t sub_1B0D92F70@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_1B0D92B7C(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v71 = v19;
      v72 = v18;
      v73 = result;
      if (a2 + 1 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v22 = a3;
LABEL_6:
        swift_willThrow();
      }

      v64 = a8;
      v70 = *a1;
      v20 = *(a1 + 8);
      v21 = *(a1 + 16);
      v69 = *(a1 + 20);
      v66 = *(a1 + 22);
      sub_1B0436204(a1);
      sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
      if (v23)
      {
        v26 = v24;
        v27 = v25;

        v29 = sub_1B0DFF2E8(v28, v26, v27 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 264);
        v31 = v30;
        v57 = v29;

        v32 = v31;
      }

      else
      {
        v57 = 0;
        v32 = 0;
      }

      v33 = *a1;
      v34 = *(a1 + 8);
      v67 = *(a1 + 16);
      v62 = *(a1 + 20);
      v59 = *(a1 + 22);

      sub_1B0436204(a1);

      v65 = v32;
      sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
      if (v37)
      {
        v38 = v35;
        v39 = v36;

        v55 = sub_1B0DFF2E8(v40, v38, v39 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 269);
        v42 = v41;
      }

      else
      {
        v55 = 0;
        v42 = 0;
      }

      v43 = *a1;
      v44 = *(a1 + 8);
      v63 = *(a1 + 16);
      v60 = *(a1 + 20);
      v56 = *(a1 + 22);

      sub_1B0436204(a1);

      v61 = v42;
      v58 = sub_1B0D93570(a1, a2, a3, a4, a5, a6, a7);
      v68 = v45;
      v46 = *a1;
      v47 = *(a1 + 8);
      v48 = *(a1 + 16);
      v49 = *(a1 + 20);
      v50 = *(a1 + 22);

      sub_1B0436204(a1);
      a8 = 0;
    }

    v51 = sub_1B0DFF3DC(a1, a2, a3, 1);
    if (a8)
    {
    }

    if ((v51 & 0x8000000000000000) == 0)
    {
      *&v75 = v73;
      *(&v75 + 1) = v72;
      *&v76 = v71;
      *(&v76 + 1) = v57;
      *&v77 = v65;
      *(&v77 + 1) = v55;
      *&v78 = v61;
      *(&v78 + 1) = v58;
      *&v79 = v68;
      *(&v79 + 1) = v51;
      v80[0] = v73;
      v80[1] = v72;
      v80[2] = v71;
      v80[3] = v57;
      v80[4] = v65;
      v80[5] = v55;
      v80[6] = v61;
      v80[7] = v58;
      v80[8] = v68;
      v80[9] = v51;
      sub_1B0717138(&v75, v74);
      result = sub_1B0717224(v80);
      v52 = v78;
      v64[2] = v77;
      v64[3] = v52;
      v64[4] = v79;
      v53 = v76;
      *v64 = v75;
      v64[1] = v53;
      return result;
    }

    sub_1B0436554();
    swift_allocError();
    *v54 = 0xD000000000000011;
    v54[1] = 0x80000001B0F2FEE0;
    v54[2] = 0xD000000000000020;
    v54[3] = 0x80000001B0F2FA10;
    v54[4] = 202;
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1B0D93570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7538, "4/\a");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC42E0;
  *(inited + 32) = sub_1B0D93ADC;
  *(inited + 40) = 0;
  *(inited + 48) = sub_1B0D93B00;
  *(inited + 56) = 0;
  *(inited + 64) = sub_1B0D93B24;
  *(inited + 72) = 0;
  *(inited + 80) = sub_1B0D93B4C;
  *(inited + 88) = 0;
  *(inited + 96) = sub_1B0D93C64;
  *(inited + 104) = 0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0D994BC;
  *(v15 + 24) = v14;
  *(inited + 112) = sub_1B0D994DC;
  *(inited + 120) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0D994F4;
  *(v17 + 24) = v16;
  *(inited + 128) = sub_1B0D998B4;
  *(inited + 136) = v17;
  swift_retain_n();
  v18 = sub_1B0D93D58(inited, a1, a2, a3, 0xD000000000000020, 0x80000001B0F2FA10, 381);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_1B0D937A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v18 = sub_1B0DB4210(a1, a2, a3, a4, a5, a6, a7);
    sub_1B0DFF2E8(v18, v20, v19 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 301);
    v34 = sub_1B0E44B98();
    v35 = v21;

    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1B0439BCC();
      swift_allocError();
      *v23 = a3;
      swift_willThrow();
    }

    else
    {
      v22 = *(a1 + 8);
      v31 = *(a1 + 20);
      v32 = *(a1 + 16);
      v30 = *(a1 + 22);
      v33 = *a1;

      sub_1B0436204(a1);

      v24 = sub_1B0D92B7C(a1, a2, a3, a4, a5, a6, a7);
      v26 = v25;
      v28 = v27;
      v29 = v24;
      sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);

      *a8 = v34;
      a8[1] = v35;
      a8[2] = v29;
      a8[3] = v26;
      a8[4] = v28;
    }
  }

  return result;
}

uint64_t sub_1B0D93A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v9 = sub_1B0DB4210(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    sub_1B0DFF2E8(v9, v10, v11 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 325);
    v7 = sub_1B0E44BB8();
  }

  return v7;
}

uint64_t sub_1B0D93B74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = sub_1B0E44BB8();
  v14 = v13;
  sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v10, v11);
  if (v5)
  {
  }

  sub_1B0DFE880(a3, a4, 0, 0, a1, v10, v11);
  result = sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v10, v11);
  *a5 = v12;
  a5[1] = v14;
  return result;
}

uint64_t sub_1B0D93C64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = sub_1B0E44BB8();
  v10 = v9;
  sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (v3)
  {
  }

  sub_1B0DFE880(0xD000000000000010, 0x80000001B0F2E8B0, 0, 0, a1, v6, v7);
  result = sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  *a3 = v8;
  a3[1] = v10;
  return result;
}

uint64_t sub_1B0D93D58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v23 = 0xD000000000000019;
    v23[1] = 0x80000001B0F2FF00;
    v23[2] = a5;
    v23[3] = a6;
    v23[4] = a7;
    swift_willThrow();
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  v29 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v29 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v27 = v12;
        v28 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B0D99570(a2, v29, v17, &v30);
        if (!v9)
        {

          return v30;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v27;
        v8 = v28;
      }

      swift_willThrow();
      v31 = v9;
      v21 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v31 = v9;
        v22 = v9;
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D9402C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v23 = 0xD000000000000019;
    v23[1] = 0x80000001B0F2FF00;
    v23[2] = a5;
    v23[3] = a6;
    v23[4] = a7;
    swift_willThrow();
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  v29 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v29 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v27 = v12;
        v28 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B0D9966C(a2, v29, v17, &v30);
        if (!v9)
        {

          return v30;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v27;
        v8 = v28;
      }

      swift_willThrow();
      v31 = v9;
      v21 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v31 = v9;
        v22 = v9;
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D94304(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v23 = 0xD000000000000019;
    v23[1] = 0x80000001B0F2FF00;
    v23[2] = a5;
    v23[3] = a6;
    v23[4] = a7;
    swift_willThrow();
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  v29 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v29 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v27 = v12;
        v28 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B0D9973C(a2, v29, v17, &v30);
        if (!v9)
        {

          return v30;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v27;
        v8 = v28;
      }

      swift_willThrow();
      v31 = v9;
      v21 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v31 = v9;
        v22 = v9;
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D945E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v23 = 0xD000000000000019;
    v23[1] = 0x80000001B0F2FF00;
    v23[2] = a5;
    v23[3] = a6;
    v23[4] = a7;
    swift_willThrow();
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  v29 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v29 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v27 = v12;
        v28 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B0D998E4(a2, v29, v17, &v30);
        if (!v9)
        {

          return v30;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v27;
        v8 = v28;
      }

      swift_willThrow();
      v31 = v9;
      v21 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v31 = v9;
        v22 = v9;
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D948B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v23 = 0xD000000000000019;
    v23[1] = 0x80000001B0F2FF00;
    v23[2] = a5;
    v23[3] = a6;
    v23[4] = a7;
    swift_willThrow();
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  v29 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v29 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v27 = v12;
        v28 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B0D998CC(a2, v29, v17, &v30);
        if (!v9)
        {

          return v30;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v27;
        v8 = v28;
      }

      swift_willThrow();
      v31 = v9;
      v21 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v31 = v9;
        v22 = v9;
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D94B8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v23 = 0xD000000000000019;
    v23[1] = 0x80000001B0F2FF00;
    v23[2] = a5;
    v23[3] = a6;
    v23[4] = a7;
    swift_willThrow();
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  v29 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v29 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v27 = v12;
        v28 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B0D998CC(a2, v29, v17, &v30);
        if (!v9)
        {

          return v30;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v27;
        v8 = v28;
      }

      swift_willThrow();
      v31 = v9;
      v21 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v31 = v9;
        v22 = v9;
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D94E60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v23 = 0xD000000000000019;
    v23[1] = 0x80000001B0F2FF00;
    v23[2] = a5;
    v23[3] = a6;
    v23[4] = a7;
    swift_willThrow();
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  v29 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (result + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v29 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v20 = a4;
      }

      else
      {
        v27 = v12;
        v28 = v8;
        v13 = *a2;
        v14 = *(a2 + 8);
        v15 = *(a2 + 16);
        v16 = *(a2 + 20);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B0D998FC(a2, v29, v17, &v30);
        if (!v9)
        {

          return v30;
        }

        v19 = *a2;

        *a2 = v13;
        *(a2 + 8) = v14;
        *(a2 + 16) = v15;
        *(a2 + 20) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v27;
        v8 = v28;
      }

      swift_willThrow();
      v31 = v9;
      v21 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v31 = v9;
        v22 = v9;
        if (!swift_dynamicCast())
        {
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D95138(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v13 = result;
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v18 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v14 = *result;
      v15 = *(result + 8);
      v16 = *(result + 16);
      v36 = *(result + 22);
      v37 = *(result + 20);

      v17 = sub_1B0D954C4(v13, v8, a3, a4, a5, a6, a7);
      v18 = v7;
      if (!v7)
      {
        a6 = v17;
LABEL_15:

        return a6;
      }

      v19 = *v13;

      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 16) = v16;
      *(v13 + 20) = v37;
      *(v13 + 22) = v36;
    }

    swift_willThrow();
    v39 = v18;
    v21 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v39 = v18;
      v22 = v18;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return a6;
      }
    }

    if (v8 < a3)
    {
      v23 = *v13;
      v24 = *(v13 + 8);
      v25 = *(v13 + 16);
      v26 = *(v13 + 20);
      v27 = *(v13 + 22);

      sub_1B0DB3F50(v13, v8, a3, a4, a5, a6, a7);
      v32 = v28;
      if (!v28)
      {

        return MEMORY[0x1E69E7CC0];
      }

      v33 = v29;
      v34 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
      a6 = swift_allocObject();
      *(a6 + 16) = xmmword_1B0EC1E70;
      *(a6 + 32) = sub_1B0DFF2E8(v32, v33, v34 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 402);
      *(a6 + 40) = v35;

      goto LABEL_15;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v31 = a3;
    swift_willThrow();
    return a6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D954C4(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v7)
  {
    return a5;
  }

  v15 = sub_1B0DB4210(a1, a2, a3, a4, a5, a6, a7);
  v17 = v16;
  v54 = a5;
  v55 = a6;
  v56 = a7;
  v57 = a2;
  v18 = v15;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
  a5 = swift_allocObject();
  *(a5 + 16) = xmmword_1B0EC1E70;
  result = sub_1B0DFF2E8(v18, v20, v17 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 409);
  *(a5 + 32) = result;
  *(a5 + 40) = v22;
  if (!__OFADD__(v57, 1))
  {
    if (v57 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v38 = a3;
    }

    else
    {
      v23 = *(a1 + 8);
      v48 = *(a1 + 20);
      v49 = *(a1 + 16);
      v47 = *(a1 + 22);
      v50 = *a1;

      if (v57 + 2 >= a3)
      {
        sub_1B0439BCC();
        v39 = swift_allocError();
        *v40 = a3;
        v41 = v50;
      }

      else
      {
        v24 = *a1;
        v25 = *(a1 + 8);
        v26 = *(a1 + 16);
        v27 = *(a1 + 20);
        v51 = *(a1 + 22);
        if (v57 + 3 < a3)
        {
          v28 = a5;
          do
          {
            v53 = v28;
            swift_retain_n();
            sub_1B0436204(a1);

            v29 = sub_1B0DB4210(a1, v57 + 2, a3, a4, v54, v55, v56);
            v32 = sub_1B0DFF2E8(v29, v31, v30 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 415);
            v52 = v33;
            v34 = v32;

            v28 = v53;
            v36 = *(v53 + 2);
            v35 = *(v53 + 3);
            if (v36 >= v35 >> 1)
            {
              v28 = sub_1B0AFF0E8((v35 > 1), v36 + 1, 1, v53);
            }

            *(v28 + 2) = v36 + 1;
            v37 = &v28[16 * v36];
            *(v37 + 4) = v34;
            *(v37 + 5) = v52;
            v24 = *a1;
            v25 = *(a1 + 8);
            v26 = *(a1 + 16);
            v27 = *(a1 + 20);
            v51 = *(a1 + 22);
          }

          while (v57 + 3 < a3);
        }

        sub_1B0439BCC();
        v42 = swift_allocError();
        *v43 = a3;

        swift_willThrow();
        v41 = v50;
        v44 = *a1;

        *a1 = v24;
        *(a1 + 8) = v25;
        *(a1 + 16) = v26;
        *(a1 + 20) = v27;
        v39 = v42;
        *(a1 + 22) = v51;
      }

      swift_willThrow();
      v45 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, v57, a3);

        return a5;
      }

      v46 = *a1;

      *a1 = v41;
      *(a1 + 8) = v23;
      *(a1 + 16) = v49;
      *(a1 + 20) = v48;
      *(a1 + 22) = v47;
    }

    swift_willThrow();

    return a5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D959A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  result = sub_1B0DB4210(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    result = sub_1B0DFF2E8(result, v16, v17 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 445);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      goto LABEL_11;
    }

    if (a2 + 1 < a3)
    {
      v23 = result;
      v18 = *(a1 + 8);
      v25 = *(a1 + 20);
      v26 = *(a1 + 16);
      v24 = *(a1 + 22);
      v27 = *a1;

      sub_1B0436204(a1);

      result = sub_1B0DB423C(a1, a2, a3, a4, a5, a6, a7);
      v22 = HIDWORD(v20) - v20;
      if (HIDWORD(v20) >= v20)
      {
        if (v21 - (BYTE6(v21) | (WORD2(v21) << 8)) >= HIDWORD(v20))
        {
          v29[1] = v20;
          v30 = v21;
          v31 = WORD2(v21);
          v32 = BYTE6(v21);
          v33 = v20;
          v34 = HIDWORD(v20);
          v28[0] = 0;
          v28[1] = 0xE000000000000000;
          v29[0] = result;

          MEMORY[0x1B2726D20](v22);
          sub_1B0D547AC(v29, v28);

          sub_1B04394F4(v29);
          return v23;
        }

        goto LABEL_12;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v19 = a3;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0D95C08(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  result = sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    v26[0] = 0;
    v26[1] = MEMORY[0x1E69E7CC0];
    v26[2] = MEMORY[0x1E69E7CC0];
    v16 = sub_1B0D959A0(a1, a2, a3, a4, a5, a6, a7);
    result = sub_1B0C6FCDC(v18, v19, v16, v17);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v22 = a3;

      swift_willThrow();
    }

    else
    {
      v20 = *a1;
      v21 = *(a1 + 8);
      v24 = *(a1 + 20);
      v25 = *(a1 + 16);
      v23 = *(a1 + 22);
      swift_retain_n();

      sub_1B0DFB088(a1, a2 + 1, a3, v26, a4, a5, a6, a7);

      sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
      return v26[0];
    }
  }

  return result;
}

uint64_t sub_1B0D95E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = a6;
  v8 = a5;
  v11 = *v6;
  v10 = v6[1];
  v12 = *(v10 + 16);
  if (!*v6)
  {
    if (v12)
    {
      v54 = v6;
      v55 = a1;
      v52 = a2;
      v53 = a3;
      v22 = HIDWORD(a6);
      v58 = WORD2(a6);
      v23 = BYTE6(a6);
      v24 = HIDWORD(a5) - a5;
      swift_beginAccess();
      v18 = 0;
      v51 = v8;
      v25 = (v10 + 54);
      v56 = (v23 & 0xFFFFFFFFFF0000FFLL | (v22 << 8)) + v8;
      v57 = v23;
      do
      {
        v26 = *(v25 - 14);
        v27 = *(v25 - 10);
        if (v27 - v26 == v24)
        {
          v28 = *(v25 - 22);
          v29 = *(v25 - 1);
          v30 = *v25;
          v31 = *(v25 - 6) == a6 && v29 == v58;
          v32 = v31 && v30 == v57;
          v33 = v32 && v28 == a4;
          if (v33 || (swift_beginAccess(), !memcmp((*(v28 + 24) + (v30 | (v29 << 8)) + v26), (*(a4 + 24) + v56), v27 - v26)))
          {

            v12 = 0;
            v34 = v53;
            v6 = v54;
            v14 = v52;
            goto LABEL_21;
          }
        }

        v25 += 24;
        ++v18;
      }

      while (v12 != v18);
      v12 = 0;
      a3 = v53;
      v6 = v54;
      v8 = v51;
      a2 = v52;
      a1 = v55;
      v7 = a6;
    }

    goto LABEL_29;
  }

  v55 = a1;
  v13 = a3;
  v14 = a2;

  v15 = v7;
  v16 = v10 + 32;
  v17 = v8;
  v18 = sub_1B0E0873C(a4, v8, v7 & 0xFFFFFFFFFFFFFFLL, v16, v12, v11 + 16, v11 + 32);
  v20 = v19;
  v12 = v21;

  if (v20)
  {
    v8 = v17;
    v7 = v15;
    a2 = v14;
    a3 = v13;
    a1 = v55;
LABEL_29:
    if (a1 == 1)
    {
    }

    v39 = a1;
    v40 = a3;
    v41 = a2;
    sub_1B0DFDA68(a4, v8, v7 & 0xFFFFFFFFFFFFFFLL, v12);

    v44 = v6[2];
    v42 = v6 + 2;
    v43 = v44;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v44;
    v45 = v39;
    if ((result & 1) == 0)
    {
      result = sub_1B0D7DF3C(0, *(v43 + 16) + 1, 1);
      v43 = *v42;
    }

    v46 = v41;
    v47 = v40;
    v49 = *(v43 + 16);
    v48 = *(v43 + 24);
    if (v49 >= v48 >> 1)
    {
      result = sub_1B0D7DF3C((v48 > 1), v49 + 1, 1);
      v47 = v40;
      v46 = v41;
      v43 = *v42;
    }

    *(v43 + 16) = v49 + 1;
    v50 = v43 + 24 * v49;
    *(v50 + 32) = v45;
    *(v50 + 40) = v46;
    *(v50 + 54) = BYTE6(v47);
    *(v50 + 52) = WORD2(v47);
    *(v50 + 48) = v47;
    *v42 = v43;
    return result;
  }

  v34 = v13;
LABEL_21:
  if (v55 == 1)
  {
    sub_1B0D97F94(v18, v12, sub_1B0DFE754, sub_1B0E08738, sub_1B0D983A8);

    sub_1B0D98224(v18);
  }

  v35 = v6[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0DFE794(v35);
    v35 = result;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v18 < *(v35 + 16))
  {
    v37 = v35 + 24 * v18;
    v38 = *(v37 + 32);
    *(v37 + 32) = v55;
    *(v37 + 40) = v14;
    *(v37 + 54) = BYTE6(v34);
    *(v37 + 52) = WORD2(v34);
    *(v37 + 48) = v34;

    v6[2] = v35;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D961D0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v82 = type metadata accessor for ParameterValue();
  v10 = *(v82 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v82);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v79 = &v75 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v77 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v75 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7548, &unk_1B0EFA5D0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v75 - v22;
  v25 = *v5;
  v26 = v5[1];
  v27 = *(v26 + 16);
  v83 = v10;
  v80 = v14;
  v81 = a3;
  v89 = a4;
  if (v25)
  {
    v28 = v23;
    v29 = &v75 - v22;

    v30 = sub_1B0E0873C(a2, a3, a4 & 0xFFFFFFFFFFFFFFLL, v26 + 32, v27, v25 + 16, v25 + 32);
    v31 = a1;
    v33 = v32;
    v35 = v34;

    v36 = &v29[*(v28 + 48)];
    sub_1B03B5C80(v31, v36, &qword_1EB6E6440, &unk_1B0EF3530);
    if (v33)
    {
      v37 = v31;
      v38 = v82;
      v39 = v83;
      v40 = v80;
      goto LABEL_24;
    }

    v56 = v31;
    v57 = v82;
    v58 = v83;
  }

  else
  {
    v41 = a2;
    v75 = a1;
    v76 = v5;
    if (!v27)
    {
LABEL_23:
      v36 = &v24[*(v23 + 48)];
      v37 = v75;
      sub_1B03B5C80(v75, v36, &qword_1EB6E6440, &unk_1B0EF3530);
      v35 = 0;
      v5 = v76;
      v38 = v82;
      v39 = v83;
      v40 = v80;
      a2 = v41;
LABEL_24:
      v61 = (*(v39 + 48))(v36, 1, v38);
      v62 = v81;
      v63 = v89;
      if (v61 == 1)
      {
        sub_1B0398EFC(v37, &qword_1EB6E6440, &unk_1B0EF3530);
      }

      else
      {
        v64 = v36;
        v65 = v79;
        sub_1B0D06280(v64, v79);
        sub_1B0DFDA80(a2, v62, v63 & 0xFFFFFFFFFFFFFFLL, v35);

        sub_1B0D062E4(v65, v40);
        v68 = v5[2];
        v67 = v5 + 2;
        v66 = v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v67 = v68;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B0CEF664(0, *(v66 + 16) + 1, 1);
          v66 = *v67;
        }

        v71 = *(v66 + 16);
        v70 = *(v66 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_1B0CEF664(v70 > 1, v71 + 1, 1);
        }

        sub_1B0398EFC(v37, &qword_1EB6E6440, &unk_1B0EF3530);
        sub_1B0D06348(v65);
        v72 = *v67;
        *(v72 + 16) = v71 + 1;
        result = sub_1B0D06280(v40, v72 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v71);
        *v67 = v72;
      }

      return result;
    }

    v42 = v81;
    v43 = HIDWORD(v89);
    v86 = WORD2(v89);
    v87 = &v75 - v22;
    v44 = BYTE6(v89);
    v45 = HIDWORD(v81) - v81;
    v88 = v23;
    swift_beginAccess();
    v24 = v87;
    v23 = v88;
    v30 = 0;
    v46 = (v26 + 54);
    v84 = (v44 & 0xFFFFFFFFFF0000FFLL | (v43 << 8)) + v42;
    v85 = v44;
    while (1)
    {
      v47 = *(v46 - 14);
      v48 = *(v46 - 10);
      if (v48 - v47 == v45)
      {
        v49 = *(v46 - 22);
        v50 = *(v46 - 1);
        v51 = *v46;
        v52 = *(v46 - 6) == v89 && v50 == v86;
        v53 = v52 && v51 == v85;
        if (v53 && v49 == v41)
        {
          break;
        }

        swift_beginAccess();
        v55 = memcmp((*(v49 + 24) + (v51 | (v50 << 8)) + v47), (*(v41 + 24) + v84), v48 - v47);
        v24 = v87;
        v23 = v88;
        if (!v55)
        {
          break;
        }
      }

      v46 += 24;
      if (v27 == ++v30)
      {
        goto LABEL_23;
      }
    }

    v36 = &v24[*(v23 + 48)];
    v56 = v75;
    sub_1B03B5C80(v75, v36, &qword_1EB6E6440, &unk_1B0EF3530);
    v35 = 0;
    v5 = v76;
    v57 = v82;
    v58 = v83;
  }

  if ((*(v58 + 48))(v36, 1, v57) == 1)
  {
    sub_1B0D97F94(v30, v35, sub_1B0DFE7D4, sub_1B0E08738, sub_1B0D983A8);

    v59 = v77;
    sub_1B0D98108(v30, v77);
    sub_1B0398EFC(v56, &qword_1EB6E6440, &unk_1B0EF3530);
    return sub_1B0D06348(v59);
  }

  v73 = v78;
  sub_1B0D06280(v36, v78);
  v74 = v5[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v74 = sub_1B0DFE72C(v74);
  }

  result = sub_1B0398EFC(v56, &qword_1EB6E6440, &unk_1B0EF3530);
  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v30 < v74[2])
  {
    result = sub_1B0D996D8(v73, v74 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v30);
    v5[2] = v74;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1B0D967E4(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v18 = swift_allocError();
      *v19 = a3;
    }

    else
    {
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v16 = *(a1 + 20);
      v17 = *(a1 + 22);
      if (a2 + 2 >= a3)
      {
        sub_1B0439BCC();
        v18 = swift_allocError();
        *v20 = a3;
      }

      else
      {

        sub_1B0436204(a1);
        v18 = v8;
        if (!v8)
        {
          sub_1B0D9241C(a1, v9, a3, a4, a5, a6, a7, v37);
          v34 = v37[0];
          v36 = v37[1];
          v30 = v37[2];
          v32 = v37[3];
          v22 = v38;
          v23 = v39;
          v24 = v40;

          v27 = v30;
          v28 = v32;
          v25 = v34;
          v26 = v36;
          goto LABEL_11;
        }
      }

      swift_willThrow();
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v17;
    }

    swift_willThrow();
    v21 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {

      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = xmmword_1B0EA4610;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
LABEL_11:
      *a8 = v25;
      *(a8 + 16) = v26;
      *(a8 + 32) = v27;
      *(a8 + 48) = v28;
      *(a8 + 64) = v22;
      *(a8 + 72) = v23;
      *(a8 + 80) = v24;
      return;
    }
  }
}

uint64_t sub_1B0D96A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_1B0DB4538(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v38 = v18;
      if (a2 + 1 >= a3)
      {

        sub_1B0439BCC();
        swift_allocError();
        *v23 = a3;
        return swift_willThrow();
      }

      else
      {
        v31 = a8;
        v32 = result;
        v33 = v19;
        v37 = v20;
        v21 = *a1;
        v22 = *(a1 + 8);
        v35 = *(a1 + 20);
        v36 = *(a1 + 16);
        v34 = *(a1 + 22);

        sub_1B0436204(a1);

        sub_1B0D92E2C(a1, a2, a3, a4, a5, a6, a7, v53);
        sub_1B0D967E4(a1, a2, a3, a4, a5, a6, a7, v54);
        v24 = swift_allocObject();
        *&v40[88] = xmmword_1B0EA4610;
        memset(&v40[104], 0, 64);
        v25 = v53[0];
        *&v40[24] = v53[1];
        *&v40[40] = v53[2];
        *&v40[56] = v53[3];
        *&v40[72] = v53[4];
        v24[2] = v32;
        v24[3] = v38;
        v24[4] = v33;
        v24[5] = v37;
        *&v40[168] = 0;
        *v40 = v24;
        *&v40[8] = v25;
        sub_1B0C8C870(v54, &v40[88], &qword_1EB6E6F98, &qword_1B0EEEB40);
        v49 = *&v40[128];
        v50 = *&v40[144];
        v51 = *&v40[160];
        v45 = *&v40[64];
        v46 = *&v40[80];
        v47 = *&v40[96];
        v48 = *&v40[112];
        v41 = *v40;
        v42 = *&v40[16];
        v43 = *&v40[32];
        v44 = *&v40[48];
        v52[8] = *&v40[128];
        v52[9] = *&v40[144];
        v52[10] = *&v40[160];
        v52[4] = *&v40[64];
        v52[5] = *&v40[80];
        v52[6] = *&v40[96];
        v52[7] = *&v40[112];
        v52[0] = *v40;
        v52[1] = *&v40[16];
        v52[2] = *&v40[32];
        v52[3] = *&v40[48];
        sub_1B07AD43C(&v41, v39);
        result = sub_1B071728C(v52);
        v26 = v50;
        v31[8] = v49;
        v31[9] = v26;
        v31[10] = v51;
        v27 = v46;
        v31[4] = v45;
        v31[5] = v27;
        v28 = v48;
        v31[6] = v47;
        v31[7] = v28;
        v29 = v42;
        *v31 = v41;
        v31[1] = v29;
        v30 = v44;
        v31[2] = v43;
        v31[3] = v30;
      }
    }
  }

  return result;
}

uint64_t sub_1B0D96D48@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_1B0DB4664(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (a2 + 1 >= a3)
      {

        sub_1B0439BCC();
        swift_allocError();
        *v21 = a3;
        return swift_willThrow();
      }

      v40 = a8;
      v41 = result;
      v49 = v18;
      v19 = *a1;
      v20 = *(a1 + 8);
      v48 = *(a1 + 16);
      v42 = *(a1 + 22);
      v46 = *(a1 + 20);

      sub_1B0436204(a1);

      sub_1B0D92E2C(a1, a2, a3, a4, a5, a6, a7, v65);
      v22 = *a1;
      v23 = *(a1 + 8);
      v24 = *(a1 + 16);
      v43 = *(a1 + 20);
      v37 = *(a1 + 22);

      sub_1B0436204(a1);

      sub_1B0D9B748(a1, a2, a3, a4, a5, a6, a7, v66);
      v25 = *a1;
      v26 = *(a1 + 8);
      v27 = *(a1 + 16);
      v44 = *(a1 + 20);
      v38 = *(a1 + 22);

      sub_1B0436204(a1);

      sub_1B0D8FADC(v68, a1, a2, a3, a4, a5, a6, a7);
      v28 = *a1;
      v29 = *(a1 + 8);
      v45 = *(a1 + 20);
      v47 = *(a1 + 16);
      v39 = *(a1 + 22);

      sub_1B0436204(a1);

      result = sub_1B0DFF3DC(a1, a2, a3, 1);
      a8 = 0;
    }

    if (result < 0)
    {

      sub_1B0436554();
      swift_allocError();
      *v30 = 0xD000000000000011;
      v30[1] = 0x80000001B0F2FEE0;
      v30[2] = 0xD000000000000020;
      v30[3] = 0x80000001B0F2FA10;
      v30[4] = 202;
      swift_willThrow();
      sub_1B0717224(v65);
      sub_1B075E648(v68);
      return sub_1B0D80C80(v66);
    }

    else
    {
      *&__src[80] = v66[4];
      *&__src[96] = v66[5];
      *&__src[112] = v66[6];
      *&__src[128] = v67;
      *&__src[16] = v66[0];
      *&__src[32] = v66[1];
      *&__src[48] = v66[2];
      *&__src[64] = v66[3];
      *&__src[280] = v68[9];
      *&__src[296] = v68[10];
      *&__src[264] = v68[8];
      *&__src[184] = v68[3];
      *&__src[168] = v68[2];
      *&__src[152] = v68[1];
      *&__src[136] = v68[0];
      *&__src[248] = v68[7];
      *&__src[232] = v68[6];
      *&__src[216] = v68[5];
      *&__src[200] = v68[4];
      __src[312] = v69;
      *__src = v41;
      *&__src[8] = v49;
      *&__src[320] = result;
      sub_1B0D0486C(v66, v63);
      sub_1B07169CC(v68, v63);
      sub_1B0D967E4(a1, a2, a3, a4, a5, a6, a7, v70);
      if (a8)
      {
        sub_1B0C67068(__src);
        sub_1B075E648(v68);
        sub_1B0D80C80(v66);
        return sub_1B0717224(v65);
      }

      else
      {
        sub_1B075E648(v68);
        sub_1B0D80C80(v66);
        v31 = swift_allocObject();
        memcpy((v31 + 16), __src, 0x148uLL);
        *&v51[88] = xmmword_1B0EA4610;
        memset(&v51[104], 0, 72);
        *&v51[24] = v65[1];
        *&v51[40] = v65[2];
        *&v51[56] = v65[3];
        *&v51[72] = v65[4];
        *v51 = v31 | 0x4000000000000000;
        *&v51[8] = v65[0];
        sub_1B0C8C870(v70, &v51[88], &qword_1EB6E6F98, &qword_1B0EEEB40);
        v60 = *&v51[128];
        v61 = *&v51[144];
        v62 = *&v51[160];
        v56 = *&v51[64];
        v57 = *&v51[80];
        v58 = *&v51[96];
        v59 = *&v51[112];
        v52 = *v51;
        v53 = *&v51[16];
        v54 = *&v51[32];
        v55 = *&v51[48];
        v63[8] = *&v51[128];
        v63[9] = *&v51[144];
        v63[10] = *&v51[160];
        v63[4] = *&v51[64];
        v63[5] = *&v51[80];
        v63[6] = *&v51[96];
        v63[7] = *&v51[112];
        v63[0] = *v51;
        v63[1] = *&v51[16];
        v63[2] = *&v51[32];
        v63[3] = *&v51[48];
        sub_1B07AD43C(&v52, v50);
        result = sub_1B071728C(v63);
        v32 = v61;
        v40[8] = v60;
        v40[9] = v32;
        v40[10] = v62;
        v33 = v57;
        v40[4] = v56;
        v40[5] = v33;
        v34 = v59;
        v40[6] = v58;
        v40[7] = v34;
        v35 = v53;
        *v40 = v52;
        v40[1] = v35;
        v36 = v55;
        v40[2] = v54;
        v40[3] = v36;
      }
    }
  }

  return result;
}

uint64_t *sub_1B0D97420@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_1B0DB4810(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1B0439BCC();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    else
    {
      v34 = a8;
      v35 = result;
      v42 = v18;
      v19 = *a1;
      v20 = *(a1 + 8);
      v37 = *(a1 + 20);
      v39 = *(a1 + 16);
      v36 = *(a1 + 22);

      sub_1B0436204(a1);

      sub_1B0D92E2C(a1, a2, a3, a4, a5, a6, a7, v57);
      v22 = *a1;
      v23 = *(a1 + 8);
      v40 = *(a1 + 20);
      v41 = *(a1 + 16);
      v38 = *(a1 + 22);

      sub_1B0436204(a1);

      v24 = sub_1B0DFF3DC(a1, a2, a3, 1);
      v25 = v24;
      if ((v24 & 0x8000000000000000) != 0)
      {

        sub_1B0436554();
        swift_allocError();
        *v26 = 0xD000000000000011;
        v26[1] = 0x80000001B0F2FEE0;
        v26[2] = 0xD000000000000020;
        v26[3] = 0x80000001B0F2FA10;
        v26[4] = 202;
        swift_willThrow();
        return sub_1B0717224(v57);
      }

      else
      {
        sub_1B0D967E4(a1, a2, a3, a4, a5, a6, a7, v58);
        v27 = swift_allocObject();
        *&v44[88] = xmmword_1B0EA4610;
        memset(&v44[104], 0, 64);
        v28 = v57[0];
        *&v44[24] = v57[1];
        *&v44[40] = v57[2];
        *&v44[56] = v57[3];
        *&v44[72] = v57[4];
        *(v27 + 16) = v35;
        *(v27 + 24) = v42;
        *(v27 + 32) = v25;
        *&v44[168] = 0;
        *v44 = v27 | 0x8000000000000000;
        *&v44[8] = v28;
        sub_1B0C8C870(v58, &v44[88], &qword_1EB6E6F98, &qword_1B0EEEB40);
        v53 = *&v44[128];
        v54 = *&v44[144];
        v55 = *&v44[160];
        v49 = *&v44[64];
        v50 = *&v44[80];
        v51 = *&v44[96];
        v52 = *&v44[112];
        v45 = *v44;
        v46 = *&v44[16];
        v47 = *&v44[32];
        v48 = *&v44[48];
        v56[8] = *&v44[128];
        v56[9] = *&v44[144];
        v56[10] = *&v44[160];
        v56[4] = *&v44[64];
        v56[5] = *&v44[80];
        v56[6] = *&v44[96];
        v56[7] = *&v44[112];
        v56[0] = *v44;
        v56[1] = *&v44[16];
        v56[2] = *&v44[32];
        v56[3] = *&v44[48];
        sub_1B07AD43C(&v45, v43);
        result = sub_1B071728C(v56);
        v29 = v54;
        v34[8] = v53;
        v34[9] = v29;
        v34[10] = v55;
        v30 = v50;
        v34[4] = v49;
        v34[5] = v30;
        v31 = v52;
        v34[6] = v51;
        v34[7] = v31;
        v32 = v46;
        *v34 = v45;
        v34[1] = v32;
        v33 = v48;
        v34[2] = v47;
        v34[3] = v33;
      }
    }
  }

  return result;
}

void sub_1B0D9784C(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    v67 = a6;
    v68 = a7;
    v17 = v15;
    v18 = v16;

    sub_1B0DFF2E8(v19, v17, v18 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 572);

    v20 = __OFADD__(a2, 1);
    v21 = a2 + 1;
    if (v20)
    {
LABEL_43:
      __break(1u);
      return;
    }

    if (v21 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v38 = a3;
    }

    else
    {
      v22 = *a1;
      v23 = *(a1 + 8);
      v24 = *(a1 + 16);
      v25 = *(a1 + 20);
      v61 = *(a1 + 22);
      v66 = v21 + 1;

      v62 = v25;
      v63 = v24;
      if (v21 + 1 >= a3)
      {
        sub_1B0439BCC();
        v39 = swift_allocError();
        *v40 = a3;
        v41 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v26 = v21 + 2;
        v27 = *a1;
        v28 = *(a1 + 8);
        v65 = *(a1 + 16);
        v29 = *(a1 + 20);
        v30 = *(a1 + 22);
        if (v26 < a3)
        {
          v31 = MEMORY[0x1E69E7CC0];
          do
          {
            swift_retain_n();
            sub_1B0436204(a1);

            v69 = MEMORY[0x1E69E7CC0];
            sub_1B0D92288(a1, v66, a3, &v69, a4, a5, v67, v68);

            v32 = v69;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v31 = sub_1B0DF577C(0, v31[2] + 1, 1, v31);
            }

            v33 = v31;
            v34 = v31[2];
            v35 = v33;
            v36 = v33[3];
            if (v34 >= v36 >> 1)
            {
              v35 = sub_1B0DF577C((v36 > 1), v34 + 1, 1, v35);
            }

            v35[2] = v34 + 1;
            v37 = &v35[v34];
            v31 = v35;
            v37[4] = v32;
            v27 = *a1;
            v28 = *(a1 + 8);
            v65 = *(a1 + 16);
            v29 = *(a1 + 20);
            v30 = *(a1 + 22);
          }

          while (v26 < a3);
        }

        sub_1B0439BCC();
        v42 = swift_allocError();
        *v43 = a3;

        v41 = MEMORY[0x1E69E7CC0];
        swift_willThrow();
        v44 = *a1;

        *a1 = v27;
        *(a1 + 8) = v28;
        *(a1 + 16) = v65;
        *(a1 + 20) = v29;
        *(a1 + 22) = v30;
        v39 = v42;
      }

      swift_willThrow();
      v70 = v39;
      v45 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        v46 = *(v41 + 16);
        if (!v46)
        {
LABEL_37:

          return;
        }

        v47 = 0;
        v48 = v41 + 32;
        v49 = MEMORY[0x1E69E7CC0];
        while (v47 < *(v41 + 16))
        {
          v50 = v41;
          v51 = *(v48 + 8 * v47);
          v52 = *(v51 + 16);
          v53 = *(v49 + 2);
          v54 = v53 + v52;
          if (__OFADD__(v53, v52))
          {
            goto LABEL_39;
          }

          v55 = *(v48 + 8 * v47);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v54 > *(v49 + 3) >> 1)
          {
            if (v53 <= v54)
            {
              v57 = v53 + v52;
            }

            else
            {
              v57 = v53;
            }

            v49 = sub_1B0DF5760(isUniquelyReferenced_nonNull_native, v57, 1, v49);
          }

          v41 = v50;
          if (*(v51 + 16))
          {
            if ((*(v49 + 3) >> 1) - *(v49 + 2) < v52)
            {
              goto LABEL_41;
            }

            swift_arrayInitWithCopy();

            if (v52)
            {
              v58 = *(v49 + 2);
              v20 = __OFADD__(v58, v52);
              v59 = v58 + v52;
              if (v20)
              {
                goto LABEL_42;
              }

              *(v49 + 2) = v59;
            }
          }

          else
          {

            if (v52)
            {
              goto LABEL_40;
            }
          }

          if (v46 == ++v47)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v60 = *a1;

      *a1 = v64;
      *(a1 + 8) = v23;
      *(a1 + 16) = v63;
      *(a1 + 20) = v62;
      *(a1 + 22) = v61;
    }

    swift_willThrow();
  }
}

uint64_t sub_1B0D97D9C(uint64_t result, char a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t))
{
  if (result < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = v4;
  v9 = result;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if (isUniquelyReferenced_nonNull_native && v9 <= *(v11 + 24) >> 1)
  {
    v14 = *v7;
    if (*v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v11 + 16) > v9)
    {
      v18 = *(v11 + 16);
    }

    a3();
    v11 = *v10;
    v14 = *v7;
    if (*v7)
    {
LABEL_5:
      swift_beginAccess();
      v15 = *(v14 + 16) & 0x3FLL;
      v16 = MEMORY[0x1B27256A0](v9);
      if (a2)
      {
        v17 = v16;
        if (v15 >= v16)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v20 = v16;
        swift_beginAccess();
        v16 = v20;
        v17 = *(v14 + 24) & 0x3FLL;
        if (v15 >= v16)
        {
          goto LABEL_19;
        }
      }

LABEL_15:
      if (v17 <= v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = v17;
      }

      goto LABEL_29;
    }
  }

  v16 = MEMORY[0x1B27256A0](v9);
  v15 = 0;
  if (a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v16 > 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v21 = *(v11 + 16);
  if (v17 <= v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = v17;
  }

  result = MEMORY[0x1B27256A0](*(v11 + 16));
  if (result <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = result;
  }

  if (v23 < v15)
  {
    if (v17 <= v23)
    {
      v19 = v23;
    }

    else
    {
      v19 = v17;
    }

LABEL_29:
    v24 = a4(v11, v19, 0, v17);

    *v7 = v24;
    return result;
  }

  if (!v14 || (v25 = *v7, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v26 = *v7;
    if (*v7)
    {
      goto LABEL_34;
    }

LABEL_38:
    if (!v17)
    {
      return result;
    }

    __break(1u);
    goto LABEL_40;
  }

  if (!*v7)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v27 = *v7;
  v26 = sub_1B0E43578();

  *v7 = v26;
  if (!v26)
  {
    goto LABEL_38;
  }

LABEL_34:
  result = swift_beginAccess();
  if ((*(v26 + 24) & 0x3FLL) != v17)
  {
    *(v26 + 24) = *(v26 + 24) & 0xFFFFFFFFFFFFFFC0 | v17 & 0x3F;
  }

  return result;
}

uint64_t sub_1B0D97F94(int64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v9 = v5[1];
  v10 = *(v9 + 16);
  v11 = *v5;
  if (!*v5)
  {
    if (!v10)
    {
      goto LABEL_16;
    }

    return sub_1B0D982EC(a1, a3);
  }

  swift_beginAccess();
  if ((*(v11 + 16) & 0x3FLL) == (*(v11 + 24) & 0x3FLL))
  {
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else if (v10 <= MEMORY[0x1B2725680]())
  {
LABEL_16:
    v20 = sub_1B0D982EC(a1, a3);
    a4();
    return v20;
  }

  v14 = *v5;
  result = swift_isUniquelyReferenced_native();
  v16 = *v5;
  if ((result & 1) == 0)
  {
    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = *v5;
    v18 = sub_1B0E43578();

    *v5 = v18;
    v16 = v18;
  }

  if (v16)
  {
    result = a5(a2, v16 + 16, v16 + 32, v5);
    v19 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v19 >= a1)
    {
      sub_1B0D985F4(a1, v19, v9, (v16 + 16));
      return sub_1B0D982EC(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

size_t sub_1B0D98108@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0DFE72C(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for ParameterValue() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1B0D06280(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B0D98224(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0DFE794(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 24 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v7 += 32;
    v10 = *(v7 + 16) | ((*(v7 + 20) | (*(v7 + 22) << 16)) << 32);
    memmove(v7, (v7 + 24), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B0D982EC(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    v9 += 32;
    v12 = *(v9 + 16);
    v13 = *(v9 + 20);
    v14 = *(v9 + 22);
    memmove(v9, (v9 + 24), 24 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

unint64_t sub_1B0D983A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v26 = sub_1B0E434F8();
  sub_1B0E43548();
  if (v26)
  {
    v6 = sub_1B0E43508();
    while (1)
    {
      result = sub_1B0E43528();
      if (v9)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v10 = *(a4 + 8);
      if (result >= *(v10 + 16))
      {
        goto LABEL_21;
      }

      v11 = *a2;
      v12 = v10 + 24 * result;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v15 = *(v12 + 44);
      v16 = *(v12 + 52);
      v17 = *(v12 + 54);
      sub_1B0E46C28();
      swift_beginAccess();
      v18 = *(v13 + 24) + (v17 | (v16 << 8));
      sub_1B0E46C38();
      result = sub_1B0E46CB8();
      v19 = 1 << *a2;
      v20 = v19 - 1;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_22;
      }

      v21 = v20 & result;
      if (v5 >= v6)
      {
        break;
      }

      if (v21 < v6)
      {
        goto LABEL_14;
      }

LABEL_15:
      v22 = sub_1B0E43528();
      if ((v23 & 1) == 0)
      {
        v7 = ((v20 & ((v22 - (a2[1] >> 6)) >> 63)) + v22 - (a2[1] >> 6)) ^ v20;
      }

      v5 = a1;
      sub_1B0E43518();
LABEL_5:
      sub_1B0E43548();
    }

    if (v21 < v6)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v5 < v21)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_1B0E43518();
}

uint64_t sub_1B0D985F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_54;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    v43 = a2 - result;
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x1B2725670](*a4 & 0x3F);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v9 < v8)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (v8)
        {
          v10 = 0;
          v41 = a3 + 32;
          while (1)
          {
            v11 = (v41 + 24 * v10);
            v12 = *(v11 + 22);
            v13 = *(v11 + 10);
            v14 = *(v11 + 2);
            v15 = *(v11 + 3);
            v16 = *v11;
            v17 = *a4;
            sub_1B0E46C28();
            swift_beginAccess();
            v18 = *(v16 + 24) + (v12 | (v13 << 8));
            sub_1B0E46C38();
            result = sub_1B0E46CB8();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1B0E434F8())
            {
              while (1)
              {
                v19 = sub_1B0E43528();
                if ((v20 & 1) == 0 && v19 == v10)
                {
                  break;
                }

                sub_1B0E43548();
              }
            }

            v5 = v43;
            result = v10 + v43;
            if (__OFADD__(v10, v43))
            {
              goto LABEL_51;
            }

            ++v10;
            result = sub_1B0E43538();
            if (v10 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      sub_1B0E434F8();
      v27 = sub_1B0E43528();
      if ((v28 & 1) != 0 || v27 >= v8)
      {
LABEL_29:
        result = sub_1B0E43548();
LABEL_17:
        v21 = a4[1];
        if (__OFSUB__(v21 >> 6, v5))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v22 = 1 << *a4;
        v23 = __OFSUB__(v22, 1);
        v24 = v22 - 1;
        if (v23)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v25 = (v24 & (((v21 >> 6) - v5) >> 63)) + (v21 >> 6) - v5;
        if (v25 < v24)
        {
          v24 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v25 - v24) << 6);
        return result;
      }

      if (!__OFADD__(v27, v5))
      {
        sub_1B0E43538();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      sub_1B0E434F8();
      v29 = sub_1B0E43528();
      if ((v30 & 1) == 0 && v29 >= v4)
      {
        v23 = __OFSUB__(v29, v5);
        result = v29 - v5;
        if (v23)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        sub_1B0E43538();
      }

      return sub_1B0E43548();
    }

    v4 = a2;
    v26 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    result = MEMORY[0x1B2725670](*a4 & 0x3F);
    if (v26 >= result / 3)
    {
      goto LABEL_35;
    }

    if (v9 < v4)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v4 < 0)
    {
LABEL_61:
      __break(1u);
      return result;
    }

    if (v9 != v4)
    {
      v42 = a3 + 32;
      while (1)
      {
        v31 = (v42 + 24 * v4);
        v32 = *(v31 + 22);
        v33 = *(v31 + 10);
        v35 = *(v31 + 2);
        v34 = *(v31 + 3);
        v36 = *v31;
        v37 = *a4;
        sub_1B0E46C28();
        swift_beginAccess();
        v38 = *(v36 + 24) + (v32 | (v33 << 8));
        sub_1B0E46C38();
        result = sub_1B0E46CB8();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (sub_1B0E434F8())
        {
          while (1)
          {
            v39 = sub_1B0E43528();
            if ((v40 & 1) == 0 && v39 == v4)
            {
              break;
            }

            sub_1B0E43548();
          }
        }

        result = sub_1B0E43538();
        if (++v4 == v9)
        {
          return result;
        }
      }

      goto LABEL_53;
    }
  }

  return result;
}

uint64_t sub_1B0D98A6C(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6568, &qword_1B0EE7F08);
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v12 = (&v31 - v11);
  v13 = MEMORY[0x1E69E7CC0];
  v37 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  v14 = *(a1 + 16);
  sub_1B0D97D9C(v14, 0, sub_1B0A18B88, sub_1B0E0871C);
  v36 = v13;
  sub_1B0D7DF1C(0, v14, 0);
  v15 = v36;
  v33 = v14;
  if (!v14)
  {
    return v37;
  }

  v16 = 0;
  v32 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v31 = *(v9 + 72);
  while (1)
  {
    sub_1B03B5C80(v32 + v31 * v16, v12, &qword_1EB6E6568, &qword_1B0EE7F08);
    v18 = *v12;
    v17 = v12[1];
    sub_1B0D06280(v12 + *(v35 + 48), v8);
    v19 = v37;
    v20 = v38;
    v21 = *(v38 + 16);
    if (!v37)
    {
      break;
    }

    sub_1B0E08740(v18, v17, v20 + 32, v21, v19 + 16, v19 + 32);
    v23 = v22;
    v25 = v24;

    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    sub_1B0DFD8B0(v18, v17, v25);
    sub_1B0D062E4(v8, v5);
    v36 = v15;
    v30 = *(v15 + 16);
    v29 = *(v15 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1B0D7DF1C(v29 > 1, v30 + 1, 1);

      v15 = v36;
    }

    else
    {
    }

    ++v16;
    sub_1B0D06348(v8);
    *(v15 + 16) = v30 + 1;
    sub_1B0D06280(v5, v15 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v30);
    if (v16 == v33)
    {
      return v37;
    }
  }

  if (!v21)
  {
LABEL_14:
    v25 = 0;
    goto LABEL_15;
  }

  v27 = (v38 + 40);
  while (1)
  {
    result = *(v27 - 1);
    if (result == v18 && *v27 == v17)
    {
      break;
    }

    result = sub_1B0E46A78();
    if (result)
    {
      break;
    }

    v27 += 2;
    if (!--v21)
    {
      goto LABEL_14;
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1B0D98DC0()
{
  result = qword_1EB6E7530;
  if (!qword_1EB6E7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7530);
  }

  return result;
}

uint64_t sub_1B0D98EC4(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue();
  v79 = *(v2 - 8);
  v3 = *(v79 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v73 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6EF8, " |\a");
  v9 = *(v81 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v73 - v11;
  v12 = MEMORY[0x1E69E7CC0];
  v96 = 0;
  v97 = MEMORY[0x1E69E7CC0];
  v13 = *(a1 + 16);
  sub_1B0D97D9C(v13, 0, sub_1B0D7DF7C, sub_1B0DFE2D8);
  v95 = v12;
  sub_1B0CEF664(0, v13, 0);
  v14 = v95;
  v78 = v13;
  if (!v13)
  {
    return v96;
  }

  v15 = 0;
  v77 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v16 = *(v9 + 72);
  v75 = v6;
  v76 = v16;
  v74 = v8;
  while (1)
  {
    v84 = v14;
    v17 = v80;
    sub_1B03B5C80(v77 + v76 * v15, v80, &qword_1EB6E6EF8, " |\a");
    v18 = *(v81 + 48);
    v19 = *v17;
    v21 = *(v17 + 8);
    v20 = *(v17 + 12);
    v88 = *(v17 + 16);
    v22 = *(v17 + 20);
    v23 = v8;
    v24 = *(v17 + 22);
    sub_1B0D06280(v17 + v18, v23);
    v25 = v96;
    v89 = v24;
    v90 = v22;
    v86 = v20;
    if (v96)
    {
      v73 = v97;
      v83 = v9;
      v26 = *(v96 + 16);
      sub_1B0E46C28();
      swift_beginAccess();
      v27 = v24 | (v22 << 8);
      v28 = *(v19 + 24) + v27;
      sub_1B0E46C38();
      v29 = sub_1B0E46CB8();
      v30 = 1 << *(v25 + 16);
      v31 = __OFSUB__(v30, 1);
      v32 = v30 - 1;
      if (v31)
      {
        __break(1u);
      }

      else
      {
        v85 = v21;
        v33 = v32 & v29;
        v34 = sub_1B0E434F8();
        *&v102 = v25 + 16;
        *(&v102 + 1) = v25 + 32;
        *&v103 = v33;
        *(&v103 + 1) = v34;
        *&v104 = v35;
        *(&v104 + 1) = v36;
        v105 = 0;
        v37 = sub_1B0E43528();
        LOBYTE(v33) = v38;
        v39 = v103;
        v91 = v102;
        v92 = v103;
        v93 = v104;
        v94 = v105;
        v87 = v25;

        if (v33)
        {
          v8 = v74;
          v40 = v75;
LABEL_39:
          v14 = v84;

          v9 = v83;
          v21 = v85;
          v46 = v89;
          v45 = v90;
          goto LABEL_42;
        }

        v82 = v15;
        v57 = v73 + 32;
        v58 = v86 - v85;
        v59 = v27 + v85;
        v60 = v37;
        while (1)
        {
          v62 = (v57 + 24 * v60);
          v63 = *(v62 + 2);
          v64 = *(v62 + 3);
          if (v64 - v63 == v58)
          {
            v65 = *v62;
            v66 = *(v62 + 10);
            v67 = *(v62 + 22);
            v68 = *(v62 + 4) == v88 && v66 == v90;
            v69 = v68 && v67 == v89;
            if (v69 && v65 == v19)
            {
              break;
            }

            swift_beginAccess();
            if (!memcmp((*(v65 + 24) + (v67 | (v66 << 8)) + v63), (*(v19 + 24) + v59), v64 - v63))
            {
              break;
            }
          }

          sub_1B0E43548();
          v98 = v91;
          v99 = v92;
          v100 = v93;
          v101 = v94;
          v39 = v92;
          v60 = sub_1B0E43528();
          if (v61)
          {
            v8 = v74;
            v40 = v75;
            v15 = v82;
            goto LABEL_39;
          }
        }
      }

      goto LABEL_50;
    }

    v41 = *(v97 + 16);
    if (v41)
    {
      break;
    }

    v39 = 0;
    v46 = v89;
    v45 = v90;
    v8 = v74;
    v40 = v75;
    v14 = v84;
LABEL_42:
    v9 = v9 & 0xFF00000000000000 | v88 | (v45 << 32) | (v46 << 48);
    sub_1B0DFDA80(v19, v21 | (v86 << 32), v9, v39);
    sub_1B0D062E4(v8, v40);
    v95 = v14;
    v72 = *(v14 + 16);
    v71 = *(v14 + 24);
    if (v72 >= v71 >> 1)
    {
      sub_1B0CEF664(v71 > 1, v72 + 1, 1);

      v14 = v95;
    }

    else
    {
    }

    ++v15;
    sub_1B0D06348(v8);
    *(v14 + 16) = v72 + 1;
    sub_1B0D06280(v40, v14 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v72);
    if (v15 == v78)
    {
      return v96;
    }
  }

  v82 = v15;
  v83 = v9;
  v42 = v20 - v21;
  v43 = v97;
  result = swift_beginAccess();
  v46 = v89;
  v45 = v90;
  v47 = v21;
  v48 = (v43 + 54);
  v85 = v47;
  v87 = (v89 | (v90 << 8)) + v47;
  while (1)
  {
    v49 = *(v48 - 14);
    v50 = *(v48 - 10);
    if (v50 - v49 == v42)
    {
      v51 = *(v48 - 22);
      v52 = *(v48 - 1);
      v53 = *v48;
      v54 = *(v48 - 6) == v88 && v52 == v45;
      v55 = v54 && v53 == v46;
      if (v55 && v51 == v19)
      {
        break;
      }

      swift_beginAccess();
      result = memcmp((*(v51 + 24) + (v53 | (v52 << 8)) + v49), (*(v19 + 24) + v87), v50 - v49);
      v46 = v89;
      v45 = v90;
      if (!result)
      {
        break;
      }
    }

    v48 += 24;
    if (!--v41)
    {
      v39 = 0;
      v8 = v74;
      v40 = v75;
      v15 = v82;
      v9 = v83;
      v14 = v84;
      v21 = v85;
      goto LABEL_42;
    }
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1B0D99534@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = v6(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v9;
  }

  return result;
}

double sub_1B0D99570@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10[0] = a2;
  v10[1] = a3;
  v7(&v11, a1, v10);
  if (!v5)
  {
    result = *&v11;
    *a4 = v11;
  }

  return result;
}

double sub_1B0D99684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v11[0] = a2;
  v11[1] = a3;
  v7(&v12, a1, v11);
  if (!v5)
  {
    v10 = v13;
    result = *&v12;
    *a4 = v12;
    *(a4 + 16) = v10;
  }

  return result;
}

uint64_t sub_1B0D996D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterValue();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1B0D9973C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v12[0] = a2;
  v12[1] = a3;
  v7(&v13, a1, v12);
  if (!v5)
  {
    v10 = v14;
    v11 = v15;
    result = *&v13;
    *a4 = v13;
    *(a4 + 16) = v10;
    *(a4 + 24) = v11;
  }

  return result;
}

void *sub_1B0D997B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v11[0] = a2;
  v11[1] = a3;
  result = v7(v12, a1, v11);
  if (!v5)
  {
    v10 = v12[1];
    *a4 = v12[0];
    a4[1] = v10;
  }

  return result;
}

void *sub_1B0D997FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10[0] = a2;
  v10[1] = a3;
  result = v7(&v11, a1, v10);
  if (!v5)
  {
    *a4 = v11;
  }

  return result;
}

void *sub_1B0D99860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v11[0] = a2;
  v11[1] = a3;
  result = v7(&v12, a1, v11);
  if (!v5)
  {
    v10 = v13;
    *a4 = v12;
    *(a4 + 8) = v10;
  }

  return result;
}

uint64_t sub_1B0D99914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Command();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t *sub_1B0D99978(unint64_t *result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v11 = a3;
      return swift_willThrow();
    }

    v6 = result;
    v7 = *result;
    v8 = result[1];
    v9 = *(result + 4);
    v12 = *(result + 22);
    v13 = *(result + 10);

    sub_1B0D99D1C(v6, v4, a3, &v14);
    if (v3)
    {
      v10 = *v6;

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v13;
      *(v6 + 22) = v12;
      return swift_willThrow();
    }

    return v14;
  }

  return result;
}

uint64_t sub_1B0D99AA0(uint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      v13 = swift_allocError();
      *v15 = a3;
    }

    else
    {
      v7 = *result;
      v8 = *(result + 8);
      v9 = *(result + 16);
      v10 = *(result + 20);
      v11 = *(result + 22);

      sub_1B0D9A274(v6, v4, a3);
      v13 = v3;
      if (!v3)
      {
LABEL_13:
        v24 = v12;

        return v24;
      }

      v14 = *v6;

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    v25 = v13;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v25 = v13;
      v17 = v13;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v4 < a3)
    {
      v18 = *v6;
      v19 = *(v6 + 8);
      v20 = *(v6 + 16);
      v21 = *(v6 + 20);
      v22 = *(v6 + 22);

      v12 = sub_1B0D9A40C(v6, v4, a3);
      goto LABEL_13;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v23 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

void sub_1B0D99D1C(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, unint64_t **a4@<X8>)
{
  sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v9 = sub_1B0D99AA0(a1, a2, a3);
    sub_1B0DFE880(0x2DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v10 = sub_1B0D9A508(a1, a2, a3);
    sub_1B0DFE880(0x2DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v11 = sub_1B0DC0BA8(a1, a2, a3);
    sub_1B0DFE880(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v12 = sub_1B0DC0BC4(a1, a2, a3);
    sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v13 = sub_1B0DC0BC4(a1, a2, a3);
    sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v32 = sub_1B0DC0BC4(a1, a2, a3);
    sub_1B0DFE880(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v30 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (v30 < a3)
      {
        v14 = *(a1 + 8);
        v23 = *(a1 + 20);
        v25 = *(a1 + 16);
        v21 = *(a1 + 22);
        v28 = *a1;

        v27 = sub_1B0D9A704(a1, v30, a3, v12);
        goto LABEL_15;
      }

      sub_1B0439BCC();
      v31 = swift_allocError();
      *v15 = a3;
      swift_willThrow();
      v33 = v31;
      v16 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

LABEL_11:

        if (v30 >= a3)
        {
          sub_1B0439BCC();
          swift_allocError();
          *v19 = a3;
          goto LABEL_14;
        }

        v18 = *(a1 + 8);
        v24 = *(a1 + 20);
        v26 = *(a1 + 16);
        v22 = *(a1 + 22);
        v29 = *a1;

        v27 = sub_1B0D9A8C0(a1, v30, a3, v12);
LABEL_15:

        sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
        if ((v9 - 32) >= 0xFFFFFFFFFFFFFFE1 && (v10 - 13) >= 0xFFFFFFFFFFFFFFF4 && v12 <= 0x17 && v13 <= 0x3B && v32 <= 0x3C && v27 - 1441 >= 0xFFFFFFFFFFFFF4BFLL && v11 - 0x10000 >= 0xFFFFFFFFFFFF0001)
        {
          v34[0] = v11;
          v34[1] = v10;
          v34[2] = v9;
          v34[3] = v12;
          v34[4] = v13;
          v34[5] = v32;
          v34[6] = v27;
          *a4 = _s12NIOIMAPCore217ServerMessageDateVyA2C10ComponentsVcfC_0(v34);
          return;
        }

        sub_1B0436554();
        swift_allocError();
        *v20 = 0xD000000000000016;
        v20[1] = 0x80000001B0F2FF40;
        v20[2] = 0xD000000000000020;
        v20[3] = 0x80000001B0F2FA10;
        v20[4] = 167;
LABEL_14:
        swift_willThrow();
        return;
      }

      v33 = v31;
      v17 = v31;
      if (swift_dynamicCast())
      {

        goto LABEL_11;
      }
    }
  }
}

void sub_1B0D9A274(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      v13 = swift_allocError();
      *v15 = a3;
    }

    else
    {
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      v11 = *(a1 + 20);
      v12 = *(a1 + 22);

      sub_1B0DFE880(0x20uLL, 0xE100000000000000, 0, 0, a1, v4, a3);
      v13 = v3;
      if (!v3)
      {

LABEL_10:
        sub_1B0DC0AB0(a1, a2, a3, 1);
        return;
      }

      v14 = *a1;

      *a1 = v8;
      *(a1 + 8) = v9;
      *(a1 + 16) = v10;
      *(a1 + 20) = v11;
      *(a1 + 22) = v12;
    }

    swift_willThrow();
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {

      return;
    }

    goto LABEL_10;
  }

  __break(1u);
}

unint64_t sub_1B0D9A40C(unint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v13 = a3;
      return swift_willThrow();
    }

    v6 = result;
    v7 = *result;
    v8 = *(result + 8);
    v9 = *(result + 16);
    v10 = *(result + 20);
    v11 = *(result + 22);

    sub_1B0DC08C4(v6, v4, a3, 2, &v14);
    if (v3)
    {
      v12 = *v6;

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
      return swift_willThrow();
    }

    return v14;
  }

  return result;
}

uint64_t sub_1B0D9A508(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8 = __OFADD__(a2, 1);
  v9 = a2 + 1;
  if (!v8)
  {
    v31 = v7;
    v32 = v4;
    v33 = v5;
    v34 = v6;
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
    }

    else
    {
      v10 = result;
      v11 = *result;
      v12 = *(result + 8);
      v13 = *(result + 16);
      v14 = *(result + 20);
      v4 = *(result + 22);
      sub_1B0DFA170(result, &v26);
      if (!v3)
      {
        v17 = sub_1B0DFF2E8(v26, v27, v28 | (v29 << 32) | (v30 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 78);
        v19 = v18;
        v20 = v17;
        sub_1B0E44B98();
        v4 = sub_1B0DC4804();
        v22 = v21;

        if (v22)
        {
          v26 = 0;
          v27 = 0xE000000000000000;
          sub_1B0E46298();

          v26 = 0xD000000000000013;
          v27 = 0x80000001B0F2FF80;
          MEMORY[0x1B2726E80](v20, v19);

          v23 = v26;
          v24 = v27;
          sub_1B0436554();
          swift_allocError();
          *v25 = v23;
          v25[1] = v24;
          v25[2] = 0xD000000000000020;
          v25[3] = 0x80000001B0F2FA10;
          v25[4] = 80;
          swift_willThrow();
        }

        else
        {
        }

        return v4;
      }

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v14;
      *(v10 + 22) = v4;
    }

    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0D9A704(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  result = sub_1B0DFE880(0x2BuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v10 = sub_1B0DC0BA8(a1, a2, a3);
    if ((v10 & 0x8000000000000000) == 0 && (v10 % 0x64 <= 0x3C ? (v11 = a4 <= 24) : (v11 = 0), v11))
    {
      return v10 % 0x64 + 60 * ((v10 - v10 % 0x64) / 100);
    }

    else
    {
      sub_1B0E46298();

      v12 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v12);

      MEMORY[0x1B2726E80](0x64656C69616620, 0xE700000000000000);
      sub_1B0436554();
      swift_allocError();
      *v13 = 0xD000000000000017;
      v13[1] = 0x80000001B0F2FF60;
      v13[2] = 0xD000000000000020;
      v13[3] = 0x80000001B0F2FA10;
      v13[4] = 134;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0D9A8C0(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  result = sub_1B0DFE880(0x2DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v10 = sub_1B0DC0BA8(a1, a2, a3);
    if ((v10 & 0x8000000000000000) == 0 && (v10 % 0x64 <= 0x3C ? (v11 = a4 <= 24) : (v11 = 0), v11))
    {
      return -(v10 % 0x64) - 60 * ((v10 - v10 % 0x64) / 100);
    }

    else
    {
      sub_1B0E46298();

      v12 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v12);

      MEMORY[0x1B2726E80](0x64656C69616620, 0xE700000000000000);
      sub_1B0436554();
      swift_allocError();
      *v13 = 0xD000000000000017;
      v13[1] = 0x80000001B0F2FF60;
      v13[2] = 0xD000000000000020;
      v13[3] = 0x80000001B0F2FA10;
      v13[4] = 143;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0D9AA80(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v20 = *(result + 22);
    v21 = *(result + 20);

    sub_1B0D9AF4C(v10, v8, a3, a4, a5, a6, a7, &v22);
    if (v7)
    {
      v18 = *v10;

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v21;
      *(v10 + 22) = v20;
      return swift_willThrow();
    }

    return v22;
  }

  return result;
}

uint64_t sub_1B0D9ABAC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v22 = a3;
    }

    else
    {
      v15 = result;
      v16 = *result;
      v17 = *(result + 8);
      v44 = *(result + 20);
      v45 = *(result + 16);
      v43 = *(result + 22);

      v18 = sub_1B0DB3AC0(v15, v9, a3, a4, a5, a6, a7);
      if (v8)
      {
        v21 = *v15;
      }

      else
      {
        v41 = v18;
        v23 = v9 + 1;
        v24 = *v15;
        if (v23 < a3)
        {
          v38 = v19;
          v39 = v20;
          v40 = v23;
          sub_1B0436204(v15);
          v27 = *v15;
          v28 = *(v15 + 8);
          v36 = *(v15 + 20);
          v37 = *(v15 + 16);
          v35 = *(v15 + 22);

          sub_1B0DB3F50(v15, v40, a3, a4, a5, a6, a7);
          v30 = v29;
          v32 = v31;
          v34 = v33;

          *a8 = v41;
          *(a8 + 8) = v38;
          *(a8 + 16) = v39;
          *(a8 + 20) = WORD2(v39);
          *(a8 + 22) = BYTE6(v39);
          *(a8 + 24) = v32;
          *(a8 + 32) = v30;
          *(a8 + 40) = v34;
          *(a8 + 46) = BYTE6(v34);
          *(a8 + 44) = WORD2(v34);
          return result;
        }

        v25 = *v15;

        sub_1B0439BCC();
        swift_allocError();
        *v26 = a3;
        swift_willThrow();
      }

      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v45;
      *(v15 + 20) = v44;
      *(v15 + 22) = v43;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0D9AF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v30 = 0;
    *&v31 = MEMORY[0x1E69E7CC0];
    *(&v31 + 1) = MEMORY[0x1E69E7CC0];
    sub_1B0D9ABAC(a1, a2, a3, a4, a5, a6, a7, v32);
    v18 = v32[0];
    v29 = v32[1];
    v27 = v36;
    v23 = v37 | ((v38 | (v39 << 16)) << 32);
    v25 = v33 | (v34 << 32) | (v35 << 48);

    result = sub_1B0D95E4C(v19, v27, v23, v18, v29, v25);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v22 = a3;

      swift_willThrow();

      sub_1B0D9B6E0(v32);
    }

    else
    {
      v20 = *a1;
      v21 = *(a1 + 8);
      v28 = *(a1 + 16);
      v26 = *(a1 + 20);
      v24 = *(a1 + 22);
      swift_retain_n();

      sub_1B0DFB8D8(a1, a2 + 1, a3, &v30, a4, a5, a6, a7);

      sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
      result = sub_1B0D9B6E0(v32);
      *a8 = v30;
      *(a8 + 8) = v31;
    }
  }

  return result;
}

unint64_t sub_1B0D9B208(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v24 = a3;
    }

    else
    {
      v11 = result;
      v12 = *result;
      v13 = *(result + 8);
      v63 = *(result + 20);
      v64 = *(result + 16);
      v62 = *(result + 22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7560, &qword_1B0EF9F20);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1B0EC1E70;
      v16 = v12;

      v17 = sub_1B0DB3AC0(v11, v9, a3, a4, a5, a6, a7);
      if (v7)
      {
        v20 = *v11;

        *(v8 + 16) = 0;

        v21 = v63;
        v22 = v64;
        v23 = v62;
      }

      else
      {
        v57 = a6;
        v58 = a7;
        *(v8 + 32) = v17;
        *(v8 + 40) = v18;
        *(v8 + 48) = v19;
        *(v8 + 52) = WORD2(v19);
        *(v8 + 54) = BYTE6(v19);
        if (v9 + 1 >= a3)
        {
          sub_1B0439BCC();
          swift_allocError();
          *v38 = a3;
          v21 = v63;
          v22 = v64;
          v23 = v62;
        }

        else
        {
          v25 = *(v11 + 8);
          v48 = *(v11 + 20);
          v49 = *(v11 + 16);
          v47 = *(v11 + 22);
          v50 = *v11;

          v54 = v9 + 2;
          v22 = v64;
          if (v9 + 2 >= a3)
          {
            sub_1B0439BCC();
            v39 = swift_allocError();
            *v40 = a3;
            v41 = v50;
            v23 = v62;
            v21 = v63;
          }

          else
          {
            v26 = v9 + 3;
            v27 = *v11;
            v28 = *(v11 + 8);
            v53 = *(v11 + 16);
            v55 = *(v11 + 22);
            v56 = *(v11 + 20);
            v21 = v63;
            if (v26 >= a3)
            {
              v23 = v62;
            }

            else
            {
              v29 = v8;
              v51 = v8;
              v52 = v12;
              do
              {
                v59 = v29;
                swift_retain_n();
                sub_1B0436204(v11);

                v30 = sub_1B0DB3AC0(v11, v54, a3, a4, a5, v57, v58);
                v32 = v31;
                v34 = v33;

                v29 = v59;
                v36 = *(v59 + 2);
                v35 = *(v59 + 3);
                if (v36 >= v35 >> 1)
                {
                  v29 = sub_1B0DF57D0((v35 > 1), v36 + 1, 1, v59);
                }

                *(v29 + 2) = v36 + 1;
                v37 = &v29[24 * v36];
                *(v37 + 4) = v30;
                *(v37 + 5) = v32;
                *(v37 + 12) = v34;
                *(v37 + 26) = WORD2(v34);
                v37[54] = BYTE6(v34);
                v27 = *v11;
                v28 = *(v11 + 8);
                v53 = *(v11 + 16);
                v55 = *(v11 + 22);
                v56 = *(v11 + 20);
                v8 = v51;
                v16 = v52;
                v21 = v63;
                v22 = v64;
                v23 = v62;
              }

              while (v26 < a3);
            }

            sub_1B0439BCC();
            v39 = swift_allocError();
            *v42 = a3;

            swift_willThrow();
            v41 = v50;
            v43 = *v11;

            *v11 = v27;
            *(v11 + 8) = v28;
            *(v11 + 16) = v53;
            *(v11 + 20) = v56;
            *(v11 + 22) = v55;
          }

          swift_willThrow();
          v44 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
          if (swift_dynamicCast())
          {

            return v8;
          }

          v45 = *v11;

          *v11 = v41;
          *(v11 + 8) = v25;
          *(v11 + 16) = v49;
          *(v11 + 20) = v48;
          *(v11 + 22) = v47;
        }

        swift_willThrow();
        v46 = *v11;
      }

      *v11 = v16;
      *(v11 + 8) = v13;
      *(v11 + 16) = v22;
      *(v11 + 20) = v21;
      *(v11 + 22) = v23;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D9B6E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7558, &qword_1B0EF4670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0D9B748@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v25 = *(result + 22);
    v26 = *(result + 20);

    sub_1B0D9C06C(v11, v9, a3, a4, a5, a6, a7, v27);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v26;
      *(v11 + 22) = v25;
      return swift_willThrow();
    }

    v21 = v27[5];
    *(a8 + 64) = v27[4];
    *(a8 + 80) = v21;
    *(a8 + 96) = v27[6];
    *(a8 + 112) = v28;
    v22 = v27[1];
    *a8 = v27[0];
    *(a8 + 16) = v22;
    v23 = v27[3];
    *(a8 + 32) = v27[2];
    *(a8 + 48) = v23;
  }

  return result;
}

uint64_t sub_1B0D9B8A8(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v17 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v15 = *result;
      v16 = *(result + 8);
      v30 = *(result + 20);
      v31 = *(result + 16);
      v29 = *(result + 22);

      sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v11, v8, a3);
      v17 = v7;
      if (!v7)
      {
        v32 = MEMORY[0x1E69E7CC0];

        sub_1B0E0469C(v11, &v32, v8, a3, a4, a5, a6, a7);

        v18 = v32;
        sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v11, v8, a3);

LABEL_17:
        a5 = sub_1B0D9CB44(v18);

        return a5;
      }

      v19 = *v11;

      *v11 = v15;
      *(v11 + 8) = v16;
      *(v11 + 16) = v31;
      *(v11 + 20) = v30;
      *(v11 + 22) = v29;
    }

    swift_willThrow();
    v33 = v17;
    v21 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v33 = v17;
      v22 = v17;
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_15;
      }
    }

    if (v8 < a3)
    {
      v23 = *v11;
      v24 = *(v11 + 8);
      v25 = *(v11 + 16);
      v26 = *(v11 + 20);
      v27 = *(v11 + 22);

      sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v11, v8, a3);

      v18 = MEMORY[0x1E69E7CC0];
      goto LABEL_17;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v28 = a3;
    swift_willThrow();
LABEL_15:

    return a5;
  }

  __break(1u);
  return result;
}

void sub_1B0D9BC14(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v63 = v17;
  v64 = v12;
  v65 = v8;
  v66[0] = v15;
  v66[1] = v16;
  v15 = v66;
  v51 = a8;
  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    v27 = swift_allocError();
    *v28 = a3;
LABEL_9:
    swift_willThrow();
    v58[0] = v27;
    v30 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {

      return;
    }

    goto LABEL_11;
  }

  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  v25 = *(a1 + 20);
  v26 = *(a1 + 22);
  if (a2 + 2 >= a3)
  {
    sub_1B0439BCC();
    v27 = swift_allocError();
    *v29 = a3;
    goto LABEL_8;
  }

  sub_1B0436204(a1);
  v27 = v10;
  if (v10)
  {
LABEL_8:
    swift_willThrow();
    *a1 = v22;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    *(a1 + 20) = v25;
    *(a1 + 22) = v26;
    goto LABEL_9;
  }

LABEL_11:
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
  v12 = v31;
  v33 = v32;
  v9 = v34;
  sub_1B0DFE880(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
  v49 = v36;
  v50 = v35;
  v13 = v37;
  sub_1B0DFE880(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
  v46 = v39;
  v47 = v38;
  v48 = v40;
  sub_1B0DFE880(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
  v14 = v33;
  v53 = v41;
  v55 = v42;
  v11 = v43;
  sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
LABEL_14:
  v58[0] = v9;
  v58[1] = v14;
  LODWORD(v59) = v12;
  BYTE6(v59) = BYTE6(v12);
  WORD2(v59) = WORD2(v12);
  *(&v59 + 1) = v13;
  *&v60 = v50;
  DWORD2(v60) = v49;
  BYTE14(v60) = BYTE6(v49);
  WORD6(v60) = WORD2(v49);
  *&v61 = v48;
  *(&v61 + 1) = v47;
  *v62 = v46;
  v62[6] = BYTE6(v46);
  *&v62[4] = WORD2(v46);
  *&v62[8] = v11;
  *&v62[16] = v53;
  *&v62[24] = v55;
  v62[30] = BYTE6(v55);
  *&v62[28] = WORD2(v55);
  *(v15 - 23) = v9;
  *(v15 - 22) = v14;
  *(v15 - 42) = v12;
  *(v15 - 162) = BYTE6(v12);
  *(v15 - 82) = WORD2(v12);
  *(v15 - 20) = v13;
  *(v15 - 19) = v50;
  *(v15 - 36) = v49;
  *(v15 - 138) = BYTE6(v49);
  *(v15 - 70) = WORD2(v49);
  *(v15 - 17) = v48;
  *(v15 - 16) = v47;
  *(v15 - 30) = v46;
  *(v15 - 114) = BYTE6(v46);
  *(v15 - 58) = WORD2(v46);
  *(v15 - 14) = v11;
  *(v15 - 13) = v53;
  *(v15 - 24) = v55;
  *(v15 - 90) = BYTE6(v55);
  *(v15 - 46) = WORD2(v55);
  sub_1B0D3CA68(v58, v57);
  sub_1B0D3CAC4((v15 - 23));
  v44 = v61;
  v51[2] = v60;
  v51[3] = v44;
  v51[4] = *v62;
  *(v51 + 79) = *&v62[15];
  v45 = v59;
  *v51 = *v58;
  v51[1] = v45;
}

void sub_1B0D9C06C(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v8)
  {
    return;
  }

  sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
  v98 = a5;
  v99 = a6;
  v101 = a7;
  v97 = a8;
  if (v17)
  {
    v19 = v17;
    v20 = v18;
    swift_beginAccess();
    v21 = *(v19 + 24) + ((v20 >> 24) & 0xFFFF00 | BYTE6(v20));
    v22 = sub_1B0E44C68();
    v24 = v23;

    v25 = a2 + 1;
    if (!__OFADD__(a2, 1))
    {
LABEL_4:
      if (v25 >= a3)
      {

        sub_1B0439BCC();
        swift_allocError();
        *v29 = a3;
        swift_willThrow();
        return;
      }

      v26 = *a1;
      v27 = *(a1 + 8);
      v28 = *(a1 + 16);
      v95 = *(a1 + 20);
      v93 = *(a1 + 22);
      sub_1B0436204(a1);
      goto LABEL_11;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v25 = a2 + 1;
    if (!__OFADD__(a2, 1))
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_11:
  sub_1B0DB3F50(a1, a2, a3, a4, v98, v99, v101);
  v87 = v30;
  v32 = v31;
  v96 = v33;
  v34 = *a1;
  v35 = *(a1 + 8);
  v94 = *(a1 + 16);
  v91 = *(a1 + 20);
  v88 = *(a1 + 22);
  sub_1B0436204(a1);
  v92 = sub_1B0D9B8A8(a1, a2, a3, a4, v98, v99, v101);
  v36 = *a1;
  v37 = *(a1 + 8);
  v38 = *(a1 + 16);
  v89 = *(a1 + 20);
  v85 = *(a1 + 22);
  sub_1B0436204(a1);
  v90 = sub_1B0D9B8A8(a1, a2, a3, a4, v98, v99, v101);
  v39 = *a1;
  v40 = *(a1 + 8);
  v41 = *(a1 + 16);
  v86 = *(a1 + 20);
  v83 = *(a1 + 22);
  sub_1B0436204(a1);
  v84 = sub_1B0D9B8A8(a1, a2, a3, a4, v98, v99, v101);
  v42 = *a1;
  v43 = *(a1 + 8);
  v81 = *(a1 + 16);
  v78 = *(a1 + 20);
  v74 = *(a1 + 22);
  sub_1B0436204(a1);
  v82 = sub_1B0D9B8A8(a1, a2, a3, a4, v98, v99, v101);
  v44 = *a1;
  v45 = *(a1 + 8);
  v79 = *(a1 + 16);
  v75 = *(a1 + 20);
  v70 = *(a1 + 22);
  sub_1B0436204(a1);
  v80 = sub_1B0D9B8A8(a1, a2, a3, a4, v98, v99, v101);
  v46 = *a1;
  v47 = *(a1 + 8);
  v76 = *(a1 + 16);
  v71 = *(a1 + 20);
  v67 = *(a1 + 22);
  sub_1B0436204(a1);
  v77 = sub_1B0D9B8A8(a1, a2, a3, a4, v98, v99, v101);
  v48 = *a1;
  v49 = *(a1 + 8);
  v72 = *(a1 + 16);
  v68 = *(a1 + 20);
  v65 = *(a1 + 22);
  sub_1B0436204(a1);
  sub_1B0DB3F50(a1, a2, a3, a4, v98, v99, v101);
  if (v50)
  {
    v69 = sub_1B0DFF2E8(v50, v51, v52 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 103);
    v73 = v53;
  }

  else
  {
    v69 = 0;
    v73 = 0;
  }

  v66 = *a1;
  v54 = *(a1 + 8);
  v63 = *(a1 + 20);
  v64 = *(a1 + 16);
  v62 = *(a1 + 22);
  sub_1B0436204(a1);
  sub_1B0DB3F50(a1, a2, a3, a4, v98, v99, v101);
  if (v55)
  {
    v100 = sub_1B0DFF2E8(v55, v56, v57 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 103);
    v102 = v58;
  }

  else
  {
    v100 = 0;
    v102 = 0;
  }

  sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  *&v104 = v22;
  *(&v104 + 1) = v24;
  *&v105 = v96;
  *(&v105 + 1) = v32;
  LODWORD(v106) = v87;
  BYTE6(v106) = BYTE6(v87);
  WORD2(v106) = WORD2(v87);
  *(&v106 + 1) = v92;
  *&v107 = v90;
  *(&v107 + 1) = v84;
  *&v108 = v82;
  *(&v108 + 1) = v80;
  *&v109 = v77;
  *(&v109 + 1) = v69;
  *&v110 = v73;
  *(&v110 + 1) = v100;
  v111 = v102;
  v112[0] = v22;
  v112[1] = v24;
  v112[2] = v96;
  v112[3] = v32;
  v113 = v87;
  v115 = BYTE6(v87);
  v114 = WORD2(v87);
  v116 = v92;
  v117 = v90;
  v118 = v84;
  v119 = v82;
  v120 = v80;
  v121 = v77;
  v122 = v69;
  v123 = v73;
  v124 = v100;
  v125 = v102;
  sub_1B0D0486C(&v104, v103);
  sub_1B0D80C80(v112);
  v59 = v109;
  *(v97 + 64) = v108;
  *(v97 + 80) = v59;
  *(v97 + 96) = v110;
  *(v97 + 112) = v111;
  v60 = v105;
  *v97 = v104;
  *(v97 + 16) = v60;
  v61 = v107;
  *(v97 + 32) = v106;
  *(v97 + 48) = v61;
}

uint64_t sub_1B0D9CB44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = (a1 + 32);
  v4 = v1 - 1;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *&v71[15] = *(v3 + 79);
    v6 = v3[4];
    v70 = v3[3];
    *v71 = v6;
    v7 = v3[2];
    v68 = v3[1];
    v69 = v7;
    v67 = *v3;
    if (*&v71[8])
    {
      break;
    }

    if (v70)
    {
      v49 = v70;
      LODWORD(v50) = *v71;
      WORD2(v50) = *&v71[4];
      BYTE6(v50) = v71[6];
      *(&v50 + 1) = *(&v68 + 1);
      *&v51 = v69;
      DWORD2(v51) = DWORD2(v69);
      BYTE14(v51) = BYTE14(v69);
      WORD6(v51) = WORD6(v69);
      v52 = MEMORY[0x1E69E7CC0];
      v53 = v70;
      v54 = *v71;
      v55 = *&v71[4];
      v56 = v71[6];
      v57 = *(&v68 + 1);
      v58 = v69;
      v59 = DWORD2(v69);
      v61 = BYTE14(v69);
      v60 = WORD6(v69);
      v62 = MEMORY[0x1E69E7CC0];
      swift_retain_n();
      sub_1B0D3CA68(&v67, &v63);

      sub_1B0D3C9B8(&v49, &v63);
      sub_1B0D3CA14(&v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1B0DF57EC(0, *(v2 + 2) + 1, 1, v2);
      }

      v22 = *(v2 + 2);
      v21 = *(v2 + 3);
      if (v22 >= v21 >> 1)
      {
        v2 = sub_1B0DF57EC((v21 > 1), v22 + 1, 1, v2);
      }

      sub_1B0D3CAC4(&v67);
      *(v2 + 2) = v22 + 1;
      v23 = &v2[56 * v22];
      v25 = v50;
      v24 = v51;
      v26 = v49;
      *(v23 + 10) = v52;
      *(v23 + 3) = v25;
      *(v23 + 4) = v24;
      *(v23 + 2) = v26;
      if (!v4)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (!*(v2 + 2))
      {
        goto LABEL_30;
      }

      sub_1B0D3CA68(&v67, &v63);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v27 = *(v2 + 2);
        if (!v27)
        {
          goto LABEL_49;
        }
      }

      else
      {
        result = sub_1B0D9CB30(v2);
        v2 = result;
        v27 = *(result + 16);
        if (!v27)
        {
          goto LABEL_49;
        }
      }

      v28 = &v2[56 * v27 - 24];
      v29 = *v28;
      v30 = *(v28 + 16);
      v31 = *(v28 + 32);
      v66 = *(v28 + 48);
      v64 = v30;
      v65 = v31;
      v63 = v29;
      *(v2 + 2) = v27 - 1;
      v32 = swift_allocObject();
      v33 = v64;
      *(v32 + 16) = v63;
      *(v32 + 32) = v33;
      *(v32 + 48) = v65;
      *(v32 + 64) = v66;
      if (v27 == 1)
      {
        sub_1B0D3C9B8(&v63, &v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1B0DF5914(0, *(v5 + 2) + 1, 1, v5);
        }

        v48 = *(v5 + 2);
        v47 = *(v5 + 3);
        if (v48 >= v47 >> 1)
        {
          v5 = sub_1B0DF5914((v47 > 1), v48 + 1, 1, v5);
        }

        sub_1B0D3CA14(&v63);
        sub_1B0D3CAC4(&v67);
        v39 = v32 | 0x8000000000000000;
        *(v5 + 2) = v48 + 1;
        v41 = &v5[8 * v48];
      }

      else
      {
        sub_1B0D3C9B8(&v63, &v53);
        v34 = &v2[56 * v27 + 32];
        v35 = *(v34 - 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v34 - 64) = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_1B0DF5914(0, *(v35 + 2) + 1, 1, v35);
          *(v34 - 64) = v35;
        }

        v38 = *(v35 + 2);
        v37 = *(v35 + 3);
        if (v38 >= v37 >> 1)
        {
          *(v34 - 64) = sub_1B0DF5914((v37 > 1), v38 + 1, 1, v35);
        }

        sub_1B0D3CA14(&v63);
        sub_1B0D3CAC4(&v67);
        v39 = v32 | 0x8000000000000000;
        v40 = *(v34 - 64);
        *(v40 + 16) = v38 + 1;
        v41 = (v40 + 8 * v38);
      }

      *(v41 + 4) = v39;
      if (!v4)
      {
LABEL_45:

        return v5;
      }
    }

LABEL_42:
    --v4;
    v3 += 6;
  }

  v8 = *(v2 + 2);
  if (!v8)
  {
LABEL_30:
    v42 = swift_allocObject();
    v43 = v3[3];
    v42[3] = v3[2];
    v42[4] = v43;
    v42[5] = v3[4];
    *(v42 + 95) = *(v3 + 79);
    v44 = v3[1];
    v42[1] = *v3;
    v42[2] = v44;
    sub_1B0D3CA68(&v67, &v63);
    sub_1B0D3CA68(&v67, &v63);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1B0DF5914(0, *(v5 + 2) + 1, 1, v5);
    }

    v46 = *(v5 + 2);
    v45 = *(v5 + 3);
    if (v46 >= v45 >> 1)
    {
      v5 = sub_1B0DF5914((v45 > 1), v46 + 1, 1, v5);
    }

    sub_1B0D3CAC4(&v67);
    *(v5 + 2) = v46 + 1;
    *&v5[8 * v46 + 32] = v42;
    if (!v4)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v9 = swift_allocObject();
  v10 = v3[3];
  v9[3] = v3[2];
  v9[4] = v10;
  v9[5] = v3[4];
  *(v9 + 95) = *(v3 + 79);
  v11 = v3[1];
  v9[1] = *v3;
  v9[2] = v11;
  sub_1B0D3CA68(&v67, &v63);
  sub_1B0D3CA68(&v67, &v63);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0D9CB30(v2);
    v2 = result;
  }

  if (v8 <= *(v2 + 2))
  {
    v13 = &v2[56 * v8];
    v16 = *(v13 + 3);
    v15 = (v13 + 24);
    v14 = v16;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *v15 = v16;
    if ((v17 & 1) == 0)
    {
      v14 = sub_1B0DF5914(0, *(v14 + 2) + 1, 1, v14);
      *v15 = v14;
    }

    v19 = *(v14 + 2);
    v18 = *(v14 + 3);
    if (v19 >= v18 >> 1)
    {
      *v15 = sub_1B0DF5914((v18 > 1), v19 + 1, 1, v14);
    }

    sub_1B0D3CAC4(&v67);
    v20 = *v15;
    *(v20 + 2) = v19 + 1;
    *&v20[8 * v19 + 32] = v9;
    if (!v4)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

double sub_1B0D9D0E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7568, &qword_1B0EF4678);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC4E20;
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B0D9EC8C;
  *(v16 + 24) = v15;
  *(inited + 32) = 0x542E323238434652;
  *(inited + 40) = 0xEB00000000545845;
  *(inited + 48) = sub_1B0D9ECA4;
  *(inited + 56) = v16;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B0D9ECBC;
  *(v18 + 24) = v17;
  strcpy((inited + 64), "RFC822.HEADER");
  *(inited + 78) = -4864;
  *(inited + 80) = sub_1B0D9F3EC;
  *(inited + 88) = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B0D9ECD4;
  *(v20 + 24) = v19;
  *(inited + 96) = 1497648962;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 112) = sub_1B0D9F3EC;
  *(inited + 120) = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B0D9ECF4;
  *(v22 + 24) = v21;
  *(inited + 128) = 0x5952414E4942;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = sub_1B0D9F3EC;
  *(inited + 152) = v22;
  swift_retain_n();
  v23 = sub_1B0DA9094(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7550, &qword_1B0EF4668);
  swift_arrayDestroy();
  v24 = v31;
  sub_1B0D9ED6C(a1, a2, a3, v23, v29);

  if (!v24)
  {
    result = *v29;
    v26 = v29[1];
    *a8 = v29[0];
    *(a8 + 16) = v26;
    *(a8 + 32) = v30;
  }

  return result;
}

void sub_1B0D9D3E0(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{

  sub_1B0E02CB4(a1, a2, a3, a4, a5, a6, a7);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  if (!v8)
  {
    if (!v18)
    {
      v18 = MEMORY[0x1E69E7CC0];
      v20 = 0;
      v22 = 2;
    }

    sub_1B0E08720(a1, a2, a3);
    *a8 = v18;
    *(a8 + 8) = v20;
    *(a8 + 16) = v22;
    *(a8 + 24) = v24;
    *(a8 + 32) = v23 & 1 | 0x40;
  }
}

void sub_1B0D9D4EC(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return;
  }

  if (v9 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v21 = a3;
    goto LABEL_7;
  }

  v16 = *a1;
  v17 = *(a1 + 8);
  v28 = *(a1 + 20);
  v29 = *(a1 + 16);
  v27 = *(a1 + 22);

  sub_1B0DFE880(0x5BuLL, 0xE100000000000000, 0, 0, a1, v9, a3);
  if (v8)
  {
    v20 = *a1;

    *a1 = v16;
    *(a1 + 8) = v17;
    *(a1 + 16) = v29;
    *(a1 + 20) = v28;
    *(a1 + 22) = v27;
LABEL_7:
    swift_willThrow();
    return;
  }

  sub_1B0E0407C(a1, v9, a3, a4, a5, a6, a7);
  v19 = v18;

  sub_1B0DFE880(0x5DuLL, 0xE100000000000000, 0, 0, a1, v9, a3);

  if (v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  sub_1B0E08720(a1, a2, a3);
  *a8 = v22;
  *(a8 + 8) = v24;
  *(a8 + 16) = v23 & 1;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
}

uint64_t sub_1B0D9D6D8(uint64_t a1)
{
  v3 = *(v1 + 144);
  v28[8] = *(v1 + 128);
  v28[9] = v3;
  v28[10] = *(v1 + 160);
  v29 = *(v1 + 176);
  v4 = *(v1 + 80);
  v28[4] = *(v1 + 64);
  v28[5] = v4;
  v5 = *(v1 + 112);
  v28[6] = *(v1 + 96);
  v28[7] = v5;
  v6 = *(v1 + 16);
  v28[0] = *v1;
  v28[1] = v6;
  v7 = *(v1 + 48);
  v28[2] = *(v1 + 32);
  v28[3] = v7;
  v8 = sub_1B0D0CBC8(v28);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v18 = sub_1B041BA38(v28);
      v19 = *(v18 + 32);
      v13 = *(v18 + 40);
      v20 = *(v18 + 16);
      v30 = *v18;
      v31 = v20;
      LOBYTE(v32) = v19;
      v15 = 3;
    }

    else
    {
      if (v8 != 4)
      {
        v21 = 5;
        return MEMORY[0x1B2728D70](v21);
      }

      v11 = sub_1B041BA38(v28);
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v14 = *(v11 + 16);
      v30 = *v11;
      v31 = v14;
      LOBYTE(v32) = v12;
      v15 = 4;
    }

    MEMORY[0x1B2728D70](v15);
    StreamingKind.hash(into:)(a1);
    v21 = v13;
    return MEMORY[0x1B2728D70](v21);
  }

  if (!v8)
  {
    v16 = *sub_1B041BA38(v28);
    v10 = 0;
    goto LABEL_9;
  }

  if (v8 == 1)
  {
    v9 = *sub_1B041BA38(v28);
    v10 = 1;
LABEL_9:
    MEMORY[0x1B2728D70](v10);
    return sub_1B0E46C88();
  }

  v22 = sub_1B041BA38(v28);
  v23 = *(v22 + 144);
  v38 = *(v22 + 128);
  v39 = v23;
  v40 = *(v22 + 160);
  v41 = *(v22 + 176);
  v24 = *(v22 + 80);
  v34 = *(v22 + 64);
  v35 = v24;
  v25 = *(v22 + 112);
  v36 = *(v22 + 96);
  v37 = v25;
  v26 = *(v22 + 16);
  v30 = *v22;
  v31 = v26;
  v27 = *(v22 + 48);
  v32 = *(v22 + 32);
  v33 = v27;
  MEMORY[0x1B2728D70](2);
  return MessageAttribute.hash(into:)(a1);
}

uint64_t sub_1B0D9D86C()
{
  sub_1B0E46C28();
  v1 = *(v0 + 144);
  v27[8] = *(v0 + 128);
  v27[9] = v1;
  v27[10] = *(v0 + 160);
  v28 = *(v0 + 176);
  v2 = *(v0 + 80);
  v27[4] = *(v0 + 64);
  v27[5] = v2;
  v3 = *(v0 + 112);
  v27[6] = *(v0 + 96);
  v27[7] = v3;
  v4 = *(v0 + 16);
  v27[0] = *v0;
  v27[1] = v4;
  v5 = *(v0 + 48);
  v27[2] = *(v0 + 32);
  v27[3] = v5;
  v6 = sub_1B0D0CBC8(v27);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v15 = sub_1B041BA38(v27);
      v16 = *(v15 + 32);
      v11 = *(v15 + 40);
      v17 = *(v15 + 16);
      v29 = *v15;
      v30 = v17;
      LOBYTE(v31) = v16;
      v13 = 3;
    }

    else
    {
      if (v6 != 4)
      {
        v18 = 5;
        goto LABEL_14;
      }

      v9 = sub_1B041BA38(v27);
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      v12 = *(v9 + 16);
      v29 = *v9;
      v30 = v12;
      LOBYTE(v31) = v10;
      v13 = 4;
    }

    MEMORY[0x1B2728D70](v13);
    StreamingKind.hash(into:)(v26);
    v18 = v11;
LABEL_14:
    MEMORY[0x1B2728D70](v18);
    return sub_1B0E46CB8();
  }

  if (v6)
  {
    if (v6 != 1)
    {
      v19 = sub_1B041BA38(v27);
      v20 = *(v19 + 144);
      v37 = *(v19 + 128);
      v38 = v20;
      v39 = *(v19 + 160);
      v40 = *(v19 + 176);
      v21 = *(v19 + 80);
      v33 = *(v19 + 64);
      v34 = v21;
      v22 = *(v19 + 112);
      v35 = *(v19 + 96);
      v36 = v22;
      v23 = *(v19 + 16);
      v29 = *v19;
      v30 = v23;
      v24 = *(v19 + 48);
      v31 = *(v19 + 32);
      v32 = v24;
      MEMORY[0x1B2728D70](2);
      MessageAttribute.hash(into:)(v26);
      return sub_1B0E46CB8();
    }

    v7 = *sub_1B041BA38(v27);
    v8 = 1;
  }

  else
  {
    v14 = *sub_1B041BA38(v27);
    v8 = 0;
  }

  MEMORY[0x1B2728D70](v8);
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

double sub_1B0D9DA24@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, *a2, v7);
  if (!v3)
  {
    sub_1B0448078(a1, v6, v7);
    sub_1B0D047BC(v14);
    v9 = v22;
    *(a3 + 128) = v21;
    *(a3 + 144) = v9;
    *(a3 + 160) = v23;
    *(a3 + 176) = v24;
    v10 = v18;
    *(a3 + 64) = v17;
    *(a3 + 80) = v10;
    v11 = v20;
    *(a3 + 96) = v19;
    *(a3 + 112) = v11;
    v12 = v14[1];
    *a3 = v14[0];
    *(a3 + 16) = v12;
    result = *&v15;
    v13 = v16;
    *(a3 + 32) = v15;
    *(a3 + 48) = v13;
  }

  return result;
}

uint64_t sub_1B0D9DAF8()
{
  sub_1B0E46C28();
  v1 = *(v0 + 144);
  v39[8] = *(v0 + 128);
  v39[9] = v1;
  v39[10] = *(v0 + 160);
  v40 = *(v0 + 176);
  v2 = *(v0 + 80);
  v39[4] = *(v0 + 64);
  v39[5] = v2;
  v3 = *(v0 + 112);
  v39[6] = *(v0 + 96);
  v39[7] = v3;
  v4 = *(v0 + 16);
  v39[0] = *v0;
  v39[1] = v4;
  v5 = *(v0 + 48);
  v39[2] = *(v0 + 32);
  v39[3] = v5;
  v6 = sub_1B0D0CBC8(v39);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v15 = sub_1B041BA38(v39);
      v16 = *(v15 + 32);
      v11 = *(v15 + 40);
      v17 = *(v15 + 16);
      v27 = *v15;
      v28 = v17;
      LOBYTE(v29) = v16;
      v13 = 3;
    }

    else
    {
      if (v6 != 4)
      {
        v18 = 5;
        goto LABEL_14;
      }

      v9 = sub_1B041BA38(v39);
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      v12 = *(v9 + 16);
      v27 = *v9;
      v28 = v12;
      LOBYTE(v29) = v10;
      v13 = 4;
    }

    MEMORY[0x1B2728D70](v13);
    StreamingKind.hash(into:)(v26);
    v18 = v11;
LABEL_14:
    MEMORY[0x1B2728D70](v18);
    return sub_1B0E46CB8();
  }

  if (v6)
  {
    if (v6 != 1)
    {
      v19 = sub_1B041BA38(v39);
      v20 = *(v19 + 144);
      v35 = *(v19 + 128);
      v36 = v20;
      v37 = *(v19 + 160);
      v38 = *(v19 + 176);
      v21 = *(v19 + 80);
      v31 = *(v19 + 64);
      v32 = v21;
      v22 = *(v19 + 112);
      v33 = *(v19 + 96);
      v34 = v22;
      v23 = *(v19 + 16);
      v27 = *v19;
      v28 = v23;
      v24 = *(v19 + 48);
      v29 = *(v19 + 32);
      v30 = v24;
      MEMORY[0x1B2728D70](2);
      MessageAttribute.hash(into:)(v26);
      return sub_1B0E46CB8();
    }

    v7 = *sub_1B041BA38(v39);
    v8 = 1;
  }

  else
  {
    v14 = *sub_1B041BA38(v39);
    v8 = 0;
  }

  MEMORY[0x1B2728D70](v8);
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D9DCAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v13[10] = *(a1 + 160);
  v14 = *(a1 + 176);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v15[10] = *(a2 + 160);
  v16 = *(a2 + 176);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_1B0D9E6BC(v13, v15) & 1;
}

uint64_t sub_1B0D9DD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B0D9EB48;
  *(v18 + 24) = v17;
  v44 = sub_1B0442378;
  v45 = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B0D9EB68;
  *(v20 + 24) = v19;
  v46 = sub_1B0442378;
  v47 = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_1B0D9EB88;
  *(result + 24) = v21;
  v48 = sub_1B0442378;
  v49 = result;
  v50 = sub_1B0D9DA24;
  v51 = 0;
  v23 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v24 = 32;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v43[v24];
      if (v23 >= a3)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v31 = a3;
      }

      else
      {
        v25 = *a1;
        v26 = *(a1 + 8);
        v41 = *(a1 + 16);
        v27 = a3;
        v28 = *(a1 + 20);
        v29 = *(a1 + 22);

        sub_1B0D9F434(a1, v23, v27);
        if (!v9)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          result = swift_arrayDestroy();
          v35 = v61;
          *(a8 + 128) = v60;
          *(a8 + 144) = v35;
          *(a8 + 160) = v62;
          *(a8 + 176) = v63;
          v36 = v57;
          *(a8 + 64) = v56;
          *(a8 + 80) = v36;
          v37 = v59;
          *(a8 + 96) = v58;
          *(a8 + 112) = v37;
          v38 = v53;
          *a8 = v52;
          *(a8 + 16) = v38;
          v39 = v55;
          *(a8 + 32) = v54;
          *(a8 + 48) = v39;
          return result;
        }

        v30 = *a1;

        *a1 = v25;
        *(a1 + 8) = v26;
        *(a1 + 16) = v41;
        *(a1 + 20) = v28;
        *(a1 + 22) = v29;
        a3 = v27;
      }

      swift_willThrow();
      v42 = v9;
      v32 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v42 = v9;
        v33 = v9;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v24 += 16;
      if (v24 == 96)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v34 = 0xD000000000000019;
        v34[1] = 0x80000001B0F2FF00;
        v34[2] = 0xD000000000000020;
        v34[3] = 0x80000001B0F2FA10;
        v34[4] = 356;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

double sub_1B0D9E210@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B0DA4E90(a1, a2, a3, a4, a5, a6, a7, v28);
  if (!v8)
  {
    v24 = v28[8];
    v25 = v28[9];
    v26 = v28[10];
    v27 = v29;
    v20 = v28[4];
    v21 = v28[5];
    v22 = v28[6];
    v23 = v28[7];
    v16 = v28[0];
    v17 = v28[1];
    v18 = v28[2];
    v19 = v28[3];
    sub_1B0D046AC(&v16);
    v11 = v25;
    *(a8 + 128) = v24;
    *(a8 + 144) = v11;
    *(a8 + 160) = v26;
    *(a8 + 176) = v27;
    v12 = v21;
    *(a8 + 64) = v20;
    *(a8 + 80) = v12;
    v13 = v23;
    *(a8 + 96) = v22;
    *(a8 + 112) = v13;
    v14 = v17;
    *a8 = v16;
    *(a8 + 16) = v14;
    result = *&v18;
    v15 = v19;
    *(a8 + 32) = v18;
    *(a8 + 48) = v15;
  }

  return result;
}

void sub_1B0D9E2D0(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B0D9D0E8(a1, a2, a3, a4, a5, a6, a7, v40);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1B0D9EC38(v40);
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
      swift_willThrow();
    }

    else
    {
      v24 = v40[1];
      v25 = v40[0];
      v14 = *a1;
      v15 = *(a1 + 8);
      v16 = *(a1 + 16);
      v17 = *(a1 + 20);
      v26 = v41;
      v27 = *(a1 + 22);

      sub_1B0436204(a1);

      v28 = v25;
      v29 = v24;
      LOBYTE(v30) = v26;
      *(&v30 + 1) = sub_1B0DC19BC(a1, a2, a3, a7);
      sub_1B0D04794(&v28);
      v19 = v37;
      *(a8 + 128) = v36;
      *(a8 + 144) = v19;
      *(a8 + 160) = v38;
      *(a8 + 176) = v39;
      v20 = v33;
      *(a8 + 64) = v32;
      *(a8 + 80) = v20;
      v21 = v35;
      *(a8 + 96) = v34;
      *(a8 + 112) = v21;
      v22 = v29;
      *a8 = v28;
      *(a8 + 16) = v22;
      v23 = v31;
      *(a8 + 32) = v30;
      *(a8 + 48) = v23;
    }
  }
}

void sub_1B0D9E490(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B0D9D0E8(a1, a2, a3, a4, a5, a6, a7, v48);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1B0D9EC38(v48);
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
      swift_willThrow();
    }

    else
    {
      v34 = v48[1];
      v35 = v48[0];
      v33 = v49;
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v16 = *(a1 + 20);
      v17 = *(a1 + 22);

      sub_1B0436204(a1);

      v19 = *a1;
      v20 = *(a1 + 8);
      v21 = *(a1 + 16);
      v22 = *(a1 + 20);
      v23 = *(a1 + 22);

      sub_1B0DC0BE0(a1, a2, a3);
      v32 = HIDWORD(v24);
      v25 = *a1;
      v26 = v24;

      *a1 = v19;
      *(a1 + 8) = v20;
      *(a1 + 16) = v21;
      *(a1 + 20) = v22;
      *(a1 + 22) = v23;
      v37 = v34;
      v36 = v35;
      LOBYTE(v38) = v33;
      *(&v38 + 1) = (v32 - v26);
      sub_1B0D047A8(&v36);
      v27 = v45;
      *(a8 + 128) = v44;
      *(a8 + 144) = v27;
      *(a8 + 160) = v46;
      *(a8 + 176) = v47;
      v28 = v41;
      *(a8 + 64) = v40;
      *(a8 + 80) = v28;
      v29 = v43;
      *(a8 + 96) = v42;
      *(a8 + 112) = v29;
      v30 = v37;
      *a8 = v36;
      *(a8 + 16) = v30;
      v31 = v39;
      *(a8 + 32) = v38;
      *(a8 + 48) = v31;
    }
  }
}

uint64_t sub_1B0D9E6BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  v83[8] = *(a1 + 128);
  v83[9] = v3;
  v83[10] = *(a1 + 160);
  v84 = *(a1 + 176);
  v4 = *(a1 + 80);
  v83[4] = *(a1 + 64);
  v83[5] = v4;
  v5 = *(a1 + 112);
  v83[6] = *(a1 + 96);
  v83[7] = v5;
  v6 = *(a1 + 16);
  v83[0] = *a1;
  v83[1] = v6;
  v7 = *(a1 + 48);
  v83[2] = *(a1 + 32);
  v83[3] = v7;
  v8 = sub_1B0D0CBC8(v83);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v29 = sub_1B041BA38(v83);
      v57 = *(v29 + 16);
      v58 = *v29;
      v16 = *(v29 + 32);
      v17 = *(v29 + 40);
      v30 = *(a2 + 48);
      v87 = *(a2 + 32);
      v88 = v30;
      v31 = *(a2 + 16);
      v85 = *a2;
      v86 = v31;
      v32 = *(a2 + 112);
      v91 = *(a2 + 96);
      v92 = v32;
      v33 = *(a2 + 80);
      v89 = *(a2 + 64);
      v90 = v33;
      v96 = *(a2 + 176);
      v34 = *(a2 + 160);
      v94 = *(a2 + 144);
      v95 = v34;
      v93 = *(a2 + 128);
      if (sub_1B0D0CBC8(&v85) != 3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v8 != 4)
      {
        v51 = *(a2 + 144);
        v93 = *(a2 + 128);
        v94 = v51;
        v95 = *(a2 + 160);
        v96 = *(a2 + 176);
        v52 = *(a2 + 80);
        v89 = *(a2 + 64);
        v90 = v52;
        v53 = *(a2 + 112);
        v91 = *(a2 + 96);
        v92 = v53;
        v54 = *(a2 + 16);
        v85 = *a2;
        v86 = v54;
        v55 = *(a2 + 48);
        v87 = *(a2 + 32);
        v88 = v55;
        if (sub_1B0D0CBC8(&v85) == 5)
        {
          v28 = 1;
          return v28 & 1;
        }

        goto LABEL_19;
      }

      v15 = sub_1B041BA38(v83);
      v57 = *(v15 + 16);
      v58 = *v15;
      v16 = *(v15 + 32);
      v17 = *(v15 + 40);
      v18 = *(a2 + 48);
      v87 = *(a2 + 32);
      v88 = v18;
      v19 = *(a2 + 16);
      v85 = *a2;
      v86 = v19;
      v20 = *(a2 + 112);
      v91 = *(a2 + 96);
      v92 = v20;
      v21 = *(a2 + 80);
      v89 = *(a2 + 64);
      v90 = v21;
      v96 = *(a2 + 176);
      v22 = *(a2 + 160);
      v94 = *(a2 + 144);
      v95 = v22;
      v93 = *(a2 + 128);
      if (sub_1B0D0CBC8(&v85) != 4)
      {
        goto LABEL_19;
      }
    }

    v35 = sub_1B041BA38(&v85);
    v36 = *(v35 + 32);
    v37 = *(v35 + 40);
    v59 = v58;
    v60 = v57;
    LOBYTE(v61) = v16;
    v38 = *(v35 + 16);
    v71 = *v35;
    v72 = v38;
    LOBYTE(v73) = v36;
    if (_s12NIOIMAPCore213StreamingKindO21__derived_enum_equalsySbAC_ACtFZ_0(&v59, &v71))
    {
      v28 = v17 == v37;
      return v28 & 1;
    }

LABEL_19:
    v28 = 0;
    return v28 & 1;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v9 = *sub_1B041BA38(v83);
      v10 = *(a2 + 48);
      v87 = *(a2 + 32);
      v88 = v10;
      v11 = *(a2 + 16);
      v85 = *a2;
      v86 = v11;
      v12 = *(a2 + 112);
      v91 = *(a2 + 96);
      v92 = v12;
      v13 = *(a2 + 80);
      v89 = *(a2 + 64);
      v90 = v13;
      v96 = *(a2 + 176);
      v14 = *(a2 + 160);
      v94 = *(a2 + 144);
      v95 = v14;
      v93 = *(a2 + 128);
      if (sub_1B0D0CBC8(&v85) != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    v39 = sub_1B041BA38(v83);
    v93 = *(v39 + 128);
    v94 = *(v39 + 144);
    v95 = *(v39 + 160);
    v96 = *(v39 + 176);
    v89 = *(v39 + 64);
    v90 = *(v39 + 80);
    v91 = *(v39 + 96);
    v92 = *(v39 + 112);
    v85 = *v39;
    v86 = *(v39 + 16);
    v87 = *(v39 + 32);
    v88 = *(v39 + 48);
    v40 = *(a2 + 16);
    v59 = *a2;
    v60 = v40;
    v41 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v41;
    v42 = *(a2 + 80);
    v63 = *(a2 + 64);
    v64 = v42;
    v43 = *(a2 + 112);
    v65 = *(a2 + 96);
    v66 = v43;
    v44 = *(a2 + 144);
    v67 = *(a2 + 128);
    v68 = v44;
    v69 = *(a2 + 160);
    v70 = *(a2 + 176);
    if (sub_1B0D0CBC8(&v59) == 2)
    {
      v45 = sub_1B041BA38(&v59);
      v46 = *(v45 + 144);
      v79 = *(v45 + 128);
      v80 = v46;
      v81 = *(v45 + 160);
      v82 = *(v45 + 176);
      v47 = *(v45 + 80);
      v75 = *(v45 + 64);
      v76 = v47;
      v48 = *(v45 + 112);
      v77 = *(v45 + 96);
      v78 = v48;
      v49 = *(v45 + 16);
      v71 = *v45;
      v72 = v49;
      v50 = *(v45 + 48);
      v73 = *(v45 + 32);
      v74 = v50;
      v28 = _s12NIOIMAPCore216MessageAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(&v85, v71.i8);
      return v28 & 1;
    }

    goto LABEL_19;
  }

  v9 = *sub_1B041BA38(v83);
  v23 = *(a2 + 48);
  v87 = *(a2 + 32);
  v88 = v23;
  v24 = *(a2 + 16);
  v85 = *a2;
  v86 = v24;
  v25 = *(a2 + 112);
  v91 = *(a2 + 96);
  v92 = v25;
  v26 = *(a2 + 80);
  v89 = *(a2 + 64);
  v90 = v26;
  v96 = *(a2 + 176);
  v27 = *(a2 + 160);
  v94 = *(a2 + 144);
  v95 = v27;
  v93 = *(a2 + 128);
  if (sub_1B0D0CBC8(&v85))
  {
    goto LABEL_19;
  }

LABEL_11:
  v28 = *sub_1B041BA38(&v85) == v9;
  return v28 & 1;
}

unint64_t sub_1B0D9EA70(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_1B0DFF3DC(a1, a2, a3, 0);
  if (!v3)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      v5 = " in body structure";
      v7 = 202;
      v6 = 0xD000000000000011;
    }

    else
    {
      if (result - 0x100000000 >= 0xFFFFFFFF00000001)
      {
        return result;
      }

      v5 = "No month match for ";
      v6 = 0xD00000000000001DLL;
      v7 = 87;
    }

    v8 = v5 | 0x8000000000000000;
    sub_1B0436554();
    swift_allocError();
    *v9 = v6;
    v9[1] = v8;
    v9[2] = 0xD000000000000020;
    v9[3] = 0x80000001B0F2FA10;
    v9[4] = v7;
    return swift_willThrow();
  }

  return result;
}

double sub_1B0D9EBA8@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v6(v14, a1, *a2, a2[1]);
  if (!v4)
  {
    v9 = v22;
    *(a3 + 128) = v21;
    *(a3 + 144) = v9;
    *(a3 + 160) = v23;
    *(a3 + 176) = v24;
    v10 = v18;
    *(a3 + 64) = v17;
    *(a3 + 80) = v10;
    v11 = v20;
    *(a3 + 96) = v19;
    *(a3 + 112) = v11;
    v12 = v14[1];
    *a3 = v14[0];
    *(a3 + 16) = v12;
    result = *&v15;
    v13 = v16;
    *(a3 + 32) = v15;
    *(a3 + 48) = v13;
  }

  return result;
}

void sub_1B0D9EC8C(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x80;
}

void sub_1B0D9ECBC(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x80;
}

double sub_1B0D9ED14@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v6(v10, a1, *a2, a2[1]);
  if (!v4)
  {
    result = *v10;
    v9 = v10[1];
    *a3 = v10[0];
    *(a3 + 16) = v9;
    *(a3 + 32) = v11;
  }

  return result;
}

uint64_t sub_1B0D9ED6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!__OFADD__(a2, 1))
  {
    v7 = result;
    v8 = *result;
    v9 = *(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 20);
    v12 = *(result + 22);
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
    }

    else
    {

      sub_1B0440440(v7, &v32);
      if (!v5)
      {
        v28 = v11;
        sub_1B0DFF2E8(v32, *(&v32 + 1), v33 | (WORD2(v33) << 32) | (BYTE6(v33) << 48), 0xD000000000000020, 0x80000001B0F2FA10, 84);
        v27 = sub_1B0E44BB8();
        v16 = v15;

        if (*(a4 + 16))
        {
          v17 = sub_1B0441038(v27, v16);
          if (v18)
          {
            v19 = v17;

            v20 = *(a4 + 56) + 16 * v19;
            v22 = *v20;
            v21 = *(v20 + 8);
            v31[0] = a2;
            v31[1] = a3;

            v22(&v32, v7, v31);

            v25 = v34;
            v26 = v33;
            *a5 = v32;
            *(a5 + 16) = v26;
            *(a5 + 32) = v25;
            return result;
          }
        }

        *&v32 = 0;
        *(&v32 + 1) = 0xE000000000000000;
        sub_1B0E46298();

        *&v32 = 0xD000000000000017;
        *(&v32 + 1) = 0x80000001B0F2FF20;
        MEMORY[0x1B2726E80](v27, v16);

        v23 = v32;
        sub_1B0436554();
        swift_allocError();
        *v24 = v23;
        *(v24 + 16) = 0xD000000000000020;
        *(v24 + 24) = 0x80000001B0F2FA10;
        *(v24 + 32) = 86;
        swift_willThrow();

        v11 = v28;
LABEL_7:
        *v7 = v8;
        *(v7 + 8) = v9;
        *(v7 + 16) = v10;
        *(v7 + 20) = v11;
        *(v7 + 22) = v12;
        return swift_willThrow();
      }
    }

    swift_willThrow();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D9F044(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4)
{
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    v7 = *result;
    v8 = *(result + 8);
    v9 = *(result + 16);
    v10 = *(result + 20);
    v11 = *(result + 22);
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v13 = a3;
    }

    else
    {

      sub_1B0440440(v6, &v29);
      if (!v4)
      {
        v26 = v10;
        sub_1B0DFF2E8(v29, v30, v31 | (v32 << 32) | (v33 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 84);
        v25 = sub_1B0E44BB8();
        v15 = v14;

        if (*(a4 + 16))
        {
          v16 = sub_1B0441038(v25, v15);
          if (v17)
          {
            v18 = v16;

            v19 = *(a4 + 56) + 16 * v18;
            v21 = *v19;
            v20 = *(v19 + 8);
            v29 = a2;
            v30 = a3;

            v21(&v28, v6, &v29);

            return v28;
          }
        }

        v29 = 0;
        v30 = 0xE000000000000000;
        sub_1B0E46298();

        v29 = 0xD000000000000017;
        v30 = 0x80000001B0F2FF20;
        MEMORY[0x1B2726E80](v25, v15);

        v22 = v29;
        v23 = v30;
        sub_1B0436554();
        swift_allocError();
        *v24 = v22;
        v24[1] = v23;
        v24[2] = 0xD000000000000020;
        v24[3] = 0x80000001B0F2FA10;
        v24[4] = 86;
        swift_willThrow();

        v10 = v26;
LABEL_7:
        *v6 = v7;
        *(v6 + 8) = v8;
        *(v6 + 16) = v9;
        *(v6 + 20) = v10;
        *(v6 + 22) = v11;
        return swift_willThrow();
      }
    }

    swift_willThrow();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213GrammarParserV14_FetchResponseO(uint64_t a1)
{
  v1 = (*(a1 + 176) >> 9) & 7;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1B0D9F328(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 176) = *(result + 176) & 0xF1FF | (a2 << 9);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0;
    *(result + 176) = 2560;
  }

  return result;
}

unint64_t sub_1B0D9F398()
{
  result = qword_1EB6E7570;
  if (!qword_1EB6E7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7570);
  }

  return result;
}

uint64_t sub_1B0D9F44C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7578, &qword_1B0EF4E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EDF670;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0DA43D8;
  *(v15 + 24) = v14;
  *(inited + 32) = 0x5347414C46;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_1B043DC28;
  *(inited + 56) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DA43F8;
  *(v17 + 24) = v16;
  *(inited + 64) = 1414744396;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = sub_1B043DC28;
  *(inited + 88) = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B0DA442C;
  *(v19 + 24) = v18;
  *(inited + 96) = 1112888140;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 112) = sub_1B043DC28;
  *(inited + 120) = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B0DA4460;
  *(v21 + 24) = v20;
  *(inited + 128) = 0x48435241455345;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = sub_1B043DC28;
  *(inited + 152) = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B0DA4480;
  *(v23 + 24) = v22;
  *(inited + 160) = 0x484352414553;
  *(inited + 168) = 0xE600000000000000;
  *(inited + 176) = sub_1B043DC28;
  *(inited + 184) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0DA44A0;
  *(v25 + 24) = v24;
  *(inited + 192) = 0x535554415453;
  *(inited + 200) = 0xE600000000000000;
  *(inited + 208) = sub_1B043DC28;
  *(inited + 216) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B0DA44C0;
  *(v27 + 24) = v26;
  *(inited + 224) = 0x43415053454D414ELL;
  *(inited + 232) = 0xE900000000000045;
  *(inited + 240) = sub_1B043DC28;
  *(inited + 248) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B0DA44E0;
  *(v29 + 24) = v28;
  *(inited + 256) = 0x4843544142444955;
  *(inited + 264) = 0xEA00000000005345;
  *(inited + 272) = sub_1B043DC28;
  *(inited + 280) = v29;
  swift_retain_n();
  v30 = sub_1B0DA9110(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7550, &qword_1B0EF4668);
  result = swift_arrayDestroy();
  if (!__OFADD__(a2, 1))
  {
    v32 = *a1;
    v33 = *(a1 + 8);
    v34 = *(a1 + 16);
    v35 = *(a1 + 20);
    v36 = *(a1 + 22);
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v38 = a3;
    }

    else
    {
      v37 = *a1;

      sub_1B0440440(a1, &v62);
      if (!v58)
      {
        v59 = v35;
        sub_1B0DFF2E8(v62, v63, v64 | (v65 << 32) | (v66 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 84);
        v55 = v34;
        v56 = sub_1B0E44BB8();
        v40 = v39;

        if (*(v30 + 16))
        {
          v41 = sub_1B0441038(v56, v40);
          if (v42)
          {
            v43 = v41;

            v44 = *(v30 + 56) + 16 * v43;
            v46 = *v44;
            v45 = *(v44 + 8);
            v62 = a2;
            v63 = a3;

            v46(v67, a1, &v62);

            v50 = v67[7];
            v51 = v67[8];
            a8[6] = v67[6];
            a8[7] = v50;
            a8[8] = v51;
            v52 = v67[3];
            a8[2] = v67[2];
            a8[3] = v52;
            v53 = v67[5];
            a8[4] = v67[4];
            a8[5] = v53;
            v54 = v67[1];
            *a8 = v67[0];
            a8[1] = v54;
            return result;
          }
        }

        v62 = 0;
        v63 = 0xE000000000000000;
        sub_1B0E46298();

        v62 = 0xD000000000000017;
        v63 = 0x80000001B0F2FF20;
        MEMORY[0x1B2726E80](v56, v40);

        v47 = v62;
        v48 = v63;
        sub_1B0436554();
        swift_allocError();
        *v49 = v47;
        v49[1] = v48;
        v49[2] = 0xD000000000000020;
        v49[3] = 0x80000001B0F2FA10;
        v49[4] = 86;
        swift_willThrow();

        v34 = v55;
        v35 = v59;
LABEL_7:
        *a1 = v32;
        *(a1 + 8) = v33;
        *(a1 + 16) = v34;
        *(a1 + 20) = v35;
        *(a1 + 22) = v36;
        swift_willThrow();
      }
    }

    swift_willThrow();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1B0D9FBC8(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int8x16_t *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
      goto LABEL_9;
    }

    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    v16 = *(a1 + 20);
    v17 = *(a1 + 22);
    sub_1B0436204(a1);
    if (v8)
    {
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v17;
LABEL_9:
      swift_willThrow();
      return;
    }

    v19 = *a1;
    v20 = *(a1 + 8);
    v21 = *(a1 + 16);
    v22 = *(a1 + 20);
    v23 = *(a1 + 22);

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, v9, a3);

    sub_1B0E00B4C(a1, v9, a3, a4, a5, a6, a7, v9, a3);
    v25 = v24;

    if (!v25)
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 1, a1, v9, a3);

    v34[0].i64[0] = v25;
    sub_1B0D04488(v34);
    v26 = v34[7];
    a8[6] = v34[6];
    a8[7] = v26;
    a8[8] = v34[8];
    v27 = v34[3];
    a8[2] = v34[2];
    a8[3] = v27;
    v28 = v34[5];
    a8[4] = v34[4];
    a8[5] = v28;
    v29 = v34[1];
    *a8 = v34[0];
    a8[1] = v29;
  }
}

uint64_t sub_1B0D9FDFC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v26 = *(result + 22);
    v27 = *(result + 20);

    sub_1B0DA17D0(v11, v9, a3, a4, a5, a6, a7, &v28);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v27;
      *(v11 + 22) = v26;
      return swift_willThrow();
    }

    v21 = v29;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    *a8 = v28;
    *(a8 + 16) = v21;
    *(a8 + 20) = v22;
    *(a8 + 24) = v23;
    *(a8 + 32) = v24;
  }

  return result;
}

uint64_t sub_1B0D9FF50@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(__int128 *)@<X7>, _OWORD *a9@<X8>)
{
  v11 = __OFADD__(a2, 1);
  v12 = a2 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    if (v12 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    v14 = result;
    v16 = *result;
    v17 = *(result + 8);
    v18 = *(result + 16);
    v19 = *(result + 20);
    v20 = *(result + 22);
    sub_1B0436204(result);
    if (v9)
    {
      *v14 = v16;
      *(v14 + 8) = v17;
      *(v14 + 16) = v18;
      *(v14 + 20) = v19;
      *(v14 + 22) = v20;
      return swift_willThrow();
    }

    sub_1B0D9FDFC(v14, a2, a3, a4, a5, a6, a7, &v40);
    v31 = v40;
    LODWORD(v32) = v41;
    BYTE4(v32) = v42;
    *(&v32 + 1) = v43;
    v33 = v44;
    result = a8(&v31);
    v22 = v38;
    a9[6] = v37;
    a9[7] = v22;
    a9[8] = v39;
    v23 = v34;
    a9[2] = v33;
    a9[3] = v23;
    v24 = v36;
    a9[4] = v35;
    a9[5] = v24;
    v25 = v32;
    *a9 = v31;
    a9[1] = v25;
  }

  return result;
}

void sub_1B0DA00CC(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
    }

    else
    {
      v16 = *a1;
      v17 = *(a1 + 8);
      v34 = *(a1 + 20);
      v35 = *(a1 + 16);
      v33 = *(a1 + 22);

      sub_1B0E036A4(a1, v9, a3, &v46);
      if (!v8)
      {

        sub_1B0DF8B28(a1, v9, a3);
        v31 = v19;
        v45 = MEMORY[0x1E69E7CC0];

        sub_1B0E052C4(a1, &v45, v9, a3, a4, a5, a6, a7);

        v21 = v45;
        v22 = v46;
        v23 = v47;
        v24 = v48;
        v25 = v49;
        v26 = v50;
        sub_1B0D82F64(v46, v47);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AEF11C(v22, v23);

        v36.i64[0] = v22;
        v36.i64[1] = v23;
        *&v37 = v24;
        *(&v37 + 1) = v25;
        LOBYTE(v38) = v26;
        BYTE1(v38) = v31 & 1;
        *(&v38 + 1) = v21;
        sub_1B0D044D0(&v36);
        v27 = v43;
        *(a8 + 96) = v42;
        *(a8 + 112) = v27;
        *(a8 + 128) = v44;
        v28 = v39;
        *(a8 + 32) = v38;
        *(a8 + 48) = v28;
        v29 = v41;
        *(a8 + 64) = v40;
        *(a8 + 80) = v29;
        v30 = v37;
        *a8 = v36;
        *(a8 + 16) = v30;
        return;
      }

      v20 = *a1;

      *a1 = v16;
      *(a1 + 8) = v17;
      *(a1 + 16) = v35;
      *(a1 + 20) = v34;
      *(a1 + 22) = v33;
    }

    swift_willThrow();
  }
}

void sub_1B0DA0374(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, int8x16_t *a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      v14 = swift_allocError();
      *v16 = a3;
    }

    else
    {
      v9 = *a1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
      v12 = *(a1 + 20);
      v13 = *(a1 + 22);

      sub_1B0DA46E8(a1, v5, a3, v65);
      v14 = v4;
      if (!v4)
      {
        v72 = v65[6];
        v73 = v65[7];
        v74 = v65[8];
        v68 = v65[2];
        v69 = v65[3];
        v70 = v65[4];
        v71 = v65[5];
        v66 = v65[0];
        v67 = v65[1];

LABEL_35:
        v44 = v73;
        a4[6] = v72;
        a4[7] = v44;
        a4[8] = v74;
        v45 = v69;
        a4[2] = v68;
        a4[3] = v45;
        v46 = v71;
        a4[4] = v70;
        a4[5] = v46;
        v47 = v67;
        *a4 = v66;
        a4[1] = v47;
        return;
      }

      v15 = *a1;

      *a1 = v9;
      *(a1 + 8) = v10;
      *(a1 + 16) = v11;
      *(a1 + 20) = v12;
      *(a1 + 22) = v13;
    }

    swift_willThrow();
    v64 = v14;
    v17 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v64 = v14;
      v18 = v14;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v33 = a3;
    }

    else
    {
      v19 = *a1;
      v20 = *(a1 + 8);
      v21 = *(a1 + 16);
      v22 = *(a1 + 20);
      v23 = *(a1 + 22);
      if (v5 + 1 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v34 = a3;
      }

      else
      {
        v24 = *a1;
        swift_retain_n();
        if (v5 + 2 >= a3)
        {
          sub_1B0439BCC();
          v35 = swift_allocError();
          *v36 = a3;
          v37 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v49 = v21;
          v50 = v19;
          v25 = *a1;
          v26 = *(a1 + 8);
          v27 = *(a1 + 16);
          v52 = *(a1 + 22);
          v53 = *(a1 + 20);
          if (v5 + 3 >= a3)
          {
LABEL_28:
            sub_1B0439BCC();
            v35 = swift_allocError();
            *v38 = a3;

            v37 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v54 = MEMORY[0x1E69E7CC0];
            v51 = v23;
            while (1)
            {
              swift_retain_n();
              sub_1B0436204(a1);

              v28 = v22;
              v29 = sub_1B0DFF3DC(a1, v5 + 2, a3, 0);
              v30 = v29;
              if ((v29 & 0x8000000000000000) != 0)
              {
                sub_1B0436554();
                v35 = swift_allocError();
                v39->i64[0] = 0xD000000000000011;
                v39->i64[1] = 0x80000001B0F2FEE0;
                v39[1].i64[0] = 0xD000000000000020;
                v39[1].i64[1] = 0x80000001B0F2FA10;
                v40 = 202;
                goto LABEL_31;
              }

              if (v29 - 0x100000000 < 0xFFFFFFFF00000001)
              {
                break;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v54 = sub_1B0DF5A4C(0, *(v54 + 2) + 1, 1, v54);
              }

              v32 = *(v54 + 2);
              v31 = *(v54 + 3);
              if (v32 >= v31 >> 1)
              {
                v54 = sub_1B0DF5A4C((v31 > 1), v32 + 1, 1, v54);
              }

              *(v54 + 2) = v32 + 1;
              *&v54[4 * v32 + 32] = v30;
              v25 = *a1;
              v26 = *(a1 + 8);
              v27 = *(a1 + 16);
              v52 = *(a1 + 22);
              v53 = *(a1 + 20);
              v22 = v28;
              v23 = v51;
              if (v5 + 3 >= a3)
              {
                goto LABEL_28;
              }
            }

            sub_1B0E46298();

            v55.i64[0] = 0xD00000000000002BLL;
            v55.i64[1] = 0x80000001B0F2FFE0;
            v64 = v30;
            v41 = sub_1B0E469C8();
            MEMORY[0x1B2726E80](v41);

            sub_1B0436554();
            v35 = swift_allocError();
            *v39 = v55;
            v39[1].i64[0] = 0xD000000000000020;
            v39[1].i64[1] = 0x80000001B0F2FA10;
            v40 = 69;
LABEL_31:
            v39[2].i64[0] = v40;
            LOWORD(v22) = v28;
            v23 = v51;
            v37 = v54;
          }

          swift_willThrow();
          v42 = *a1;

          *a1 = v25;
          *(a1 + 8) = v26;
          *(a1 + 16) = v27;
          *(a1 + 20) = v53;
          *(a1 + 22) = v52;
          v19 = v50;
          v21 = v49;
        }

        swift_willThrow();
        v75 = v35;
        v43 = v35;
        if (swift_dynamicCast())
        {

          v55 = v37;
          v56.i8[0] = 1;
          sub_1B0D0451C(&v55);
          v72 = v61;
          v73 = v62;
          v74 = v63;
          v68 = v57;
          v69 = v58;
          v70 = v59;
          v71 = v60;
          v66 = v55;
          v67 = v56;
          goto LABEL_35;
        }

        v48 = *a1;
      }

      swift_willThrow();

      *a1 = v19;
      *(a1 + 8) = v20;
      *(a1 + 16) = v21;
      *(a1 + 20) = v22;
      *(a1 + 22) = v23;
    }

    swift_willThrow();
  }
}

void sub_1B0DA0A84(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
      goto LABEL_6;
    }

    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    v16 = *(a1 + 20);
    v17 = *(a1 + 22);
    sub_1B0436204(a1);
    if (v8)
    {
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v17;
LABEL_6:
      swift_willThrow();
      return;
    }

    v19 = sub_1B0DB3AC0(a1, a2, a3, a4, a5, a6, a7);
    v21 = v20;
    v23 = HIDWORD(v22);
    v24 = v22;
    swift_beginAccess();
    v25 = v23 - v24;
    if (v25)
    {
      v27 = v24;
      v28 = *(v19 + 24);
      v47 = ((v21 >> 24) & 0xFFFF00 | BYTE6(v21)) + v27;
      v29 = sub_1B0C0C9F0(v25, 0);
      memcpy(v29 + 4, (v28 + v47), v25);
      v26 = v29;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    v30 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v26);
    v44 = v31;

    v32 = *a1;
    v33 = *(a1 + 8);
    v34 = *(a1 + 16);
    v45 = *(a1 + 22);
    v48 = *(a1 + 20);

    sub_1B0436204(a1);
    v49 = v30;

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v35 = *a1;
    v36 = *(a1 + 8);
    LODWORD(v30) = *(a1 + 16);
    v46 = *(a1 + 20);
    v43 = *(a1 + 22);

    sub_1B0DA10BC(a1, v9, a3, a4, a5, a6, a7, v82);

    *&v56[64] = v82[4];
    *&v56[80] = v82[5];
    *&v56[96] = v82[6];
    *&v56[112] = v82[7];
    *v56 = v82[0];
    *&v56[16] = v82[1];
    *&v56[32] = v82[2];
    *&v56[48] = v82[3];
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v56);
    v78 = *&v56[64];
    v79 = *&v56[80];
    v80 = *&v56[96];
    v81 = *&v56[112];
    v74 = *v56;
    v75 = *&v56[16];
    v76 = *&v56[32];
    v77 = *&v56[48];
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v73[4] = v78;
    v73[5] = v79;
    v73[6] = v80;
    v73[7] = v81;
    v73[0] = v74;
    v73[1] = v75;
    v73[2] = v76;
    v73[3] = v77;
    if (sub_1B0DA458C(v73) == 1)
    {
      v64 = 1;
      v63 = 1;
      v62 = 1;
      v61 = 1;
      v60 = 1;
      v59 = 1;
      v58 = 1;
      v57 = 1;
      *v55 = 0;
      v55[8] = 1;
      *&v55[16] = 0;
      v55[24] = 1;
      *&v55[28] = 0;
      v55[32] = 1;
      *&v55[36] = 0;
      v55[40] = 1;
      *&v55[48] = 0;
      v55[56] = 1;
      *&v55[64] = 0;
      v55[72] = 1;
      *&v55[80] = 0;
      v55[88] = 1;
      *&v55[96] = 0;
      v55[104] = 1;
      *&v55[112] = 0uLL;
      *v56 = 0;
      v56[8] = 1;
      *&v56[16] = 0;
      v56[24] = 1;
      *&v56[28] = 0;
      v56[32] = 1;
      *&v56[36] = 0;
      v56[40] = 1;
      *&v56[48] = 0;
      v56[56] = 1;
      *&v56[64] = 0;
      v56[72] = 1;
      *&v56[80] = 0;
      v56[88] = 1;
      *&v56[96] = 0;
      v56[104] = 1;
      *&v56[112] = 0;
      *&v56[120] = 0;
      sub_1B0B379C4(v55, &v65);
      sub_1B0B11B9C(v56);
      v69 = *&v55[64];
      v70 = *&v55[80];
      v71 = *&v55[96];
      v72 = *&v55[112];
      v65 = *v55;
      v66 = *&v55[16];
      v37 = *&v55[32];
      v38 = *&v55[48];
    }

    else
    {
      v69 = v78;
      v70 = v79;
      v71 = v80;
      v72 = v81;
      v65 = v74;
      v66 = v75;
      v37 = v76;
      v38 = v77;
    }

    v67 = v37;
    v68 = v38;
    *&v55[36] = v37;
    *&v55[20] = v66;
    *&v55[4] = v65;
    *&v55[116] = v72;
    *&v55[100] = v71;
    *&v55[84] = v70;
    *&v55[68] = v69;
    *&v55[52] = v38;
    *v56 = v49;
    *&v56[12] = *v55;
    *&v56[76] = *&v55[64];
    *&v56[60] = *&v55[48];
    *&v56[44] = *&v55[32];
    *&v56[28] = *&v55[16];
    *&v56[8] = v44;
    *&v56[140] = HIDWORD(v72);
    *&v56[124] = *&v55[112];
    *&v56[108] = *&v55[96];
    *&v56[92] = *&v55[80];
    sub_1B0D045B4(v56);
    v39 = *&v56[112];
    a8[6] = *&v56[96];
    a8[7] = v39;
    a8[8] = *&v56[128];
    v40 = *&v56[48];
    a8[2] = *&v56[32];
    a8[3] = v40;
    v41 = *&v56[80];
    a8[4] = *&v56[64];
    a8[5] = v41;
    v42 = *&v56[16];
    *a8 = *v56;
    a8[1] = v42;
  }
}

uint64_t sub_1B0DA10BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v26 = *(result + 22);
    v27 = *(result + 20);

    sub_1B0DA38BC(v11, v9, a3, a4, a5, a6, a7, v28);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v27;
      *(v11 + 22) = v26;
      return swift_willThrow();
    }

    v21 = v28[5];
    a8[4] = v28[4];
    a8[5] = v21;
    v22 = v28[7];
    a8[6] = v28[6];
    a8[7] = v22;
    v23 = v28[1];
    *a8 = v28[0];
    a8[1] = v23;
    v24 = v28[3];
    a8[2] = v28[2];
    a8[3] = v24;
  }

  return result;
}