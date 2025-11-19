uint64_t Header.AutoSubmitted.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 28526;
  }

  if (a1 == 1)
  {
    return 0x6E65672D6F747561;
  }

  return 0x7065722D6F747561;
}

uint64_t sub_1B0C8B51C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E65672D6F747561;
  v4 = 0xEE00646574617265;
  if (v2 != 1)
  {
    v3 = 0x7065722D6F747561;
    v4 = 0xEC0000006465696CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 28526;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0x6E65672D6F747561;
  v8 = 0xEE00646574617265;
  if (*a2 != 1)
  {
    v7 = 0x7065722D6F747561;
    v8 = 0xEC0000006465696CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 28526;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B0E46A78();
  }

  return v11 & 1;
}

uint64_t sub_1B0C8B640@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s9IMAP2MIME6HeaderO13AutoSubmittedO8rawValueAESgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1B0C8B670(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xEE00646574617265;
  v5 = 0x6E65672D6F747561;
  if (v2 != 1)
  {
    v5 = 0x7065722D6F747561;
    v4 = 0xEC0000006465696CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 28526;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B0C8B6D8()
{
  v1 = *v0;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C8B784()
{
  *v0;
  *v0;
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0C8B81C()
{
  v1 = *v0;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t _s9IMAP2MIME6HeaderO13AutoSubmittedO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_1B0E467E8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B0C8B914()
{
  result = qword_1EB6E5F68;
  if (!qword_1EB6E5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5F68);
  }

  return result;
}

uint64_t Header.Priority.init(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    v1 = 0;
  }

  return v1 | (((a1 - 6) < 0xFFFFFFFFFFFFFFFBLL) << 8);
}

uint64_t Header.Priority.hashValue.getter()
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C8BA1C()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C8BA90()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0C8BB64()
{
  result = qword_1EB6E5F70;
  if (!qword_1EB6E5F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5F70);
  }

  return result;
}

uint64_t sub_1B0C8BBC8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    result = sub_1B0CB4AF8(0, v3, result, a2);
    v7 = result;
    v8 = v4;
    v9 = v5;
    if (result == v4)
    {
      v10 = 1;
      v11 = result;
    }

    else
    {
      if (result <= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = result;
      }

      v11 = result;
      while (1)
      {
        if (v12 == v11)
        {
          __break(1u);
          goto LABEL_37;
        }

        v13 = *(v5 + v11) - 48;
        v10 = v13 < 0xA;
        if (v13 >= 0xA)
        {
          break;
        }

        if (v4 == ++v11)
        {
          v11 = v4;
          break;
        }
      }

      if (v11 < result)
      {
        goto LABEL_41;
      }
    }

    if (v4 < v11)
    {
      goto LABEL_42;
    }

    v14 = v11 - result;
    if (v11 == result)
    {
      goto LABEL_19;
    }

    result = sub_1B0433338(result, v11, v5, v6);
    if (result > 8)
    {
      goto LABEL_19;
    }

    if (!v9 || (v17 = (v9 + v7)) == 0)
    {
      if (!v10)
      {
        v15 = 0;
LABEL_32:
        if (v11 >= v8)
        {
          goto LABEL_43;
        }

        if (*(v9 + v11) == 32)
        {
LABEL_34:
          if (v15 - 6 > 0xFFFFFFFFFFFFFFFALL)
          {
            v16 = 0;
            return v15 | (v16 << 8);
          }
        }
      }

LABEL_19:
      LOBYTE(v15) = 0;
      v16 = 1;
      return v15 | (v16 << 8);
    }

    v15 = 0;
    while (is_mul_ok(v15, 0xAuLL))
    {
      v18 = *v17 - 48;
      if ((v18 & 0xFFFFFF00) != 0)
      {
        goto LABEL_38;
      }

      v19 = 10 * v15;
      v20 = __CFADD__(v19, v18);
      v15 = v19 + v18;
      if (v20)
      {
        goto LABEL_39;
      }

      ++v17;
      if (!--v14)
      {
        if (!v10)
        {
          goto LABEL_32;
        }

        goto LABEL_34;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_1B0C8BD64(uint64_t isStackAllocationSafe@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = isStackAllocationSafe;
  v32 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x1000000000000000) == 0)
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

LABEL_5:
    if (v10 <= 1024)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  isStackAllocationSafe = sub_1B0E44DC8();
  v10 = isStackAllocationSafe;
  if ((isStackAllocationSafe & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_18:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v24 = swift_slowAlloc();
    sub_1B0C8C0D4(v24, v10, v8, &v30);
    if (!v4)
    {
      MEMORY[0x1B272C230](v24, -1, -1);
      v19 = v30;
      v21 = v31;
      goto LABEL_13;
    }

    MEMORY[0x1B272C230](v24, -1, -1);
    v5 = v4;
    goto LABEL_12;
  }

LABEL_6:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v12 = v27 - v11;
  sub_1B0E462A8();
  if ((v13 & 1) == 0)
  {
    v14 = *v8;
    *(swift_allocObject() + 16) = v14;
    v15 = sub_1B0C8C34C(v12, v10, 0, 0, 1, v14);
    if (!v4)
    {
      if ((v15 & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v27[1] = v27;
        v28 = a4;
        if (v15 >= 1025)
        {
          v25 = v15;
          v15 = swift_stdlib_isStackAllocationSafe();
          if ((v15 & 1) == 0)
          {
            v26 = swift_slowAlloc();
            sub_1B0C8C48C(v26, v25, sub_1B0C8C524, v12, v10, sub_1B0C8C314, v29);
            MEMORY[0x1B272C230](v26, -1, -1);

            a4 = v28;
            v19 = v29[0];
            v21 = v29[1];
            goto LABEL_13;
          }
        }

        MEMORY[0x1EEE9AC00](v15);
        v18 = sub_1B0C8C34C(v12, v10, v27 - v16, v17, 0, v14);
        if ((v18 & 0x80000000) == 0)
        {
          v19 = sub_1B0E44C68();
          v21 = v23;

          a4 = v28;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    swift_willThrow();
LABEL_12:
    v30 = a2;
    v31 = a3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = sub_1B0E44ED8();
    v21 = v20;

LABEL_13:
    *a4 = v19;
    a4[1] = v21;
    v22 = *MEMORY[0x1E69E9840];
    return;
  }

  __break(1u);
}

uint64_t sub_1B0C8C0D4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, UIDNA **a3@<X4>, uint64_t *a4@<X8>)
{
  v24[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  sub_1B0E462A8();
  if (v9)
  {
    goto LABEL_17;
  }

  v10 = *a3;
  *(swift_allocObject() + 16) = v10;
  isStackAllocationSafe = sub_1B0C8C34C(a1, a2, 0, 0, 1, v10);
  if (!v4)
  {
    if ((isStackAllocationSafe & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (isStackAllocationSafe >= 1025)
      {
        v20 = isStackAllocationSafe;
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v21 = v20;
          v22 = swift_slowAlloc();
          sub_1B0C8C48C(v22, v21, sub_1B0C8C5A8, a1, a2, sub_1B0C8C314, v24);
          MEMORY[0x1B272C230](v22, -1, -1);

          v17 = v24[0];
          v19 = v24[1];
          goto LABEL_11;
        }
      }

      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v14 = sub_1B0C8C34C(a1, a2, &v24[-1] - v12, v13, 0, v10);
      if ((v14 & 0x80000000) == 0)
      {
        v17 = sub_1B0E44C68();
        v19 = v18;

LABEL_11:
        *a4 = v17;
        a4[1] = v19;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_8:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C8C314@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0E44C68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B0C8C34C(char *name, uint64_t length, char *dest, uint64_t capacity, char a5, UIDNA *idna)
{
  v16 = *MEMORY[0x1E69E9840];
  pErrorCode = U_ZERO_ERROR;
  pInfo.size = 16;
  *&pInfo.isTransitionalDifferent = 0;
  *&pInfo.reservedI2 = 0;
  if (length < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (length > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((a5 & 1) == 0)
  {
    if (capacity >= 0xFFFFFFFF80000000)
    {
      if (capacity <= 0x7FFFFFFF)
      {
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  LODWORD(capacity) = 0;
  dest = 0;
LABEL_7:
  result = uidna_nameToASCII_UTF8(idna, name, length, dest, capacity, &pInfo, &pErrorCode);
  v10 = pErrorCode;
  if (((a5 & 1) == 0 || pErrorCode != U_BUFFER_OVERFLOW_ERROR) && (pErrorCode > U_ZERO_ERROR || pInfo.errors))
  {
    v11 = result;
    sub_1B0C8C544();
    swift_allocError();
    *v12 = v10;
    swift_willThrow();
    result = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C8C48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *(*a6)(void *__return_ptr, uint64_t, void)@<X6>, void *a7@<X8>)
{
  result = a3(a4, a5, a1, a2, 0);
  if (!v7)
  {
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      result = a6(v13, a1, result);
      v12 = v13[1];
      *a7 = v13[0];
      a7[1] = v12;
    }
  }

  return result;
}

unint64_t sub_1B0C8C544()
{
  result = qword_1EB6E5F78;
  if (!qword_1EB6E5F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5F78);
  }

  return result;
}

uint64_t sub_1B0C8C5C0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1B0E469B8() & 1;
  }
}

uint64_t IndexableMessageInfo.bcc.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t IndexableMessageInfo.cc.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B0C8C870(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t IndexableMessageInfo.messageID.getter()
{
  v1 = (v0 + *(type metadata accessor for IndexableMessageInfo(0) + 32));
  v2 = *v1;
  v3 = v1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t IndexableMessageInfo.messageID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IndexableMessageInfo(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t IndexableMessageInfo.subject.getter()
{
  v1 = (v0 + *(type metadata accessor for IndexableMessageInfo(0) + 36));
  v2 = *v1;
  v3 = v1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t IndexableMessageInfo.subject.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IndexableMessageInfo(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t IndexableMessageInfo.to.getter()
{
  v1 = *(v0 + *(type metadata accessor for IndexableMessageInfo(0) + 40));

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t IndexableMessageInfo.to.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexableMessageInfo(0) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IndexableMessageInfo.priority.setter(__int16 a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  v4 = (v1 + *(result + 44));
  *v4 = a1;
  v4[1] = HIBYTE(a1) & 1;
  return result;
}

uint64_t IndexableMessageInfo.hasDistributionListInTo.setter(char a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t IndexableMessageInfo.hasDistributionListInCC.setter(char a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t IndexableMessageInfo.isAutoReplied.setter(char a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t IndexableMessageInfo.content.getter()
{
  v1 = v0 + *(type metadata accessor for IndexableMessageInfo(0) + 60);
  v2 = *v1;
  sub_1B08AA33C(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t IndexableMessageInfo.content.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + *(type metadata accessor for IndexableMessageInfo(0) + 60);
  result = sub_1B0C8CEB8(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t sub_1B0C8CEB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B08A9938();
  }

  return result;
}

uint64_t IndexableMessageInfo.attachments.getter()
{
  v1 = *(v0 + *(type metadata accessor for IndexableMessageInfo(0) + 64));

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t IndexableMessageInfo.attachments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexableMessageInfo(0) + 64);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IndexableMessageInfo.init(bcc:cc:date:from:messageID:subject:to:priority:hasDistributionListInTo:hasDistributionListInCC:isAutoReplied:content:attachments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19)
{
  v21 = type metadata accessor for IndexableMessageInfo(0);
  v22 = v21[6];
  v23 = sub_1B0E43108();
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  v24 = &a9[v21[7]];
  *(v24 + 4) = 0u;
  *(v24 + 5) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = &a9[v21[8]];
  v26 = &a9[v21[9]];
  v27 = &a9[v21[11]];
  v28 = &a9[v21[15]];
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_1B0C8C870(a3, &a9[v22], &unk_1EB6E2990, &qword_1B0E9B060);
  result = sub_1B0C8C870(a4, v24, &qword_1EB6E5F80, &qword_1B0EDF378);
  *v25 = a5;
  *(v25 + 1) = a6;
  *v26 = a7;
  *(v26 + 1) = a8;
  *&a9[v21[10]] = a10;
  *v27 = a11;
  v27[1] = a12 & 1;
  a9[v21[12]] = a13;
  a9[v21[13]] = a14;
  a9[v21[14]] = a15;
  *v28 = a16;
  *(v28 + 1) = a17;
  v28[16] = a18;
  *&a9[v21[16]] = a19;
  return result;
}

uint64_t IndexableMessageInfo.Content.data.getter()
{
  v0 = sub_1B0E44B68();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44B48();
  v5 = sub_1B0E44AE8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t IndexableMessageInfo.Content.byteCount.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1B0E44DC8();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    return HIBYTE(a2) & 0xF;
  }

  return a1 & 0xFFFFFFFFFFFFLL;
}

uint64_t IndexableMessageInfo.Attachment.filename.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t IndexableMessageInfo.Attachment.filename.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t static IndexableMessageInfo.Attachment.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = *(a1 + 32);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v10 = *(a2 + 32);
  if (_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v9))
  {
    v6 = *(a1 + 48);
    v7 = *(a2 + 48);
    if (v6)
    {
      if (v7 && (*(a1 + 40) == *(a2 + 40) && v6 == v7 || (sub_1B0E46A78() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v7)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B0C8D44C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v2;
  v10 = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v5;
  v12 = *(a2 + 32);
  v7 = *(a2 + 40);
  v6 = *(a2 + 48);
  if (_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v9, v11))
  {
    if (v3)
    {
      if (v6 && (v4 == v7 && v3 == v6 || (sub_1B0E46A78() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t IndexableMessageInfo.init(message:maximumTextCount:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v36 = a3;
  v37 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2980, &qword_1B0EDF380);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for IndexableMessageInfo(0);
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v36 - v20;
  v22 = *(v19 + 24);
  v23 = sub_1B0E43108();
  (*(*(v23 - 8) + 56))(&v21[v22], 1, 1, v23);
  v24 = &v21[v13[7]];
  *(v24 + 4) = 0u;
  *(v24 + 5) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = &v21[v13[8]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v21[v13[9]];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v21[v13[11]] = 256;
  v27 = &v21[v13[15]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = -1;
  sub_1B0C9A3F4(a1, a2, v36, v12);
  sub_1B0C90394(a1, type metadata accessor for Message);
  sub_1B0C90324(v12, v10);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_1B0398EFC(v10, &unk_1EB6E2980, &qword_1B0EDF380);
    sub_1B0398EFC(&v21[v22], &unk_1EB6E2990, &qword_1B0E9B060);
    v28 = *(v24 + 3);
    v40 = *(v24 + 2);
    v41 = v28;
    v29 = *(v24 + 5);
    v42 = *(v24 + 4);
    v43 = v29;
    v30 = *(v24 + 1);
    v38 = *v24;
    v39 = v30;
    sub_1B0398EFC(&v38, &qword_1EB6E5F80, &qword_1B0EDF378);
    return (*(v14 + 56))(v37, 1, 1, v13);
  }

  else
  {
    sub_1B08A9984(v10, v18);
    sub_1B0398EFC(&v21[v22], &unk_1EB6E2990, &qword_1B0E9B060);
    v32 = *(v24 + 3);
    v40 = *(v24 + 2);
    v41 = v32;
    v33 = *(v24 + 5);
    v42 = *(v24 + 4);
    v43 = v33;
    v34 = *(v24 + 1);
    v38 = *v24;
    v39 = v34;
    sub_1B0398EFC(&v38, &qword_1EB6E5F80, &qword_1B0EDF378);
    sub_1B08A9984(v18, v21);
    v35 = v37;
    sub_1B08A9C20(v21, v37);
    (*(v14 + 56))(v35, 0, 1, v13);
    return sub_1B0C90394(v21, type metadata accessor for IndexableMessageInfo);
  }
}

uint64_t sub_1B0C8D8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v160 = a6;
  v154 = a5;
  v155 = a1;
  v157 = a3;
  v158 = a4;
  v156 = a2;
  v153 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v142 - v9;
  v11 = type metadata accessor for IndexableMessageInfo.InfoAndListID(0);
  v12 = *(v11 - 8);
  v161 = (v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IndexableMessageInfo(0);
  v152 = *(v16 - 1);
  v17 = *(v152 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 24);
  v22 = sub_1B0E43108();
  v23 = *(*(v22 - 8) + 56);
  v149 = v21;
  v23(&v20[v21], 1, 1, v22);
  v24 = &v20[v16[7]];
  *(v24 + 4) = 0u;
  *(v24 + 5) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v150 = v24;
  v151 = v20;
  v25 = &v20[v16[8]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v20[v16[9]];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v20[v16[11]] = 256;
  v27 = &v20[v16[15]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = -1;
  v28 = v10;
  v23(v10, 1, 1, v22);
  v29 = v16[6];
  v23(&v15[v29], 1, 1, v22);
  v30 = &v15[v16[7]];
  *(v30 + 4) = 0u;
  *(v30 + 5) = 0u;
  *(v30 + 2) = 0u;
  *(v30 + 3) = 0u;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  v31 = &v15[v16[8]];
  v32 = &v15[v16[9]];
  v159 = v16[11];
  v33 = &v15[v16[15]];
  v34 = MEMORY[0x1E69E7CC0];
  *v15 = MEMORY[0x1E69E7CC0];
  *(v15 + 1) = v34;
  sub_1B0C8C870(v28, &v15[v29], &unk_1EB6E2990, &qword_1B0E9B060);
  v35 = *(v30 + 3);
  v213[2] = *(v30 + 2);
  v213[3] = v35;
  v36 = *(v30 + 5);
  v213[4] = *(v30 + 4);
  v213[5] = v36;
  v37 = *(v30 + 1);
  v213[0] = *v30;
  v213[1] = v37;
  sub_1B0398EFC(v213, &qword_1EB6E5F80, &qword_1B0EDF378);
  *v30 = 0u;
  *(v30 + 1) = 0u;
  *(v30 + 2) = 0u;
  *(v30 + 3) = 0u;
  *(v30 + 4) = 0u;
  *(v30 + 5) = 0u;
  *v31 = 0;
  *(v31 + 1) = 0;
  *v32 = 0;
  *(v32 + 1) = 0;
  v145 = v16[10];
  *&v15[v145] = v34;
  *&v15[v159] = 256;
  v143 = v16[12];
  v15[v143] = 0;
  v144 = v16[13];
  v15[v144] = 0;
  v15[v16[14]] = 0;
  *v33 = 0;
  *(v33 + 1) = 0;
  v33[16] = -1;
  v147 = v16;
  *&v15[v16[16]] = v34;
  v159 = *(v161 + 7);
  v161 = v15;
  *&v15[v159] = MEMORY[0x1E69E7CD0];
  v196 = 0;
  v38 = sub_1B0CA3C44(v155, v156, v157, v158);
  v39 = sub_1B0CA3EA4(v34, v38);
  if (v39)
  {
    v41 = v39;
    v42 = v40;
    *&v197 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
    sub_1B0CA4364(v41, v42, 0, &v197, v38);

    v43 = v197;
  }

  else
  {

    v43 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
  }

  v44 = swift_allocObject();
  v148 = &v142;
  *(v44 + 16) = v43;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v46 = v160;
  v47 = v154;
  *(&v142 - 4) = v161;
  *(&v142 - 3) = v47;
  *(&v142 - 2) = v46;
  MEMORY[0x1EEE9AC00](v45);
  *(&v142 - 4) = &v196;
  *(&v142 - 3) = v48;
  *(&v142 - 2) = v46;
  v49 = swift_allocObject();
  v50 = v49 + 1;
  sub_1B0C835A8(&v185);
  v51 = v194;
  v49[9] = v193;
  v49[10] = v51;
  v49[11] = *v195;
  *(v49 + 185) = *&v195[9];
  v52 = v190;
  v49[5] = v189;
  v49[6] = v52;
  v53 = v192;
  v49[7] = v191;
  v49[8] = v53;
  v54 = v186;
  v49[1] = v185;
  v49[2] = v54;
  v55 = v188;
  v49[3] = v187;
  v49[4] = v55;
  v56 = swift_allocObject();
  *(v56 + 16) = 2;
  v57 = (v56 + 16);
  v58 = MEMORY[0x1EEE9AC00](v56);
  *(&v142 - 4) = v49;
  *(&v142 - 3) = v58;
  v146 = v58;
  *(&v142 - 2) = sub_1B0C90760;
  *(&v142 - 1) = (&v142 - 6);
  MEMORY[0x1EEE9AC00](v58);
  *(&v142 - 4) = (v49 + 1);
  *(&v142 - 3) = sub_1B0C9079C;
  *(&v142 - 2) = (&v142 - 6);

  v59 = 0;
  sub_1B0CA33D0(3, v155, v156, v157, v158);
  v208 = MEMORY[0x1E69E7CC0];
  v209 = v60;
  v210 = v61;
  v211 = v62;
  v212 = v63;
  sub_1B0CA286C(sub_1B0C844A0, (&v142 - 6), sub_1B0C844C0, (&v142 - 6), sub_1B0C86A08, v44);
  swift_beginAccess();
  v110 = v160;
  if (*v57 != 2)
  {
    goto LABEL_42;
  }

  swift_beginAccess();
  v111 = v49[10];
  v112 = v49[8];
  v171 = v49[9];
  v172 = v111;
  v113 = v49[10];
  v173[0] = v49[11];
  *(v173 + 9) = *(v49 + 185);
  v114 = v49[6];
  v115 = v49[4];
  v167 = v49[5];
  v168 = v114;
  v116 = v49[6];
  v117 = v49[8];
  v169 = v49[7];
  v170 = v117;
  v118 = v49[2];
  v164[0] = *v50;
  v164[1] = v118;
  v119 = v49[4];
  v121 = *v50;
  v120 = v49[2];
  v165 = v49[3];
  v166 = v119;
  v182 = v171;
  v183 = v113;
  v184[0] = v49[11];
  *(v184 + 9) = *(v49 + 185);
  v178 = v167;
  v179 = v116;
  v180 = v169;
  v181 = v112;
  v174 = v121;
  v175 = v120;
  v176 = v165;
  v177 = v115;
  if (sub_1B03BCF14(&v174) != 1)
  {
    v205 = v182;
    v206 = v183;
    v207[0] = v184[0];
    *(v207 + 9) = *(v184 + 9);
    v201 = v178;
    v202 = v179;
    v203 = v180;
    v204 = v181;
    v197 = v174;
    v198 = v175;
    v199 = v176;
    v200 = v177;

    sub_1B03B5C80(v164, v162, &qword_1EB6E5F00, &unk_1B0EDE440);
    sub_1B0C8E684(v154, &v197, v110);
    sub_1B0398EFC(v164, &qword_1EB6E5F00, &unk_1B0EDE440);
    *v57 = 2;
    v132 = v49[10];
    v162[8] = v49[9];
    v162[9] = v132;
    v163[0] = v49[11];
    *(v163 + 9) = *(v49 + 185);
    v133 = v49[6];
    v162[4] = v49[5];
    v162[5] = v133;
    v134 = v49[8];
    v162[6] = v49[7];
    v162[7] = v134;
    v135 = v49[2];
    v162[0] = *v50;
    v162[1] = v135;
    v136 = v49[4];
    v162[2] = v49[3];
    v162[3] = v136;
    v137 = v194;
    v49[9] = v193;
    v49[10] = v137;
    v49[11] = *v195;
    *(v49 + 185) = *&v195[9];
    v138 = v190;
    v49[5] = v189;
    v49[6] = v138;
    v139 = v192;
    v49[7] = v191;
    v49[8] = v139;
    v140 = v186;
    *v50 = v185;
    v49[2] = v140;
    v141 = v188;
    v49[3] = v187;
    v49[4] = v141;
    sub_1B0398EFC(v162, &qword_1EB6E5F00, &unk_1B0EDE440);

    v59 = 0;
  }

  else
  {
LABEL_42:
    swift_beginAccess();
    v122 = v49[10];
    v205 = v49[9];
    v206 = v122;
    v207[0] = v49[11];
    *(v207 + 9) = *(v49 + 185);
    v123 = v49[6];
    v201 = v49[5];
    v202 = v123;
    v124 = v49[8];
    v203 = v49[7];
    v204 = v124;
    v125 = v49[2];
    v197 = *v50;
    v198 = v125;
    v126 = v49[4];
    v199 = v49[3];
    v200 = v126;
    v127 = v194;
    v49[9] = v193;
    v49[10] = v127;
    v49[11] = *v195;
    *(v49 + 185) = *&v195[9];
    v128 = v190;
    v49[5] = v189;
    v49[6] = v128;
    v129 = v192;
    v49[7] = v191;
    v49[8] = v129;
    v130 = v186;
    *v50 = v185;
    v49[2] = v130;
    v131 = v188;
    v49[3] = v187;
    v49[4] = v131;

    sub_1B0398EFC(&v197, &qword_1EB6E5F00, &unk_1B0EDE440);
  }

  if ((v196 & 1) == 0)
  {

    sub_1B0C90394(v161, type metadata accessor for IndexableMessageInfo.InfoAndListID);
    sub_1B0398EFC(&v151[v149], &unk_1EB6E2990, &qword_1B0E9B060);
    v68 = *(v150 + 3);
    v176 = *(v150 + 2);
    v177 = v68;
    v69 = *(v150 + 5);
    v178 = *(v150 + 4);
    v179 = v69;
    v70 = *(v150 + 1);
    v174 = *v150;
    v175 = v70;
    sub_1B0398EFC(&v174, &qword_1EB6E5F80, &qword_1B0EDF378);
    return (*(v152 + 56))(v153, 1, 1, v147);
  }

  v64 = *&v161[v145];
  v65 = *(v64 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v65)
  {
LABEL_22:
    v158 = v59;

    goto LABEL_23;
  }

  v66 = 0;
  v67 = v64 + 32;
  v157 = v64 + 32;
  while (1)
  {
    v72 = (v67 + 96 * v66);
    v73 = *v72;
    v175 = v72[1];
    v74 = v72[2];
    v75 = v72[3];
    v76 = v72[5];
    v178 = v72[4];
    v179 = v76;
    v176 = v74;
    v177 = v75;
    v174 = v73;
    v77 = *&v161[v159];
    if (!*(v77 + 16))
    {
      goto LABEL_10;
    }

    v158 = v59;
    v78 = v175;
    v79 = *(v77 + 40);
    sub_1B0E46C28();
    sub_1B0C826C0(&v174, v164);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v80 = sub_1B0E46CB8();
    v81 = -1 << *(v77 + 32);
    v82 = v80 & ~v81;
    if ((*(v77 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82))
    {
      break;
    }

LABEL_9:

    sub_1B0C8274C(&v174);
    v67 = v157;
    v59 = v158;
LABEL_10:
    if (++v66 == v65)
    {
      goto LABEL_22;
    }
  }

  v83 = ~v81;
  while (1)
  {
    v84 = (*(v77 + 48) + 16 * v82);
    v85 = *v84 == v78 && v84[1] == *(&v78 + 1);
    if (v85 || (sub_1B0E46A78() & 1) != 0)
    {
      break;
    }

    v82 = (v82 + 1) & v83;
    if (((*(v77 + 56 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_1B0C8274C(&v174);

  v161[v143] = 1;
LABEL_23:
  v86 = *(v161 + 1);
  v87 = *(v86 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v87)
  {
LABEL_38:

    goto LABEL_39;
  }

  v88 = 0;
  v89 = v86 + 32;
  v157 = v86 + 32;
  while (2)
  {
    v90 = (v89 + 96 * v88);
    v91 = *v90;
    v175 = v90[1];
    v92 = v90[2];
    v93 = v90[3];
    v94 = v90[5];
    v178 = v90[4];
    v179 = v94;
    v176 = v92;
    v177 = v93;
    v174 = v91;
    v95 = *&v161[v159];
    if (!*(v95 + 16))
    {
LABEL_26:
      if (++v88 == v87)
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  v96 = v175;
  v97 = *(v95 + 40);
  sub_1B0E46C28();
  sub_1B0C826C0(&v174, v164);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v98 = sub_1B0E46CB8();
  v99 = -1 << *(v95 + 32);
  v100 = v98 & ~v99;
  if (((*(v95 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100) & 1) == 0)
  {
LABEL_25:

    sub_1B0C8274C(&v174);
    v89 = v157;
    goto LABEL_26;
  }

  v101 = ~v99;
  while (1)
  {
    v102 = (*(v95 + 48) + 16 * v100);
    v103 = *v102 == v96 && v102[1] == *(&v96 + 1);
    if (v103 || (sub_1B0E46A78() & 1) != 0)
    {
      break;
    }

    v100 = (v100 + 1) & v101;
    if (((*(v95 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  sub_1B0C8274C(&v174);

  v161[v144] = 1;
LABEL_39:
  v104 = v151;
  sub_1B0398EFC(&v151[v149], &unk_1EB6E2990, &qword_1B0E9B060);
  v105 = *(v150 + 3);
  v176 = *(v150 + 2);
  v177 = v105;
  v106 = *(v150 + 5);
  v178 = *(v150 + 4);
  v179 = v106;
  v107 = *(v150 + 1);
  v174 = *v150;
  v175 = v107;
  sub_1B0398EFC(&v174, &qword_1EB6E5F80, &qword_1B0EDF378);
  v108 = v161;
  sub_1B08A9C20(v161, v104);
  sub_1B0C90394(v108, type metadata accessor for IndexableMessageInfo.InfoAndListID);
  v109 = v153;
  sub_1B08A9C20(v104, v153);
  (*(v152 + 56))(v109, 0, 1, v147);
  return sub_1B0C90394(v104, type metadata accessor for IndexableMessageInfo);
}

uint64_t sub_1B0C8E684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 1000000000)
  {
    v10 = a1;
    v11 = v3 + *(type metadata accessor for IndexableMessageInfo(0) + 60);
    v12 = *(v11 + 16);
    if (v12 == 255)
    {
      LOBYTE(v14) = 0;
      v16 = v10;
    }

    else
    {
      v4 = *v11;
      v13 = *(v11 + 8);
      sub_1B08AA0C4();
      v14 = sub_1B0E44CF8();
      result = sub_1B0C8CEB8(v4, v13, v12);
      v16 = v10 - v14;
      if (__OFSUB__(v10, v14))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    v17 = (v16 * 5) >> 64;
    v18 = 5 * v16;
    if (v17 != v18 >> 63)
    {
      __break(1u);
LABEL_30:
      result = sub_1B0C81520(0, *(v5 + 16) + 1, 1, v5);
      v5 = result;
LABEL_19:
      v27 = *(v5 + 16);
      v26 = *(v5 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        result = sub_1B0C81520((v26 > 1), v27 + 1, 1, v5);
        v28 = v27 + 1;
        v5 = result;
      }

      *(v5 + 16) = v28;
      v29 = v5 + 56 * v27;
      *(v29 + 32) = a3;
      *(v29 + 40) = a2;
      *(v29 + 48) = v10;
      *(v29 + 56) = v12;
      *(v29 + 64) = v14;
      *(v29 + 72) = v4;
      *(v29 + 80) = v30;
      *(v3 + v6) = v5;
      return result;
    }

    v9 = v18 & ~(v18 >> 63);
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_1B0C83634(a2, v31);
  sub_1B0C85B6C(a2, v9, a3, v32);
  v37 = v32[4];
  v38 = v32[5];
  v39 = v32[6];
  v40 = v32[7];
  v33 = v32[0];
  v34 = v32[1];
  v35 = v32[2];
  v36 = v32[3];
  result = sub_1B0C8699C(&v33);
  if (result == 1)
  {
    return result;
  }

  v19 = type metadata accessor for IndexableMessageInfo(0);
  v4 = v3 + *(v19 + 60);
  v10 = *v4;
  a2 = *(v4 + 8);
  LODWORD(a3) = *(v4 + 16);
  v31[6] = v39;
  v31[7] = v40;
  v31[4] = v37;
  v31[5] = v38;
  v31[0] = v33;
  v31[1] = v34;
  v31[2] = v35;
  v31[3] = v36;
  v20 = sub_1B08C4EF0(v31);
  result = sub_1B0507400(v31);
  if (v20)
  {
    if (v20 == 1)
    {
      v22 = *result;
      v21 = *(result + 8);
      if (a3 != 255)
      {
        if (a3)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1B2726E80](v22, v21);
          sub_1B0398EFC(v32, &qword_1EB6E5F30, "nP\b");
          result = sub_1B0C8CEB8(v10, a2, a3);
          *v4 = v10;
          *(v4 + 8) = a2;
LABEL_25:
          *(v4 + 16) = 1;
          return result;
        }

        result = sub_1B0C8CEB8(v10, a2, a3);
      }

      *v4 = v22;
      *(v4 + 8) = v21;
      goto LABEL_25;
    }

    a3 = *(result + 8);
    a2 = *(result + 16);
    v10 = *(result + 24);
    v12 = *(result + 32);
    LOBYTE(v14) = *(result + 40);
    v4 = sub_1B0C7A730(*(result + 72));
    v30 = v25;
    sub_1B07ACBF8(a3, a2, v10, v12, v14);
    sub_1B0398EFC(v32, &qword_1EB6E5F30, "nP\b");
    v6 = *(v19 + 64);
    v5 = *(v3 + v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

LABEL_15:
  v24 = *result;
  v23 = *(result + 8);
  if (a3 == 255)
  {
    *v4 = v24;
    *(v4 + 8) = v23;
  }

  else
  {
    if (a3)
    {
      return sub_1B0398EFC(v32, &qword_1EB6E5F30, "nP\b");
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](2570, 0xE200000000000000);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](v24, v23);
    sub_1B0398EFC(v32, &qword_1EB6E5F30, "nP\b");

    result = sub_1B0C8CEB8(v10, a2, a3);
    *v4 = v10;
    *(v4 + 8) = a2;
  }

  *(v4 + 16) = 0;
  return result;
}

uint64_t sub_1B0C8EA30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, void *a8)
{
  *a6 = 1;
  if (((1 << (*(result + 32) >> 59)) & 0x1343F1) == 0)
  {
    v8 = result;

    sub_1B0C907A8(v8, v12);
    result = sub_1B0C8A0E8(v8, a8, v10);
    if (v11 != 255)
    {
      v12[2] = v10[2];
      v12[3] = v10[3];
      v12[4] = v10[4];
      v12[5] = v10[5];
      v12[0] = v10[0];
      v12[1] = v10[1];
      v13 = v11;
      sub_1B0C8EB10(v12);
      return sub_1B0398EFC(v10, &qword_1EB6E5F88, &unk_1B0EE0E00);
    }
  }

  return result;
}

uint64_t sub_1B0C8EB10(uint64_t a1)
{
  v3 = *(a1 + 8);
  v63 = *a1;
  v4 = sub_1B0E43108();
  *&v62 = *(v4 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v60 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v60 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v21 = &v60 - v20;
  switch(*(a1 + 96))
  {
    case 1:
      v22 = v63;
      result = type metadata accessor for IndexableMessageInfo(0);
      v23 = *(result + 56);
      if (v22)
      {
        *(v1 + v23) = 1;
      }

      else
      {
        *(v1 + v23) = 0;
      }

      break;
    case 2:
      v24 = *v1;
      v25 = v63;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      *v1 = v25;
      break;
    case 3:
      v41 = v1[1];
      v42 = v63;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v1[1] = v42;
      break;
    case 0xA:
      v60 = v3;
      sub_1B0C91E60(v63, v3, v15);
      v48 = *(v62 + 48);
      v49 = v48(v15, 1, v4);
      v61 = v48;
      if (v49 == 1)
      {
        sub_1B0C90B4C(v18);
        if (v48(v15, 1, v4) != 1)
        {
          sub_1B0398EFC(v15, &unk_1EB6E2990, &qword_1B0E9B060);
        }
      }

      else
      {
        v56 = v62;
        (*(v62 + 32))(v18, v15, v4);
        (*(v56 + 56))(v18, 0, 1, v4);
      }

      sub_1B03B5C80(v18, v12, &unk_1EB6E2990, &qword_1B0E9B060);
      v57 = 1;
      if (v61(v12, 1, v4) != 1)
      {
        v58 = v62;
        (*(v62 + 32))(v7, v12, v4);
        sub_1B0E43028();
        sub_1B0E43018();
        (*(v58 + 8))(v7, v4);
        v57 = 0;
      }

      sub_1B0398EFC(v18, &unk_1EB6E2990, &qword_1B0E9B060);
      (*(v62 + 56))(v21, v57, 1, v4);
      v59 = type metadata accessor for IndexableMessageInfo(0);
      result = sub_1B0C8C870(v21, v1 + *(v59 + 24), &unk_1EB6E2990, &qword_1B0E9B060);
      break;
    case 0xB:
      v26 = *(a1 + 48);
      v65 = *(a1 + 32);
      v66 = v26;
      v27 = *(a1 + 80);
      v67 = *(a1 + 64);
      v68 = v27;
      v28 = v1 + *(type metadata accessor for IndexableMessageInfo(0) + 28);
      v29 = *(v28 + 3);
      v69[2] = *(v28 + 2);
      v69[3] = v29;
      v30 = *(v28 + 5);
      v69[4] = *(v28 + 4);
      v69[5] = v30;
      v31 = *(v28 + 1);
      v69[0] = *v28;
      v69[1] = v31;
      v32 = v63;
      v70[0] = v63;
      v70[1] = v3;
      v33 = *(a1 + 32);
      v62 = *(a1 + 16);
      v71 = *(a1 + 16);
      v72 = v33;
      v34 = *(a1 + 48);
      v35 = *(a1 + 64);
      v36 = *(a1 + 80);
      v76 = *(a1 + 96);
      v75 = v36;
      v74 = v35;
      v73 = v34;
      sub_1B0C826C0(v70, &v64);
      result = sub_1B0398EFC(v69, &qword_1EB6E5F80, &qword_1B0EDF378);
      *v28 = v32;
      *(v28 + 1) = v3;
      v37 = v65;
      v38 = v66;
      *(v28 + 1) = v62;
      *(v28 + 2) = v37;
      v39 = v67;
      v40 = v68;
      *(v28 + 3) = v38;
      *(v28 + 4) = v39;
      *(v28 + 5) = v40;
      break;
    case 0xC:
      v55 = *(type metadata accessor for IndexableMessageInfo.InfoAndListID(0) + 20);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C8F0B0(v70, v63, v3);

      break;
    case 0xD:
      v43 = (v1 + *(type metadata accessor for IndexableMessageInfo(0) + 32));
      v44 = v43[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      *v43 = v63;
      v43[1] = v3;
      break;
    case 0xF:
      result = type metadata accessor for IndexableMessageInfo(0);
      *(v1 + *(result + 44)) = v63;
      break;
    case 0x12:
      sub_1B0C90804(a1, v70);
      v50 = sub_1B0CB6568();
      v52 = v51;
      v53 = (v1 + *(type metadata accessor for IndexableMessageInfo(0) + 36));
      v54 = v53[1];

      *v53 = v50;
      v53[1] = v52;
      break;
    case 0x13:
      v45 = *(type metadata accessor for IndexableMessageInfo(0) + 40);
      v46 = *(v1 + v45);
      v47 = v63;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      *(v1 + v45) = v47;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0C8F0B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v9 = sub_1B0E46CB8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1B0E46A78() & 1) != 0)
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C8F460(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B0C8F200(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F90, "RQ\b");
  result = sub_1B0E46208();
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
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0C8F460(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1B0C8F200(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B0C8F5E0();
      goto LABEL_16;
    }

    sub_1B0C8F73C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  result = sub_1B0E46CB8();
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

      result = sub_1B0E46A78();
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
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

void *sub_1B0C8F5E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F90, "RQ\b");
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
        result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

uint64_t sub_1B0C8F73C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F90, "RQ\b");
  result = sub_1B0E46208();
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
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0C8F974(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t _s9IMAP2MIME20IndexableMessageInfoV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1B0E43108();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v81 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1720, &qword_1B0E99908);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v81 - v15;
  if ((sub_1B0C789C8(*a1, *a2) & 1) == 0 || (sub_1B0C789C8(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_44;
  }

  v17 = type metadata accessor for IndexableMessageInfo(0);
  v96 = a2;
  v18 = *(v17 + 24);
  v19 = *(v13 + 48);
  v94 = v17;
  v95 = a1;
  sub_1B03B5C80(a1 + v18, v16, &unk_1EB6E2990, &qword_1B0E9B060);
  v20 = v96 + v18;
  v21 = v96;
  sub_1B03B5C80(v20, &v16[v19], &unk_1EB6E2990, &qword_1B0E9B060);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v19], 1, v4) == 1)
    {
      sub_1B0398EFC(v16, &unk_1EB6E2990, &qword_1B0E9B060);
      goto LABEL_10;
    }

LABEL_8:
    v23 = &qword_1EB6E1720;
    v24 = &qword_1B0E99908;
    v25 = v16;
LABEL_43:
    sub_1B0398EFC(v25, v23, v24);
    goto LABEL_44;
  }

  sub_1B03B5C80(v16, v12, &unk_1EB6E2990, &qword_1B0E9B060);
  if (v22(&v16[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v16[v19], v4);
  sub_1B06BC63C();
  v26 = sub_1B0E44A28();
  v27 = *(v5 + 8);
  v27(v8, v4);
  v27(v12, v4);
  sub_1B0398EFC(v16, &unk_1EB6E2990, &qword_1B0E9B060);
  if ((v26 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_10:
  v28 = v94;
  v29 = (v95 + v94[7]);
  v30 = v29[3];
  v119 = v29[2];
  v120 = v30;
  v31 = v29[5];
  v121 = v29[4];
  v122 = v31;
  v32 = v29[1];
  v118[0] = *v29;
  v118[1] = v32;
  v33 = (v21 + v94[7]);
  v34 = v33[3];
  v123[2] = v33[2];
  v123[3] = v34;
  v35 = v33[5];
  v123[4] = v33[4];
  v123[5] = v35;
  v36 = v33[1];
  v123[0] = *v33;
  v123[1] = v36;
  v37 = v118[0];
  v38 = v32;
  v93 = *(&v122 + 1);
  v39 = *(&v36 + 1);
  if (!*(&v32 + 1))
  {
    if (!*(&v36 + 1))
    {
      v105 = v118[0];
      v106 = v32;
      v107 = v119;
      v108 = v120;
      v109 = v121;
      v110 = __PAIR128__(v93, v122);
      sub_1B03B5C80(v118, &v97, &qword_1EB6E5F80, &qword_1B0EDF378);
      sub_1B03B5C80(v123, &v97, &qword_1EB6E5F80, &qword_1B0EDF378);
      v54 = &v105;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (!*(&v36 + 1))
  {
LABEL_22:
    v105 = v118[0];
    v106 = v32;
    v107 = v119;
    v108 = v120;
    v109 = v121;
    *&v110 = v122;
    *(&v110 + 1) = v93;
    v111 = *v33;
    v112 = *(v33 + 2);
    v113 = *(&v36 + 1);
    v55 = v33[2];
    v56 = v33[3];
    v57 = v33[5];
    v116 = v33[4];
    v117 = v57;
    v114 = v55;
    v115 = v56;
    sub_1B03B5C80(v118, &v97, &qword_1EB6E5F80, &qword_1B0EDF378);
    sub_1B03B5C80(v123, &v97, &qword_1EB6E5F80, &qword_1B0EDF378);
    v23 = &unk_1EB6E5F98;
    v24 = &unk_1B0EDF650;
    v25 = &v105;
    goto LABEL_43;
  }

  v89 = *(&v120 + 1);
  v105 = *v33;
  v40 = *(v33 + 2);
  *&v106 = v40;
  *(&v106 + 1) = *(&v36 + 1);
  v41 = v33[3];
  v107 = v33[2];
  v108 = v41;
  v42 = v33[5];
  v109 = v33[4];
  v110 = v42;
  v44 = *(&v107 + 1);
  v43 = v107;
  v46 = *(&v108 + 1);
  v45 = v108;
  v88 = v122;
  v90 = v121;
  v92 = v120;
  v91 = v119;
  if (!*(&v118[0] + 1))
  {
    v84 = *(&v42 + 1);
    v85 = v42;
    v86 = *(&v109 + 1);
    v87 = v109;
    if (!*(&v105 + 1))
    {
      goto LABEL_16;
    }

LABEL_24:
    sub_1B03B5C80(v118, &v97, &qword_1EB6E5F80, &qword_1B0EDF378);
    sub_1B03B5C80(v123, &v97, &qword_1EB6E5F80, &qword_1B0EDF378);
    sub_1B0398EFC(&v105, &qword_1EB6E5F80, &qword_1B0EDF378);
    v97 = v37;
    v98 = v38;
    v99 = v91;
    v100 = v92;
    v101 = v89;
LABEL_42:
    v102 = v90;
    v103 = v88;
    v104 = v93;
    v25 = &v97;
    v23 = &qword_1EB6E5F80;
    v24 = &qword_1B0EDF378;
    goto LABEL_43;
  }

  if (!*(&v105 + 1))
  {
    goto LABEL_24;
  }

  v84 = *(&v42 + 1);
  v85 = v42;
  v86 = *(&v109 + 1);
  v87 = v109;
  if (v118[0] != v105)
  {
    v82 = v108;
    v83 = v107;
    v81 = *(&v108 + 1);
    v47 = sub_1B0E46A78();
    v46 = v81;
    v45 = v82;
    v43 = v83;
    if ((v47 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_16:
  if (v38 != __PAIR128__(v39, v40))
  {
    v83 = v43;
    v48 = v44;
    v49 = v45;
    v50 = v46;
    v51 = sub_1B0E46A78();
    v46 = v50;
    v45 = v49;
    v44 = v48;
    v43 = v83;
    if ((v51 & 1) == 0)
    {
      sub_1B03B5C80(v118, &v97, &qword_1EB6E5F80, &qword_1B0EDF378);
      sub_1B03B5C80(v123, &v97, &qword_1EB6E5F80, &qword_1B0EDF378);
      v52 = v89;
      goto LABEL_41;
    }
  }

  v52 = v89;
  if ((sub_1B0C8C5C0(v91, *(&v91 + 1), v92, v89, v43, v44, v45, v46) & 1) == 0)
  {
    sub_1B03B5C80(v118, &v97, &qword_1EB6E5F80, &qword_1B0EDF378);
    sub_1B03B5C80(v123, &v97, &qword_1EB6E5F80, &qword_1B0EDF378);
LABEL_41:
    sub_1B0398EFC(&v105, &qword_1EB6E5F80, &qword_1B0EDF378);
    v97 = v37;
    v98 = v38;
    v99 = v91;
    v100 = v92;
    v101 = v52;
    goto LABEL_42;
  }

  v53 = v88;
  LODWORD(v87) = sub_1B0C8C5C0(v90, *(&v90 + 1), v88, v93, v87, v86, v85, v84);
  sub_1B03B5C80(v118, &v97, &qword_1EB6E5F80, &qword_1B0EDF378);
  sub_1B03B5C80(v123, &v97, &qword_1EB6E5F80, &qword_1B0EDF378);
  sub_1B0398EFC(&v105, &qword_1EB6E5F80, &qword_1B0EDF378);
  if ((v87 & 1) == 0)
  {
    v97 = v37;
    v98 = v38;
    v99 = v91;
    v100 = v92;
    v101 = v89;
    v102 = v90;
    v103 = v53;
    v104 = v93;
    v23 = &qword_1EB6E5F80;
    v24 = &qword_1B0EDF378;
    v25 = &v97;
    goto LABEL_43;
  }

  v97 = v37;
  v98 = v38;
  v99 = v91;
  v100 = v92;
  v101 = v89;
  v102 = v90;
  v103 = v53;
  v104 = v93;
  v54 = &v97;
LABEL_26:
  sub_1B0398EFC(v54, &qword_1EB6E5F80, &qword_1B0EDF378);
  v58 = v28[8];
  v59 = v95;
  v60 = (v95 + v58);
  v61 = *(v95 + v58 + 8);
  v62 = (v21 + v58);
  v63 = v62[1];
  if (v61)
  {
    if (!v63 || (*v60 != *v62 || v61 != v63) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v63)
  {
    goto LABEL_44;
  }

  v64 = v28[9];
  v65 = (v59 + v64);
  v66 = *(v59 + v64 + 8);
  v67 = (v21 + v64);
  v68 = v67[1];
  if (v66)
  {
    if (!v68 || (*v65 != *v67 || v66 != v68) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v68)
  {
    goto LABEL_44;
  }

  if (sub_1B0C789C8(*(v59 + v28[10]), *(v21 + v28[10])))
  {
    v71 = v28[11];
    v72 = v59 + v71;
    v73 = *(v59 + v71 + 1);
    v74 = v21 + v71;
    v75 = *(v21 + v71 + 1);
    if (v73)
    {
      if (!v75)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (*v72 != *v74)
      {
        LOBYTE(v75) = 1;
      }

      if (v75)
      {
        goto LABEL_44;
      }
    }

    if (*(v59 + v28[12]) != *(v21 + v28[12]) || *(v59 + v28[13]) != *(v21 + v28[13]) || *(v59 + v28[14]) != *(v21 + v28[14]))
    {
      goto LABEL_44;
    }

    v76 = v28[15];
    v77 = (v59 + v76);
    v78 = *(v59 + v76 + 16);
    v79 = (v21 + v76);
    v80 = *(v21 + v76 + 16);
    if (v78 == 255)
    {
      if (v80 == 255)
      {
LABEL_69:
        v69 = sub_1B0C78E5C(*(v95 + v94[16]), *(v96 + v94[16]));
        return v69 & 1;
      }
    }

    else if (v80 != 255)
    {
      if (v78)
      {
        if ((v80 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else if (v80)
      {
        goto LABEL_44;
      }

      if (*v77 == *v79 && v77[1] == v79[1] || (sub_1B0E46A78() & 1) != 0)
      {
        goto LABEL_69;
      }
    }
  }

LABEL_44:
  v69 = 0;
  return v69 & 1;
}

uint64_t sub_1B0C90324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2980, &qword_1B0EDF380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C90394(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B0C9041C()
{
  sub_1B0C90608(319, &qword_1EB6DB0B0, &type metadata for EmailAddress, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B04376A0();
    if (v1 <= 0x3F)
    {
      sub_1B0C90608(319, &qword_1EB6DB930, &type metadata for EmailAddress, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B0C90608(319, &qword_1EB6DB6A8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B0C90608(319, &qword_1EB6DB8D0, &type metadata for Header.Priority, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1B0C90608(319, &qword_1EB6DB8E8, &type metadata for IndexableMessageInfo.Content, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1B0C90608(319, &qword_1EB6DB090, &type metadata for IndexableMessageInfo.Attachment, MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B0C90608(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B0C90674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0C906D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0C90760(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  sub_1B0C8E684(v3, a1, v4);
  return 2;
}

void sub_1B0C90888()
{
  type metadata accessor for IndexableMessageInfo(319);
  if (v0 <= 0x3F)
  {
    sub_1B0C9090C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0C9090C()
{
  if (!qword_1EB6DAD08)
  {
    sub_1B0C90968();
    v0 = sub_1B0E45588();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DAD08);
    }
  }
}

unint64_t sub_1B0C90968()
{
  result = qword_1EB6DB8C8;
  if (!qword_1EB6DB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB8C8);
  }

  return result;
}

uint64_t InternetMessageDate.parse()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14[-v8];
  sub_1B0C91E60(a1, a2, &v14[-v8]);
  v10 = sub_1B0E43108();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v9, 1, v10) == 1)
  {
    sub_1B0C90B4C(a3);
    result = v12(v9, 1, v10);
    if (result != 1)
    {
      return sub_1B0398EFC(v9, &unk_1EB6E2990, &qword_1B0E9B060);
    }
  }

  else
  {
    (*(v11 + 32))(a3, v9, v10);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  return result;
}

uint64_t sub_1B0C90B4C@<X0>(char *a1@<X8>)
{
  v42 = a1;
  v1 = sub_1B0E43108();
  v2 = *(v1 - 8);
  v43 = v1;
  v44 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v38 = &v37 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v41 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v37 - v10;
  v11 = 22;
  v12 = &off_1F2722780;
  do
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v15 = sub_1B0C92300();
    v16 = sub_1B0E44AC8();

    [v15 setDateFormat_];

    [v15 setLenient_];
    v17 = sub_1B0E44AC8();
    v18 = [v15 dateFromString_];

    if (v18)
    {
      v31 = v41;
      sub_1B0E430D8();

      v32 = *(v44 + 32);
      v33 = v40;
LABEL_12:
      v34 = v31;
      v35 = v43;
      v32(v33, v34, v43);
      v36 = v42;
      v32(v42, v33, v35);
      return (*(v44 + 56))(v36, 0, 1, v35);
    }

    v12 += 2;
    --v11;
  }

  while (v11);
  v19 = &off_1F2722780;
  v20 = 22;
  do
  {
    v22 = *(v19 - 1);
    v21 = *v19;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v23 = sub_1B0C92300();
    v24 = sub_1B0E44AC8();

    [v23 setDateFormat_];

    [v23 setLenient_];
    v25 = sub_1B0E44AC8();
    v26 = [v23 dateFromString_];

    if (v26)
    {
      v31 = v39;
      sub_1B0E430D8();

      v32 = *(v44 + 32);
      v33 = v38;
      goto LABEL_12;
    }

    v19 += 2;
    --v20;
  }

  while (v20);
  v27 = v43;
  v28 = *(v44 + 56);
  v29 = v42;

  return v28(v29, 1, 1, v27);
}

uint64_t InternetMessageDate.init(from:calendar:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C90F74(a2);
  v5 = sub_1B0E43228();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_1B0E43108();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v4;
}

uint64_t sub_1B0C90F74(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0E45278();
  *(v2 + 16) = 80;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  sub_1B0C91094(a1, &v7);
  sub_1B0C916D0(v2 + 32, &v7, 0x50uLL, &v6);
  if (v6 && *(v2 + 16) >= v6)
  {
    v3 = sub_1B0E44D98();

    v4 = *MEMORY[0x1E69E9840];
    return v3;
  }

  else
  {
    result = sub_1B0E465B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0C91094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C58, &qword_1B0E9B050);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = &v51 - v5;
  v6 = sub_1B0E43358();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E42B78();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5FA8, &qword_1B0EDF688);
  v13 = sub_1B0E43218();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B0EDF670;
  v18 = *(v14 + 104);
  v18(v17 + v16, *MEMORY[0x1E6969A98], v13);
  v18(v17 + v16 + v15, *MEMORY[0x1E6969A88], v13);
  v18(v17 + v16 + 2 * v15, *MEMORY[0x1E6969A58], v13);
  v18(v17 + v16 + 3 * v15, *MEMORY[0x1E6969A48], v13);
  v18(v17 + v16 + 4 * v15, *MEMORY[0x1E6969A78], v13);
  v18(v17 + v16 + 5 * v15, *MEMORY[0x1E6969A68], v13);
  v18(v17 + v16 + 6 * v15, *MEMORY[0x1E6969AB0], v13);
  v18(v17 + v16 + 7 * v15, *MEMORY[0x1E6969AC0], v13);
  sub_1B0C926C8(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B0E431D8();

  result = sub_1B0E42B38();
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = result;
  }

  if (v21 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v21 > 0x7FFFFFFF)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = sub_1B0E42B28();
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = result;
  }

  if (v23 < 0xFFFFFFFF80000000)
  {
    goto LABEL_44;
  }

  if (v23 > 0x7FFFFFFF)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = sub_1B0E42AF8();
  if (v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = result;
  }

  if (v25 < 0xFFFFFFFF80000000)
  {
    goto LABEL_46;
  }

  if (v25 > 0x7FFFFFFF)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  result = sub_1B0E42AE8();
  if (v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = result;
  }

  if (v27 < 0xFFFFFFFF80000000)
  {
    goto LABEL_48;
  }

  if (v27 > 0x7FFFFFFF)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  result = sub_1B0E42B18();
  if (v28)
  {
    v29 = 1;
  }

  else
  {
    v29 = result;
  }

  if (v29 < 0xFFFFFFFF80000000)
  {
    goto LABEL_50;
  }

  if (v29 > 0x7FFFFFFF)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v30 = v29 - 1;
  if (__OFSUB__(v29, 1))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  result = sub_1B0E42B08();
  v32 = 100;
  if ((v31 & 1) == 0)
  {
    v32 = result;
  }

  if (v32 < 0xFFFFFFFF80000000)
  {
    goto LABEL_53;
  }

  if (v32 > 0x7FFFFFFF)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v33 = v32 - 1900;
  if (__OFSUB__(v32, 1900))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = sub_1B0E42B48();
  if (v34)
  {
    v35 = 1;
  }

  else
  {
    v35 = result;
  }

  if (v35 < 0xFFFFFFFF80000000)
  {
    goto LABEL_56;
  }

  if (v35 > 0x7FFFFFFF)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
LABEL_58:
    __break(1u);
    return result;
  }

  v53 = v37;
  LODWORD(v59) = v33;
  v38 = v58;
  sub_1B0E42B68();
  v39 = v38;
  v40 = v56;
  v41 = v38;
  v42 = v57;
  if ((*(v56 + 48))(v41, 1, v57) == 1)
  {
    (*(v54 + 8))(v12, v55);
    result = sub_1B0398EFC(v39, &qword_1EB6E1C58, &qword_1B0E9B050);
    v43 = 0;
  }

  else
  {
    v44 = *(v40 + 32);
    v51 = v27;
    v45 = v25;
    v46 = v23;
    v47 = v30;
    v48 = v21;
    v21 = v52;
    v44(v52, v39, v42);
    v43 = sub_1B0E43328();
    v49 = v21;
    LODWORD(v21) = v48;
    v30 = v47;
    LODWORD(v23) = v46;
    LODWORD(v25) = v45;
    LODWORD(v27) = v51;
    (*(v40 + 8))(v49, v42);
    result = (*(v54 + 8))(v12, v55);
  }

  *a2 = v21;
  *(a2 + 4) = v23;
  *(a2 + 8) = v25;
  *(a2 + 12) = v27;
  v50 = v59;
  *(a2 + 16) = v30;
  *(a2 + 20) = v50;
  *(a2 + 24) = v53;
  *(a2 + 28) = 0xFFFFFFFF00000000;
  *(a2 + 36) = 0;
  *(a2 + 40) = v43;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_1B0C916D0@<X0>(uint64_t result@<X0>, tm *a2@<X2>, size_t a3@<X1>, uint64_t *a4@<X8>)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v6 = result;
  if (qword_1EB6E5CD0 != -1)
  {
    swift_once();
  }

  result = strftime_l(v6, a3, "%a, %d %b %Y %H:%M:%S %z", a2, qword_1EB6E5FA0);
  if (!result)
  {
    goto LABEL_11;
  }

  v8 = result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
  }

  else
  {
    v9 = a2->tm_gmtoff / 60 % 60 + 100 * (a2->tm_gmtoff / 3600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55C8, &qword_1B0ED3128);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B0EC1E70;
    v10 = MEMORY[0x1E69E7358];
    *(result + 56) = MEMORY[0x1E69E72F0];
    *(result + 64) = v10;
    if (v9 >= 0xFFFFFFFF80000000)
    {
      if (v9 <= 0x7FFFFFFF)
      {
        *(result + 32) = v9;
        v11 = sub_1B0E43B28();

        v12 = v8 + v11;
        if (!__OFADD__(v8, v11))
        {
          goto LABEL_12;
        }

        __break(1u);
LABEL_11:
        v12 = 0;
LABEL_12:
        *a4 = v12;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

locale_t sub_1B0C91878()
{
  result = newlocale(63, 0, 0);
  if (result)
  {
    qword_1EB6E5FA0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0C918AC@<X0>(const char *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v56 = *MEMORY[0x1E69E9840];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v3 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v37 - v4;
  v6 = sub_1B0E43108();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v48 = (v14 + 56);
  v43 = (v14 + 8);
  v44 = (v14 + 32);
  v46 = (v14 + 48);
  v15 = 13;
  v16 = &off_1F2722690;
  v45 = a1;
  v47 = &v37 - v17;
  while (1)
  {
    v18 = *(v16 - 1);
    v19 = *v16;
    MEMORY[0x1EEE9AC00](v13);
    *(&v37 - 4) = a1;
    *(&v37 - 3) = v18;
    *(&v37 - 2) = v19;
    if ((v19 & 0x1000000000000000) != 0)
    {
      goto LABEL_27;
    }

    if ((v19 & 0x2000000000000000) != 0)
    {
      *v53 = v18;
      v54 = v19 & 0xFFFFFFFFFFFFFFLL;
      memset(&v55, 0, sizeof(v55));
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v23 = strptime_l(a1, v53, &v55, 0);
      if (!v23)
      {
LABEL_17:
        v22 = 1;
LABEL_23:
        (*v48)(v5, v22, 1, v6);

        a1 = v45;
        goto LABEL_24;
      }

      v24 = v23;
      v42 = &v37;
      v25 = v12;
      mktime(&v55);
      v26 = v41;
      sub_1B0E430A8();
      if (*v24)
      {
        v51 = v18;
        v52 = v19;
        v49 = 31269;
        v50 = 0xE200000000000000;
        sub_1B07C7F5C();
        if ((sub_1B0E45F58() & 1) == 0 || (sub_1B0C92128() & 1) == 0)
        {
          (*v43)(v41, v6);
          v22 = 1;
LABEL_22:
          v12 = v25;
          goto LABEL_23;
        }

        (*v44)(v5, v41, v6);
      }

      else
      {
        (*v44)(v5, v26, v6);
      }

      v22 = 0;
      goto LABEL_22;
    }

    if ((v18 & 0x1000000000000000) != 0)
    {
      memset(&v55, 0, sizeof(v55));
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v20 = strptime_l(a1, ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32), &v55, 0);
      if (v20)
      {
        v21 = v20;
        mktime(&v55);
        sub_1B0E430A8();
        if (!*v21 || (*v53 = v18, v54 = v19, v51 = 31269, v52 = 0xE200000000000000, sub_1B07C7F5C(), (sub_1B0E45F58() & 1) != 0) && (sub_1B0C92128() & 1) != 0)
        {
          (*v44)(v5, v12, v6);
          v22 = 0;
        }

        else
        {
          (*v43)(v12, v6);
          v22 = 1;
        }

        goto LABEL_23;
      }

      goto LABEL_17;
    }

LABEL_27:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v31 = v40;
    sub_1B0E46258();
    v40 = v31;

LABEL_24:
    v27 = (*v46)(v5, 1, v6);
    v28 = v47;
    if (v27 != 1)
    {
      break;
    }

    v13 = sub_1B0398EFC(v5, &unk_1EB6E2990, &qword_1B0E9B060);
LABEL_3:
    v16 += 2;
    if (!--v15)
    {
      v32 = 1;
      v33 = v39;
      goto LABEL_30;
    }
  }

  v29 = *v44;
  (*v44)(v47, v5, v6);
  sub_1B0E43028();
  if (v30 <= -900000000.0)
  {
    v13 = (*v43)(v28, v6);
    goto LABEL_3;
  }

  v34 = v39;
  v29(v39, v28, v6);
  v33 = v34;
  v32 = 0;
LABEL_30:
  result = (*v48)(v33, v32, 1, v6);
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C91E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v3 = v5;
    return sub_1B0C918AC(v3, a3);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    return sub_1B0E46258();
  }

  v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_1B0C918AC(v3, a3);
}

uint64_t sub_1B0C91F14@<X0>(const char *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = sub_1B0E43108();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v21, 0, sizeof(v21));
  v15 = strptime_l(a2, a1, &v21, 0);
  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = v15;
  mktime(&v21);
  sub_1B0E430A8();
  if (*v16)
  {
    v20[2] = a3;
    v20[3] = a4;
    v20[0] = 31269;
    v20[1] = 0xE200000000000000;
    sub_1B07C7F5C();
    if ((sub_1B0E45F58() & 1) == 0 || (sub_1B0C92128() & 1) == 0)
    {
      (*(v11 + 8))(v14, v10);
LABEL_7:
      v17 = 1;
      goto LABEL_8;
    }
  }

  (*(v11 + 32))(a5, v14, v10);
  v17 = 0;
LABEL_8:
  result = (*(v11 + 56))(a5, v17, 1, v10);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1B0C92128()
{
  v0 = sub_1B0E429A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44D88();
  v5 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v6 = sub_1B0E44AC8();

  v7 = [v5 initWithString_];

  sub_1B0E45D28();

  sub_1B0E45D08();
  if (!v8)
  {
    goto LABEL_5;
  }

  sub_1B0E42978();
  sub_1B0E45D18();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v4, v0);
  if (!v10)
  {
    goto LABEL_5;
  }

  sub_1B0E45D08();
  if (v12)
  {

    sub_1B0E42988();
    sub_1B0E45D18();

    v11(v4, v0);
    v13 = [v7 isAtEnd];

    return v13;
  }

  else
  {
LABEL_5:

    return 0;
  }
}

id sub_1B0C92300()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C58, &qword_1B0E9B050);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v24 - v2;
  v4 = sub_1B0E431A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BD84D8(0, &qword_1EB6DA598, 0x1E696AEC0);
  v9 = sub_1B0E45CE8();
  v10 = objc_opt_self();
  v11 = [v10 currentThread];
  v12 = [v11 threadDictionary];

  v13 = v9;
  v14 = [v12 objectForKeyedSubscript_];

  if (v14)
  {
    sub_1B0E45FE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (*(&v26 + 1))
  {
    sub_1B0BD84D8(0, &qword_1EB6DAB68, 0x1E696AB78);
    if (swift_dynamicCast())
    {

      return v24[1];
    }
  }

  else
  {
    sub_1B0398EFC(v27, &qword_1EB6E29B0, &qword_1B0E9F008);
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1B0E43168();
  v16 = sub_1B0E43178();
  (*(v5 + 8))(v8, v4);
  [v15 setLocale_];

  sub_1B0E43338();
  v17 = sub_1B0E43358();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v3, 1, v17) != 1)
  {
    v19 = sub_1B0E43348();
    (*(v18 + 8))(v3, v17);
  }

  [v15 setTimeZone_];

  v20 = [v10 currentThread];
  v21 = [v20 threadDictionary];

  v22 = v13;
  [v21 setObject:v15 forKeyedSubscript:v22];

  return v15;
}

uint64_t sub_1B0C926C8(uint64_t a1)
{
  v2 = sub_1B0E43218();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5FB0, &unk_1B0EDF690);
    v10 = sub_1B0E46228();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1B0C929C0(&qword_1EB6DECD8);
      v18 = sub_1B0E447B8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1B0C929C0(&qword_1EB6DECD0);
          v25 = sub_1B0E44A28();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B0C929C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B0E43218();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s16IMAP2Persistence11EnvironmentV24AvailableFileSystemSpaceO9hashValueSivg_0(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t Message.streamWithConvertedLineEndings(input:output:ensureTrailingNewline:_:)(unsigned int a1, int a2, char a3, void (*a4)(char *, char *), uint64_t a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v11 = sub_1B0E443C8();
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Message.Data(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = a1;
  v48 = a2;
  v58[16] = a1;
  v58[17] = a2;
  v19 = a3;
  v58[18] = a3;
  v49 = a4;
  v50 = a5;
  v59 = a4;
  v60 = a5;
  result = Message.isEmpty.getter();
  if ((result & 1) == 0)
  {
    sub_1B0C934C4(v5, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v51;
      v22 = (*(v51 + 32))(v14, v18, v11);
      MEMORY[0x1EEE9AC00](v22);
      *(&v46 - 4) = v14;
      *(&v46 - 3) = sub_1B0C92EA0;
      v45 = v58;
      sub_1B0E44328();
      result = (*(v21 + 8))(v14, v11);
      goto LABEL_36;
    }

    v24 = *v18;
    v23 = v18[1];
    v25 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v25 != 2)
      {
LABEL_35:
        result = sub_1B0391D50(v24, v23);
        goto LABEL_36;
      }

      v33 = *(v24 + 16);
      v34 = *(v24 + 24);
      v35 = sub_1B0E42A98();
      if (v35)
      {
        v36 = sub_1B0E42AC8();
        if (__OFSUB__(v33, v36))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
        }

        v35 += v33 - v36;
      }

      v37 = __OFSUB__(v34, v33);
      v38 = v34 - v33;
      if (v37)
      {
        goto LABEL_38;
      }

      v39 = sub_1B0E42AB8();
      if (v39 >= v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = v39;
      }

      if (v35)
      {
        v26 = v40;
      }

      else
      {
        v26 = 0;
      }

      if ((v26 & 0x8000000000000000) == 0)
      {
LABEL_31:
        v43 = v40 + v35;
        if (!v35)
        {
          v43 = 0;
        }

        v45 = v43;
        v27 = v19 & 1;
        v29 = v47;
        v30 = v48;
        v31 = v49;
        v32 = v50;
        v28 = v35;
        goto LABEL_34;
      }

      __break(1u);
    }

    else if (!v25)
    {
      v52 = *v18;
      v53 = v23;
      v54 = BYTE2(v23);
      v55 = BYTE3(v23);
      v26 = BYTE6(v23);
      v56 = BYTE4(v23);
      v57 = BYTE5(v23);
      v45 = &v52 + BYTE6(v23);
      v27 = a3 & 1;
      v28 = &v52;
      v29 = v47;
      v30 = v48;
      v31 = v49;
      v32 = v50;
LABEL_34:
      sub_1B0C92F04(v29, v30, v27, v31, v32, 0, v26, v28, v45);
      goto LABEL_35;
    }

    if (v24 >> 32 >= v24)
    {
      v35 = sub_1B0E42A98();
      if (v35)
      {
        v41 = sub_1B0E42AC8();
        if (__OFSUB__(v24, v41))
        {
          goto LABEL_41;
        }

        v35 += v24 - v41;
      }

      v42 = sub_1B0E42AB8();
      if (v42 >= (v24 >> 32) - v24)
      {
        v40 = (v24 >> 32) - v24;
      }

      else
      {
        v40 = v42;
      }

      if (v35)
      {
        v26 = v40;
      }

      else
      {
        v26 = 0;
      }

      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_39;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_36:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1B0C92EA0(char *result, uint64_t a2)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    return sub_1B0C92F04(*(v2 + 16), *(v2 + 17), *(v2 + 18), *(v2 + 24), *(v2 + 32), 0, v3, result, a2);
  }

  __break(1u);
  return result;
}

char *sub_1B0C92F04(char *result, char a2, char a3, void (*a4)(char *, char *), uint64_t a5, char *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a6 == a7)
  {
    goto LABEL_120;
  }

  v11 = a6;
  v15 = result;
  if (!a2)
  {
    goto LABEL_59;
  }

  if (a2 != 1)
  {
    v46 = 10;
    while (1)
    {
      if (v15 > 1u)
      {
        if (v15 == 2)
        {
          if (!a8)
          {
            goto LABEL_115;
          }

          v36 = &v11[a8];
          result = memchr(&v11[a8], 10, a7 - v11);
          if (!result)
          {
            goto LABEL_115;
          }

          v37 = result - v36;
          if (result - v36 < 0)
          {
            goto LABEL_115;
          }

          v38 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_130;
          }

          if (a7 - v11 < v38)
          {
            goto LABEL_115;
          }

          v34 = &v11[v37];
          if (__OFADD__(v37, v11))
          {
            goto LABEL_138;
          }

          v35 = &v11[v38];
          if (__OFADD__(v38, v11))
          {
            goto LABEL_148;
          }

          if (v38 < v37 || v35 < v34)
          {
            goto LABEL_156;
          }
        }

        else
        {
          if (!a8)
          {
            goto LABEL_115;
          }

          v42 = &v11[a8];
          result = memchr(&v11[a8], 10, a7 - v11);
          if (!result)
          {
            goto LABEL_115;
          }

          v43 = result - v42;
          if (result - v42 < 0)
          {
            goto LABEL_115;
          }

          v44 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_134;
          }

          if (a7 - v11 < v44)
          {
            goto LABEL_115;
          }

          v34 = &v11[v43];
          if (__OFADD__(v43, v11))
          {
            goto LABEL_136;
          }

          v35 = &v11[v44];
          if (__OFADD__(v44, v11))
          {
            goto LABEL_146;
          }

          if (v44 < v43 || v35 < v34)
          {
            goto LABEL_154;
          }

          if (v11 < v34)
          {
            if (v34 > a7)
            {
              goto LABEL_160;
            }

            if (v34[a8 - 1] == 13)
            {
              --v34;
            }
          }
        }
      }

      else if (v15)
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v39 = &v11[a8];
        result = memchr(&v11[a8], 13, a7 - v11);
        if (!result)
        {
          goto LABEL_115;
        }

        v40 = result - v39;
        if (result - v39 < 0)
        {
          goto LABEL_115;
        }

        v41 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_132;
        }

        if (a7 - v11 < v41)
        {
          goto LABEL_115;
        }

        v34 = &v11[v40];
        if (__OFADD__(v40, v11))
        {
          goto LABEL_140;
        }

        v35 = &v11[v41];
        if (__OFADD__(v41, v11))
        {
          goto LABEL_144;
        }

        if (v41 < v40 || v35 < v34)
        {
          goto LABEL_152;
        }
      }

      else
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v31 = &v11[a8];
        result = memmem(&v11[a8], a7 - v11, "\r\n", 2uLL);
        if (!result)
        {
          goto LABEL_115;
        }

        v32 = result - v31;
        if (result - v31 < 0)
        {
          goto LABEL_115;
        }

        v33 = v32 + 2;
        if (__OFADD__(v32, 2))
        {
          goto LABEL_128;
        }

        if (a7 - v11 < v33)
        {
          goto LABEL_115;
        }

        v34 = &v11[v32];
        if (__OFADD__(v32, v11))
        {
          goto LABEL_142;
        }

        v35 = &v11[v33];
        if (__OFADD__(v33, v11))
        {
          goto LABEL_150;
        }

        if (v33 < v32 || v35 < v34)
        {
          goto LABEL_158;
        }
      }

      if (v34 < v11)
      {
        goto LABEL_122;
      }

      if (v34 > a7)
      {
        goto LABEL_124;
      }

      if (v34 != v11)
      {
        a4(&v11[a8], &v34[a8]);
      }

      result = (a4)(&v46, &v47);
      if (v35 > a7)
      {
        goto LABEL_126;
      }

      v30 = v35 < v11;
      v11 = v35;
      if (v30)
      {
        __break(1u);
LABEL_115:
        if (a7 != v11)
        {
          if (a8)
          {
            result = (a4)(&v11[a8], &a7[a8]);
          }

          if (a3)
          {
            result = (a4)(&v46, &v47);
          }
        }

        goto LABEL_120;
      }
    }
  }

  v46 = 13;
  do
  {
    if (v15 > 1u)
    {
      if (v15 == 2)
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v21 = &v11[a8];
        result = memchr(&v11[a8], 10, a7 - v11);
        if (!result)
        {
          goto LABEL_115;
        }

        v22 = result - v21;
        if (result - v21 < 0)
        {
          goto LABEL_115;
        }

        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_129;
        }

        if (a7 - v11 < v23)
        {
          goto LABEL_115;
        }

        v19 = &v11[v22];
        if (__OFADD__(v22, v11))
        {
          goto LABEL_137;
        }

        v20 = &v11[v23];
        if (__OFADD__(v23, v11))
        {
          goto LABEL_147;
        }

        if (v23 < v22 || v20 < v19)
        {
          goto LABEL_155;
        }
      }

      else
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v27 = &v11[a8];
        result = memchr(&v11[a8], 10, a7 - v11);
        if (!result)
        {
          goto LABEL_115;
        }

        v28 = result - v27;
        if (result - v27 < 0)
        {
          goto LABEL_115;
        }

        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_133;
        }

        if (a7 - v11 < v29)
        {
          goto LABEL_115;
        }

        v19 = &v11[v28];
        if (__OFADD__(v28, v11))
        {
          goto LABEL_135;
        }

        v20 = &v11[v29];
        if (__OFADD__(v29, v11))
        {
          goto LABEL_145;
        }

        if (v29 < v28 || v20 < v19)
        {
          goto LABEL_153;
        }

        if (v11 < v19)
        {
          if (v19 > a7)
          {
            goto LABEL_159;
          }

          if (v19[a8 - 1] == 13)
          {
            --v19;
          }
        }
      }
    }

    else if (v15)
    {
      if (!a8)
      {
        goto LABEL_115;
      }

      v24 = &v11[a8];
      result = memchr(&v11[a8], 13, a7 - v11);
      if (!result)
      {
        goto LABEL_115;
      }

      v25 = result - v24;
      if (result - v24 < 0)
      {
        goto LABEL_115;
      }

      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_131;
      }

      if (a7 - v11 < v26)
      {
        goto LABEL_115;
      }

      v19 = &v11[v25];
      if (__OFADD__(v25, v11))
      {
        goto LABEL_139;
      }

      v20 = &v11[v26];
      if (__OFADD__(v26, v11))
      {
        goto LABEL_143;
      }

      if (v26 < v25 || v20 < v19)
      {
        goto LABEL_151;
      }
    }

    else
    {
      if (!a8)
      {
        goto LABEL_115;
      }

      v16 = &v11[a8];
      result = memmem(&v11[a8], a7 - v11, "\r\n", 2uLL);
      if (!result)
      {
        goto LABEL_115;
      }

      v17 = result - v16;
      if (result - v16 < 0)
      {
        goto LABEL_115;
      }

      v18 = v17 + 2;
      if (__OFADD__(v17, 2))
      {
        goto LABEL_127;
      }

      if (a7 - v11 < v18)
      {
        goto LABEL_115;
      }

      v19 = &v11[v17];
      if (__OFADD__(v17, v11))
      {
        goto LABEL_141;
      }

      v20 = &v11[v18];
      if (__OFADD__(v18, v11))
      {
        goto LABEL_149;
      }

      if (v18 < v17 || v20 < v19)
      {
        goto LABEL_157;
      }
    }

    if (v19 < v11)
    {
      __break(1u);
LABEL_122:
      __break(1u);
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
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
    }

    if (v19 > a7)
    {
      goto LABEL_123;
    }

    if (v19 != v11)
    {
      a4(&v11[a8], &v19[a8]);
    }

    result = (a4)(&v46, &v47);
    if (v20 > a7)
    {
      goto LABEL_125;
    }

    v30 = v20 < v11;
    v11 = v20;
  }

  while (!v30);
  __break(1u);
LABEL_59:
  result = sub_1B0C9365C(v15, a3 & 1, v11, a7, a8, a9, a4, a5, "\r\n", "");
LABEL_120:
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C934C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message.Data(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C93528(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  v6 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  return v3(a1, a1 + v6);
}

unint64_t sub_1B0C93590()
{
  result = qword_1EB6E5FB8;
  if (!qword_1EB6E5FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5FB8);
  }

  return result;
}

unint64_t sub_1B0C935E8()
{
  result = qword_1EB6E5FC0;
  if (!qword_1EB6E5FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5FC0);
  }

  return result;
}

char *sub_1B0C9365C(char *result, char a2, char *a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, char *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3 != a4)
  {
    v13 = a3;
    v14 = result;
    do
    {
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          if (!a5)
          {
            goto LABEL_57;
          }

          v20 = a5 + v13;
          result = memchr((a5 + v13), 10, &a4[-v13]);
          if (!result)
          {
            goto LABEL_57;
          }

          v21 = &result[-v20];
          if (&result[-v20] < 0)
          {
            goto LABEL_57;
          }

          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_67;
          }

          if (&a4[-v13] < v22)
          {
            goto LABEL_57;
          }

          v18 = &v21[v13];
          if (__OFADD__(v21, v13))
          {
            goto LABEL_71;
          }

          v19 = &v22[v13];
          if (__OFADD__(v22, v13))
          {
            goto LABEL_76;
          }

          if (v22 < v21 || v19 < v18)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (!a5)
          {
            goto LABEL_57;
          }

          v26 = a5 + v13;
          result = memchr((a5 + v13), 10, &a4[-v13]);
          if (!result)
          {
            goto LABEL_57;
          }

          v27 = &result[-v26];
          if (&result[-v26] < 0)
          {
            goto LABEL_57;
          }

          v28 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_69;
          }

          if (&a4[-v13] < v28)
          {
            goto LABEL_57;
          }

          v18 = &v27[v13];
          if (__OFADD__(v27, v13))
          {
            goto LABEL_70;
          }

          v19 = &v28[v13];
          if (__OFADD__(v28, v13))
          {
            goto LABEL_75;
          }

          if (v28 < v27 || v19 < v18)
          {
            goto LABEL_79;
          }

          if (v13 < v18)
          {
            if (v18 > a4)
            {
              goto LABEL_82;
            }

            if (v18[a5 - 1] == 13)
            {
              --v18;
            }
          }
        }
      }

      else if (v14)
      {
        if (!a5)
        {
          goto LABEL_57;
        }

        v23 = a5 + v13;
        result = memchr((a5 + v13), 13, &a4[-v13]);
        if (!result)
        {
          goto LABEL_57;
        }

        v24 = &result[-v23];
        if (&result[-v23] < 0)
        {
          goto LABEL_57;
        }

        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_68;
        }

        if (&a4[-v13] < v25)
        {
          goto LABEL_57;
        }

        v18 = &v24[v13];
        if (__OFADD__(v24, v13))
        {
          goto LABEL_72;
        }

        v19 = &v25[v13];
        if (__OFADD__(v25, v13))
        {
          goto LABEL_74;
        }

        if (v25 < v24 || v19 < v18)
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (!a5)
        {
          goto LABEL_57;
        }

        v15 = a5 + v13;
        result = memmem((a5 + v13), &a4[-v13], "\r\n", 2uLL);
        if (!result)
        {
          goto LABEL_57;
        }

        v16 = &result[-v15];
        if (&result[-v15] < 0)
        {
          goto LABEL_57;
        }

        v17 = v16 + 2;
        if (__OFADD__(v16, 2))
        {
          goto LABEL_66;
        }

        if (&a4[-v13] < v17)
        {
          goto LABEL_57;
        }

        v18 = &v16[v13];
        if (__OFADD__(v16, v13))
        {
          goto LABEL_73;
        }

        v19 = &v17[v13];
        if (__OFADD__(v17, v13))
        {
          goto LABEL_77;
        }

        if (v17 < v16 || v19 < v18)
        {
          goto LABEL_81;
        }
      }

      if (v18 < v13)
      {
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
LABEL_75:
        __break(1u);
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
        return result;
      }

      if (v18 > a4)
      {
        goto LABEL_64;
      }

      if (v18 != v13)
      {
        a7(a5 + v13, &v18[a5]);
      }

      result = (a7)(a9, a10);
      if (v19 > a4)
      {
        goto LABEL_65;
      }

      v29 = v19 < v13;
      v13 = v19;
    }

    while (!v29);
    __break(1u);
LABEL_57:
    if (a4 != v13)
    {
      if (a5)
      {
        result = (a7)(a5 + v13, &a4[a5]);
      }

      if (a2)
      {
        return (a7)(a9, a10);
      }
    }
  }

  return result;
}

uint64_t static ListID.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1B0C939A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = a2 - result;
  }

  else
  {
    v2 = 0;
  }

  if (v2 < 0)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = 0;
  v5 = v2 - 1;
  while (1)
  {
LABEL_6:
    if (v4 == v2)
    {
LABEL_15:
      v9 = 1;
      v7 = v2;
      if (v2 < v4)
      {
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
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }
    }

    else
    {
      v6 = v2 <= v4 ? v4 : v2;
      v7 = v4;
      while (1)
      {
        if (v6 == v7)
        {
          __break(1u);
          goto LABEL_55;
        }

        v8 = *(result + v7);
        if (v8 == 60 || v8 == 34)
        {
          break;
        }

        if (v2 == ++v7)
        {
          goto LABEL_15;
        }
      }

      v9 = 0;
      if (v7 < v4)
      {
        goto LABEL_55;
      }
    }

    if (v2 < v7)
    {
      goto LABEL_56;
    }

    if (v9)
    {
      return 0;
    }

    if (v7 >= v2)
    {
      goto LABEL_57;
    }

    v10 = *(result + v7);
    if (v10 != 34)
    {
      break;
    }

    v4 = v2;
    v11 = v7;
    if (v7 + 1 != v2)
    {
      while (1)
      {
        if (v5 == v11)
        {
          __break(1u);
          goto LABEL_51;
        }

        if (*(result + 1 + v11) == 34)
        {
          break;
        }

        if (v5 == ++v11)
        {
          v4 = v2;
          goto LABEL_6;
        }
      }

      if (v11 < v7)
      {
        goto LABEL_60;
      }

      v4 = v11 + 2;
    }
  }

  if (v10 != 60)
  {
    return 0;
  }

  v12 = v7 + 1;
  v13 = v7 + 1;
  while (1)
  {
    if (v2 == v13)
    {
      goto LABEL_38;
    }

    if (*(result + v13) == 62)
    {
      break;
    }

    if (__OFADD__(v13, 1))
    {
      goto LABEL_58;
    }

    if (v2 < v13 + 1)
    {
      goto LABEL_59;
    }

    v14 = v13 + 1 <= v13;
    ++v13;
    if (v14)
    {
      __break(1u);
LABEL_38:
      v15 = v2;
      goto LABEL_40;
    }
  }

  v15 = v13;
LABEL_40:
  if (v15 <= v7)
  {
    goto LABEL_64;
  }

  result = 0;
  if (v12 != v15 && v2 != v13)
  {
    if (v15 >= v2)
    {
      goto LABEL_65;
    }

    if (*(v3 + v15) == 62)
    {
      while (v12 < v15)
      {
        if (v12 >= v2)
        {
          goto LABEL_62;
        }

        if (*(v3 + v12) - 127 < 0xFFFFFFA2)
        {
LABEL_51:

          return 0;
        }

        ++v12;
        v16 = sub_1B0E44C78();
        MEMORY[0x1B2726E70](v16);

        if (v15 == v12)
        {
          return 0;
        }
      }

      goto LABEL_61;
    }

    return 0;
  }

  return result;
}

uint64_t ListID.hashValue.getter()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0C93C80()
{
  result = qword_1EB6DB8C0;
  if (!qword_1EB6DB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB8C0);
  }

  return result;
}

uint64_t sub_1B0C93CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  isStackAllocationSafe = a2 - a1;
  if (!isStackAllocationSafe)
  {
    goto LABEL_2;
  }

  v10 = a4 - a3;
  if (!a3)
  {
    v10 = 0;
  }

  v11 = a1;
  while (1)
  {
    if (v11 >= a2)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (a1 < 0 || v11 >= v10)
    {
      goto LABEL_25;
    }

    v12 = *(a3 + v11);
    if (v12 == 13 || v12 == 10)
    {
      break;
    }

    if (a2 == ++v11)
    {
      if (!a3)
      {
LABEL_2:
        result = MEMORY[0x1E69E7CC0];
        goto LABEL_23;
      }

      result = sub_1B03B7A3C(isStackAllocationSafe, 0);
      v14 = a2 - a1;
      if (a2 <= a1)
      {
        __break(1u);
        return result;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = result;
        memmove((result + 32), (a3 + a1), v14);
        result = v15;
        goto LABEL_23;
      }

LABEL_31:
      __break(1u);
    }
  }

  if (v10 < a2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a2 - a1 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (a2 - a1 < 1025)
  {
LABEL_21:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    result = sub_1B0C94FE4((v20 - v16), a1, a2, a3);
    if (v4)
    {
      result = swift_willThrow();
    }

    goto LABEL_23;
  }

LABEL_27:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_21;
  }

  v18 = swift_slowAlloc();
  v19 = sub_1B0C94FE4(v18, a1, a2, a3);
  result = MEMORY[0x1B272C230](v18, -1, -1);
  if (!v4)
  {
    result = v19;
  }

LABEL_23:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C93ECC(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (a2 == isStackAllocationSafe)
  {
LABEL_13:
    if (a3)
    {
      v12 = (a3 + a2);
    }

    else
    {
      v12 = 0;
    }

    if (a3)
    {
      v13 = (a3 + isStackAllocationSafe);
    }

    else
    {
      v13 = 0;
    }

    result = sub_1B0C77010(v13, v12, v20);
    if (!v6)
    {
      result = v20[0];
    }

    goto LABEL_26;
  }

  v8 = a4 - a3;
  if (!a3)
  {
    v8 = 0;
  }

  v9 = isStackAllocationSafe;
  while (1)
  {
    if (v9 >= a2)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (isStackAllocationSafe < 0 || v9 >= v8)
    {
      goto LABEL_28;
    }

    v10 = *(a3 + v9);
    if (v10 == 13 || v10 == 10)
    {
      break;
    }

    if (a2 == ++v9)
    {
      goto LABEL_13;
    }
  }

  if (v8 < a2)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = a2 - isStackAllocationSafe;
  if (a2 - isStackAllocationSafe < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v7 = isStackAllocationSafe;
  v5 = a2;
  v4 = a3;
  if (v15 >= 1025)
  {
LABEL_30:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      goto LABEL_24;
    }

    v15 = swift_slowAlloc();
    isStackAllocationSafe = sub_1B0C95098(v15, v7, v5, v4);
    if (v6)
    {
      result = MEMORY[0x1B272C230](v15, -1, -1);
      goto LABEL_26;
    }

LABEL_34:
    v18 = isStackAllocationSafe;
    MEMORY[0x1B272C230](v15, -1, -1);
    result = v18;
    goto LABEL_26;
  }

LABEL_24:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  result = sub_1B0C95098(&v20[-1] - v16, v7, v5, v4);
  if (v6)
  {
    result = swift_willThrow();
  }

LABEL_26:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C940AC(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (a2 == isStackAllocationSafe)
  {
LABEL_13:
    if (a3)
    {
      v16 = a3 + a2;
    }

    else
    {
      v16 = 0;
    }

    if (a3)
    {
      v17 = a3 + isStackAllocationSafe;
    }

    else
    {
      v17 = 0;
    }

    result = a5(v17, v16);
    goto LABEL_25;
  }

  v12 = a4 - a3;
  if (!a3)
  {
    v12 = 0;
  }

  v13 = isStackAllocationSafe;
  while (1)
  {
    if (v13 >= a2)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (isStackAllocationSafe < 0 || v13 >= v12)
    {
      goto LABEL_27;
    }

    v14 = *(a3 + v13);
    if (v14 == 13 || v14 == 10)
    {
      break;
    }

    if (a2 == ++v13)
    {
      goto LABEL_13;
    }
  }

  if (v12 < a2)
  {
    goto LABEL_28;
  }

  v11 = a2 - isStackAllocationSafe;
  if (a2 - isStackAllocationSafe < 0)
  {
    __break(1u);
  }

  v10 = isStackAllocationSafe;
  v9 = a2;
  v7 = a4;
  v8 = a3;
  v5 = a5;
  if (v11 < 1025)
  {
    goto LABEL_23;
  }

LABEL_29:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v22[0] = v6;
    v21 = swift_slowAlloc();
    sub_1B0C94C70(v21, v21 + v11, v10, v9, v8, v7, v5);
    result = MEMORY[0x1B272C230](v21, -1, -1);
    goto LABEL_25;
  }

LABEL_23:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  result = sub_1B0C94C70(v22 - v19, v22 + v11 - v19, v10, v9, v8, v7, v5);
  if (v6)
  {
    result = swift_willThrow();
  }

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0C94298(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  LODWORD(v5) = result;
  if (result <= 1u)
  {
    if (result)
    {
      goto LABEL_20;
    }

    v6 = v1[3] - v4;
    if (!v4)
    {
      v6 = 0;
    }

    if ((v2 & 0x8000000000000000) != 0 || v6 < v2)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if ((v3 & 0x8000000000000000) != 0 || v6 < v3)
    {
      goto LABEL_46;
    }

    if ((v3 - v2) < 2)
    {
      return 0;
    }

    if (v3 <= v2)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (*(v4 + v2) != 13)
    {
      return 0;
    }

    v5 = v2 + 1;
    if (v2 + 1 >= v3)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v4 = *(v4 + v5);
    if (v4 != 10)
    {
      return 0;
    }

    v2 += 2;
    if (v3 >= v2)
    {
      goto LABEL_42;
    }

    __break(1u);
  }

  if (v5 == 2)
  {
    if (v3 == v2)
    {
      return 0;
    }

    if (v3 <= v2)
    {
      __break(1u);
LABEL_20:
      if (v3 != v2)
      {
        if (v3 > v2)
        {
          if (*(v4 + v2) == 13)
          {
            goto LABEL_41;
          }

          return 0;
        }

        goto LABEL_49;
      }

      return 0;
    }

LABEL_40:
    if (*(v4 + v2) == 10)
    {
LABEL_41:
      ++v2;
      goto LABEL_42;
    }

    return 0;
  }

  v7 = v1[3] - v4;
  if (!v4)
  {
    v7 = 0;
  }

  if ((v2 & 0x8000000000000000) != 0 || v7 < v2)
  {
    goto LABEL_45;
  }

  if ((v3 & 0x8000000000000000) != 0 || v7 < v3)
  {
    goto LABEL_47;
  }

  if ((v3 - v2) < 2)
  {
    if (v3 - v2 != 1)
    {
      return 0;
    }

LABEL_39:
    if (v3 > v2)
    {
      goto LABEL_40;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v3 <= v2)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (*(v4 + v2) != 13)
  {
    goto LABEL_39;
  }

  if (v2 + 1 < v3)
  {
    if (*(v4 + v2 + 1) != 10)
    {
      goto LABEL_39;
    }

    v2 += 2;
    if (v3 < v2)
    {
      __break(1u);
      goto LABEL_39;
    }

LABEL_42:
    *v1 = v2;
    return 1;
  }

LABEL_53:
  __break(1u);
  return result;
}

char *sub_1B0C94424(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return sub_1B0C9456C("\r\n", 2uLL, a2, a3, a4);
    }

    v6 = 13;
    return sub_1B0C94618(v6, a2, a3, a4);
  }

  v6 = 10;
  if (v4 == 2)
  {
    return sub_1B0C94618(v6, a2, a3, a4);
  }

  result = sub_1B0C94618(0xAu, a2, a3, a4);
  if ((v11 & 1) == 0 && result > a2)
  {
    if (result > a3)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    if (result[a4 - 1] == 13)
    {
      if (v10 >= (result - 1))
      {
        return --result;
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1B0C944F8(unsigned __int8 a1)
{
  result = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *v1;
  if (*v1 != v4)
  {
    if (v4 <= result)
    {
      v8 = *v1;
    }

    else
    {
      v8 = v1[1];
    }

    v7 = *v1;
    while (1)
    {
      if (v8 == v7)
      {
        __break(1u);
        goto LABEL_14;
      }

      if (*(v5 + v7) == a1)
      {
        break;
      }

      *v1 = ++v7;
      v1[1] = v4;
      v1[2] = v5;
      if (v4 == v7)
      {
        v7 = v4;
        break;
      }
    }

    if (v7 >= result)
    {
      goto LABEL_11;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_11:
  if (v4 < v7)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

char *sub_1B0C9456C(void *__little, size_t __little_len, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  v7 = a5 + a3;
  v8 = a4 - a3;
  result = memmem((a5 + a3), a4 - a3, __little, __little_len);
  if (!result)
  {
    return result;
  }

  v10 = &result[-v7];
  if (&result[-v7] < 0)
  {
    return 0;
  }

  v11 = &v10[__little_len];
  if (__OFADD__(v10, __little_len))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 < v11)
  {
    return 0;
  }

  result = &v10[a3];
  if (__OFADD__(v10, a3))
  {
    goto LABEL_14;
  }

  if (__OFADD__(v11, a3))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v11 < v10 || &v11[a3] < result)
  {
    goto LABEL_16;
  }

  return result;
}

char *sub_1B0C94618(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a4 + a2;
  v6 = a3 - a2;
  result = memchr((a4 + a2), a1, a3 - a2);
  if (!result)
  {
    return result;
  }

  v8 = &result[-v5];
  if (&result[-v5] < 0)
  {
    return 0;
  }

  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 < v9)
  {
    return 0;
  }

  result = &v8[a2];
  if (__OFADD__(v8, a2))
  {
    goto LABEL_14;
  }

  if (__OFADD__(v9, a2))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v9 < v8 || &v9[a2] < result)
  {
    goto LABEL_16;
  }

  return result;
}

char *sub_1B0C946BC(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      v7 = "\r\n\r\n";
      v8 = 4;
      return sub_1B0C9456C(v7, v8, a2, a3, a4);
    }

    v7 = "\r\r";
LABEL_7:
    v8 = 2;
    return sub_1B0C9456C(v7, v8, a2, a3, a4);
  }

  if (a1 == 2)
  {
    v7 = "\n\n";
    goto LABEL_7;
  }

  if (!a4)
  {
    return 0;
  }

  v10 = a4 + a2;
  v11 = a3 - a2;
  result = memchr((a4 + a2), 10, a3 - a2);
  if (!result)
  {
    return result;
  }

  v13 = &result[-v10];
  if (&result[-v10] < 0)
  {
    return 0;
  }

  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v11 < v14)
  {
    return 0;
  }

  v15 = &v13[a2];
  if (__OFADD__(v13, a2))
  {
    goto LABEL_48;
  }

  v16 = &v14[a2];
  if (__OFADD__(v14, a2))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v14 < v13 || v16 < v15)
  {
    goto LABEL_50;
  }

  if (v15 > a2)
  {
    if (v15 > a3)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (*(a4 + v15 - 1) == 13)
    {
      --v15;
    }
  }

  if (v16 > a3)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v16 < a2)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    if (v12 >= result && v12 <= a3)
    {
      if (v12 >= v16)
      {
        return result;
      }

LABEL_54:
      __break(1u);
      return result;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  while (1)
  {
    v17 = v15;
    v18 = a4 + v16;
    result = memchr((a4 + v16), 10, a3 - v16);
    if (!result)
    {
      return result;
    }

    v19 = &result[-v18];
    if (&result[-v18] < 0)
    {
      return 0;
    }

    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      goto LABEL_47;
    }

    if (a3 - v16 < v20)
    {
      return 0;
    }

    v15 = &v19[v16];
    if (__OFADD__(v19, v16))
    {
      goto LABEL_48;
    }

    v12 = v20 + v16;
    if (__OFADD__(v20, v16))
    {
      goto LABEL_49;
    }

    if (v20 < v19 || v12 < v15)
    {
      goto LABEL_50;
    }

    result = v17;
    if (v16 < v15)
    {
      if (v15 > a3)
      {
        goto LABEL_52;
      }

      if (*(a4 + v15 - 1) == 13)
      {
        --v15;
      }
    }

    if (v16 == v15)
    {
      goto LABEL_43;
    }

    if (v12 > a3)
    {
      goto LABEL_51;
    }

    v21 = v12 < v16;
    v16 += v20;
    if (v21)
    {
      goto LABEL_42;
    }
  }
}

void sub_1B0C948BC()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 != v2)
  {
    v3 = v0[2];
    if (v2 <= v1)
    {
      v4 = *v0;
    }

    else
    {
      v4 = v0[1];
    }

    while (v4 != v1)
    {
      v5 = *(v3 + v1);
      v6 = v5 > 0x20;
      v7 = (1 << v5) & 0x100002600;
      if (!v6 && v7 != 0)
      {
        *v0 = ++v1;
        v0[1] = v2;
        if (v2 != v1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

void sub_1B0C94918(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = 0uLL;
  if (*v1 == v3)
  {
LABEL_13:
    v2 = 0;
    v7 = 0;
    v13 = 1;
LABEL_17:
    *a1 = v2;
    *(a1 + 8) = v7;
    *(a1 + 16) = v4;
    *(a1 + 32) = v13;
    return;
  }

  v5 = *(v1 + 1);
  v6 = v1[2];
  v7 = *v1;
  do
  {
    if (v7 >= v3)
    {
      __break(1u);
      goto LABEL_19;
    }

    v8 = *(v6 + v7);
    if ((v8 - 127) < 0xFFFFFFA2)
    {
      goto LABEL_12;
    }

    v9 = v8 - 34;
    v10 = v9 > 0x3B;
    v11 = (1 << v9) & 0xE0000007F0024C1;
    if (!v10 && v11 != 0)
    {
      goto LABEL_12;
    }

    *v1 = ++v7;
    v1[1] = v3;
    v1[2] = v6;
  }

  while (v3 != v7);
  v7 = v3;
LABEL_12:
  if (v2 == v7)
  {
    goto LABEL_13;
  }

  if (v7 < v2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 >= v7)
  {
    v13 = 0;
    v4 = v5;
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1B0C949D8(unsigned __int8 a1, unsigned __int8 a2)
{
  result = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = *v2;
  if (*v2 != v6)
  {
    if (v6 <= result)
    {
      v10 = *v2;
    }

    else
    {
      v10 = v2[1];
    }

    v9 = *v2;
    while (1)
    {
      if (v10 == v9)
      {
        __break(1u);
        goto LABEL_17;
      }

      if (*(v7 + v9) == a1 && (result >= v9 || *(v7 + v9 - 1) != a2))
      {
        break;
      }

      *v2 = ++v9;
      v2[1] = v6;
      v2[2] = v7;
      if (v6 == v9)
      {
        v9 = v6;
        break;
      }
    }

    if (v9 >= result)
    {
      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_14:
  if (v6 < v9)
  {
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0C94A74(uint64_t result)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  if (result <= 1u)
  {
    if (!result)
    {
      v6 = v5 - v4;
      if (!v4)
      {
        v6 = 0;
      }

      if ((v3 & 0x8000000000000000) == 0 && v6 >= v3)
      {
        if ((v2 & 0x8000000000000000) == 0 && v6 >= v2)
        {
          if (v2 - v3 >= 2)
          {
            v7 = v2 - 2;
            if (v2 - 2 >= v3)
            {
              if (*(v4 + v7) == 13 && *(v4 + v2 - 1) == 10)
              {
                goto LABEL_49;
              }

              return 0;
            }

            goto LABEL_63;
          }

          return 0;
        }

        goto LABEL_57;
      }

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
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v2 == v3)
    {
      return 0;
    }

    v7 = v2 - 1;
    if (__OFSUB__(v2, 1))
    {
      goto LABEL_60;
    }

    v10 = v5 - v4;
    if (!v4)
    {
      v10 = 0;
    }

    v11 = v7 >= v2 || v7 < v3;
    if (v11 || v7 < 0 || v7 >= v10)
    {
      goto LABEL_62;
    }

    if (*(v4 + v7) != 13)
    {
      return 0;
    }

LABEL_49:
    v1[1] = v7;
    return 1;
  }

  if (result == 2)
  {
    if (v2 == v3)
    {
      return 0;
    }

    v7 = v2 - 1;
    if (__OFSUB__(v2, 1))
    {
      goto LABEL_59;
    }

    v8 = v5 - v4;
    if (!v4)
    {
      v8 = 0;
    }

    v9 = v7 >= v2 || v7 < v3;
    if (v9 || v7 < 0 || v7 >= v8)
    {
      goto LABEL_61;
    }

    if (*(v4 + v7) != 10)
    {
      return 0;
    }

    goto LABEL_49;
  }

  v12 = v5 - v4;
  if (!v4)
  {
    v12 = 0;
  }

  if (v3 < 0 || v12 < v3)
  {
    goto LABEL_56;
  }

  if (v2 < 0 || v12 < v2)
  {
    goto LABEL_58;
  }

  if (v2 - v3 < 2)
  {
LABEL_50:
    result = sub_1B0CB4BC4(*v1, v1[1], v1[2], v1[3]);
    if ((result & 0x1FF) == 0xA)
    {
      if (v2 > v3)
      {
        *v1 = v3;
        v1[1] = v2 - 1;
        v1[2] = v4;
        v1[3] = v5;
        return 1;
      }

      goto LABEL_65;
    }

    return 0;
  }

  v7 = v2 - 2;
  if (v2 - 2 >= v3)
  {
    if (*(v4 + v7) == 13 && *(v4 + v2 - 1) == 10)
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1B0C94C70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  v7 = 0;
  v8 = a4 - a3;
  if (a4 <= a3)
  {
LABEL_11:
    v14 = 0;
    v15 = 0;
    if (!result)
    {
      return a7(v15, v14);
    }

    goto LABEL_15;
  }

  v9 = (a5 + a3);
  do
  {
    v11 = *v9++;
    v10 = v11;
    if (v11 != 13 && v10 != 10)
    {
      *(result + v7) = v10;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    --v8;
  }

  while (v8);
  if (result)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_15:
      v14 = v7 + result;
      v15 = result;
      return a7(v15, v14);
    }

    __break(1u);
  }

  else if ((v7 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = 0;
    return a7(v15, v14);
  }

  __break(1u);
  return result;
}

void *sub_1B0C94D10(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr))
{
  v6 = 0;
  v7 = a3 - a2;
  if (a3 <= a2)
  {
    goto LABEL_12;
  }

  v8 = (a4 + a2);
  while (1)
  {
    v10 = *v8++;
    v9 = v10;
    if (v10 != 13 && v9 != 10)
    {
      *(result + v6) = v9;
      if (__OFADD__(v6++, 1))
      {
        break;
      }
    }

    if (!--v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_12:
    result = a5(&var1);
    if (!v5)
    {
      return var1;
    }
  }

  return result;
}

uint64_t sub_1B0C94D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2 == a1)
  {
LABEL_13:
    if (a3)
    {
      v10 = a3 + a2;
    }

    else
    {
      v10 = 0;
    }

    if (a3)
    {
      v11 = a3 + a1;
    }

    else
    {
      v11 = 0;
    }

    result = a5((&v28 + 7), v11, v10);
    if (!v5)
    {
      result = HIBYTE(v28);
    }
  }

  else
  {
    v6 = a4 - a3;
    if (!a3)
    {
      v6 = 0;
    }

    v7 = a1;
    while (1)
    {
      if (v7 >= a2)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (a1 < 0 || v7 >= v6)
      {
        goto LABEL_39;
      }

      v8 = *(a3 + v7);
      if (v8 == 13 || v8 == 10)
      {
        break;
      }

      if (a2 == ++v7)
      {
        goto LABEL_13;
      }
    }

    if (v6 < a2)
    {
      goto LABEL_41;
    }

    if (a2 - a1 < 0)
    {
      __break(1u);
    }

    if (a2 - a1 >= 1025)
    {
      goto LABEL_42;
    }

    do
    {
      a1 = MEMORY[0x1EEE9AC00](a1);
      v14 = &v28 - v13;
      v15 = 0;
      while (1)
      {
        v16 = *(a3 + a1);
        if (v16 != 13 && v16 != 10)
        {
          v14[v15] = v16;
          if (__OFADD__(v15++, 1))
          {
            break;
          }
        }

        if (++a1 >= a2)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_33:
      if ((v15 & 0x8000000000000000) == 0)
      {
        a5((&v28 + 6), v14, &v14[v15]);
        if (v5)
        {
          result = swift_willThrow();
        }

        else
        {
          result = BYTE6(v28);
        }

        goto LABEL_36;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v20 = a1;
      v21 = a2;
      v22 = a5;
      v23 = a3;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      a1 = v20;
    }

    while ((isStackAllocationSafe & 1) != 0);
    v25 = v22;
    v26 = swift_slowAlloc();
    v27 = sub_1B0C94D10(v26, v20, v21, v23, v25);
    result = MEMORY[0x1B272C230](v26, -1, -1);
    if (!v5)
    {
      result = v27;
    }
  }

LABEL_36:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B0C94FE4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - a2;
  if (a3 <= a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = 0;
  v6 = (a4 + a2);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    if (v8 != 13 && v7 != 10)
    {
      *(result + v5) = v7;
      if (__OFADD__(v5++, 1))
      {
        break;
      }
    }

    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  if (!result)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    return MEMORY[0x1E69E7CC0];
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      v11 = result;
      v12 = sub_1B03B7A3C(v5, 0);
      memmove(v12 + 4, v11, v5);
      return v12;
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1B0C95098(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = a3 - a2;
  if (a3 <= a2)
  {
    goto LABEL_12;
  }

  v7 = (a4 + a2);
  while (1)
  {
    v9 = *v7++;
    v8 = v9;
    if (v9 != 13 && v8 != 10)
    {
      result[v5] = v8;
      if (__OFADD__(v5++, 1))
      {
        break;
      }
    }

    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_12:
    v12 = &result[v5];
    if (result)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    result = sub_1B0C77010(result, v13, &v14);
    if (!v4)
    {
      return v14;
    }
  }

  return result;
}

uint64_t MediaType.init(type:subtype:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_1B0E44B98();
  v12 = v10;
  if ((v11 != 0x72617069746C756DLL || v10 != 0xE900000000000074) && (sub_1B0E46A78() & 1) == 0)
  {
    if (v11 == 0x746163696C707061 && v12 == 0xEB000000006E6F69 || (sub_1B0E46A78() & 1) != 0)
    {

      v17 = 1;
    }

    else if (v11 == 0x6F69647561 && v12 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      v17 = 2;
    }

    else if (v11 == 0x6567616D69 && v12 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      v17 = 3;
    }

    else if (v11 == 0x6567617373656DLL && v12 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      v17 = 4;
    }

    else if (v11 == 1954047348 && v12 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      v17 = 5;
    }

    else if (v11 == 0x6F65646976 && v12 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      v17 = 6;
    }

    else if (v11 == 1953394534 && v12 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      v17 = 7;
    }

    else if (v11 == 0x656C706D617865 && v12 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      v17 = 8;
    }

    else
    {
      if (v11 == 0x6C65646F6DLL && v12 == 0xE500000000000000)
      {
      }

      else
      {
        v18 = sub_1B0E46A78();

        if ((v18 & 1) == 0)
        {
          v17 = 10;
          goto LABEL_19;
        }
      }

      v17 = 9;
    }

    goto LABEL_14;
  }

  if (!a4)
  {
    a2 = 0;
    v17 = 0;
    a1 = a3;
    a3 = 0;
    goto LABEL_19;
  }

  v15 = sub_1B0E44B98();
  v16 = v14;
  if ((v15 != 0x646578696DLL || v14 != 0xE500000000000000) && (sub_1B0E46A78() & 1) == 0)
  {
    if (v15 == 0x747365676964 && v16 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 2;
      goto LABEL_19;
    }

    if (v15 == 0x74616E7265746C61 && v16 == 0xEB00000000657669 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 3;
      goto LABEL_19;
    }

    if (v15 == 0x646574616C6572 && v16 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 4;
      goto LABEL_19;
    }

    if (v15 == 0x74726F706572 && v16 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 5;
      goto LABEL_19;
    }

    if (v15 == 0x64656E676973 && v16 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 6;
      goto LABEL_19;
    }

    if (v15 == 0x6574707972636E65 && v16 == 0xE900000000000064 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 7;
      goto LABEL_19;
    }

    if (v15 == 0x7461642D6D726F66 && v16 == 0xE900000000000061 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 8;
      goto LABEL_19;
    }

    if (v15 == 0x2D646578696D2D78 && v16 == 0xEF6563616C706572 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 9;
      goto LABEL_19;
    }

    if (v15 == 0x676E617265747962 && v16 == 0xE900000000000065)
    {

LABEL_86:

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v17 = 0;
      a2 = 10;
      goto LABEL_19;
    }

    v19 = sub_1B0E46A78();

    if (v19)
    {
      goto LABEL_86;
    }

    v17 = 0;
LABEL_14:
    a1 = a3;
    a2 = a4;
    a3 = 0;
    a4 = 0;
    goto LABEL_19;
  }

  a1 = 0;
  a3 = 0;
  a4 = 0;
  v17 = 0;
  a2 = 1;
LABEL_19:
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v17;
  return result;
}

uint64_t sub_1B0C95928(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x74616E7265746C61;
    v7 = 0x676E617265747962;
    v8 = 0x747365676964;
    if (a1 != 3)
    {
      v8 = 0x6574707972636E65;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x756F64656C707061;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x646574616C6572;
    v2 = 0x74726F706572;
    if (a1 != 9)
    {
      v2 = 0x64656E676973;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7461642D6D726F66;
    v4 = 0x646578696DLL;
    if (a1 != 6)
    {
      v4 = 0x2D646578696D2D78;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B0C95AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t sub_1B0C95B54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B0C98384();
  *a2 = result;
  return result;
}

uint64_t sub_1B0C95B84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0C95928(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B0C95BB0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1953394534;
    v6 = 0x656C706D617865;
    if (a1 != 8)
    {
      v6 = 0x6C65646F6DLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1954047348;
    if (a1 != 5)
    {
      v7 = 0x6F65646976;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x72617069746C756DLL;
    v2 = 0x6F69647561;
    v3 = 0x6567616D69;
    if (a1 != 3)
    {
      v3 = 0x6567617373656DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x746163696C707061;
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
}

uint64_t sub_1B0C95CEC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B0E46A78();
  }

  return v12 & 1;
}

uint64_t sub_1B0C95D98(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1B0E46C28();
  a3(v5);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C95E1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0C95E8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1B0E46C28();
  a4(v6);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C95EF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B0C983D0();
  *a2 = result;
  return result;
}

uint64_t sub_1B0C95F24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0C95BB0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static MediaType.uniformType(filename:mimeType:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FE0, &qword_1B0E9B2B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - v9;
  v51 = sub_1B0E43788();
  v11 = *(v51 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v51);
  v47 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v53 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v45 - v17;
  v18 = sub_1B0E44AC8();
  v19 = [v18 pathExtension];

  sub_1B0E44AD8();
  v46 = sub_1B0E44B98();
  v50 = v20;

  v21 = sub_1B0E44AC8();
  v22 = [v21 pathExtension];

  sub_1B0E44AD8();
  v23 = sub_1B0E44B98();
  v25 = v24;

  v54 = a1;
  if ((a1 != 0x746163696C707061 || a2 != 0xEF70697A2F6E6F69) && (sub_1B0E46A78() & 1) == 0)
  {
    goto LABEL_16;
  }

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26 || v23 == 7367034 && v25 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {
    v27 = sub_1B0E44AC8();
    v28 = [v27 stringByDeletingPathExtension];

    v29 = v51;
    if (!v28)
    {
      sub_1B0E44AD8();
      v28 = sub_1B0E44AC8();
    }

    v30 = [v28 pathExtension];

    sub_1B0E44AD8();
    v23 = sub_1B0E44B98();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v25 = v32;
    }

    else
    {
      v23 = 7367034;

      v25 = 0xE300000000000000;
    }
  }

  else
  {
LABEL_16:
    v29 = v51;
  }

  v34 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v34 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {

    goto LABEL_24;
  }

  String.declaredUTTypeFromExtension.getter(v10);
  if ((*(v11 + 48))(v10, 1, v29) == 1)
  {

    sub_1B075D100(v10);
LABEL_24:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E436D8();
    v35 = v49;
    sub_1B0E435F8();
    if ((*(v11 + 48))(v35, 1, v29) == 1)
    {

      sub_1B075D100(v35);
      return (*(v11 + 56))(v52, 1, 1, v29);
    }

    v36 = *(v11 + 32);
    v37 = v47;
    v36(v47, v35, v29);
    v38 = sub_1B0E43768();

    if (v38)
    {
      (*(v11 + 8))(v37, v29);
      return (*(v11 + 56))(v52, 1, 1, v29);
    }

    v44 = v52;
    v36(v52, v37, v29);
    return (*(v11 + 56))(v44, 0, 1, v29);
  }

  v51 = a2;
  v40 = *(v11 + 32);
  v40(v48, v10, v29);
  v41 = v53;
  sub_1B0E43758();
  v42 = sub_1B0E43738();
  v43 = *(v11 + 8);
  v43(v41, v29);
  if ((v42 & 1) == 0 && (v23 != v46 || v25 != v50) && (sub_1B0E46A78() & 1) == 0)
  {
    if ((sub_1B0E46A78() & 1) == 0)
    {
      String.declaredUTTypeFromExtension.getter(v52);

      return (v43)(v48, v29);
    }

    v43(v48, v29);

    goto LABEL_24;
  }

  v44 = v52;
  v40(v52, v48, v29);
  return (*(v11 + 56))(v44, 0, 1, v29);
}

uint64_t String.declaredUTTypeFromExtension.getter@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FE0, &qword_1B0E9B2B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_1B0E43788();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E436D8();
  sub_1B0E43638();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B075D100(v5);
LABEL_5:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E43728();
    return sub_1B0E43638();
  }

  v12 = *(v7 + 32);
  v12(v11, v5, v6);
  if (sub_1B0E43768())
  {
    (*(v7 + 8))(v11, v6);
    goto LABEL_5;
  }

  v12(a1, v11, v6);
  return (*(v7 + 56))(a1, 0, 1, v6);
}

uint64_t sub_1B0C9681C()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v5 = *(v0 + 32);
  sub_1B07B4718(v4, v3);
  return _sSS9IMAP2MIMEEySSAA9MediaTypeOcfC_0(v4);
}

uint64_t MediaType.Multipart.description.getter(uint64_t a1, uint64_t a2)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          return 0x2D646578696D2D78;
        case 10:
          return 0x676E617265747962;
        case 11:
          return 0x756F64656C707061;
      }

      goto LABEL_26;
    }

    if (a2 == 6)
    {
      return 0x64656E676973;
    }

    else if (a2 == 7)
    {
      return 0x6574707972636E65;
    }

    else
    {
      return 0x7461642D6D726F66;
    }
  }

  else
  {
    if (a2 <= 2)
    {
      switch(a2)
      {
        case 0:
          sub_1B07ACFA8(a1, 0);
          return 0;
        case 1:
          return 0x646578696DLL;
        case 2:
          return 0x747365676964;
      }

LABEL_26:
      sub_1B07ACD88(a1, a2);
      return a1;
    }

    if (a2 == 3)
    {
      return 0x74616E7265746C61;
    }

    else if (a2 == 4)
    {
      return 0x646574616C6572;
    }

    else
    {
      return 0x74726F706572;
    }
  }
}

uint64_t sub_1B0C96A40()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B07ACD88(v1, v2);

  return _sSS9IMAP2MIMEEySSAA9MediaTypeO9MultipartOcfC_0(v1, v2);
}

uint64_t sub_1B0C96A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C7D3FC(0, a1, a2);
  v5 = sub_1B0C7D3FC(1, a1, a2);
  v6 = sub_1B0C7D3FC(2, a1, a2);
  v7 = sub_1B0C7D3FC(3, a1, a2);
  if (v4 == 109 && v5 == 117 && v6 == 108 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_6;
  }

  if (v4 == 105)
  {
    if (v5 == 109 && v6 == 97 && v7 == 103)
    {
      v8 = a1;
      v9 = a2;
      v10 = 3;
      goto LABEL_6;
    }

LABEL_28:
    v12 = v5 == 101;
    goto LABEL_29;
  }

  if (v4 == 97)
  {
    if (v5 == 117)
    {
      if (v6 == 100 && v7 == 105)
      {
        v8 = a1;
        v9 = a2;
        v10 = 2;
        goto LABEL_6;
      }
    }

    else if (v5 == 112 && v6 == 112 && v7 == 108)
    {
      v8 = a1;
      v9 = a2;
      v10 = 1;
      goto LABEL_6;
    }

    goto LABEL_28;
  }

  v12 = v5 == 101;
  if (v4 == 109 && v5 == 101 && v6 == 115 && v7 == 115)
  {
    v8 = a1;
    v9 = a2;
    v10 = 4;
    goto LABEL_6;
  }

LABEL_29:
  if (v4 > 0x73u)
  {
    if (v4 == 118)
    {
      if (v5 != 105 || v6 != 100 || v7 != 101)
      {
        return 10;
      }

      v8 = a1;
      v9 = a2;
      v10 = 6;
      goto LABEL_6;
    }

    if (v4 == 116)
    {
      if (v6 != 120)
      {
        v12 = 0;
      }

      if (!v12 || v7 != 116)
      {
        return 10;
      }

      v8 = a1;
      v9 = a2;
      v10 = 5;
      goto LABEL_6;
    }

    goto LABEL_43;
  }

  if (v4 == 101)
  {
    if (v5 != 120 || v6 != 97 || v7 != 109)
    {
      return 10;
    }

    v8 = a1;
    v9 = a2;
    v10 = 8;
    goto LABEL_6;
  }

  if (v4 != 102)
  {
LABEL_43:
    if (v4 != 109 || v5 != 111 || v6 != 100 || v7 != 101)
    {
      return 10;
    }

    v8 = a1;
    v9 = a2;
    v10 = 9;
LABEL_6:
    result = sub_1B0C7BDD0(v8, v9, v10);
    if (result != 10)
    {
      return result;
    }

    return 10;
  }

  if (v5 == 111 && v6 == 110 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 7;
    goto LABEL_6;
  }

  return 10;
}

uint64_t sub_1B0C96D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C7D3FC(0, a1, a2);
  v5 = sub_1B0C7D3FC(1, a1, a2);
  v6 = sub_1B0C7D3FC(2, a1, a2);
  v7 = sub_1B0C7D3FC(3, a1, a2);
  if (v4 == 100)
  {
    if (v5 == 105 && v6 == 103 && v7 == 101)
    {
      v8 = a1;
      v9 = a2;
      v10 = 3;
      goto LABEL_16;
    }
  }

  else if (v4 == 109 && v5 == 105 && v6 == 120 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 6;
    goto LABEL_16;
  }

  if (v4 == 97 && v5 == 108 && v6 == 116 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_16;
  }

  if (v4 > 0x71u)
  {
    switch(v4)
    {
      case 'x':
        if (v5 != 45 || v6 != 109 || v7 != 105)
        {
          return 11;
        }

        v8 = a1;
        v9 = a2;
        v10 = 7;
        goto LABEL_16;
      case 's':
        if (v5 != 105 || v6 != 103 || v7 != 110)
        {
          return 11;
        }

        v8 = a1;
        v9 = a2;
        v10 = 10;
        goto LABEL_16;
      case 'r':
        if (v5 != 101)
        {
          return 11;
        }

        if (v6 == 112)
        {
          if (v7 != 111)
          {
            return 11;
          }

          v8 = a1;
          v9 = a2;
          v10 = 9;
        }

        else
        {
          if (v6 != 108 || v7 != 97)
          {
            return 11;
          }

          v8 = a1;
          v9 = a2;
          v10 = 8;
        }

LABEL_16:
        result = sub_1B0C7BC9C(v8, v9, v10);
        if (result != 11)
        {
          return result;
        }

        return 11;
    }

LABEL_43:
    if (v4 != 97 || v5 != 112 || v6 != 112 || v7 != 108)
    {
      return 11;
    }

    v8 = a1;
    v9 = a2;
    v10 = 1;
    goto LABEL_16;
  }

  if (v4 == 98)
  {
    if (v5 != 121 || v6 != 116 || v7 != 101)
    {
      return 11;
    }

    v8 = a1;
    v9 = a2;
    v10 = 2;
    goto LABEL_16;
  }

  if (v4 == 101)
  {
    if (v5 != 110 || v6 != 99 || v7 != 114)
    {
      return 11;
    }

    v8 = a1;
    v9 = a2;
    v10 = 4;
    goto LABEL_16;
  }

  if (v4 != 102)
  {
    goto LABEL_43;
  }

  if (v5 == 111 && v6 == 114 && v7 == 109)
  {
    v8 = a1;
    v9 = a2;
    v10 = 5;
    goto LABEL_16;
  }

  return 11;
}

uint64_t sub_1B0C970A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  result = sub_1B0C96A84(a1, a2);
  if (result <= 4u)
  {
    if (result <= 1u)
    {
      if (result)
      {
        v19 = 0;
        v18 = a5 & 1;
        v14 = 16;
        goto LABEL_42;
      }

      if ((a5 & 1) == 0)
      {
        result = sub_1B0C96D88(a3, a4);
        if (result <= 5u)
        {
          if (result > 2u)
          {
            if (result == 3)
            {
              a4 = 0;
              v18 = 0;
              v19 = 0;
              v14 = 0;
              a3 = 3;
            }

            else
            {
              a4 = 0;
              v18 = 0;
              v19 = 0;
              v14 = 0;
              if (result == 4)
              {
                a3 = 4;
              }

              else
              {
                a3 = 5;
              }
            }
          }

          else if (result)
          {
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
            if (result == 1)
            {
              a3 = 1;
            }

            else
            {
              a3 = 2;
            }
          }

          else
          {
            a3 = 0;
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
          }

          goto LABEL_42;
        }

        if (result <= 8u)
        {
          if (result == 6)
          {
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
            a3 = result;
          }

          else
          {
            a4 = 0;
            v18 = 0;
            v19 = 0;
            v14 = 0;
            if (result == 7)
            {
              a3 = 7;
            }

            else
            {
              a3 = 8;
            }
          }

          goto LABEL_42;
        }

        if (result == 9)
        {
          a4 = 0;
          v18 = 0;
          v19 = 0;
          v14 = 0;
          a3 = 9;
          goto LABEL_42;
        }

        if (result == 10)
        {
          a4 = 0;
          v18 = 0;
          v19 = 0;
          v14 = 0;
          a3 = 10;
          goto LABEL_42;
        }
      }

      v19 = 0;
      v14 = 0;
      v18 = (a5 | 0x80u) & 0x81;
      goto LABEL_42;
    }

    v13 = a5 & 1;
    v14 = 32;
    v15 = v13;
    if (result == 3)
    {
      v16 = 48;
    }

    else
    {
      v15 = a5 & 1;
      v16 = 64;
    }

    v17 = result == 2;
    goto LABEL_12;
  }

  v13 = a5 & 1;
  if (result <= 7u)
  {
    v14 = 80;
    v15 = a5 & 1;
    if (result == 6)
    {
      v16 = 96;
    }

    else
    {
      v15 = a5 & 1;
      v16 = 112;
    }

    v17 = result == 5;
LABEL_12:
    if (v17)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    v19 = 0;
    if (!v17)
    {
      v14 = v16;
    }

    goto LABEL_42;
  }

  v20 = a5 & 1;
  if (result == 9)
  {
    v21 = a3;
  }

  else
  {
    v21 = a1;
  }

  if (result == 9)
  {
    v22 = a4;
  }

  else
  {
    v22 = a2;
  }

  if (result == 9)
  {
    v23 = 0;
  }

  else
  {
    v20 = a3;
    v23 = a4;
  }

  if (result == 9)
  {
    v24 = -112;
  }

  else
  {
    v24 = a5 & 1 | 0xA0;
  }

  if (result == 8)
  {
    v18 = a5 & 1;
  }

  else
  {
    a3 = v21;
    a4 = v22;
    v18 = v20;
  }

  if (result == 8)
  {
    v19 = 0;
  }

  else
  {
    v19 = v23;
  }

  if (result == 8)
  {
    v14 = 0x80;
  }

  else
  {
    v14 = v24;
  }

LABEL_42:
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 16) = v18;
  *(a6 + 24) = v19;
  *(a6 + 32) = v14;
  return result;
}

uint64_t sub_1B0C97374@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 - result;
  if (result)
  {
    v4 = a2 - result;
  }

  else
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_59;
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_35:
      if (v4)
      {
        v17 = 0;
        v16 = 0;
        v15 = 0;
        v14 = 1;
        v5 = v3;
LABEL_42:
        v23 = v5 + result;
        if (result)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = v17 + v16;
        if (v17)
        {
          v26 = v14;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = v17 + v15;
        }

        if (v26)
        {
          v28 = 0;
        }

        else
        {
          v28 = v25;
        }

        v29 = a3;
        result = sub_1B0C970A8(result, v24, v27, v28, v14, v32);
        a3 = v29;
        v12 = v32[0];
        v30 = v32[1];
        v31 = v33;
        goto LABEL_56;
      }

      v12 = 0uLL;
      goto LABEL_55;
    }

    v6 = *(result + v5);
    if ((v6 - 127) <= 0xFFFFFFA1)
    {
      goto LABEL_18;
    }

    v7 = v6 - 34;
    v8 = v7 > 0x3B;
    v9 = (1 << v7) & 0xE0000007F0024C1;
    if (!v8 && v9 != 0)
    {
      goto LABEL_18;
    }

    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v4 < v5 + 1)
    {
      goto LABEL_58;
    }

    v11 = v5 + 1 <= v5;
    ++v5;
    if (v11)
    {
      __break(1u);
LABEL_18:
      v12 = 0uLL;
      if (!v5)
      {
        goto LABEL_55;
      }

      if (v5 >= v4)
      {
        goto LABEL_60;
      }

      v13 = *(result + v5);
      v14 = v13 != 47;
      if (v13 == 47)
      {
        v16 = v5 + 1;
        v15 = v5 + 1;
        v3 = 1;
        while (v4 != v16)
        {
          v19 = *(result + v16);
          if ((v19 - 127) < 0xFFFFFFA2)
          {
            goto LABEL_39;
          }

          v20 = v19 - 34;
          v8 = v20 > 0x3B;
          v21 = (1 << v20) & 0xE0000007F0024C1;
          if (!v8 && v21 != 0)
          {
            goto LABEL_39;
          }

          if (__OFADD__(v16, 1))
          {
            goto LABEL_61;
          }

          if (v4 < ++v16)
          {
            goto LABEL_62;
          }

          if (__OFSUB__(v16, v16 - 1))
          {
            __break(1u);
            goto LABEL_35;
          }
        }

        v16 = v4;
LABEL_39:
        if (v16 - 1 == v5)
        {
          goto LABEL_55;
        }

        v17 = result;
        v18 = v16;
        if (v16 <= v5)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v5;
      }

      if (v18 == v4)
      {
        goto LABEL_42;
      }

LABEL_55:
      v31 = -2;
      v30 = 0uLL;
LABEL_56:
      *a3 = v12;
      *(a3 + 16) = v30;
      *(a3 + 32) = v31;
      return result;
    }
  }

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
  return result;
}

uint64_t sub_1B0C97560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = v7 >> 4;
  if (v7 >> 4 <= 4)
  {
    if (v8)
    {
LABEL_10:
      if (v6)
      {
LABEL_11:
        result = 0;
        v11 = 0;
        goto LABEL_14;
      }

LABEL_13:
      result = sub_1B0C895C4(v4, v5);
      goto LABEL_14;
    }

    v18 = v4;
    if ((v6 & 0x80) != 0)
    {
      if (v6)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    result = 0;
    v15 = 0;
    v17 = 0;
    v11 = qword_1B0EDFCB0[v18];
  }

  else
  {
    if (v7 >> 4 <= 9)
    {
      goto LABEL_10;
    }

    v9 = *(a1 + 24);
    result = sub_1B0C895C4(v4, v5);
    if (v7)
    {
LABEL_14:
      v15 = 0;
      v17 = 0;
      goto LABEL_15;
    }

    v12 = result;
    v13 = v6;
    v14 = v11;
    v15 = sub_1B0C895C4(v13, v9);
    result = v12;
    v17 = v16;
    v11 = v14;
  }

LABEL_15:
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = v8;
  return result;
}

uint64_t _s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 32);
  if (v6 > 4)
  {
    if (*(a1 + 32) > 7u)
    {
      if (v6 == 8)
      {
        if (*(a2 + 32) != 8)
        {
          return 0;
        }
      }

      else
      {
        if (v6 != 9)
        {
          if (*(a2 + 32) != 10)
          {
            return 0;
          }

          v9 = a1[2];
          v8 = a1[3];
          v11 = *(a2 + 16);
          v10 = *(a2 + 24);
          if ((v4 != *a2 || v5 != *(a2 + 8)) && (sub_1B0E46A78() & 1) == 0)
          {
            return 0;
          }

          if (v8)
          {
            if (v10)
            {
              if (v9 == v11 && v8 == v10)
              {
                return 1;
              }

              return (sub_1B0E46A78() & 1) != 0;
            }
          }

          else if (!v10)
          {
            return 1;
          }

          return 0;
        }

        if (*(a2 + 32) != 9)
        {
          return 0;
        }
      }
    }

    else if (v6 == 5)
    {
      if (*(a2 + 32) != 5)
      {
        return 0;
      }
    }

    else if (v6 == 6)
    {
      if (*(a2 + 32) != 6)
      {
        return 0;
      }
    }

    else if (*(a2 + 32) != 7)
    {
      return 0;
    }

LABEL_35:
    v7 = *(a2 + 8);
    if (v5)
    {
      if (v7)
      {
        if (v4 == *a2)
        {
          goto LABEL_38;
        }

        return (sub_1B0E46A78() & 1) != 0;
      }

      return 0;
    }

    return !v7;
  }

  if (*(a1 + 32) > 1u)
  {
    if (v6 == 2)
    {
      if (*(a2 + 32) != 2)
      {
        return 0;
      }
    }

    else if (v6 == 3)
    {
      if (*(a2 + 32) != 3)
      {
        return 0;
      }
    }

    else if (*(a2 + 32) != 4)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (*(a1 + 32))
  {
    if (*(a2 + 32) != 1)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v7 = *(a2 + 8);
  if (v5 <= 5)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v7 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v7 != 4)
        {
          return 0;
        }
      }

      else if (v7 != 5)
      {
        return 0;
      }

      return 1;
    }

    if (v5 == 1)
    {
      return v7 == 1;
    }

    if (v5 == 2)
    {
      return v7 == 2;
    }

LABEL_80:
    if ((v7 - 1) < 0xB)
    {
      return 0;
    }

    if (v5)
    {
      if (v7)
      {
        if (v4 == *a2)
        {
LABEL_38:
          if (v5 == v7)
          {
            return 1;
          }
        }

        return (sub_1B0E46A78() & 1) != 0;
      }

      return 0;
    }

    return !v7;
  }

  if (v5 > 8)
  {
    switch(v5)
    {
      case 9:
        return v7 == 9;
      case 10:
        return v7 == 10;
      case 11:
        return v7 == 11;
    }

    goto LABEL_80;
  }

  if (v5 == 6)
  {
    if (v7 != 6)
    {
      return 0;
    }
  }

  else if (v5 == 7)
  {
    if (v7 != 7)
    {
      return 0;
    }
  }

  else if (v7 != 8)
  {
    return 0;
  }

  return 1;
}

BOOL _s9IMAP2MIME9MediaTypeO9MultipartO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a2 == 4)
      {
        if (a4 == 4)
        {
          return 1;
        }
      }

      else if (a4 == 5)
      {
        return 1;
      }

      return 0;
    }

    if (a2 == 1)
    {
      return a4 == 1;
    }

    if (a2 == 2)
    {
      return a4 == 2;
    }
  }

  else
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        if (a4 == 6)
        {
          return 1;
        }
      }

      else if (a2 == 7)
      {
        if (a4 == 7)
        {
          return 1;
        }
      }

      else if (a4 == 8)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 9:
        return a4 == 9;
      case 10:
        return a4 == 10;
      case 11:
        return a4 == 11;
    }
  }

  if ((a4 - 1) < 0xB)
  {
    return 0;
  }

  if (a2)
  {
    if (!a4)
    {
      return 0;
    }

    return a1 == a3 && a2 == a4 || (sub_1B0E46A78() & 1) != 0;
  }

  else
  {
    return !a4;
  }
}

uint64_t _sSS9IMAP2MIMEEySSAA9MediaTypeO9MultipartOcfC_0(uint64_t result, uint64_t a2)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          return 0x2D646578696D2D78;
        case 10:
          return 0x676E617265747962;
        case 11:
          return 0x756F64656C707061;
      }
    }

    else if (a2 == 6)
    {
      return 0x64656E676973;
    }

    else if (a2 == 7)
    {
      return 0x6574707972636E65;
    }

    else
    {
      return 0x7461642D6D726F66;
    }
  }

  else if (a2 > 2)
  {
    if (a2 == 3)
    {
      return 0x74616E7265746C61;
    }

    else if (a2 == 4)
    {
      return 0x646574616C6572;
    }

    else
    {
      return 0x74726F706572;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return 0x646578696DLL;
    }

    else if (a2 == 2)
    {
      return 0x747365676964;
    }
  }

  else
  {
    sub_1B07ACFA8(result, a2);
    return 0;
  }

  return result;
}

uint64_t _sSS9IMAP2MIMEEySSAA9MediaTypeOcfC_0(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 32);
  if (v3 > 4)
  {
    if (*(a1 + 32) <= 7u)
    {
      if (v3 == 5)
      {
        if (!v1)
        {
          sub_1B07AD0E0(a1);
          return 1954047348;
        }

        v11 = 1954047348;
      }

      else
      {
        if (v3 == 6)
        {
          if (v1)
          {
            v4 = 1701079414;
LABEL_21:
            v5 = v4 & 0xFFFF0000FFFFFFFFLL | 0x2F6F00000000;
            goto LABEL_34;
          }

          sub_1B07AD0E0(a1);
          return 0x6F65646976;
        }

        if (!v1)
        {
          sub_1B07AD0E0(a1);
          return 1953394534;
        }

        v11 = 1953394534;
      }

      v5 = v11 & 0xFFFF0000FFFFFFFFLL | 0x2F00000000;
      goto LABEL_34;
    }

    if (v3 != 8)
    {
      if (v3 != 9)
      {
        v15 = *(a1 + 24);
        if (v15)
        {
          v16 = *(a1 + 16);
          v21 = *a1;
          v22 = *(a1 + 8);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1B2726E80](47, 0xE100000000000000);
          MEMORY[0x1B2726E80](v16, v15);
          v10 = a1;
          goto LABEL_35;
        }

        v18 = *a1;
        v20 = *(a1 + 8);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B07AD0E0(a1);
        return v18;
      }

      if (!v1)
      {
        sub_1B07AD0E0(a1);
        return 0x6C65646F6DLL;
      }

      v5 = 0x2F6C65646F6DLL;
LABEL_34:
      v21 = v5;
      MEMORY[0x1B2726E80](v2);
      v10 = a1;
      goto LABEL_35;
    }

    if (!v1)
    {
      sub_1B07AD0E0(a1);
      return 0x656C706D617865;
    }

    v12 = 0x6C706D617865;
    goto LABEL_28;
  }

  if (*(a1 + 32) <= 1u)
  {
    if (*(a1 + 32))
    {
      if (v1)
      {
        v5 = 0x746163696C707061;
        goto LABEL_34;
      }

      sub_1B07AD0E0(a1);
      return 0x746163696C707061;
    }

    else
    {
      if (v1)
      {
        v21 = 0x72617069746C756DLL;
        v6 = *a1;
        v8 = *(a1 + 8);
        sub_1B07ACD88(v2, v1);
        v9 = _sSS9IMAP2MIMEEySSAA9MediaTypeO9MultipartOcfC_0(v6, v8);
        MEMORY[0x1B2726E80](v9);

        v10 = a1;
LABEL_35:
        sub_1B07AD0E0(v10);
        return v21;
      }

      sub_1B07AD0E0(a1);
      return 0x72617069746C756DLL;
    }
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      if (!v1)
      {
        sub_1B07AD0E0(a1);
        return 0x6567616D69;
      }

      v5 = 0x2F6567616D69;
      goto LABEL_34;
    }

    if (!v1)
    {
      sub_1B07AD0E0(a1);
      return 0x6567617373656DLL;
    }

    v12 = 0x67617373656DLL;
LABEL_28:
    v5 = v12 & 0xFFFFFFFFFFFFLL | 0x2F65000000000000;
    goto LABEL_34;
  }

  if (v1)
  {
    v4 = 1768191329;
    goto LABEL_21;
  }

  sub_1B07AD0E0(a1);
  return 0x6F69647561;
}

uint64_t sub_1B0C97FDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 33))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 32);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0C98024(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0C98084(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 0xC)
  {
    return (v3 - 11);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C980E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

void *sub_1B0C98134(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeMediaType.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeMediaType.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B0C982D8()
{
  result = qword_1EB6E5FC8;
  if (!qword_1EB6E5FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5FC8);
  }

  return result;
}

unint64_t sub_1B0C98330()
{
  result = qword_1EB6E5FD0;
  if (!qword_1EB6E5FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5FD0);
  }

  return result;
}

uint64_t sub_1B0C98384()
{
  v0 = sub_1B0E467E8();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B0C983D0()
{
  v0 = sub_1B0E467E8();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for UnsafeMediaType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 33))
  {
    return (*a1 + 118);
  }

  v3 = ((*(a1 + 32) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 32) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x75)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for UnsafeMediaType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 118;
    *(result + 8) = 0;
    if (a3 >= 0x76)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeMediaType.Multipart(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for UnsafeMediaType.Multipart(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1B0C985F0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, char **a7@<X8>)
{
  v84 = a7;
  v13 = sub_1B0E443C8();
  v82 = *(v13 - 8);
  v83 = v13;
  v14 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Message.Data(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v86) = a2;
  v88[16] = a2;
  v89 = a3;
  v90 = a4;
  v20 = a5;
  v91 = a5;
  v92 = a6;
  v85 = a6;
  v87[2] = sub_1B0CA1E64;
  v87[3] = v88;
  swift_retain_n();
  v21 = Message.isEmpty.getter();
  if (v21)
  {
    v84 = &v81;
    v119 = 0;
    MEMORY[0x1EEE9AC00](v21);
    *(&v81 - 48) = 0;
    *(&v81 - 5) = a3;
    *(&v81 - 4) = a4;
    *(&v81 - 3) = &v119;
    *(&v81 - 2) = a5;
    v22 = a5;
    *(&v81 - 1) = v85;
    v23 = a4;
    v24 = swift_allocObject();
    v82 = a3;
    v25 = v24 + 1;
    sub_1B0C835A8(&v120);
    v26 = v129;
    v24[9] = v128;
    v24[10] = v26;
    v24[11] = v130[0];
    *(v24 + 185) = *(v130 + 9);
    v27 = v125;
    v24[5] = v124;
    v24[6] = v27;
    v28 = v127;
    v24[7] = v126;
    v24[8] = v28;
    v29 = v121;
    v24[1] = v120;
    v24[2] = v29;
    v30 = v123;
    v24[3] = v122;
    v24[4] = v30;
    v31 = swift_allocObject();
    v83 = &v81;
    *(v31 + 16) = 2;
    MEMORY[0x1EEE9AC00](v31);
    *(&v81 - 4) = v24;
    *(&v81 - 3) = v32;
    *(&v81 - 2) = sub_1B0C84510;
    *(&v81 - 1) = (&v81 - 8);
    MEMORY[0x1EEE9AC00](v32);
    *(&v81 - 4) = (v24 + 1);
    v33 = MEMORY[0x1E69E7CC0];
    *(&v81 - 3) = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
    *(&v81 - 2) = 0;
    v132 = v33;
    v133 = v86;
    v135 = 0;
    v136 = 0;
    v134 = 0;

    v34 = v137;
    sub_1B0CA286C(sub_1B0C844F4, (&v81 - 6), sub_1B0C8450C, (&v81 - 6), 0, 0);
    if (v34)
    {
    }

    else
    {
      v86 = v22;
      v137 = v31;
      swift_beginAccess();
      if (*(v31 + 16) != 2)
      {
        goto LABEL_11;
      }

      swift_beginAccess();
      v45 = v24[10];
      v46 = v24[8];
      v105 = v24[9];
      v106 = v45;
      v47 = v24[10];
      v107[0] = v24[11];
      *(v107 + 9) = *(v24 + 185);
      v48 = v24[6];
      v49 = v24[4];
      v101 = v24[5];
      v102 = v48;
      v50 = v24[6];
      v51 = v24[8];
      v103 = v24[7];
      v104 = v51;
      v52 = v24[2];
      v97 = *v25;
      v98 = v52;
      v53 = v24[4];
      v55 = *v25;
      v54 = v24[2];
      v99 = v24[3];
      v100 = v53;
      v116 = v105;
      v117 = v47;
      v118[0] = v24[11];
      *(v118 + 9) = *(v24 + 185);
      v112 = v101;
      v113 = v50;
      v114 = v103;
      v115 = v46;
      v108 = v55;
      v109 = v54;
      v110 = v99;
      v111 = v49;
      if (sub_1B03BCF14(&v108) != 1)
      {
        v130[10] = v116;
        v130[11] = v117;
        v131[0] = v118[0];
        *(v131 + 9) = *(v118 + 9);
        v130[6] = v112;
        v130[7] = v113;
        v130[8] = v114;
        v130[9] = v115;
        v130[2] = v108;
        v130[3] = v109;
        v130[4] = v110;
        v130[5] = v111;
        v95[8] = v105;
        v95[9] = v106;
        v96[0] = v107[0];
        *(v96 + 9) = *(v107 + 9);
        v95[4] = v101;
        v95[5] = v102;
        v95[6] = v103;
        v95[7] = v104;
        v95[0] = v97;
        v95[1] = v98;
        v95[2] = v99;
        v95[3] = v100;
        sub_1B0C83634(v95, v93);
        v66 = sub_1B0C84278(0, v82, v23);
        if (v67)
        {
          v68 = (v86)(v66);

          v119 = v68 & 1;
        }

        else
        {
          v68 = v119;
        }

        sub_1B0398EFC(&v97, &qword_1EB6E5F00, &unk_1B0EDE440);
        if (v68)
        {
          v69 = 0;
        }

        else
        {
          v69 = 2;
        }

        v137[16] = v69;
        v70 = v24[10];
        v93[8] = v24[9];
        v93[9] = v70;
        v94[0] = v24[11];
        *(v94 + 9) = *(v24 + 185);
        v71 = v24[6];
        v93[4] = v24[5];
        v93[5] = v71;
        v72 = v24[8];
        v93[6] = v24[7];
        v93[7] = v72;
        v73 = v24[2];
        v93[0] = *v25;
        v93[1] = v73;
        v74 = v24[4];
        v93[2] = v24[3];
        v93[3] = v74;
        v75 = v129;
        v24[9] = v128;
        v24[10] = v75;
        v24[11] = v130[0];
        *(v24 + 185) = *(v130 + 9);
        v76 = v125;
        v24[5] = v124;
        v24[6] = v76;
        v77 = v127;
        v24[7] = v126;
        v24[8] = v77;
        v78 = v121;
        *v25 = v120;
        v24[2] = v78;
        v79 = v123;
        v24[3] = v122;
        v24[4] = v79;
        sub_1B0398EFC(v93, &qword_1EB6E5F00, &unk_1B0EDE440);
      }

      else
      {
LABEL_11:
        swift_beginAccess();
        v56 = v24[10];
        v116 = v24[9];
        v117 = v56;
        v118[0] = v24[11];
        *(v118 + 9) = *(v24 + 185);
        v57 = v24[6];
        v112 = v24[5];
        v113 = v57;
        v58 = v24[8];
        v114 = v24[7];
        v115 = v58;
        v59 = v24[2];
        v108 = *v25;
        v109 = v59;
        v60 = v24[4];
        v110 = v24[3];
        v111 = v60;
        v61 = v129;
        v24[9] = v128;
        v24[10] = v61;
        v24[11] = v130[0];
        *(v24 + 185) = *(v130 + 9);
        v62 = v125;
        v24[5] = v124;
        v24[6] = v62;
        v63 = v127;
        v24[7] = v126;
        v24[8] = v63;
        v64 = v121;
        *v25 = v120;
        v24[2] = v64;
        v65 = v123;
        v24[3] = v122;
        v24[4] = v65;
        sub_1B0398EFC(&v108, &qword_1EB6E5F00, &unk_1B0EDE440);
      }
    }

    goto LABEL_21;
  }

  v35 = v86;
  v36 = a4;
  sub_1B0C934C4(a1, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v42 = *v19;
    v43 = v19[1];

    v44 = v137;
    sub_1B0C9B80C(v42, v43, v35, a3, v36, v20, v85);
    sub_1B0391D50(v42, v43);
    if (v44)
    {
    }

    goto LABEL_21;
  }

  v37 = v81;
  v38 = v82;
  v39 = v83;
  v40 = (*(v82 + 32))(v81, v19, v83);
  MEMORY[0x1EEE9AC00](v40);
  *(&v81 - 4) = v37;
  *(&v81 - 3) = sub_1B0CA1EFC;
  *(&v81 - 2) = v87;
  v41 = v137;
  sub_1B0E44328();
  if (!v41)
  {
    (*(v38 + 8))(v37, v39);
LABEL_21:
  }

  (*(v38 + 8))(v37, v39);
}