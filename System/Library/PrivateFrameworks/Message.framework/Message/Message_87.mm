uint64_t sub_1B0D0AA68@<X0>(uint64_t a1@<X8>)
{
  *v15 = *(v1 + 16);
  *&v15[9] = *(v1 + 25);
  v3 = *&v15[8];
  v13 = *v15;
  v4 = *&v15[16];
  v5 = v15[24];
  v7 = *v1;
  v6 = *(v1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v15[24])
  {
    sub_1B0D0CDFC(v15, v14);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0D0CDFC(v15, v14);
  }

  v8 = sub_1B0D0D9E4(v7, v6);
  if (v9)
  {
    sub_1B0D0CB00();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v6;
    *(v10 + 16) = 0;
    swift_willThrow();
    sub_1B0447F00(v13);
  }

  else
  {
    v12 = v8;

    *a1 = v12;
    *(a1 + 4) = HIDWORD(v12);
    *(a1 + 8) = v13;
    *(a1 + 16) = v3;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    type metadata accessor for Response(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1B0D0ABA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Response(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0446A38(a1, v7, type metadata accessor for Response);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result == 3)
    {
      result = sub_1B0446AA0(v7, type metadata accessor for Response);
      v20 = 0x6C61746166;
      v21 = 0xE500000000000000;
      goto LABEL_30;
    }

    if (result != 4)
    {
      v20 = 0x72617453656C6469;
      v21 = 0xEB00000000646574;
      goto LABEL_30;
    }

    result = sub_1B0446AA0(v7, type metadata accessor for Response);
    v22 = 0x80000001B0F2F540;
    v23 = 0xD000000000000017;
    goto LABEL_49;
  }

  if (!result)
  {
    type metadata accessor for ResponsePayload();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          result = sub_1B0446AA0(v7, type metadata accessor for ResponsePayload);
          v20 = 0x6465676761746E75;
          v21 = 0xEC00000029646928;
          goto LABEL_30;
        }

        result = sub_1B0446AA0(v7, type metadata accessor for ResponsePayload);
        v35 = "untagged(quotaRoot)";
        goto LABEL_48;
      }

      if (EnumCaseMultiPayload == 7)
      {
        result = sub_1B0446AA0(v7, type metadata accessor for ResponsePayload);
        v20 = 0x6465676761746E75;
        v21 = 0xEF2961746F757128;
        goto LABEL_30;
      }

      if (EnumCaseMultiPayload == 8)
      {
        result = sub_1B0446AA0(v7, type metadata accessor for ResponsePayload);
        v22 = 0x80000001B0F2F600;
        v23 = 0xD000000000000012;
        goto LABEL_49;
      }

      result = sub_1B0446AA0(v7, type metadata accessor for ResponsePayload);
      v36 = "untagged(applePushService)";
    }

    else
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          *a2 = 0xD000000000000015;
          a2[1] = 0x80000001B0F2F680;
          return sub_1B0446AA0(v7, type metadata accessor for ResponsePayload);
        }

        if (EnumCaseMultiPayload == 3)
        {
          result = sub_1B0446AA0(v7, type metadata accessor for ResponsePayload);
          v22 = 0x80000001B0F2F660;
          v23 = 0xD000000000000018;
        }

        else
        {
          result = sub_1B0446AA0(v7, type metadata accessor for ResponsePayload);
          v22 = 0x80000001B0F2F640;
          v23 = 0xD000000000000014;
        }

        goto LABEL_49;
      }

      if (EnumCaseMultiPayload)
      {
        result = sub_1B0446AA0(v7, type metadata accessor for ResponsePayload);
        v37 = "untagged(mailboxData)";
        goto LABEL_46;
      }

      result = sub_1B0446AA0(v7, type metadata accessor for ResponsePayload);
      v36 = "untagged(conditionalState)";
    }

    v22 = (v36 - 32) | 0x8000000000000000;
    v23 = 0xD00000000000001ALL;
    goto LABEL_49;
  }

  if (result != 1)
  {
    v25 = *v7;
    v26 = *(v7 + 1);
    v28 = *(v7 + 2);
    v27 = *(v7 + 3);
    v29 = *(v7 + 4);
    v30 = v7[40];
    if (v7[40])
    {
      *&v49[0] = *v7;
      *(&v49[0] + 1) = v26;
      if (v30 == 1)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1B2726E80](5197344, 0xE300000000000000);

        v31 = v28;
        v32 = v27;
        v33 = v29;
        v34 = 1;
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1B2726E80](1145127456, 0xE400000000000000);

        v31 = v28;
        v32 = v27;
        v33 = v29;
        v34 = 2;
      }
    }

    else
    {
      *&v49[0] = *v7;
      *(&v49[0] + 1) = v26;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](4935456, 0xE300000000000000);

      v31 = v28;
      v32 = v27;
      v33 = v29;
      v34 = 0;
    }

    result = sub_1B0BB6FE0(v31, v32, v33, v34);
    v21 = *(&v49[0] + 1);
    v20 = *&v49[0];
    goto LABEL_30;
  }

  v9 = *(v7 + 9);
  v10 = *(v7 + 7);
  v45 = *(v7 + 8);
  v46 = v9;
  v11 = *(v7 + 9);
  v47 = *(v7 + 10);
  v12 = *(v7 + 5);
  v13 = *(v7 + 3);
  v41 = *(v7 + 4);
  v42 = v12;
  v14 = *(v7 + 5);
  v15 = *(v7 + 7);
  v43 = *(v7 + 6);
  v44 = v15;
  v16 = *(v7 + 1);
  v38[0] = *v7;
  v38[1] = v16;
  v17 = *(v7 + 3);
  v19 = *v7;
  v18 = *(v7 + 1);
  v39 = *(v7 + 2);
  v40 = v17;
  v49[8] = v45;
  v49[9] = v11;
  v49[10] = *(v7 + 10);
  v49[4] = v41;
  v49[5] = v14;
  v49[6] = v43;
  v49[7] = v10;
  v49[0] = v19;
  v49[1] = v18;
  v48 = *(v7 + 88);
  v50 = *(v7 + 88);
  v49[2] = v39;
  v49[3] = v13;
  result = sub_1B0D0CBC8(v49);
  if (result > 3)
  {
    if (result == 4)
    {
      sub_1B041BA38(v49);
      result = sub_1B0D0CBE4(v38);
      v37 = "fetch(streamingBytes)";
      goto LABEL_46;
    }

    if (result != 5)
    {
      v20 = 0x6966286863746566;
      v21 = 0xED0000296873696ELL;
      goto LABEL_30;
    }

    v35 = "fetch(streamingEnd)";
LABEL_48:
    v22 = (v35 - 32) | 0x8000000000000000;
    v23 = 0xD000000000000013;
    goto LABEL_49;
  }

  if (result < 2)
  {
    result = sub_1B041BA38(v49);
    v20 = 0x7473286863746566;
    v21 = 0xEC00000029747261;
LABEL_30:
    *a2 = v20;
    a2[1] = v21;
    return result;
  }

  if (result != 2)
  {
    sub_1B041BA38(v49);
    result = sub_1B0D0CBE4(v38);
    v37 = "fetch(streamingBegin)";
LABEL_46:
    v22 = (v37 - 32) | 0x8000000000000000;
    v23 = 0xD000000000000015;
    goto LABEL_49;
  }

  sub_1B041BA38(v49);
  result = sub_1B0D0CBE4(v38);
  v22 = 0x80000001B0F2F5C0;
  v23 = 0xD000000000000016;
LABEL_49:
  *a2 = v23;
  a2[1] = v22;
  return result;
}

void sub_1B0D0B1F8(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_37;
  }

  v8 = a3[1];
  v9 = *(type metadata accessor for Response(0) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v9 + 72);
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    goto LABEL_22;
  }

  if (!a4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v16 = a4 + v14 * v4;
  if (v16 <= a2 && v16 + v14 * v11 > a2)
  {
    if (v16 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    swift_arrayInitWithTakeFrontToBack();
  }

LABEL_22:
  if (v5 < v8 && v10 >= 1)
  {
    if (v15)
    {
      v19 = a2 + v14 * v11;
      if (v19 < v15 || v19 >= v15 + v14 * v10)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v19 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      return;
    }

LABEL_39:
    __break(1u);
  }
}

void sub_1B0D0B38C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for Response(0) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  v12 = *(v8 + 72);
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_1B0D0B4B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for Response(0) - 8);
  if (v5 >= v7)
  {
    v10 = 0;
    v9 = 0;
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      v11 = *(v8 + 72) * v4;
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1B0D0B5C8()
{
  v1 = *v0;
  v2 = type metadata accessor for Response(0);
  v3 = *(v1 + 16);
  v4 = *(v2 - 8);
  v5 = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65A0, &qword_1B0EE8188);
  v6 = *(v4 + 72);
  v7 = swift_allocObject();
  v8 = *(v1 + 24);
  *(v7 + 16) = v3;
  *(v7 + 24) = v8;
  if (v8 >= 1)
  {
    sub_1B0D0B4B0(v7 + 16, v7 + ((v5 + 40) & ~v5), (v1 + 16), v1 + ((v5 + 40) & ~v5));
  }

  *v0 = v7;
  return result;
}

uint64_t sub_1B0D0B778(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v7 = result;
    v8 = *(result + 16);
    result = v8 - a4;
    if (__OFADD__(v8, -a4))
    {
      __break(1u);
    }

    else
    {
      if (result < 0)
      {
        v9 = __OFADD__(result, *v7);
        result += *v7;
        if (v9)
        {
          goto LABEL_10;
        }
      }

      v7[2] = result;
      v10 = v7[1];
      v9 = __OFADD__(v10, a4);
      v11 = v10 + a4;
      if (!v9)
      {
        v7[1] = v11;
        sub_1B0D0B968(result, v8, v7, a2, v12);
        return sub_1B0D0B81C(a3, a4);
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D0B81C(uint64_t result, uint64_t a2)
{
  v4 = result;
  if ((v2[4] & 1) == 0)
  {
    v6 = v2[1];
    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      v7 = v2[2];
      v8 = v2[3];
      if (result && v6)
      {
        v9 = *v2;
        type metadata accessor for Response(0);
        result = swift_arrayInitWithCopy();
      }

      if (!__OFADD__(v6, a2 - v6))
      {
        if (a2 >= v6)
        {
          if (!v4 || a2 == v6)
          {
            return result;
          }

          result = type metadata accessor for Response(0);
          if (v8 >= a2 - v6)
          {
            v10 = v4 + *(*(result - 8) + 72) * v6;
            goto LABEL_17;
          }

LABEL_24:
          __break(1u);
          return result;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!result || !a2)
  {
    return result;
  }

  if (v2[1] < a2)
  {
    goto LABEL_23;
  }

  v5 = *v2;
  type metadata accessor for Response(0);
LABEL_17:

  return swift_arrayInitWithCopy();
}

uint64_t sub_1B0D0B968@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a2;
  v7 = result;
  if (result >= a2)
  {
    v12 = *a3 - result;
    if (!__OFSUB__(*a3, result))
    {
      v14 = a2 == 0;
      if (a2)
      {
        v13 = a4;
      }

      else
      {
        v13 = 0;
      }

      v15 = type metadata accessor for Response(0);
      v16 = *(v15 - 8);
      result = v15 - 8;
      v10 = v16;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = type metadata accessor for Response(0);
    v11 = *(v9 - 8);
    result = v9 - 8;
    v10 = v11;
    v12 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      v13 = 0;
      v6 = 0;
      v14 = 1;
LABEL_9:
      *a5 = a4 + *(v10 + 72) * v7;
      *(a5 + 8) = v12;
      *(a5 + 16) = v13;
      *(a5 + 24) = v6;
      *(a5 + 32) = v14;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D0BA58(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = HIDWORD(a3);
  v48 = WORD2(a4);
  v9 = BYTE6(a4);
  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B0E46C28();
  GmailLabel.hash(into:)(v51, a2, a3, a4 & 0xFFFFFFFFFFFFFFLL);
  v12 = sub_1B0E46CB8();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  v49 = a4;
  v43 = a3;
  v41 = v8;
  v47 = v9;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = v10;
    v17 = ~v14;
    v18 = (v8 - a3);
    v45 = (v9 & 0xFFFFFFFFFF0000FFLL | (WORD2(a4) << 8)) + a3;
    v46 = v10 + 56;
    while (1)
    {
      v19 = 24 * v15;
      v20 = *(v16 + 48) + 24 * v15;
      v22 = *(v20 + 8);
      v21 = *(v20 + 12);
      if (v21 - v22 == v18)
      {
        v23 = v16;
        v24 = *v20;
        v25 = *(v20 + 20);
        v26 = *(v20 + 22);
        v27 = *(v20 + 16) == v49 && v25 == v48;
        v28 = v27 && v26 == v47;
        if (v28 && v24 == a2)
        {
          break;
        }

        v30 = v18;
        swift_beginAccess();
        v31 = *(v24 + 24) + (v26 | (v25 << 8));
        swift_beginAccess();
        v32 = memcmp((v31 + v22), (*(a2 + 24) + v45), v21 - v22);
        v18 = v30;
        v19 = 24 * v15;
        v13 = v46;
        v16 = v23;
        if (!v32)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v17;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v33 = *(v23 + 48) + v19;
    v34 = *(v33 + 16);
    v35 = *(v33 + 20);
    v36 = *(v33 + 22);
    *a1 = *v33;
    *(a1 + 8) = *(v33 + 8);
    *(a1 + 16) = v34;
    *(a1 + 20) = v35;
    *(a1 + 22) = v36;

    return 0;
  }

  else
  {
LABEL_17:
    v38 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *v42;

    sub_1B0D0BF90(v40, v43, v49 & 0xFFFFFFFFFFFFFFLL, v15, isUniquelyReferenced_nonNull_native);
    *v42 = v50;
    *a1 = a2;
    *(a1 + 8) = v43;
    *(a1 + 12) = v41;
    *(a1 + 16) = v49;
    *(a1 + 20) = v48;
    *(a1 + 22) = v47;
    return 1;
  }
}

uint64_t sub_1B0D0BCD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65C0, &unk_1B0EE81B0);
  v5 = sub_1B0E46208();
  v6 = v5;
  if (*(v3 + 16))
  {
    v7 = 0;
    v35 = v2;
    v36 = (v3 + 56);
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
    v12 = v5 + 56;
    v37 = v3;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v15 | (v7 << 6));
      v20 = *v19;
      v22 = *(v19 + 8);
      v21 = *(v19 + 12);
      v23 = *(v19 + 16);
      v24 = *(v19 + 20);
      v25 = *(v19 + 22);
      v26 = *(v6 + 40);
      sub_1B0E46C28();
      v39 = v39 & 0xFF00000000000000 | v23 | (v24 << 32) | (v25 << 48);
      GmailLabel.hash(into:)(v40, v20, v22 | (v21 << 32), v39);
      result = sub_1B0E46CB8();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 24 * v13;
      *v14 = v20;
      *(v14 + 8) = v22;
      *(v14 + 12) = v21;
      *(v14 + 16) = v23;
      *(v14 + 20) = v24;
      *(v14 + 22) = v25;
      ++*(v6 + 16);
      v3 = v37;
      v10 = v38;
    }

    v16 = v7;
    result = v36;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v11)
      {
        break;
      }

      v18 = v36[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B0D0BF90(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = HIDWORD(a2);
  v36 = WORD2(a3);
  v37 = BYTE6(a3);
  v38 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  v32 = HIDWORD(a2);
  v33 = a2;
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_25;
  }

  v35 = a3;
  if (a5)
  {
    sub_1B0D0BCD8(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1B0D0C1FC();
      LODWORD(a3) = v35;
      goto LABEL_25;
    }

    sub_1B0D0C37C(v9 + 1);
  }

  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_1B0E46C28();
  LODWORD(v13) = v35;
  GmailLabel.hash(into:)(v39, v38, a2, v35 & 0xFFFFFFFFFFFFFFLL);
  result = sub_1B0E46CB8();
  v14 = -1 << *(v11 + 32);
  a4 = result & ~v14;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = a2;
    v16 = ~v14;
    v17 = v8 - a2;
    v34 = (v37 & 0xFFFFFFFFFF0000FFLL | (WORD2(v35) << 8)) + v15;
    LODWORD(a3) = v35;
    while (1)
    {
      v18 = *(v11 + 48) + 24 * a4;
      v20 = *(v18 + 8);
      v19 = *(v18 + 12);
      if (v19 - v20 == v17)
      {
        v13 = *v18;
        v21 = *(v18 + 20);
        v22 = *(v18 + 22);
        v23 = *(v18 + 16) == a3 && v21 == v36;
        v24 = v23 && v22 == v37;
        if (v24 && v13 == v38)
        {
          break;
        }

        swift_beginAccess();
        v13 = *(v13 + 24) + (v22 | (v21 << 8));
        swift_beginAccess();
        result = memcmp((v13 + v20), (*(v38 + 24) + v34), v19 - v20);
        LODWORD(a3) = v35;
        if (!result)
        {
          break;
        }
      }

      a4 = (a4 + 1) & v16;
      if (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    result = sub_1B0E46B98();
    __break(1u);
  }

  LODWORD(a3) = v13;
LABEL_25:
  v26 = *v31;
  *(*v31 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v27 = *(v26 + 48) + 24 * a4;
  *v27 = v38;
  *(v27 + 8) = v33;
  *(v27 + 12) = v32;
  *(v27 + 16) = a3;
  *(v27 + 20) = v36;
  *(v27 + 22) = v37;
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v30;
  }

  return result;
}

void *sub_1B0D0C1FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65C0, &unk_1B0EE81B0);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 20);
        v21 = *(v18 + 22);
        v22 = *(v4 + 48) + v17;
        v23 = *(v18 + 8);
        *v22 = *v18;
        *(v22 + 8) = v23;
        *(v22 + 16) = v19;
        *(v22 + 20) = v20;
        *(v22 + 22) = v21;
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

uint64_t sub_1B0D0C37C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65C0, &unk_1B0EE81B0);
  result = sub_1B0E46208();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = v3 + 56;
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
    v33 = v2;
    v34 = (v9 + 63) >> 6;
    v12 = result + 56;
    v35 = v3;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(v3 + 48) + 24 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 12);
      v22 = *(v18 + 16);
      v23 = *(v18 + 20);
      v24 = *(v18 + 22);
      v25 = *(v6 + 40);
      sub_1B0E46C28();
      v37 = v37 & 0xFF00000000000000 | v22 | (v23 << 32) | (v24 << 48);
      GmailLabel.hash(into:)(v38, v19, v20 | (v21 << 32), v37);
      result = sub_1B0E46CB8();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 12) = v21;
      *(v14 + 16) = v22;
      *(v14 + 20) = v23;
      *(v14 + 22) = v24;
      ++*(v6 + 16);

      v3 = v35;
      v11 = v36;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v34)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

uint64_t sub_1B0D0C618(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B041C194();
  result = MEMORY[0x1B2727570](v2, &type metadata for Flag, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B01BA4(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1B0D0C6B0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_1B0D0CCF4();
  result = MEMORY[0x1B2727570](v3, &type metadata for GmailLabel, v4);
  v10 = result;
  if (v3)
  {
    v6 = (a1 + 54);
    do
    {
      v7 = *(v6 - 14);
      v8 = *(v6 - 22);
      v1 = v1 & 0xFF00000000000000 | *(v6 - 6) | (*(v6 - 1) << 32) | (*v6 << 48);

      sub_1B0D0BA58(v9, v8, v7, v1);

      v6 += 24;
      --v3;
    }

    while (v3);
    return v10;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213FramingParserV18LiteralHeaderStateO(uint64_t a1)
{
  if ((*(a1 + 23) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 23) & 7;
  }
}

unint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213FramingParserV5StateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1B0D0C7BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1B0D0C804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B0D0C884()
{
  type metadata accessor for ResponseOrContinuationRequest(319);
  if (v0 <= 0x3F)
  {
    sub_1B0D0C90C();
    if (v1 <= 0x3F)
    {
      sub_1B0D0C994();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1B0D0C90C()
{
  if (!qword_1EB6DA390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1748, &qword_1B0E99930);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6588, &qword_1B0EE80E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DA390);
    }
  }
}

void sub_1B0D0C994()
{
  if (!qword_1EB6DA388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1748, &qword_1B0E99930);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DA388);
    }
  }
}

__n128 __swift_memcpy103_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B0D0CA34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 103))
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

uint64_t sub_1B0D0CA7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 102) = 0;
    *(result + 100) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 103) = 1;
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

    *(result + 103) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0D0CB00()
{
  result = qword_1EB6E6590;
  if (!qword_1EB6E6590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6590);
  }

  return result;
}

unint64_t sub_1B0D0CB74()
{
  result = qword_1EB6DD0F8;
  if (!qword_1EB6DD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD0F8);
  }

  return result;
}

uint64_t sub_1B0D0CBC8(uint64_t a1)
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

unint64_t sub_1B0D0CCA0()
{
  result = qword_1EB6E65B0;
  if (!qword_1EB6E65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E65B0);
  }

  return result;
}

unint64_t sub_1B0D0CCF4()
{
  result = qword_1EB6E65B8;
  if (!qword_1EB6E65B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E65B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore216SectionSpecifierV4KindO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213StreamingKindO(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213FetchResponseO(uint64_t a1)
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

__n128 __swift_memcpy178_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 88);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1B0D0CEF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 178))
  {
    return (*a1 + 3);
  }

  v3 = *(a1 + 176);
  if ((~(v3 >> 9) & 6) != 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = ~(v3 >> 9) & 7;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D0CF48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 178) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 178) = 0;
    }

    if (a2)
    {
      *(result + 144) = 0u;
      *(result + 160) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 176) = (-512 * a2) & 0xE00;
    }
  }

  return result;
}

void sub_1B0D0D014()
{
  sub_1B0CF82BC();
  if (v0 <= 0x3F)
  {
    sub_1B07B1348();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13IMAP2Protocol10ParseErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1B0D0D0C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D0D10C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0D0D150(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t Tag.debugDescription.getter(uint64_t a1)
{
  v2 = sub_1B0E44B68();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B0D0D4B0(a1 & 0xFFFFFFFF000000FFLL);
  sub_1B0E44B48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B07B517C();
  v4 = sub_1B0E44B08();
  v6 = v5;

  if (v6)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t Tag.hashValue.getter()
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D0D388()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  sub_1B0E46C28();
  sub_1B0E46C68();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D0D3E8()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  sub_1B0E46C68();
  return sub_1B0E46C88();
}

uint64_t sub_1B0D0D428()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  sub_1B0E46C28();
  sub_1B0E46C68();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

char *sub_1B0D0D4B0(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  v3 = sub_1B0C0C114(0, 10, 0, MEMORY[0x1E69E7CC0]);
  v4 = v1 + 1;
  v5 = *(v3 + 2);
  do
  {
    if (v5 >= *(v3 + 3) >> 1)
    {
      v3 = sub_1B0C0C114(1, v5 + 1, 1, v3);
      v6 = *(v3 + 2);
    }

    else
    {
      v6 = v5;
    }

    v7 = v4 - 1;
    v8 = (v4 - 1);
    v4 = (v4 - 1) / 0x1Au;
    v9 = v7 - 26 * v4 + 65;
    result = memmove(v3 + 33, v3 + 32, v6);
    v5 = v6 + 1;
    *(v3 + 2) = v6 + 1;
    v3[32] = v9;
  }

  while (v8 > 0x19);
  while (1)
  {
    v11 = *(v3 + 2);
    if (v11 <= v6)
    {
      break;
    }

    if (v11 >= *(v3 + 3) >> 1)
    {
      v3 = sub_1B0C0C114(1, v11 + 1, 1, v3);
      v11 = *(v3 + 2);
    }

    result = memmove(&v3[v5 + 33], &v3[v5 + 32], v11 - v5);
    ++*(v3 + 2);
    v3[v5 + 32] = (v2 % 0xA) | 0x30;
    v12 = v2 > 9;
    LODWORD(v2) = v2 / 0xA;
    if (!v12)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D0D624()
{
  v1 = sub_1B0E44B68();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1B0D0D4B0(*v0 | (*(v0 + 1) << 32));
  sub_1B0E44B48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B07B517C();
  v3 = sub_1B0E44B08();
  v5 = v4;

  if (v5)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D0D704(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v3 = result;
      v4 = 0;
      v5 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v6 = *(v3 + v4);
        if ((v6 - 91) < 0xE6u)
        {
          break;
        }

        if (v4 >= a2)
        {
          __break(1u);
          goto LABEL_47;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0C0C114(0, *(v5 + 16) + 1, 1, v5);
          v5 = result;
        }

        v8 = *(v5 + 16);
        v7 = *(v5 + 24);
        if (v8 >= v7 >> 1)
        {
          result = sub_1B0C0C114((v7 > 1), v8 + 1, 1, v5);
          v5 = result;
        }

        ++v4;
        *(v5 + 16) = v8 + 1;
        *(v5 + v8 + 32) = v6 - 65;
        if (a2 == v4)
        {
          v4 = a2;
          break;
        }
      }

      v9 = (v5 + 16);
      if (!*(v5 + 16))
      {
        goto LABEL_27;
      }

      v11 = a2 - v4;
      if (a2 == v4)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v20 = (v3 + v4);
        v21 = v4 + 1;
        v10 = MEMORY[0x1E69E7CC0];
        do
        {
          v23 = *v20++;
          v22 = v23;
          if ((v23 - 58) < 0xF6u)
          {
            break;
          }

          if (v21 > a2)
          {
            goto LABEL_51;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0C0C114(0, *(v10 + 16) + 1, 1, v10);
            v10 = result;
          }

          v25 = *(v10 + 16);
          v24 = *(v10 + 24);
          if (v25 >= v24 >> 1)
          {
            result = sub_1B0C0C114((v24 > 1), v25 + 1, 1, v10);
            v10 = result;
          }

          *(v10 + 16) = v25 + 1;
          *(v10 + v25 + 32) = v22 - 48;
          ++v21;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
      v9 = (MEMORY[0x1E69E7CC0] + 16);
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_27;
      }

      v10 = MEMORY[0x1E69E7CC0];
    }

    v12 = *(v10 + 16);
    if (v12)
    {
      v13 = *v9;
      if (*v9)
      {
        v14 = 0;
        v15 = (v5 + 32);
        while (1)
        {
          v16 = 26 * v14;
          if ((v14 * 26) >> 64 != (26 * v14) >> 63)
          {
            break;
          }

          v17 = *v15 + 1;
          v18 = __OFADD__(v16, v17);
          v14 = v16 + v17;
          if (v18)
          {
            goto LABEL_48;
          }

          ++v15;
          if (!--v13)
          {
            v19 = v14 - 1;
            if (!__OFSUB__(v14, 1))
            {
              goto LABEL_24;
            }

            __break(1u);
            goto LABEL_39;
          }
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v19 = -1;
LABEL_24:
      if ((v19 & 0x8000000000000000) == 0 && v19 <= 0xFF)
      {
LABEL_39:
        v26 = 0;
        for (i = 32; ; ++i)
        {
          v28 = 10 * v26;
          if ((v26 * 10) >> 64 != (10 * v26) >> 63)
          {
            break;
          }

          v29 = *(v10 + i);
          v26 = v28 + v29;
          if (__OFADD__(v28, v29))
          {
            goto LABEL_50;
          }

          if (!--v12)
          {

            if (HIDWORD(v26))
            {
              return 0;
            }

            else
            {
              return v19 | (v26 << 32);
            }
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1B0D0D9E4(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B0A6C2B0();
    v8 = v7;

    a1 = v6;
    v2 = v8;
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = HIBYTE(v2) & 0xF;
    v11[0] = a1;
    v11[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v11;
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = sub_1B0E46368();
  }

  v5 = v3;
LABEL_8:
  v9 = sub_1B0D0D704(v5, v4);

  return v9;
}

unint64_t sub_1B0D0DA98()
{
  result = qword_1EB6E65C8;
  if (!qword_1EB6E65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E65C8);
  }

  return result;
}

uint64_t EngineTracingID.hashValue.getter()
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t EngineTracingIDOwner.__allocating_init()()
{
  v0 = swift_allocObject();
  if (qword_1EB6DEA88 != -1)
  {
    swift_once();
  }

  v1 = off_1EB6DEA90;

  os_unfair_lock_lock(v1 + 7);
  sub_1B0D0E0A0(&v1[4], &v4);
  os_unfair_lock_unlock(v1 + 7);
  v2 = v4;

  *(v0 + 16) = v2;
  return v0;
}

uint64_t EngineTracingIDOwner.init()()
{
  if (qword_1EB6DEA88 != -1)
  {
    swift_once();
  }

  v1 = off_1EB6DEA90;

  os_unfair_lock_lock(v1 + 7);
  sub_1B0D0E0A0(&v1[4], &v4);
  os_unfair_lock_unlock(v1 + 7);
  v2 = v4;

  *(v0 + 16) = v2;
  return v0;
}

uint64_t EngineTracingIDOwner.deinit()
{
  v1 = v0;
  if (qword_1EB6DEA88 != -1)
  {
    goto LABEL_22;
  }

LABEL_2:
  v2 = off_1EB6DEA90;
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v2 + 7);
  v4 = (v2 + 16);
  v5 = *(v2 + 2);
  v6 = *(v5 + 2);
  if (!v6)
  {
    goto LABEL_6;
  }

  for (i = 0; i != v6; ++i)
  {
    if (i[v5 + 32] == v3)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_24;
      }

      v10 = *(v2 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v12 = *(v5 + 2);
        if (v9 != v12)
        {
          v14 = v5 + 32;
          v15 = &i[v5 + 33];
          while (v9 < v12)
          {
            v17 = *v15;
            if (v17 != v3)
            {
              if (v9 != i)
              {
                if (i >= v12)
                {
                  __break(1u);
                  break;
                }

                v16 = i[v14];
                i[v14] = v17;
                *v15 = v16;
                v12 = *(v5 + 2);
              }

              ++i;
            }

            ++v9;
            ++v15;
            if (v9 == v12)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_22:
          swift_once();
          goto LABEL_2;
        }

LABEL_10:
        *v4 = v5;
        v8 = *(v5 + 2);
        v6 = i;
        if (v8 >= i)
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v18 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v19 = sub_1B0D0E298(v18);
        v20 = *v4;
        *v4 = v19;

        v5 = *v4;
      }
    }
  }

LABEL_6:
  v8 = *(v5 + 2);
LABEL_11:
  sub_1B0D0E350(v6, v8);
  os_unfair_lock_unlock(v2 + 7);

  return v1;
}

uint64_t EngineTracingIDOwner.__deallocating_deinit()
{
  v1 = v0;
  if (qword_1EB6DEA88 != -1)
  {
    goto LABEL_24;
  }

LABEL_2:
  v2 = off_1EB6DEA90;
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v2 + 7);
  v4 = (v2 + 16);
  v5 = *(v2 + 2);
  v6 = *(v5 + 2);
  if (!v6)
  {
    goto LABEL_6;
  }

  for (i = 0; i != v6; ++i)
  {
    if (i[v5 + 32] == v3)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_26;
      }

      v10 = *(v2 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v12 = *(v5 + 2);
        if (v9 != v12)
        {
          v14 = v5 + 32;
          v15 = &i[v5 + 33];
          while (v9 < v12)
          {
            v17 = *v15;
            if (v17 != v3)
            {
              if (v9 != i)
              {
                if (i >= v12)
                {
                  __break(1u);
                  break;
                }

                v16 = i[v14];
                i[v14] = v17;
                *v15 = v16;
                v12 = *(v5 + 2);
              }

              ++i;
            }

            ++v9;
            ++v15;
            if (v9 == v12)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_24:
          swift_once();
          goto LABEL_2;
        }

LABEL_10:
        *v4 = v5;
        v8 = *(v5 + 2);
        v6 = i;
        if (v8 >= i)
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v18 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v19 = sub_1B0D0E298(v18);
        v20 = *v4;
        *v4 = v19;

        v5 = *v4;
      }
    }
  }

LABEL_6:
  v8 = *(v5 + 2);
LABEL_11:
  sub_1B0D0E350(v6, v8);
  os_unfair_lock_unlock(v2 + 7);

  return swift_deallocClassInstance();
}

uint64_t sub_1B0D0E04C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65E0, &qword_1B0EE8B10);
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 28) = 0;
  *(result + 16) = v1;
  *(result + 24) = 1;
  off_1EB6DEA90 = result;
  return result;
}

uint64_t sub_1B0D0E0A0@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  v4 = *result;
  v5 = *(*result + 16);
  v6 = *(result + 8);
  while (2)
  {
    if (v6 < 0x1E)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(*result + 16);
    v9 = (*result + 32);
    do
    {
      if (!v8)
      {
        *(result + 8) = v7;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1B0D0E1A4(0, v5 + 1, 1, v4);
          v4 = result;
        }

        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_1B0D0E1A4((v11 > 1), v12 + 1, 1, v4);
          v4 = result;
        }

        *(v4 + 16) = v12 + 1;
        *(v4 + v12 + 32) = v6;
        *v2 = v4;
        goto LABEL_15;
      }

      v10 = *v9++;
      --v8;
    }

    while (v10 != v6);
    v6 = v7;
    if (v7 != *(result + 8))
    {
      continue;
    }

    break;
  }

  LOBYTE(v6) = 31;
LABEL_15:
  *a2 = v6;
  return result;
}

char *sub_1B0D0E1A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65D8, &qword_1B0EE8B08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1B0D0E2AC(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_1B0D0E350(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1B0D0E1A4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1B0D0E2AC(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1B0D0E414()
{
  result = qword_1EB6E65D0;
  if (!qword_1EB6E65D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E65D0);
  }

  return result;
}

uint64_t TaskName.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B0D0E54C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t MailboxTaskLoggerID.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t MailboxTaskLoggerID.mailbox.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t MailboxTaskLoggerID.init(id:name:counter:mailbox:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_1B0D0E668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t sub_1B0D0E6B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0D0E71C()
{
  sub_1B0D0E9A4();
  result = sub_1B0E45D48();
  tracingLog = result;
  return result;
}

uint64_t sub_1B0D0E77C()
{
  v0 = sub_1B0E43868();
  __swift_allocate_value_buffer(v0, tracingSignposter);
  __swift_project_value_buffer(v0, tracingSignposter);
  if (qword_1EB6DEA98 != -1)
  {
    swift_once();
  }

  v1 = tracingLog;
  return sub_1B0E43848();
}

uint64_t sub_1B0D0E814()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D0E88C()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D0E8D0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s2os12OSSignpostIDV12IMAP2TracingE9TraceKindO8rawValueAFSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t _s2os12OSSignpostIDV12IMAP2TracingE9TraceKindO8rawValueAFSgs5UInt8V_tcfC_0(unsigned __int8 a1)
{
  if (a1 <= 6u)
  {
    return (0x5040302010006uLL >> (8 * a1));
  }

  else
  {
    return 6;
  }
}

unint64_t sub_1B0D0E940()
{
  result = qword_1EB6E65E8;
  if (!qword_1EB6E65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E65E8);
  }

  return result;
}

unint64_t sub_1B0D0E9A4()
{
  result = qword_1EB6DA588;
  if (!qword_1EB6DA588)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB6DA588);
  }

  return result;
}

IMAPSearchIndexerXPC::AccountID_optional __swiftcall AccountID.init(rawValue:)(Swift::String rawValue)
{
  v1 = HIBYTE(rawValue._object) & 0xF;
  if ((rawValue._object & 0x2000000000000000) == 0)
  {
    v1 = rawValue._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {

    rawValue._countAndFlagsBits = 0;
    rawValue._object = 0;
  }

  result.value.rawValue = rawValue;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1B0D0EA64()
{
  sub_1B0D0EC3C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D0EAA0()
{
  sub_1B0D0EC3C();

  return sub_1B0E46F38();
}

uint64_t static AccountID.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t AccountID.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E65F8, &qword_1B0EE8D40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D0EC3C();
  sub_1B0E46D48();
  sub_1B0E46928();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1B0D0EC3C()
{
  result = qword_1EB6DC370;
  if (!qword_1EB6DC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC370);
  }

  return result;
}

uint64_t AccountID.hashValue.getter()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t AccountID.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6608, &qword_1B0EE8D48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D0EC3C();
  sub_1B0E46D18();
  if (!v1)
  {
    v9 = sub_1B0E46848();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_1B0D0EE40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6608, &qword_1B0EE8D48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D0EC3C();
  sub_1B0E46D18();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = sub_1B0E46848();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1B0D0EFBC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E65F8, &qword_1B0EE8D40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D0EC3C();
  sub_1B0E46D48();
  sub_1B0E46928();
  return (*(v4 + 8))(v7, v3);
}

uint64_t AccountConfiguration.accountID.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t AccountConfiguration.accountID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AccountConfiguration.endpoint.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t AccountConfiguration.endpoint.setter(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = *(v3 + 24);

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t AccountConfiguration.Endpoint.host.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B0D0F2E4()
{
  if (*v0)
  {
    return 1953656688;
  }

  else
  {
    return 1953722216;
  }
}

uint64_t sub_1B0D0F308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953722216 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953656688 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0D0F3E4()
{
  sub_1B0D0F648();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D0F420()
{
  sub_1B0D0F648();

  return sub_1B0E46F38();
}

BOOL static AccountConfiguration.Endpoint.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = sub_1B0E46A78();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t AccountConfiguration.Endpoint.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E6610, &qword_1B0EE8D50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D0F648();
  sub_1B0E46D48();
  v16 = 0;
  sub_1B0E46928();
  if (!v4)
  {
    v15 = 1;
    sub_1B0E46978();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1B0D0F648()
{
  result = qword_1EB6DC428;
  if (!qword_1EB6DC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC428);
  }

  return result;
}

uint64_t AccountConfiguration.Endpoint.init(from:)(uint64_t *a1)
{
  result = sub_1B0D10980(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1B0D0F6C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B0D10980(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

BOOL sub_1B0D0F710(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1B0E46A78();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1B0D0F7A0()
{
  v1 = 0x534C547472617473;
  if (*v0 != 1)
  {
    v1 = 7564404;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572756365736E69;
  }
}

uint64_t sub_1B0D0F7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0D10CFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0D0F81C()
{
  sub_1B0D10B58();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D0F858()
{
  sub_1B0D10B58();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D0F8A0()
{
  sub_1B0D10CA8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D0F8DC()
{
  sub_1B0D10CA8();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D0F918()
{
  sub_1B0D10C54();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D0F954()
{
  sub_1B0D10C54();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D0F990()
{
  sub_1B0D10BAC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D0F9CC()
{
  sub_1B0D10BAC();

  return sub_1B0E46F38();
}

uint64_t static AccountConfiguration.TransportLayerSecurity.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        return ((a2 ^ a1) & 0x3F) == 0;
      }
    }

    else if (a2 == 128)
    {
      return 1;
    }
  }

  else if (a2 <= 0x3Fu)
  {
    return a1 == a2;
  }

  return 0;
}

uint64_t AccountConfiguration.TransportLayerSecurity.encode(to:)(void *a1, int a2)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6620, &qword_1B0EE8D58);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6628, &qword_1B0EE8D60);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6630, &qword_1B0EE8D68);
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E6638, &qword_1B0EE8D70);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D10B58();
  v20 = v32;
  sub_1B0E46D48();
  if (!(v20 >> 6))
  {
    v35 = 1;
    sub_1B0D10C54();
    sub_1B0E468B8();
    v34 = v20;
    sub_1B0D10C00();
    v24 = v28;
    sub_1B0E46958();
    (*(v27 + 8))(v9, v24);
    return (*(v15 + 8))(v18, v14);
  }

  if (v20 >> 6 == 1)
  {
    v21 = v20 & 0x3F;
    v37 = 2;
    sub_1B0D10BAC();
    v22 = v29;
    sub_1B0E468B8();
    v36 = v21;
    sub_1B0D10C00();
    v23 = v31;
    sub_1B0E46958();
    (*(v30 + 8))(v22, v23);
    return (*(v15 + 8))(v18, v14);
  }

  v33 = 0;
  sub_1B0D10CA8();
  sub_1B0E468B8();
  (*(v26 + 8))(v13, v10);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1B0D0FEA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0D10E14(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B0D0FEE8()
{
  sub_1B0D1148C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D0FF24()
{
  sub_1B0D1148C();

  return sub_1B0E46F38();
}

unint64_t sub_1B0D0FF60()
{
  v1 = 0xD000000000000011;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_1B0D0FFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0D11670(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0D0FFDC()
{
  sub_1B0D11438();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D10018()
{
  sub_1B0D11438();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D10054()
{
  sub_1B0D11534();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D10090()
{
  sub_1B0D11534();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D100CC()
{
  sub_1B0D114E0();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D10108()
{
  sub_1B0D114E0();

  return sub_1B0E46F38();
}

uint64_t AccountConfiguration.CertificateTrustPolicy.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6658, &qword_1B0EE8D78);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6660, &qword_1B0EE8D80);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6668, &qword_1B0EE8D88);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E6670, &qword_1B0EE8D90);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D11438();
  sub_1B0E46D48();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1B0D114E0();
      sub_1B0E468B8();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1B0D1148C();
      v21 = v27;
      sub_1B0E468B8();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1B0D11534();
    sub_1B0E468B8();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t AccountConfiguration.CertificateTrustPolicy.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D1054C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0D11798(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t AccountConfiguration.init(accountID:endpoint:transportLayerSecurity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 34) = a6;
  return result;
}

uint64_t sub_1B0D105A8()
{
  v1 = 0x746E696F70646E65;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_1B0D1060C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0D11E58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0D10634()
{
  sub_1B0D11D08();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D10670()
{
  sub_1B0D11D08();

  return sub_1B0E46F38();
}

uint64_t AccountConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6698, &qword_1B0EE8D98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D11D08();
  sub_1B0E46D48();
  v12 = *v3;
  v14 = 0;
  sub_1B0D11D5C();
  sub_1B0E46958();
  if (!v2)
  {
    v12 = v3[1];
    v13 = *(v3 + 16);
    v14 = 1;
    sub_1B0D11DB0();
    sub_1B0E46958();
    LOBYTE(v12) = *(v3 + 34);
    v14 = 2;
    sub_1B0D11E04();
    sub_1B0E46958();
  }

  return (*(v6 + 8))(v9, v5);
}

double AccountConfiguration.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B0D11F80(a1, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a2 = v6;
    *(a2 + 16) = v5;
    *(a2 + 31) = *&v7[15];
  }

  return result;
}

double sub_1B0D108D4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B0D11F80(a1, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a2 = v6;
    *(a2 + 16) = v5;
    *(a2 + 31) = *&v7[15];
  }

  return result;
}

BOOL sub_1B0D10934(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return _s20IMAPSearchIndexerXPC20AccountConfigurationV23__derived_struct_equalsySbAC_ACtFZ_0(&v5, &v7);
}

uint64_t sub_1B0D10980(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6758, &unk_1B0EE9C40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D0F648();
  sub_1B0E46D18();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_1B0E46848();
    v10[14] = 1;
    sub_1B0E46888();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_1B0D10B58()
{
  result = qword_1EB6DC4A0;
  if (!qword_1EB6DC4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4A0);
  }

  return result;
}

unint64_t sub_1B0D10BAC()
{
  result = qword_1EB6DC478;
  if (!qword_1EB6DC478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC478);
  }

  return result;
}

unint64_t sub_1B0D10C00()
{
  result = qword_1EB6DC4B0;
  if (!qword_1EB6DC4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4B0);
  }

  return result;
}

unint64_t sub_1B0D10C54()
{
  result = qword_1EB6E6648;
  if (!qword_1EB6E6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6648);
  }

  return result;
}

unint64_t sub_1B0D10CA8()
{
  result = qword_1EB6E6650;
  if (!qword_1EB6E6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6650);
  }

  return result;
}

uint64_t sub_1B0D10CFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756365736E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x534C547472617473 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7564404 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B0D10E14(uint64_t *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6730, &qword_1B0EE9C20);
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v32 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6738, &qword_1B0EE9C28);
  v35 = *(v32 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6740, &qword_1B0EE9C30);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6748, &qword_1B0EE9C38);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v39 = a1;
  v18 = __swift_project_boxed_opaque_existential_0(a1, v17);
  sub_1B0D10B58();
  v19 = v38;
  sub_1B0E46D18();
  if (!v19)
  {
    v38 = v7;
    v20 = v37;
    v21 = v12;
    v22 = sub_1B0E468A8();
    v23 = (2 * *(v22 + 16)) | 1;
    v40 = v22;
    v41 = v22 + 32;
    v42 = 0;
    v43 = v23;
    v24 = sub_1B0D26074();
    if (v24 == 3 || v42 != v43 >> 1)
    {
      v26 = sub_1B0E46338();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0) + 48);
      *v28 = &type metadata for AccountConfiguration.TransportLayerSecurity;
      v18 = v15;
      sub_1B0E46808();
      sub_1B0E46328();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v21 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }

    else if (v24)
    {
      if (v24 == 1)
      {
        v44 = 1;
        sub_1B0D10C54();
        sub_1B0E467F8();
        sub_1B0D12FD8();
        v25 = v32;
        sub_1B0E46868();
        (*(v35 + 8))(v6, v25);
        (*(v12 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v18 = v44;
      }

      else
      {
        v44 = 2;
        sub_1B0D10BAC();
        sub_1B0E467F8();
        sub_1B0D12FD8();
        v31 = v34;
        sub_1B0E46868();
        (*(v36 + 8))(v20, v31);
        (*(v12 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v18 = v44 | 0x40u;
      }
    }

    else
    {
      v44 = 0;
      sub_1B0D10CA8();
      sub_1B0E467F8();
      (*(v33 + 8))(v10, v38);
      (*(v12 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v18 = 128;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v39);
  return v18;
}

unint64_t sub_1B0D11438()
{
  result = qword_1EB6DC508;
  if (!qword_1EB6DC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC508);
  }

  return result;
}

unint64_t sub_1B0D1148C()
{
  result = qword_1EB6E6680;
  if (!qword_1EB6E6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6680);
  }

  return result;
}

unint64_t sub_1B0D114E0()
{
  result = qword_1EB6E6688;
  if (!qword_1EB6E6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6688);
  }

  return result;
}

unint64_t sub_1B0D11534()
{
  result = qword_1EB6DC4E0;
  if (!qword_1EB6DC4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4E0);
  }

  return result;
}

BOOL _s20IMAPSearchIndexerXPC20AccountConfigurationV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    if (v5 != v6)
    {
      return 0;
    }

LABEL_14:
    v10 = *(a1 + 34);
    v11 = *(a2 + 34);
    if (v10 >> 6)
    {
      if (v10 >> 6 == 1)
      {
        return (v11 & 0xC0) == 0x40 && ((v11 ^ v10) & 0x3F) == 0;
      }

      if (v11 != 128)
      {
        return 0;
      }
    }

    else if ((v10 & 0x3F) != v11)
    {
      return 0;
    }

    return 1;
  }

  v8 = sub_1B0E46A78();
  result = 0;
  if ((v8 & 1) != 0 && v5 == v6)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B0D11670(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001B0F2F020 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B0F2F000 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2EFE0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B0E46A78();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B0D11798(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6708, &qword_1B0EE9BF8);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6710, &qword_1B0EE9C00);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6718, &qword_1B0EE9C08);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6720, &unk_1B0EE9C10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v16);
  sub_1B0D11438();
  v18 = v39;
  sub_1B0E46D18();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1B0E468A8();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_1B0D26074();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1B0D114E0();
          sub_1B0E467F8();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v40);
          return v12;
        }

        v45 = 2;
        sub_1B0D1148C();
        v29 = v15;
        sub_1B0E467F8();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1B0D11534();
        v29 = v15;
        sub_1B0E467F8();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1B0E46338();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0) + 48);
    *v27 = &type metadata for AccountConfiguration.CertificateTrustPolicy;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0(v40);
  return v12;
}

unint64_t sub_1B0D11D08()
{
  result = qword_1EB6DC530;
  if (!qword_1EB6DC530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC530);
  }

  return result;
}

unint64_t sub_1B0D11D5C()
{
  result = qword_1EB6DC348;
  if (!qword_1EB6DC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC348);
  }

  return result;
}

unint64_t sub_1B0D11DB0()
{
  result = qword_1EB6DC410;
  if (!qword_1EB6DC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC410);
  }

  return result;
}

unint64_t sub_1B0D11E04()
{
  result = qword_1EB6DC438;
  if (!qword_1EB6DC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC438);
  }

  return result;
}

uint64_t sub_1B0D11E58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B0F2F740 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B0D11F80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E66E8, &qword_1B0EE9BF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D11D08();
  sub_1B0E46D18();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = 0;
  sub_1B0D12EDC();
  sub_1B0E46868();
  v11 = v19;
  v18 = v20;
  v23 = 1;
  sub_1B0D12F30();
  sub_1B0E46868();
  v16 = v19;
  v17 = v11;
  v12 = v20;
  v22 = v21;
  v23 = 2;
  sub_1B0D12F84();
  sub_1B0E46868();
  (*(v6 + 8))(v9, v5);
  v13 = v19;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v15 = v18;
  *a2 = v17;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v12;
  *(a2 + 32) = v22;
  *(a2 + 34) = v13;
  return result;
}

unint64_t sub_1B0D1220C()
{
  result = qword_1EB6E66A0;
  if (!qword_1EB6E66A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66A0);
  }

  return result;
}

unint64_t sub_1B0D12264()
{
  result = qword_1EB6E66A8;
  if (!qword_1EB6E66A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66A8);
  }

  return result;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0D122DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_1B0D12324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0D1237C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1B0D123C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0D124E8()
{
  result = qword_1EB6E66B0;
  if (!qword_1EB6E66B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66B0);
  }

  return result;
}

unint64_t sub_1B0D12540()
{
  result = qword_1EB6E66B8;
  if (!qword_1EB6E66B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66B8);
  }

  return result;
}

unint64_t sub_1B0D12598()
{
  result = qword_1EB6E66C0;
  if (!qword_1EB6E66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66C0);
  }

  return result;
}

unint64_t sub_1B0D125F0()
{
  result = qword_1EB6E66C8;
  if (!qword_1EB6E66C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66C8);
  }

  return result;
}

unint64_t sub_1B0D12648()
{
  result = qword_1EB6E66D0;
  if (!qword_1EB6E66D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66D0);
  }

  return result;
}

unint64_t sub_1B0D126A0()
{
  result = qword_1EB6E66D8;
  if (!qword_1EB6E66D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66D8);
  }

  return result;
}

unint64_t sub_1B0D126F8()
{
  result = qword_1EB6E66E0;
  if (!qword_1EB6E66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66E0);
  }

  return result;
}

unint64_t sub_1B0D12750()
{
  result = qword_1EB6DC518;
  if (!qword_1EB6DC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC518);
  }

  return result;
}

unint64_t sub_1B0D127A8()
{
  result = qword_1EB6DC520;
  if (!qword_1EB6DC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC520);
  }

  return result;
}

unint64_t sub_1B0D12800()
{
  result = qword_1EB6DC4C8;
  if (!qword_1EB6DC4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4C8);
  }

  return result;
}

unint64_t sub_1B0D12858()
{
  result = qword_1EB6DC4D0;
  if (!qword_1EB6DC4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4D0);
  }

  return result;
}

unint64_t sub_1B0D128B0()
{
  result = qword_1EB6DC4B8;
  if (!qword_1EB6DC4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4B8);
  }

  return result;
}

unint64_t sub_1B0D12908()
{
  result = qword_1EB6DC4C0;
  if (!qword_1EB6DC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4C0);
  }

  return result;
}

unint64_t sub_1B0D12960()
{
  result = qword_1EB6DC4E8;
  if (!qword_1EB6DC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4E8);
  }

  return result;
}

unint64_t sub_1B0D129B8()
{
  result = qword_1EB6DC4F0;
  if (!qword_1EB6DC4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4F0);
  }

  return result;
}

unint64_t sub_1B0D12A10()
{
  result = qword_1EB6DC4F8;
  if (!qword_1EB6DC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC4F8);
  }

  return result;
}

unint64_t sub_1B0D12A68()
{
  result = qword_1EB6DC500;
  if (!qword_1EB6DC500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC500);
  }

  return result;
}

unint64_t sub_1B0D12AC0()
{
  result = qword_1EB6DC458;
  if (!qword_1EB6DC458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC458);
  }

  return result;
}

unint64_t sub_1B0D12B18()
{
  result = qword_1EB6DC460;
  if (!qword_1EB6DC460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC460);
  }

  return result;
}

unint64_t sub_1B0D12B70()
{
  result = qword_1EB6DC448;
  if (!qword_1EB6DC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC448);
  }

  return result;
}

unint64_t sub_1B0D12BC8()
{
  result = qword_1EB6DC450;
  if (!qword_1EB6DC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC450);
  }

  return result;
}

unint64_t sub_1B0D12C20()
{
  result = qword_1EB6DC468;
  if (!qword_1EB6DC468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC468);
  }

  return result;
}

unint64_t sub_1B0D12C78()
{
  result = qword_1EB6DC470;
  if (!qword_1EB6DC470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC470);
  }

  return result;
}

unint64_t sub_1B0D12CD0()
{
  result = qword_1EB6DC488;
  if (!qword_1EB6DC488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC488);
  }

  return result;
}

unint64_t sub_1B0D12D28()
{
  result = qword_1EB6DC490;
  if (!qword_1EB6DC490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC490);
  }

  return result;
}

unint64_t sub_1B0D12D80()
{
  result = qword_1EB6DC418;
  if (!qword_1EB6DC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC418);
  }

  return result;
}

unint64_t sub_1B0D12DD8()
{
  result = qword_1EB6DC420;
  if (!qword_1EB6DC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC420);
  }

  return result;
}

unint64_t sub_1B0D12E30()
{
  result = qword_1EB6DC358;
  if (!qword_1EB6DC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC358);
  }

  return result;
}

unint64_t sub_1B0D12E88()
{
  result = qword_1EB6DC360;
  if (!qword_1EB6DC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC360);
  }

  return result;
}

unint64_t sub_1B0D12EDC()
{
  result = qword_1EB6DC340;
  if (!qword_1EB6DC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC340);
  }

  return result;
}

unint64_t sub_1B0D12F30()
{
  result = qword_1EB6E66F8;
  if (!qword_1EB6E66F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E66F8);
  }

  return result;
}

unint64_t sub_1B0D12F84()
{
  result = qword_1EB6E6700;
  if (!qword_1EB6E6700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6700);
  }

  return result;
}

unint64_t sub_1B0D12FD8()
{
  result = qword_1EB6E6750;
  if (!qword_1EB6E6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6750);
  }

  return result;
}

uint64_t sub_1B0D13048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B0E46A78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0D130CC()
{
  sub_1B0D143A0();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D13108()
{
  sub_1B0D143A0();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D13144()
{
  v1 = *v0;
  v2 = 0x44496E6F73726570;
  v3 = 0x49656E696863616DLL;
  v4 = 0x50656D6954656E6FLL;
  if (v1 != 3)
  {
    v4 = 0x6E49746E65696C63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E656B6F74;
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

uint64_t sub_1B0D131F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0D1449C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0D13218()
{
  sub_1B0D143F4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D13254()
{
  sub_1B0D143F4();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D13290()
{
  v1 = *v0;
  v2 = 0x656D616E72657375;
  v3 = 0x6B6F54656C707061;
  v4 = 0x6B6F54687475416FLL;
  if (v1 != 3)
  {
    v4 = 0x68747541657270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6B6F54656C707061;
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

uint64_t sub_1B0D1333C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0D14660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0D13364()
{
  sub_1B0D142A4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D133A0()
{
  sub_1B0D142A4();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D133DC()
{
  if (*v0)
  {
    result = 0x6F54737365636361;
  }

  else
  {
    result = 0x656D616E72657375;
  }

  *v0;
  return result;
}

uint64_t sub_1B0D13420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F54737365636361 && a2 == 0xEB000000006E656BLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0D13500()
{
  sub_1B0D1434C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1353C()
{
  sub_1B0D1434C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D13578()
{
  sub_1B0D142F8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D135B4()
{
  sub_1B0D142F8();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D135F0()
{
  if (*v0)
  {
    result = 0x64726F7773736170;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1B0D13620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0D136F4()
{
  sub_1B0D14448();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D13730()
{
  sub_1B0D14448();

  return sub_1B0E46F38();
}

uint64_t Credentials.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6760, &qword_1B0EE9C50);
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v4);
  *&v61 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6768, &qword_1B0EE9C58);
  *(&v64 + 1) = *(v7 - 8);
  v65 = v7;
  v8 = *(*(&v64 + 1) + 64);
  MEMORY[0x1EEE9AC00](v7);
  *&v64 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6770, &qword_1B0EE9C60);
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6778, &qword_1B0EE9C68);
  v66 = *(v13 - 8);
  v14 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6780, &qword_1B0EE9C70);
  v57 = *(v17 - 8);
  v18 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v57 - v19;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6788, &qword_1B0EE9C78);
  v67 = *(v70 - 8);
  v21 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v23 = &v57 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D142A4();
  v69 = v23;
  sub_1B0E46D48();
  v26 = *v2;
  v25 = v2[1];
  v27 = v2[2];
  v28 = v2[7];
  v29 = v2[9];
  v30 = (v29 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0);
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      LOBYTE(v71) = 2;
      v39 = v25;
      sub_1B0D143A0();
      v40 = v58;
      v42 = v69;
      v41 = v70;
      sub_1B0E468B8();
      *&v71 = v26;
      *(&v71 + 1) = v39;
      sub_1B0BA48CC();
      v43 = v60;
      sub_1B0E46958();
      (*(v59 + 8))(v40, v43);
      return (*(v67 + 8))(v42, v41);
    }

    v32 = v69;
    v31 = v70;
    if (v30 != 3)
    {
      LOBYTE(v71) = 4;
      sub_1B0D142F8();
      v45 = v61;
      sub_1B0E468B8();
      (*(v62 + 8))(v45, v63);
      return (*(v67 + 8))(v32, v31);
    }

    v33 = v2[2];
    v34 = v2[3];
    LOBYTE(v71) = 3;
    sub_1B0D1434C();
    v35 = v64;
    sub_1B0E468B8();
    LOBYTE(v71) = 0;
    v36 = v65;
    v37 = v68;
    sub_1B0E46928();
    if (!v37)
    {
      LOBYTE(v71) = 1;
      sub_1B0E46928();
    }

    (*(*(&v64 + 1) + 8))(v35, v36);
    goto LABEL_16;
  }

  *(&v64 + 1) = v2[3];
  v65 = v25;
  *&v64 = v27;
  if (!v30)
  {
    LOBYTE(v71) = 0;
    sub_1B0D14448();
    v32 = v69;
    v31 = v70;
    sub_1B0E468B8();
    *&v71 = v26;
    *(&v71 + 1) = v65;
    v72 = 0;
    sub_1B0BA48CC();
    v38 = v68;
    sub_1B0E46958();
    if (!v38)
    {
      v71 = v64;
      v72 = 1;
      sub_1B0E46958();
    }

    (*(v57 + 8))(v20, v17);
LABEL_16:
    v52 = *(v67 + 8);
    v53 = v32;
    return v52(v53, v31);
  }

  v46 = v13;
  v61 = *(v2 + 2);
  v47 = v2[6];
  v62 = v2[8];
  v63 = v47;
  LOBYTE(v71) = 1;
  sub_1B0D143F4();
  v48 = v16;
  v49 = v69;
  v31 = v70;
  sub_1B0E468B8();
  *&v71 = v26;
  *(&v71 + 1) = v65;
  v72 = 0;
  sub_1B0BA48CC();
  v50 = v46;
  v51 = v68;
  sub_1B0E46958();
  if (v51)
  {
    (*(v66 + 8))(v48, v46);
    v52 = *(v67 + 8);
    v53 = v49;
    return v52(v53, v31);
  }

  v54 = v62;
  v55 = v63;
  v71 = v64;
  v72 = 1;
  sub_1B0E46958();
  v71 = v61;
  v72 = 2;
  sub_1B0E46958();
  v56 = v66;
  *&v71 = v55;
  *(&v71 + 1) = v28 & 0xDFFFFFFFFFFFFFFFLL;
  v72 = 3;
  sub_1B0E46958();
  *&v71 = v54;
  *(&v71 + 1) = v29 & 0xCFFFFFFFFFFFFFFFLL;
  v72 = 4;
  sub_1B0E46958();
  (*(v56 + 8))(v48, v50);
  return (*(v67 + 8))(v69, v70);
}

__n128 Credentials.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B0D1481C(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 sub_1B0D1403C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B0D1481C(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t *Credentials.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  return sub_1B0D140D0(a1, sub_1B070BB30, a2);
}

{
  return sub_1B0D140D0(a1, sub_1B0D1560C, a2);
}

uint64_t *sub_1B0D140D0@<X0>(uint64_t *result@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  v7 = result;
  v9 = *result;
  v10 = result[1];
  v11 = result[2];
  v12 = result[3];
  v13 = result[7];
  v14 = result[9];
  v15 = (v14 >> 59) & 6 | ((v13 & 0x2000000000000000) != 0);
  if (v15 <= 1)
  {
    if (v15)
    {
      v24 = result[5];
      v4 = result[6];
      v20 = v14 & 0xCFFFFFFFFFFFFFFFLL;
      v25 = result[4];
      v26 = v25;
      v27 = result[8];
      v28 = result[1];
      v29 = *result;
      sub_1B03B2000(v9, v10);
      sub_1B03B2000(v11, v12);
      sub_1B03B2000(v25, v24);
      sub_1B03B2000(v4, v13 & 0xDFFFFFFFFFFFFFFFLL);
      v5 = v27;
      sub_1B03B2000(v27, v20);
      result = a2(v7);
      v3 = v26;
      v10 = v28;
      v9 = v29;
      v19 = v24 & 0xCFFFFFFFFFFFFFFFLL;
      v21 = v13 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    }

    else
    {
      v22 = *result;
      v23 = result[1];
      sub_1B03B2000(*result, v10);
      sub_1B03B2000(v11, v12);
      result = a2(v7);
      v10 = v23;
      v9 = v22;
      v19 = 0;
      v21 = 0;
      v20 = 0;
    }
  }

  else if (v15 == 2)
  {
    v19 = 0;
    v21 = 0;
    v20 = 0x1000000000000000;
  }

  else if (v15 == 3)
  {
    v16 = *result;
    v17 = result[1];
    v18 = v10;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = a2(v7);
    v10 = v18;
    v9 = v16;
    v19 = 0;
    v20 = 0x1000000000000000;
    v21 = 0x2000000000000000;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v3 = 0;
    v19 = 0;
    v4 = 0;
    v21 = 0;
    v5 = 0;
    v20 = 0x2000000000000000;
  }

  *a3 = v9;
  a3[1] = v10;
  a3[2] = v11;
  a3[3] = v12;
  a3[4] = v3;
  a3[5] = v19;
  a3[6] = v4;
  a3[7] = v21;
  a3[8] = v5;
  a3[9] = v20;
  return result;
}

unint64_t sub_1B0D142A4()
{
  result = qword_1EB6DC850;
  if (!qword_1EB6DC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC850);
  }

  return result;
}

unint64_t sub_1B0D142F8()
{
  result = qword_1EB6E6790;
  if (!qword_1EB6E6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6790);
  }

  return result;
}

unint64_t sub_1B0D1434C()
{
  result = qword_1EB6E6798;
  if (!qword_1EB6E6798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6798);
  }

  return result;
}

unint64_t sub_1B0D143A0()
{
  result = qword_1EB6DC7F0;
  if (!qword_1EB6DC7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7F0);
  }

  return result;
}

unint64_t sub_1B0D143F4()
{
  result = qword_1EB6DC818;
  if (!qword_1EB6DC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC818);
  }

  return result;
}

unint64_t sub_1B0D14448()
{
  result = qword_1EB6E67A0;
  if (!qword_1EB6E67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E67A0);
  }

  return result;
}

uint64_t sub_1B0D1449C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496E6F73726570 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49656E696863616DLL && a2 == 0xE900000000000044 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x50656D6954656E6FLL && a2 == 0xEF64726F77737361 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E49746E65696C63 && a2 == 0xEA00000000006F66)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B0D14660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6F54656C707061 && a2 == 0xEA00000000006E65 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6F54656C707061 && a2 == 0xEB00000000326E65 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B6F54687475416FLL && a2 == 0xEA00000000006E65 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x68747541657270 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B0D1481C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v85 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E67D0, &qword_1B0EEA790);
  v76 = *(v77 - 8);
  v3 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v71 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E67D8, &qword_1B0EEA798);
  v79 = *(v78 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v84 = &v71 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E67E0, &qword_1B0EEA7A0);
  v74 = *(v75 - 8);
  v7 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v83 = &v71 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E67E8, &qword_1B0EEA7A8);
  v80 = *(v82 - 8);
  v9 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v11 = &v71 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E67F0, &qword_1B0EEA7B0);
  v73 = *(v12 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v71 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E67F8, &qword_1B0EEA7B8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v71 - v19);
  v22 = a1[3];
  v21 = a1[4];
  v87 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v22);
  sub_1B0D142A4();
  v23 = v86;
  sub_1B0E46D18();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_0(v87);
  }

  v72 = v15;
  v24 = v83;
  v71 = v12;
  v25 = v82;
  v86 = v17;
  v27 = v84;
  v26 = v85;
  v28 = sub_1B0E468A8();
  v29 = (2 * *(v28 + 16)) | 1;
  v98 = v28;
  v99 = v28 + 32;
  v100 = 0;
  v101 = v29;
  v30 = sub_1B0D15D38();
  if (v30 == 5 || v100 != v101 >> 1)
  {
    v33 = v20;
    v34 = sub_1B0E46338();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6728, &unk_1B0EEA7C0) + 48);
    *v36 = &type metadata for Credentials;
    sub_1B0E46808();
    sub_1B0E46328();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v86 + 8))(v33, v16);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v87);
  }

  if (v30 <= 1u)
  {
    if (v30)
    {
      LOBYTE(v96) = 1;
      sub_1B0D143F4();
      v43 = v11;
      sub_1B0E467F8();
      v84 = v16;
      LOBYTE(v94) = 0;
      sub_1B0D15CB0();
      v47 = v25;
      v48 = v43;
      sub_1B0E46868();
      v55 = v96;
      v54 = v97;
      LOBYTE(v92) = 1;
      sub_1B0E46868();
      v81 = v55;
      v83 = v54;
      v66 = v94;
      v67 = v95;
      LOBYTE(v90) = 2;
      sub_1B0E46868();
      v76 = v67;
      v77 = v66;
      v78 = v20;
      v68 = v92;
      v69 = v93;
      LOBYTE(v88) = 3;
      sub_1B0E46868();
      v16 = v90;
      v70 = v91;
      v102 = 4;
      sub_1B0E46868();
      v79 = 0;
      (*(v80 + 8))(v48, v47);
      (*(v86 + 8))(v78, v84);
      swift_unknownObjectRelease();
      v11 = v68;
      v20 = v88;
      v86 = v69 & 0xCFFFFFFFFFFFFFFFLL;
      v61 = v89 & 0xCFFFFFFFFFFFFFFFLL;
      v62 = v70 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v63 = v81;
      v57 = v77;
      v60 = v76;
    }

    else
    {
      LOBYTE(v96) = 0;
      sub_1B0D14448();
      v11 = v72;
      sub_1B0E467F8();
      v39 = v20;
      LOBYTE(v94) = 0;
      sub_1B0D15CB0();
      v40 = v71;
      sub_1B0E46868();
      v63 = v96;
      v83 = v97;
      LOBYTE(v92) = 1;
      sub_1B0E46868();
      v61 = 0;
      v79 = 0;
      v20 = (v73 + 8);
      (*(v73 + 8))(v11, v40);
      (*(v86 + 8))(v39, v16);
      swift_unknownObjectRelease();
      v86 = 0;
      v62 = 0;
      v57 = v94;
      v60 = v95;
    }
  }

  else if (v30 == 2)
  {
    LOBYTE(v96) = 2;
    sub_1B0D143A0();
    v57 = v24;
    sub_1B0E467F8();
    v41 = v86;
    sub_1B0D15CB0();
    v44 = v75;
    v60 = v57;
    sub_1B0E46868();
    v79 = 0;
    (*(v74 + 8))(v57, v44);
    (*(v41 + 8))(v20, v16);
    swift_unknownObjectRelease();
    v86 = 0;
    v62 = 0;
    v63 = v96;
    v83 = v97;
    v61 = 0x1000000000000000;
  }

  else
  {
    v11 = v20;
    v31 = v86;
    if (v30 == 3)
    {
      LOBYTE(v96) = 3;
      sub_1B0D1434C();
      v32 = v27;
      sub_1B0E467F8();
      LOBYTE(v96) = 0;
      v45 = v78;
      v46 = sub_1B0E46848();
      v50 = v49;
      v51 = v32;
      v81 = v46;
      LOBYTE(v96) = 1;
      v52 = sub_1B0E46848();
      v53 = (v79 + 8);
      v20 = (v31 + 8);
      v79 = 0;
      v56 = *v53;
      v83 = v50;
      v57 = v52;
      v58 = v51;
      v60 = v59;
      v56(v58, v45);
      (*v20)(v11, v16);
      swift_unknownObjectRelease();
      v86 = 0;
      v61 = 0x1000000000000000;
      v62 = 0x2000000000000000;
      v63 = v81;
    }

    else
    {
      LOBYTE(v96) = 4;
      sub_1B0D142F8();
      v42 = v81;
      sub_1B0E467F8();
      v79 = 0;
      (*(v76 + 8))(v42, v77);
      (*(v31 + 8))(v11, v16);
      swift_unknownObjectRelease();
      v63 = 0;
      v83 = 0;
      v57 = 0;
      v60 = 0;
      v11 = 0;
      v86 = 0;
      v16 = 0;
      v62 = 0;
      v20 = 0;
      v61 = 0x2000000000000000;
    }
  }

  result = __swift_destroy_boxed_opaque_existential_0(v87);
  v64 = v83;
  *v26 = v63;
  v26[1] = v64;
  v26[2] = v57;
  v26[3] = v60;
  v65 = v86;
  v26[4] = v11;
  v26[5] = v65;
  v26[6] = v16;
  v26[7] = v62;
  v26[8] = v20;
  v26[9] = v61;
  return result;
}

uint64_t get_enum_tag_for_layout_string_20IMAPSearchIndexerXPC11CredentialsO(uint64_t a1)
{
  if (((*(a1 + 72) >> 59) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 72) >> 59) & 6 | ((*(a1 + 56) & 0x2000000000000000) != 0);
  }
}

unint64_t sub_1B0D156DC()
{
  result = qword_1EB6E67A8;
  if (!qword_1EB6E67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E67A8);
  }

  return result;
}

unint64_t sub_1B0D15734()
{
  result = qword_1EB6E67B0;
  if (!qword_1EB6E67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E67B0);
  }

  return result;
}

unint64_t sub_1B0D1578C()
{
  result = qword_1EB6E67B8;
  if (!qword_1EB6E67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E67B8);
  }

  return result;
}

unint64_t sub_1B0D157E4()
{
  result = qword_1EB6E67C0;
  if (!qword_1EB6E67C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E67C0);
  }

  return result;
}

unint64_t sub_1B0D1583C()
{
  result = qword_1EB6E67C8;
  if (!qword_1EB6E67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E67C8);
  }

  return result;
}

unint64_t sub_1B0D15894()
{
  result = qword_1EB6DC820;
  if (!qword_1EB6DC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC820);
  }

  return result;
}

unint64_t sub_1B0D158EC()
{
  result = qword_1EB6DC828;
  if (!qword_1EB6DC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC828);
  }

  return result;
}

unint64_t sub_1B0D15944()
{
  result = qword_1EB6DC808;
  if (!qword_1EB6DC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC808);
  }

  return result;
}

unint64_t sub_1B0D1599C()
{
  result = qword_1EB6DC810;
  if (!qword_1EB6DC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC810);
  }

  return result;
}

unint64_t sub_1B0D159F4()
{
  result = qword_1EB6DC7E0;
  if (!qword_1EB6DC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7E0);
  }

  return result;
}

unint64_t sub_1B0D15A4C()
{
  result = qword_1EB6DC7E8;
  if (!qword_1EB6DC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7E8);
  }

  return result;
}

unint64_t sub_1B0D15AA4()
{
  result = qword_1EB6DC7F8;
  if (!qword_1EB6DC7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC7F8);
  }

  return result;
}

unint64_t sub_1B0D15AFC()
{
  result = qword_1EB6DC800;
  if (!qword_1EB6DC800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC800);
  }

  return result;
}

unint64_t sub_1B0D15B54()
{
  result = qword_1EB6DC830;
  if (!qword_1EB6DC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC830);
  }

  return result;
}

unint64_t sub_1B0D15BAC()
{
  result = qword_1EB6DC838;
  if (!qword_1EB6DC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC838);
  }

  return result;
}

unint64_t sub_1B0D15C04()
{
  result = qword_1EB6DC840;
  if (!qword_1EB6DC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC840);
  }

  return result;
}

unint64_t sub_1B0D15C5C()
{
  result = qword_1EB6DC848;
  if (!qword_1EB6DC848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC848);
  }

  return result;
}

unint64_t sub_1B0D15CB0()
{
  result = qword_1EB6E6800;
  if (!qword_1EB6E6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6800);
  }

  return result;
}

uint64_t sub_1B0D15D04()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D15D38()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D15D6C()
{
  v1 = 0x686372616573;
  if (*v0 != 1)
  {
    v1 = 0x69746E6564657263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_1B0D15DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0D1D6D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0D15DF0()
{
  sub_1B0D1D15C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D15E2C()
{
  sub_1B0D1D15C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D15E68()
{
  sub_1B0D1D1C0();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D15EA4()
{
  sub_1B0D1D1C0();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D15EE0()
{
  sub_1B0D1D310();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D15F1C()
{
  sub_1B0D1D310();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D15F58()
{
  sub_1B0D1D268();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D15F94()
{
  sub_1B0D1D268();

  return sub_1B0E46F38();
}

uint64_t static IndexRequest.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3)
  {
    return a6 & (a1 == a4);
  }

  result = 0;
  if ((a6 & 1) == 0 && a1 == a4)
  {
    return sub_1B0D19D4C(a2, a5);
  }

  return result;
}

uint64_t MessageToSearchIndexer.encode(to:)(void *a1)
{
  v2 = v1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6808, &qword_1B0EEA7D0);
  v28 = *(v29 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v25 - v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6810, &qword_1B0EEA7D8);
  v26 = *(v27 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6818, &qword_1B0EEA7E0);
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6820, &qword_1B0EEA7E8);
  v30 = *(v31 - 8);
  v14 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v16 = &v25 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D1D15C();
  sub_1B0E46D48();
  *&v35[9] = *(v2 + 25);
  v18 = v2[1];
  v34 = *v2;
  *v35 = v18;
  v19 = v35[24] >> 6;
  if (v19)
  {
    v35[24] &= 0x3Fu;
    if (v19 == 1)
    {
      v36 = v34;
      v37[0] = *v35;
      *(v37 + 9) = *&v35[9];
      LOBYTE(v32) = 1;
      sub_1B0D1D268();
      v20 = v31;
      sub_1B0E468B8();
      v32 = v36;
      v33[0] = v37[0];
      *(v33 + 9) = *(v37 + 9);
      sub_1B0D1D2BC();
      v21 = v27;
      sub_1B0E46958();
      (*(v26 + 8))(v9, v21);
    }

    else
    {
      sub_1B0D1D1B0(&v34, &v38);
      LOBYTE(v32) = 2;
      sub_1B0D1D1C0();
      v20 = v31;
      sub_1B0E468B8();
      sub_1B0D1D1B0(&v38, &v32);
      sub_1B0D1D214();
      v24 = v29;
      sub_1B0E46958();
      (*(v28 + 8))(v6, v24);
    }

    return (*(v30 + 8))(v16, v20);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_1B0D1D310();
    v22 = v31;
    sub_1B0E468B8();
    v32 = *v2;
    LOBYTE(v33[0]) = *(v2 + 16);
    sub_1B0D1D364();
    sub_1B0E46958();
    (*(v25 + 8))(v13, v10);
    return (*(v30 + 8))(v16, v22);
  }
}

double MessageToSearchIndexer.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1B0D1D7E4(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

double sub_1B0D1652C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1B0D1D7E4(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1B0D16588(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 9) = *(a1 + 25);
  v3 = a2[1];
  v8 = *a2;
  v9[0] = v3;
  *(v9 + 9) = *(a2 + 25);
  _s20IMAPSearchIndexerXPC015MessageToSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(&v6, &v8);
  return v4 & 1;
}

unint64_t sub_1B0D165D4()
{
  v1 = 0x7865646E69;
  v2 = 0x69746E6564657263;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0x686372616573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B0D16654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0D1E1C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0D1667C()
{
  sub_1B0D1DEBC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D166B8()
{
  sub_1B0D1DEBC();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D166F4()
{
  sub_1B0D1DFC8();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D16730()
{
  sub_1B0D1DFC8();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1676C()
{
  sub_1B0D1E118();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D167A8()
{
  sub_1B0D1E118();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D167E4()
{
  sub_1B0D1DF10();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D16820()
{
  sub_1B0D1DF10();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1685C()
{
  sub_1B0D1E070();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D16898()
{
  sub_1B0D1E070();

  return sub_1B0E46F38();
}

uint64_t static CredentialRequest.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t MessageFromSearchIndexer.encode(to:)(void *a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6828, &qword_1B0EEA7F0);
  v40 = *(v41 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v37 = &v34 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6830, &qword_1B0EEA7F8);
  v38 = *(v39 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v8 = &v34 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6838, &qword_1B0EEA800);
  v35 = *(v36 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6840, &qword_1B0EEA808);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6848, &qword_1B0EEA810);
  v42 = *(v16 - 8);
  v43 = v16;
  v17 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D1DEBC();
  sub_1B0E46D48();
  v49 = *(v2 + 32);
  v21 = v49;
  v22 = v2[1];
  v47 = *v2;
  v48 = v22;
  v23 = v49 >> 6;
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v49 &= 0x3Fu;
      sub_1B0D1DFB8(&v47, &v53);
      LOBYTE(v44) = 2;
      sub_1B0D1DFC8();
      v27 = v43;
      sub_1B0E468B8();
      sub_1B0D1DFB8(&v53, &v44);
      sub_1B0D1E01C();
      v28 = v39;
      sub_1B0E46958();
      v29 = *(v38 + 8);
      v30 = v8;
    }

    else
    {
      LOBYTE(v44) = 3;
      sub_1B0D1DF10();
      v32 = v37;
      v27 = v43;
      sub_1B0E468B8();
      v33 = v2[1];
      v44 = *v2;
      v45 = v33;
      sub_1B0D1DF64();
      v28 = v41;
      sub_1B0E46958();
      v29 = *(v40 + 8);
      v30 = v32;
    }

    v29(v30, v28);
  }

  else
  {
    if (!v23)
    {
      v24 = v47;
      LOBYTE(v44) = 0;
      sub_1B0D1E118();
      v25 = v43;
      sub_1B0E468B8();
      LOBYTE(v44) = v24;
      sub_1B0D1E16C();
      sub_1B0E46958();
      (*(v34 + 8))(v15, v12);
      return (*(v42 + 8))(v19, v25);
    }

    v49 &= 0x3Fu;
    v50 = v47;
    v51 = v48;
    v52 = v21 & 0x3F;
    LOBYTE(v44) = 1;
    sub_1B0D1E070();
    v27 = v43;
    sub_1B0E468B8();
    v44 = v50;
    v45 = v51;
    v46 = v52;
    sub_1B0D1E0C4();
    v31 = v36;
    sub_1B0E46958();
    (*(v35 + 8))(v11, v31);
  }

  return (*(v42 + 8))(v19, v27);
}

double MessageFromSearchIndexer.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B0D1E328(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_1B0D16F24@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B0D1E328(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1B0D16F84(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6 = a1[2].i8[0];
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s20IMAPSearchIndexerXPC017MessageFromSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t XPCSession.sendToSearchIndexer(_:replyHandler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  *v8 = a1[1];
  *&v8[9] = *(a1 + 25);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1B0D1EBCC();
  sub_1B0D1EC20();

  sub_1B0E43A28();
}

uint64_t sub_1B0D17098(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  return a2(v4);
}

uint64_t XPCSession.sendToSearchIndexer(_:)(__int128 *a1)
{
  v2 = *a1;
  *v3 = a1[1];
  *&v3[9] = *(a1 + 25);
  sub_1B0D1EBCC();
  return sub_1B0E43A38();
}

uint64_t XPCSession.sendToMaild(_:replyHandler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 32);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1B0D1ECB8();
  sub_1B0D1ED0C();

  sub_1B0E43A28();
}

uint64_t XPCSession.sendToMaild(_:)(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 32);
  sub_1B0D1ECB8();
  return sub_1B0E43A38();
}

unint64_t sub_1B0D1724C()
{
  v1 = *v0;
  v2 = 0x7265666544646964;
  v3 = 0xD000000000000014;
  v4 = 0x6C706D6F43646964;
  if (v1 != 3)
  {
    v4 = 0x6572756C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43746F4E646964;
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

uint64_t sub_1B0D17300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0D1EF58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0D17328()
{
  sub_1B0D1ED60();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D17364()
{
  sub_1B0D1ED60();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D173A0()
{
  sub_1B0D1EE5C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D173DC()
{
  sub_1B0D1EE5C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D17418()
{
  sub_1B0D1EE08();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D17454()
{
  sub_1B0D1EE08();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D17490()
{
  sub_1B0D1EF04();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D174CC()
{
  sub_1B0D1EF04();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D17508()
{
  sub_1B0D1EEB0();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D17544()
{
  sub_1B0D1EEB0();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D17580()
{
  sub_1B0D1EDB4();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D175BC()
{
  sub_1B0D1EDB4();

  return sub_1B0E46F38();
}

uint64_t IndexRequest.Response.encode(to:)(void *a1, int a2)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6880, &qword_1B0EEA818);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6888, &qword_1B0EEA820);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6890, &qword_1B0EEA828);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6898, &qword_1B0EEA830);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68A0, &qword_1B0EEA838);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68A8, &qword_1B0EEA840);
  v20 = *(v48 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v23 = &v36 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D1ED60();
  sub_1B0E46D48();
  v25 = (v20 + 8);
  if (v47 <= 1u)
  {
    v31 = v45;
    v30 = v46;
    if (v47)
    {
      v50 = 1;
      sub_1B0D1EEB0();
      v35 = v48;
      sub_1B0E468B8();
      (*(v30 + 8))(v15, v12);
      return (*v25)(v23, v35);
    }

    v49 = 0;
    sub_1B0D1EF04();
    v32 = v48;
    sub_1B0E468B8();
    (*(v31 + 8))(v19, v16);
    return (*v25)(v23, v32);
  }

  if (v47 == 2)
  {
    v51 = 2;
    sub_1B0D1EE5C();
    v33 = v36;
    v32 = v48;
    sub_1B0E468B8();
    (*(v37 + 8))(v33, v38);
    return (*v25)(v23, v32);
  }

  if (v47 == 3)
  {
    v52 = 3;
    sub_1B0D1EE08();
    v26 = v39;
    v27 = v48;
    sub_1B0E468B8();
    v29 = v40;
    v28 = v41;
  }

  else
  {
    v53 = 4;
    sub_1B0D1EDB4();
    v26 = v42;
    v27 = v48;
    sub_1B0E468B8();
    v29 = v43;
    v28 = v44;
  }

  (*(v29 + 8))(v26, v28);
  return (*v25)(v23, v27);
}

uint64_t IndexRequest.Response.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D17BF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0D1F11C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B0D17C3C()
{
  if (*v0)
  {
    result = 1886352499;
  }

  else
  {
    result = 0x7472617473;
  }

  *v0;
  return result;
}

uint64_t sub_1B0D17C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1886352499 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0D17D44()
{
  sub_1B0D1F814();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D17D80()
{
  sub_1B0D1F814();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D17DBC()
{
  sub_1B0D1F910();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D17DF8()
{
  sub_1B0D1F910();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D17E34()
{
  sub_1B0D1F868();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D17E70()
{
  sub_1B0D1F868();

  return sub_1B0E46F38();
}

void _s20IMAPSearchIndexerXPC18CredentialResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v182 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    for (i = v2 - 1; ; --i)
    {
      v6 = v3[3];
      v176 = v3[2];
      v177 = v6;
      v7 = v3[1];
      v174 = *v3;
      v175 = v7;
      v8 = v4[2];
      v9 = v4[3];
      v10 = *v4;
      *v180 = v4[1];
      *&v180[16] = v8;
      v11 = v4[4];
      *&v180[32] = v9;
      v181 = v11;
      v178 = v3[4];
      v179 = v10;
      v12 = *(&v175 + 1);
      v13 = v175;
      v14 = *(&v177 + 1);
      v15 = (*(&v178 + 1) >> 59) & 6 | ((*(&v177 + 1) & 0x2000000000000000) != 0);
      if (v15 <= 1)
      {
        break;
      }

      if (v15 == 2)
      {
        if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 2)
        {
          goto LABEL_380;
        }

        v26 = v179;
        v27 = *(&v174 + 1) >> 62;
        v28 = *(&v179 + 1) >> 62;
        if (*(&v174 + 1) >> 62 == 3)
        {
          v29 = 0;
          if (v174 == __PAIR128__(0xC000000000000000, 0) && *(&v179 + 1) >> 62 == 3)
          {
            v29 = 0;
            if (v179 == __PAIR128__(0xC000000000000000, 0))
            {
              goto LABEL_378;
            }
          }

LABEL_80:
          if (v28 <= 1)
          {
            goto LABEL_81;
          }

LABEL_40:
          if (v28 != 2)
          {
            if (v29)
            {
              goto LABEL_380;
            }

            goto LABEL_378;
          }

          v37 = *(v179 + 16);
          v36 = *(v179 + 24);
          v38 = __OFSUB__(v36, v37);
          v39 = v36 - v37;
          if (v38)
          {
            goto LABEL_386;
          }
        }

        else
        {
          if (v27 > 1)
          {
            if (v27 == 2)
            {
              v48 = *(v174 + 16);
              v47 = *(v174 + 24);
              v38 = __OFSUB__(v47, v48);
              v29 = v47 - v48;
              if (v38)
              {
                goto LABEL_400;
              }

              goto LABEL_80;
            }

            v29 = 0;
            if (v28 <= 1)
            {
              goto LABEL_81;
            }

            goto LABEL_40;
          }

          if (v27)
          {
            LODWORD(v29) = DWORD1(v174) - v174;
            if (__OFSUB__(DWORD1(v174), v174))
            {
              goto LABEL_402;
            }

            v29 = v29;
            goto LABEL_80;
          }

          v29 = BYTE14(v174);
          if (v28 > 1)
          {
            goto LABEL_40;
          }

LABEL_81:
          if (v28)
          {
            LODWORD(v39) = DWORD1(v179) - v179;
            if (__OFSUB__(DWORD1(v179), v179))
            {
              goto LABEL_383;
            }

            v39 = v39;
          }

          else
          {
            v39 = BYTE14(v179);
          }
        }

        if (v29 != v39)
        {
          goto LABEL_380;
        }

        if (v29 < 1)
        {
          goto LABEL_378;
        }

        if (v27 > 1)
        {
          v171 = i;
          if (v27 == 2)
          {
            v55 = *(v174 + 16);
            v54 = *(v174 + 24);
            sub_1B0D26014(&v179, v173);
            sub_1B0D26014(&v174, v173);
            v56 = sub_1B0E42A98();
            if (v56)
            {
              v57 = sub_1B0E42AC8();
              if (__OFSUB__(v55, v57))
              {
                goto LABEL_425;
              }

              v56 += v55 - v57;
            }

            if (__OFSUB__(v54, v55))
            {
              goto LABEL_418;
            }

            goto LABEL_147;
          }

          memset(v172, 0, 14);
          sub_1B0D26014(&v179, v173);
          sub_1B0D26014(&v174, v173);
          sub_1B0AE2440(v172, v26, *(&v26 + 1), v173);
          sub_1B0D1560C(&v179);
          sub_1B0D1560C(&v174);
          v71 = v173[0];
        }

        else
        {
          if (!v27)
          {
            v53 = i;
            v172[0] = v174;
            LODWORD(v172[1]) = DWORD2(v174);
            WORD2(v172[1]) = WORD6(v174);
            sub_1B0D26014(&v179, v173);
            sub_1B0D26014(&v174, v173);
            sub_1B0AE2440(v172, v26, *(&v26 + 1), v173);
            sub_1B0D1560C(&v179);
            sub_1B0D1560C(&v174);
            i = v53;
            if ((v173[0] & 1) == 0)
            {
              goto LABEL_380;
            }

            goto LABEL_378;
          }

          v171 = i;
          v69 = v174;
          if (v174 >> 32 < v174)
          {
            goto LABEL_415;
          }

          sub_1B0D26014(&v179, v173);
          sub_1B0D26014(&v174, v173);
          v56 = sub_1B0E42A98();
          if (v56)
          {
            v70 = sub_1B0E42AC8();
            if (__OFSUB__(v69, v70))
            {
              goto LABEL_430;
            }

            v56 += v69 - v70;
          }

LABEL_147:
          sub_1B0E42AB8();
          sub_1B0AE2440(v56, v26, *(&v26 + 1), v173);
          sub_1B0D1560C(&v179);
          sub_1B0D1560C(&v174);
          v71 = v173[0];
        }

        i = v171;
        if ((v71 & 1) == 0)
        {
          goto LABEL_380;
        }

        goto LABEL_378;
      }

      if (v15 == 3)
      {
        if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 3)
        {
          goto LABEL_380;
        }

        v16 = *(&v175 + 1);
        v17 = i;
        v18 = *v180;
        v19 = *&v180[8];
        if (v174 != v179 && (sub_1B0E46A78() & 1) == 0)
        {
          goto LABEL_380;
        }

        if (v13 == v18 && v16 == v19)
        {
          i = v17;
        }

        else
        {
          v46 = sub_1B0E46A78();
          i = v17;
          if ((v46 & 1) == 0)
          {
            goto LABEL_380;
          }
        }
      }

      else
      {
        if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 4)
        {
          goto LABEL_380;
        }

        if (*(&v181 + 1) != 0x2000000000000000)
        {
          goto LABEL_380;
        }

        v30 = vorrq_s8(*&v180[8], *&v180[24]);
        if (*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | v181 | *v180 | *(&v179 + 1) | v179 | *&v180[40])
        {
          goto LABEL_380;
        }
      }

LABEL_378:
      if (!i)
      {
        goto LABEL_380;
      }

      v4 += 5;
      v3 += 5;
    }

    v170 = i;
    if (!v15)
    {
      if ((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0))
      {
        goto LABEL_380;
      }

      v20 = v179;
      v21 = *v180;
      v22 = *&v180[8];
      v23 = *(&v174 + 1) >> 62;
      v24 = *(&v179 + 1) >> 62;
      if (*(&v174 + 1) >> 62 == 3)
      {
        v25 = 0;
        if (v174 == __PAIR128__(0xC000000000000000, 0) && *(&v179 + 1) >> 62 == 3)
        {
          v25 = 0;
          if (v179 == __PAIR128__(0xC000000000000000, 0))
          {
LABEL_112:
            sub_1B0D26014(&v179, v173);
            sub_1B0D26014(&v174, v173);
            goto LABEL_160;
          }
        }
      }

      else if (v23 > 1)
      {
        if (v23 != 2)
        {
          v25 = 0;
          if (v24 <= 1)
          {
LABEL_103:
            if (v24)
            {
              LODWORD(v42) = DWORD1(v179) - v179;
              if (__OFSUB__(DWORD1(v179), v179))
              {
                __break(1u);
LABEL_383:
                __break(1u);
LABEL_384:
                __break(1u);
LABEL_385:
                __break(1u);
LABEL_386:
                __break(1u);
LABEL_387:
                __break(1u);
LABEL_388:
                __break(1u);
LABEL_389:
                __break(1u);
LABEL_390:
                __break(1u);
LABEL_391:
                __break(1u);
LABEL_392:
                __break(1u);
LABEL_393:
                __break(1u);
LABEL_394:
                __break(1u);
LABEL_395:
                __break(1u);
LABEL_396:
                __break(1u);
LABEL_397:
                __break(1u);
LABEL_398:
                __break(1u);
LABEL_399:
                __break(1u);
LABEL_400:
                __break(1u);
LABEL_401:
                __break(1u);
LABEL_402:
                __break(1u);
LABEL_403:
                __break(1u);
LABEL_404:
                __break(1u);
LABEL_405:
                __break(1u);
LABEL_406:
                __break(1u);
LABEL_407:
                __break(1u);
LABEL_408:
                __break(1u);
LABEL_409:
                __break(1u);
LABEL_410:
                __break(1u);
LABEL_411:
                __break(1u);
LABEL_412:
                __break(1u);
LABEL_413:
                __break(1u);
LABEL_414:
                __break(1u);
LABEL_415:
                __break(1u);
LABEL_416:
                __break(1u);
LABEL_417:
                __break(1u);
LABEL_418:
                __break(1u);
LABEL_419:
                __break(1u);
LABEL_420:
                __break(1u);
LABEL_421:
                __break(1u);
LABEL_422:
                __break(1u);
LABEL_423:
                __break(1u);
LABEL_424:
                __break(1u);
LABEL_425:
                __break(1u);
LABEL_426:
                __break(1u);
LABEL_427:
                __break(1u);
LABEL_428:
                __break(1u);
LABEL_429:
                __break(1u);
LABEL_430:
                __break(1u);
              }

              v42 = v42;
            }

            else
            {
              v42 = BYTE14(v179);
            }

            goto LABEL_107;
          }

LABEL_47:
          if (v24 != 2)
          {
            if (v25)
            {
              goto LABEL_380;
            }

            goto LABEL_112;
          }

          v41 = *(v179 + 16);
          v40 = *(v179 + 24);
          v38 = __OFSUB__(v40, v41);
          v42 = v40 - v41;
          if (v38)
          {
            goto LABEL_387;
          }

LABEL_107:
          if (v25 != v42)
          {
            goto LABEL_380;
          }

          if (v25 < 1)
          {
            goto LABEL_112;
          }

          if (v23 > 1)
          {
            if (v23 != 2)
            {
              memset(v172, 0, 14);
              sub_1B0D26014(&v179, v173);
              sub_1B0D26014(&v174, v173);
              sub_1B0AE2440(v172, v20, *(&v20 + 1), v173);
              if ((v173[0] & 1) == 0)
              {
                goto LABEL_381;
              }

LABEL_160:
              v75 = v12 >> 62;
              v76 = v22 >> 62;
              if (v12 >> 62 == 3)
              {
                v77 = 0;
                if (!v13 && v12 == 0xC000000000000000 && v22 >> 62 == 3)
                {
                  v77 = 0;
                  if (!v21 && v22 == 0xC000000000000000)
                  {
                    goto LABEL_365;
                  }
                }
              }

              else if (v75 > 1)
              {
                if (v75 != 2)
                {
                  v77 = 0;
                  if (v76 <= 1)
                  {
LABEL_181:
                    if (v76)
                    {
                      LODWORD(v80) = HIDWORD(v21) - v21;
                      if (__OFSUB__(HIDWORD(v21), v21))
                      {
                        goto LABEL_389;
                      }

                      v80 = v80;
                    }

                    else
                    {
                      v80 = BYTE6(v22);
                    }

LABEL_185:
                    if (v77 != v80)
                    {
                      goto LABEL_381;
                    }

                    if (v77 < 1)
                    {
                      goto LABEL_365;
                    }

                    if (v75 > 1)
                    {
                      if (v75 == 2)
                      {
                        v83 = v21;
                        v85 = *(v13 + 16);
                        v86 = *(v13 + 24);
LABEL_242:
                        sub_1B03B2000(v83, v22);
                        sub_1B03B2000(v83, v22);
                        sub_1B03B2000(v83, v22);
                        v103 = sub_1B0AB87A0(v85, v86, v12 & 0x3FFFFFFFFFFFFFFFLL, v83, v22);
                        sub_1B0391D50(v83, v22);
                        sub_1B0D1560C(&v179);
                        sub_1B0D1560C(&v174);
                        sub_1B0391D50(v83, v22);
                        v104 = v83;
                        v105 = v22;
                        goto LABEL_373;
                      }

                      *&v173[6] = 0;
                      *v173 = 0;
                      sub_1B03B2000(v21, v22);
                      sub_1B03B2000(v21, v22);
                      sub_1B0AE2440(v173, v21, v22, v172);
                      sub_1B0D1560C(&v179);
                      sub_1B0D1560C(&v174);
                      sub_1B0391D50(v21, v22);
                      v84 = v21;
                    }

                    else
                    {
                      v83 = v21;
                      if (v75)
                      {
                        v85 = v13;
                        v86 = v13 >> 32;
                        if (v86 < v85)
                        {
                          goto LABEL_421;
                        }

                        goto LABEL_242;
                      }

                      *v173 = v13;
                      *&v173[8] = v12;
                      v173[10] = BYTE2(v12);
                      v173[11] = BYTE3(v12);
                      v173[12] = BYTE4(v12);
                      v173[13] = BYTE5(v12);
                      sub_1B03B2000(v21, v22);
                      sub_1B03B2000(v21, v22);
                      sub_1B0AE2440(v173, v21, v22, v172);
                      sub_1B0D1560C(&v179);
                      sub_1B0D1560C(&v174);
                      sub_1B0391D50(v21, v22);
                      v84 = v21;
                    }

                    v106 = v22;
                    goto LABEL_377;
                  }

LABEL_170:
                  if (v76 != 2)
                  {
                    goto LABEL_347;
                  }

                  v79 = *(v21 + 16);
                  v78 = *(v21 + 24);
                  v38 = __OFSUB__(v78, v79);
                  v80 = v78 - v79;
                  if (v38)
                  {
                    goto LABEL_390;
                  }

                  goto LABEL_185;
                }

                v82 = *(v13 + 16);
                v81 = *(v13 + 24);
                v38 = __OFSUB__(v81, v82);
                v77 = v81 - v82;
                if (v38)
                {
                  goto LABEL_405;
                }
              }

              else
              {
                if (!v75)
                {
                  v77 = BYTE6(v12);
                  if (v76 <= 1)
                  {
                    goto LABEL_181;
                  }

                  goto LABEL_170;
                }

                LODWORD(v77) = HIDWORD(v13) - v13;
                if (__OFSUB__(HIDWORD(v13), v13))
                {
                  goto LABEL_404;
                }

                v77 = v77;
              }

              if (v76 <= 1)
              {
                goto LABEL_181;
              }

              goto LABEL_170;
            }

            v165 = *&v180[8];
            v168 = *v180;
            v59 = *(v174 + 16);
            v163 = *(v174 + 24);
            sub_1B0D26014(&v179, v173);
            sub_1B0D26014(&v174, v173);
            v60 = sub_1B0E42A98();
            if (v60)
            {
              v61 = sub_1B0E42AC8();
              if (__OFSUB__(v59, v61))
              {
                goto LABEL_426;
              }

              v60 += v59 - v61;
            }

            if (__OFSUB__(v163, v59))
            {
              goto LABEL_419;
            }

            sub_1B0E42AB8();
            sub_1B0AE2440(v60, v20, *(&v20 + 1), v173);
            v58 = v173[0];
          }

          else
          {
            v168 = *v180;
            if (!v23)
            {
              v172[0] = v174;
              LODWORD(v172[1]) = DWORD2(v174);
              WORD2(v172[1]) = WORD6(v174);
              sub_1B0D26014(&v179, v173);
              sub_1B0D26014(&v174, v173);
              sub_1B0AE2440(v172, v20, *(&v20 + 1), v173);
              v58 = v173[0];
              goto LABEL_157;
            }

            v165 = *&v180[8];
            v152 = *(&v175 + 1);
            v72 = v174;
            if (v174 >> 32 < v174)
            {
              goto LABEL_416;
            }

            sub_1B0D26014(&v179, v173);
            sub_1B0D26014(&v174, v173);
            v73 = sub_1B0E42A98();
            if (v73)
            {
              v74 = sub_1B0E42AC8();
              if (__OFSUB__(v72, v74))
              {
                goto LABEL_429;
              }

              v73 += v72 - v74;
            }

            v12 = v152;
            sub_1B0E42AB8();
            sub_1B0AE2440(v73, v20, *(&v20 + 1), v173);
            v58 = v173[0];
          }

          v22 = v165;
LABEL_157:
          v21 = v168;
          if ((v58 & 1) == 0)
          {
            goto LABEL_381;
          }

          goto LABEL_160;
        }

        v50 = *(v174 + 16);
        v49 = *(v174 + 24);
        v38 = __OFSUB__(v49, v50);
        v25 = v49 - v50;
        if (v38)
        {
          goto LABEL_398;
        }
      }

      else
      {
        if (!v23)
        {
          v25 = BYTE14(v174);
          if (v24 <= 1)
          {
            goto LABEL_103;
          }

          goto LABEL_47;
        }

        LODWORD(v25) = DWORD1(v174) - v174;
        if (__OFSUB__(DWORD1(v174), v174))
        {
          goto LABEL_399;
        }

        v25 = v25;
      }

      if (v24 <= 1)
      {
        goto LABEL_103;
      }

      goto LABEL_47;
    }

    v31 = *&v180[40];
    v156 = *(&v181 + 1);
    if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 1)
    {
      goto LABEL_380;
    }

    v157 = v177;
    v158 = *(&v178 + 1);
    v32 = *&v180[8];
    v162 = *(&v176 + 1);
    v164 = *v180;
    v160 = v176;
    v161 = *&v180[16];
    v167 = *&v180[24];
    v33 = *(&v174 + 1) >> 62;
    v34 = *(&v179 + 1) >> 62;
    v159 = *&v180[32];
    v154 = v178;
    v155 = v181;
    if (*(&v174 + 1) >> 62 == 3)
    {
      v35 = 0;
      if (v174 == __PAIR128__(0xC000000000000000, 0) && *(&v179 + 1) >> 62 == 3)
      {
        v35 = 0;
        if (v179 == __PAIR128__(0xC000000000000000, 0))
        {
LABEL_131:
          sub_1B0D26014(&v179, v173);
          sub_1B0D26014(&v174, v173);
          v65 = v31;
          goto LABEL_202;
        }
      }
    }

    else if (v33 > 1)
    {
      if (v33 != 2)
      {
        v35 = 0;
        if (v34 <= 1)
        {
LABEL_122:
          if (v34)
          {
            LODWORD(v45) = DWORD1(v179) - v179;
            if (__OFSUB__(DWORD1(v179), v179))
            {
              goto LABEL_385;
            }

            v45 = v45;
          }

          else
          {
            v45 = BYTE14(v179);
          }

          goto LABEL_126;
        }

LABEL_54:
        if (v34 != 2)
        {
          if (v35)
          {
            goto LABEL_380;
          }

          goto LABEL_131;
        }

        v44 = *(v179 + 16);
        v43 = *(v179 + 24);
        v38 = __OFSUB__(v43, v44);
        v45 = v43 - v44;
        if (v38)
        {
          goto LABEL_384;
        }

LABEL_126:
        if (v35 != v45)
        {
          goto LABEL_380;
        }

        if (v35 < 1)
        {
          goto LABEL_131;
        }

        if (v33 > 1)
        {
          v149 = v179;
          if (v33 != 2)
          {
            memset(v172, 0, 14);
            sub_1B0D26014(&v179, v173);
            sub_1B0D26014(&v174, v173);
            sub_1B0AE2440(v172, v149, *(&v149 + 1), v173);
            v65 = v31;
            if ((v173[0] & 1) == 0)
            {
              goto LABEL_381;
            }

LABEL_202:
            v89 = v12 >> 62;
            v90 = v32 >> 62;
            if (v12 >> 62 == 3)
            {
              v91 = 0;
              v92 = v167;
              if (!v13 && v12 == 0xC000000000000000 && v32 >> 62 == 3)
              {
                v91 = 0;
                if (!v164 && v32 == 0xC000000000000000)
                {
                  goto LABEL_235;
                }
              }
            }

            else
            {
              v92 = v167;
              if (v89 > 1)
              {
                if (v89 != 2)
                {
                  v91 = 0;
                  if (v90 <= 1)
                  {
LABEL_225:
                    if (v90)
                    {
                      LODWORD(v95) = HIDWORD(v164) - v164;
                      if (__OFSUB__(HIDWORD(v164), v164))
                      {
                        goto LABEL_388;
                      }

                      v95 = v95;
                    }

                    else
                    {
                      v95 = BYTE6(v32);
                    }

LABEL_229:
                    if (v91 != v95)
                    {
                      goto LABEL_381;
                    }

                    if (v91 >= 1)
                    {
                      if (v89 > 1)
                      {
                        if (v89 == 2)
                        {
                          v101 = *(v13 + 24);
                          v153 = *(v13 + 16);
                          sub_1B03B2000(v164, v32);
                          sub_1B03B2000(v164, v32);
                          sub_1B03B2000(v164, v32);
                          v102 = sub_1B0AB87A0(v153, v101, v12 & 0x3FFFFFFFFFFFFFFFLL, v164, v32);
                          sub_1B0391D50(v164, v32);
                          sub_1B0391D50(v164, v32);
                          sub_1B0391D50(v164, v32);
                          v98 = v159;
                          v92 = v167;
                          v99 = v162;
                          if ((v102 & 1) == 0)
                          {
                            goto LABEL_381;
                          }
                        }

                        else
                        {
                          *&v173[6] = 0;
                          *v173 = 0;
                          sub_1B03B2000(v164, v32);
                          sub_1B03B2000(v164, v32);
                          sub_1B0AE2440(v173, v164, v32, v172);
                          sub_1B0391D50(v164, v32);
                          sub_1B0391D50(v164, v32);
                          v98 = v159;
                          v99 = v162;
                          if ((v172[0] & 1) == 0)
                          {
                            goto LABEL_381;
                          }
                        }
                      }

                      else
                      {
                        v100 = v32;
                        if (v89)
                        {
                          v107 = v13;
                          v108 = v13 >> 32;
                          if (v13 >> 32 < v13)
                          {
                            goto LABEL_420;
                          }

                          v109 = v100;
                          sub_1B03B2000(v164, v100);
                          sub_1B03B2000(v164, v109);
                          sub_1B03B2000(v164, v109);
                          v110 = sub_1B0AB87A0(v107, v108, v12 & 0x3FFFFFFFFFFFFFFFLL, v164, v109);
                          sub_1B0391D50(v164, v109);
                          sub_1B0391D50(v164, v109);
                          sub_1B0391D50(v164, v109);
                          v98 = v159;
                          v92 = v167;
                          v99 = v162;
                          if ((v110 & 1) == 0)
                          {
                            goto LABEL_381;
                          }
                        }

                        else
                        {
                          *v173 = v13;
                          *&v173[8] = v12;
                          v173[10] = BYTE2(v12);
                          v173[11] = BYTE3(v12);
                          v173[12] = BYTE4(v12);
                          v173[13] = BYTE5(v12);
                          sub_1B03B2000(v164, v32);
                          sub_1B03B2000(v164, v32);
                          sub_1B0AE2440(v173, v164, v32, v172);
                          sub_1B0391D50(v164, v32);
                          sub_1B0391D50(v164, v32);
                          v98 = v159;
                          v99 = v162;
                          if ((v172[0] & 1) == 0)
                          {
                            goto LABEL_381;
                          }
                        }
                      }

LABEL_249:
                      v111 = v99 >> 62;
                      v112 = v92 >> 62;
                      if (v99 >> 62 == 3)
                      {
                        v113 = 0;
                        if (!v160 && v99 == 0xC000000000000000 && v92 >> 62 == 3)
                        {
                          v113 = 0;
                          if (!v161 && v92 == 0xC000000000000000)
                          {
                            goto LABEL_291;
                          }
                        }
                      }

                      else if (v111 > 1)
                      {
                        if (v111 != 2)
                        {
                          v113 = 0;
                          if (v112 <= 1)
                          {
LABEL_272:
                            if (v112)
                            {
                              LODWORD(v116) = HIDWORD(v161) - v161;
                              if (__OFSUB__(HIDWORD(v161), v161))
                              {
                                goto LABEL_392;
                              }

                              v116 = v116;
                            }

                            else
                            {
                              v116 = BYTE6(v92);
                            }

                            goto LABEL_276;
                          }

LABEL_259:
                          if (v112 != 2)
                          {
                            if (v113)
                            {
                              goto LABEL_381;
                            }

                            goto LABEL_291;
                          }

                          v115 = *(v161 + 16);
                          v114 = *(v161 + 24);
                          v38 = __OFSUB__(v114, v115);
                          v116 = v114 - v115;
                          if (v38)
                          {
                            goto LABEL_393;
                          }

LABEL_276:
                          if (v113 != v116)
                          {
                            goto LABEL_381;
                          }

                          if (v113 < 1)
                          {
                            goto LABEL_291;
                          }

                          if (v111 > 1)
                          {
                            if (v111 == 2)
                            {
                              v120 = v99;
                              v166 = *(v160 + 24);
                              v169 = *(v160 + 16);
                              sub_1B03B2000(v161, v92);
                              sub_1B03B2000(v161, v92);
                              sub_1B03B2000(v161, v92);
                              LOBYTE(v120) = sub_1B0AB87A0(v169, v166, v120 & 0x3FFFFFFFFFFFFFFFLL, v161, v92);
                              sub_1B0391D50(v161, v92);
                              sub_1B0391D50(v161, v92);
                              sub_1B0391D50(v161, v92);
                              if ((v120 & 1) == 0)
                              {
                                goto LABEL_381;
                              }

                              goto LABEL_291;
                            }

                            *&v173[6] = 0;
                            *v173 = 0;
                            sub_1B03B2000(v161, v92);
                            sub_1B03B2000(v161, v92);
                            sub_1B0AE2440(v173, v161, v92, v172);
                            sub_1B0391D50(v161, v92);
                            v119 = v161;
                          }

                          else
                          {
                            if (v111)
                            {
                              if (v160 >> 32 < v160)
                              {
                                goto LABEL_422;
                              }

                              sub_1B03B2000(v161, v92);
                              sub_1B03B2000(v161, v92);
                              sub_1B03B2000(v161, v92);
                              v121 = sub_1B0AB87A0(v160, v160 >> 32, v162 & 0x3FFFFFFFFFFFFFFFLL, v161, v92);
                              sub_1B0391D50(v161, v92);
                              sub_1B0391D50(v161, v92);
                              sub_1B0391D50(v161, v92);
                              if ((v121 & 1) == 0)
                              {
LABEL_381:
                                sub_1B0D1560C(&v179);
                                sub_1B0D1560C(&v174);
                                goto LABEL_380;
                              }

LABEL_291:
                              v122 = v14 >> 62;
                              v123 = v65 >> 62;
                              if (v14 >> 62 == 3)
                              {
                                v124 = 0;
                                if (!v157 && (v14 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v65 >> 62 == 3)
                                {
                                  v124 = 0;
                                  if (!v98 && (v65 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000)
                                  {
                                    goto LABEL_324;
                                  }
                                }
                              }

                              else if (v122 > 1)
                              {
                                if (v122 != 2)
                                {
                                  v124 = 0;
                                  if (v123 <= 1)
                                  {
LABEL_314:
                                    if (v123)
                                    {
                                      LODWORD(v127) = HIDWORD(v98) - v98;
                                      if (__OFSUB__(HIDWORD(v98), v98))
                                      {
                                        goto LABEL_394;
                                      }

                                      v127 = v127;
                                    }

                                    else
                                    {
                                      v127 = BYTE6(v65);
                                    }

                                    goto LABEL_318;
                                  }

LABEL_301:
                                  if (v123 != 2)
                                  {
                                    v130 = v154;
                                    v131 = v155;
                                    v132 = v156;
                                    if (v124)
                                    {
                                      goto LABEL_381;
                                    }

                                    goto LABEL_333;
                                  }

                                  v126 = *(v98 + 16);
                                  v125 = *(v98 + 24);
                                  v38 = __OFSUB__(v125, v126);
                                  v127 = v125 - v126;
                                  if (v38)
                                  {
                                    goto LABEL_395;
                                  }

LABEL_318:
                                  if (v124 != v127)
                                  {
                                    goto LABEL_381;
                                  }

                                  if (v124 >= 1)
                                  {
                                    if (v122 > 1)
                                    {
                                      if (v122 != 2)
                                      {
                                        *&v173[6] = 0;
                                        *v173 = 0;
                                        sub_1B03B2000(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B03B2000(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0AE2440(v173, v98, v65 & 0xDFFFFFFFFFFFFFFFLL, v172);
                                        sub_1B0391D50(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0391D50(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        v130 = v154;
                                        v131 = v155;
                                        v132 = v156;
                                        if ((v172[0] & 1) == 0)
                                        {
                                          goto LABEL_381;
                                        }

LABEL_333:
                                        v136 = v132 & 0xCFFFFFFFFFFFFFFFLL;
                                        v137 = v158 >> 62;
                                        v138 = v132 >> 62;
                                        if (v158 >> 62 == 3)
                                        {
                                          v77 = 0;
                                          if (!v130 && (v158 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v132 >> 62 == 3)
                                          {
                                            v77 = 0;
                                            if (!v131 && v136 == 0xC000000000000000)
                                            {
                                              goto LABEL_365;
                                            }
                                          }
                                        }

                                        else if (v137 > 1)
                                        {
                                          if (v137 != 2)
                                          {
                                            v77 = 0;
                                            if (v138 <= 1)
                                            {
LABEL_356:
                                              if (v138)
                                              {
                                                LODWORD(v141) = HIDWORD(v131) - v131;
                                                if (__OFSUB__(HIDWORD(v131), v131))
                                                {
                                                  goto LABEL_396;
                                                }

                                                v141 = v141;
                                              }

                                              else
                                              {
                                                v141 = BYTE6(v132);
                                              }

LABEL_360:
                                              if (v77 != v141)
                                              {
                                                goto LABEL_381;
                                              }

                                              if (v77 < 1)
                                              {
                                                goto LABEL_365;
                                              }

                                              if (v137 > 1)
                                              {
                                                if (v137 == 2)
                                                {
                                                  v144 = *(v130 + 16);
                                                  v145 = *(v130 + 24);
                                                  sub_1B03B2000(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                                                  sub_1B03B2000(v131, v136);
                                                  sub_1B03B2000(v131, v136);
                                                  v146 = v158 & 0xFFFFFFFFFFFFFFFLL;
                                                  goto LABEL_372;
                                                }

                                                *&v173[6] = 0;
                                                *v173 = 0;
                                                sub_1B03B2000(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                                                sub_1B03B2000(v131, v136);
                                              }

                                              else
                                              {
                                                if (v137)
                                                {
                                                  v144 = v130;
                                                  v145 = v130 >> 32;
                                                  if (v130 >> 32 < v130)
                                                  {
                                                    goto LABEL_424;
                                                  }

                                                  sub_1B03B2000(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                                                  sub_1B03B2000(v131, v136);
                                                  sub_1B03B2000(v131, v136);
                                                  v146 = v158 & 0xFFFFFFFFFFFFFFFLL;
LABEL_372:
                                                  v103 = sub_1B0AB87A0(v144, v145, v146, v131, v136);
                                                  sub_1B0391D50(v131, v136);
                                                  sub_1B0D1560C(&v179);
                                                  sub_1B0D1560C(&v174);
                                                  sub_1B0391D50(v131, v136);
                                                  v104 = v131;
                                                  v105 = v136;
LABEL_373:
                                                  sub_1B0391D50(v104, v105);
                                                  i = v170;
                                                  if ((v103 & 1) == 0)
                                                  {
                                                    goto LABEL_380;
                                                  }

                                                  goto LABEL_378;
                                                }

                                                *v173 = v130;
                                                *&v173[8] = v158;
                                                *&v173[10] = *(&v158 + 2);
                                                sub_1B03B2000(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                                                sub_1B03B2000(v131, v136);
                                              }

                                              sub_1B0AE2440(v173, v131, v136, v172);
                                              sub_1B0D1560C(&v179);
                                              sub_1B0D1560C(&v174);
                                              sub_1B0391D50(v131, v136);
                                              v84 = v131;
                                              v106 = v136;
LABEL_377:
                                              sub_1B0391D50(v84, v106);
                                              i = v170;
                                              if ((v172[0] & 1) == 0)
                                              {
                                                goto LABEL_380;
                                              }

                                              goto LABEL_378;
                                            }

LABEL_343:
                                            if (v138 != 2)
                                            {
LABEL_347:
                                              if (v77)
                                              {
                                                goto LABEL_381;
                                              }

LABEL_365:
                                              sub_1B0D1560C(&v179);
                                              sub_1B0D1560C(&v174);
                                              i = v170;
                                              goto LABEL_378;
                                            }

                                            v140 = *(v131 + 16);
                                            v139 = *(v131 + 24);
                                            v38 = __OFSUB__(v139, v140);
                                            v141 = v139 - v140;
                                            if (v38)
                                            {
                                              goto LABEL_397;
                                            }

                                            goto LABEL_360;
                                          }

                                          v143 = *(v130 + 16);
                                          v142 = *(v130 + 24);
                                          v38 = __OFSUB__(v142, v143);
                                          v77 = v142 - v143;
                                          if (v38)
                                          {
                                            goto LABEL_412;
                                          }
                                        }

                                        else
                                        {
                                          if (!v137)
                                          {
                                            v77 = BYTE6(v158);
                                            if (v138 <= 1)
                                            {
                                              goto LABEL_356;
                                            }

                                            goto LABEL_343;
                                          }

                                          LODWORD(v77) = HIDWORD(v130) - v130;
                                          if (__OFSUB__(HIDWORD(v130), v130))
                                          {
                                            goto LABEL_413;
                                          }

                                          v77 = v77;
                                        }

                                        if (v138 <= 1)
                                        {
                                          goto LABEL_356;
                                        }

                                        goto LABEL_343;
                                      }

                                      v133 = *(v157 + 16);
                                      v134 = *(v157 + 24);
                                    }

                                    else
                                    {
                                      if (!v122)
                                      {
                                        *v173 = v157;
                                        *&v173[8] = v14;
                                        v173[10] = BYTE2(v14);
                                        v173[11] = BYTE3(v14);
                                        v173[12] = BYTE4(v14);
                                        v173[13] = BYTE5(v14);
                                        sub_1B03B2000(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B03B2000(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0AE2440(v173, v98, v65 & 0xDFFFFFFFFFFFFFFFLL, v172);
                                        sub_1B0391D50(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0391D50(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                        v130 = v154;
                                        v131 = v155;
                                        v132 = v156;
                                        if ((v172[0] & 1) == 0)
                                        {
                                          goto LABEL_381;
                                        }

                                        goto LABEL_333;
                                      }

                                      v133 = v157;
                                      v134 = v157 >> 32;
                                      if (v157 >> 32 < v157)
                                      {
                                        goto LABEL_423;
                                      }
                                    }

                                    sub_1B03B2000(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B03B2000(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B03B2000(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                    v135 = sub_1B0AB87A0(v133, v134, v14 & 0x1FFFFFFFFFFFFFFFLL, v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B0391D50(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B0391D50(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B0391D50(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
                                    v130 = v154;
                                    v131 = v155;
                                    v132 = v156;
                                    if ((v135 & 1) == 0)
                                    {
                                      goto LABEL_381;
                                    }

                                    goto LABEL_333;
                                  }

LABEL_324:
                                  v130 = v154;
                                  v131 = v155;
                                  v132 = v156;
                                  goto LABEL_333;
                                }

                                v129 = *(v157 + 16);
                                v128 = *(v157 + 24);
                                v38 = __OFSUB__(v128, v129);
                                v124 = v128 - v129;
                                if (v38)
                                {
                                  goto LABEL_410;
                                }
                              }

                              else
                              {
                                if (!v122)
                                {
                                  v124 = BYTE6(v14);
                                  if (v123 <= 1)
                                  {
                                    goto LABEL_314;
                                  }

                                  goto LABEL_301;
                                }

                                LODWORD(v124) = HIDWORD(v157) - v157;
                                if (__OFSUB__(HIDWORD(v157), v157))
                                {
                                  goto LABEL_411;
                                }

                                v124 = v124;
                              }

                              if (v123 <= 1)
                              {
                                goto LABEL_314;
                              }

                              goto LABEL_301;
                            }

                            *v173 = v160;
                            *&v173[8] = v99;
                            v173[10] = BYTE2(v99);
                            v173[11] = BYTE3(v99);
                            v173[12] = BYTE4(v99);
                            v173[13] = BYTE5(v99);
                            sub_1B03B2000(v161, v92);
                            sub_1B03B2000(v161, v92);
                            sub_1B0AE2440(v173, v161, v92, v172);
                            sub_1B0391D50(v161, v92);
                            v119 = v161;
                          }

                          sub_1B0391D50(v119, v92);
                          if ((v172[0] & 1) == 0)
                          {
                            goto LABEL_381;
                          }

                          goto LABEL_291;
                        }

                        v118 = *(v160 + 16);
                        v117 = *(v160 + 24);
                        v38 = __OFSUB__(v117, v118);
                        v113 = v117 - v118;
                        if (v38)
                        {
                          goto LABEL_409;
                        }
                      }

                      else
                      {
                        if (!v111)
                        {
                          v113 = BYTE6(v99);
                          if (v112 <= 1)
                          {
                            goto LABEL_272;
                          }

                          goto LABEL_259;
                        }

                        LODWORD(v113) = HIDWORD(v160) - v160;
                        if (__OFSUB__(HIDWORD(v160), v160))
                        {
                          goto LABEL_408;
                        }

                        v113 = v113;
                      }

                      if (v112 <= 1)
                      {
                        goto LABEL_272;
                      }

                      goto LABEL_259;
                    }

LABEL_235:
                    v98 = v159;
                    v99 = v162;
                    goto LABEL_249;
                  }

LABEL_212:
                  if (v90 != 2)
                  {
                    v98 = v159;
                    v99 = v162;
                    if (v91)
                    {
                      goto LABEL_381;
                    }

                    goto LABEL_249;
                  }

                  v94 = *(v164 + 16);
                  v93 = *(v164 + 24);
                  v38 = __OFSUB__(v93, v94);
                  v95 = v93 - v94;
                  if (v38)
                  {
                    goto LABEL_391;
                  }

                  goto LABEL_229;
                }

                v97 = *(v13 + 16);
                v96 = *(v13 + 24);
                v38 = __OFSUB__(v96, v97);
                v91 = v96 - v97;
                if (v38)
                {
                  goto LABEL_406;
                }
              }

              else
              {
                if (!v89)
                {
                  v91 = BYTE6(v12);
                  if (v90 <= 1)
                  {
                    goto LABEL_225;
                  }

                  goto LABEL_212;
                }

                LODWORD(v91) = HIDWORD(v13) - v13;
                if (__OFSUB__(HIDWORD(v13), v13))
                {
                  goto LABEL_407;
                }

                v91 = v91;
              }
            }

            if (v90 <= 1)
            {
              goto LABEL_225;
            }

            goto LABEL_212;
          }

          v150 = *&v180[8];
          v151 = *(&v175 + 1);
          v66 = *(v174 + 16);
          v148 = *(v174 + 24);
          sub_1B0D26014(&v179, v173);
          sub_1B0D26014(&v174, v173);
          v67 = sub_1B0E42A98();
          if (v67)
          {
            v68 = sub_1B0E42AC8();
            if (__OFSUB__(v66, v68))
            {
              goto LABEL_427;
            }

            v67 += v66 - v68;
          }

          if (__OFSUB__(v148, v66))
          {
            goto LABEL_417;
          }
        }

        else
        {
          v150 = *&v180[8];
          if (!v33)
          {
            v172[0] = v174;
            LODWORD(v172[1]) = DWORD2(v174);
            WORD2(v172[1]) = WORD6(v174);
            v62 = *(&v179 + 1);
            v63 = v179;
            sub_1B0D26014(&v179, v173);
            sub_1B0D26014(&v174, v173);
            sub_1B0AE2440(v172, v63, v62, v173);
            v64 = v173[0];
            goto LABEL_199;
          }

          v149 = v179;
          v151 = *(&v175 + 1);
          v87 = v174;
          if (v174 >> 32 < v174)
          {
            goto LABEL_414;
          }

          sub_1B0D26014(&v179, v173);
          sub_1B0D26014(&v174, v173);
          v67 = sub_1B0E42A98();
          if (v67)
          {
            v88 = sub_1B0E42AC8();
            if (__OFSUB__(v87, v88))
            {
              goto LABEL_428;
            }

            v67 += v87 - v88;
          }
        }

        sub_1B0E42AB8();
        sub_1B0AE2440(v67, v149, *(&v149 + 1), v173);
        v64 = v173[0];
        v12 = v151;
LABEL_199:
        v65 = v31;
        v32 = v150;
        if ((v64 & 1) == 0)
        {
          goto LABEL_381;
        }

        goto LABEL_202;
      }

      v52 = *(v174 + 16);
      v51 = *(v174 + 24);
      v38 = __OFSUB__(v51, v52);
      v35 = v51 - v52;
      if (v38)
      {
        goto LABEL_401;
      }
    }

    else
    {
      if (!v33)
      {
        v35 = BYTE14(v174);
        if (v34 <= 1)
        {
          goto LABEL_122;
        }

        goto LABEL_54;
      }

      LODWORD(v35) = DWORD1(v174) - v174;
      if (__OFSUB__(DWORD1(v174), v174))
      {
        goto LABEL_403;
      }

      v35 = v35;
    }

    if (v34 <= 1)
    {
      goto LABEL_122;
    }

    goto LABEL_54;
  }

LABEL_380:
  v147 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B0D19BC8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D19C24(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 4;
    v4 = a2 + 4;
    v5 = a1[4];
    v6 = a2[4];
    v7 = *(v5 + 16);
    if (v7 == *(v6 + 16))
    {
      v8 = a2 + 6;
      v9 = a2 + 5;
      v10 = a1 + 5;
      v11 = a1 + 6;
      v12 = 1;
      while (!v7 || v5 == v6)
      {
LABEL_11:
        v15 = *v10 == *v9 && *v11 == *v8;
        if (!v15 && (sub_1B0E46A78() & 1) == 0)
        {
          return 0;
        }

        if (v12 == v2)
        {
          return 1;
        }

        result = 0;
        v17 = 3 * v12++;
        v17 *= 8;
        v11 = (v3 + v17 + 16);
        v10 = (v3 + v17 + 8);
        v5 = *(v3 + v17);
        v9 = (v4 + v17 + 8);
        v8 = (v4 + v17 + 16);
        v6 = *(v4 + v17);
        v7 = *(v5 + 16);
        if (v7 != *(v6 + 16))
        {
          return result;
        }
      }

      v13 = (v5 + 32);
      v14 = (v6 + 32);
      while (*v13 == *v14)
      {
        ++v13;
        ++v14;
        if (!--v7)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B0D19D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 66);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 66);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1B0E46A78() & 1) == 0)
      {
        break;
      }

      if (v4 == v8 && v5 == v9)
      {
        if (v6 != v10)
        {
          return 0;
        }
      }

      else
      {
        v14 = sub_1B0E46A78();
        result = 0;
        if ((v14 & 1) == 0 || v6 != v10)
        {
          return result;
        }
      }

      if (v7 >> 6)
      {
        if (v7 >> 6 == 1)
        {
          result = 0;
          if ((v11 & 0xC0) != 0x40 || ((v11 ^ v7) & 0x3F) != 0)
          {
            return result;
          }
        }

        else if (v11 != 128)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v11 > 0x3F || v7 != v11)
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t IndexRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v27 = a2;
  v26 = a4;
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68D0, &qword_1B0EEA848);
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68D8, &qword_1B0EEA850);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68E0, &qword_1B0EEA858);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D1F814();
  sub_1B0E46D48();
  if (v26)
  {
    LOBYTE(v30) = 1;
    sub_1B0D1F868();
    sub_1B0E468B8();
    v30 = v27;
    sub_1B0D1F8BC();
    sub_1B0E46958();
    (*(v23 + 8))(v8, v5);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_1B0D1F910();
    sub_1B0E468B8();
    v30 = v27;
    v29 = 0;
    sub_1B0D1F8BC();
    v19 = v25;
    v20 = v28;
    sub_1B0E46958();
    if (v20)
    {
      (*(v24 + 8))(v12, v19);
      return (*(v14 + 8))(v17, v13);
    }

    v30 = v22;
    v29 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68E8, &qword_1B0EEA860);
    sub_1B0D1F964();
    sub_1B0E46958();
    (*(v24 + 8))(v12, v19);
  }

  return (*(v14 + 8))(v17, v13);
}

void *IndexRequest.init(from:)(uint64_t *a1)
{
  result = sub_1B0D1FA3C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_1B0D1A294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B0D1FA3C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1B0D1A2E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[2])
  {
    if (*a1 == *a2)
    {
      return *(a2 + 16);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v5 = *(a2 + 16);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }

    else
    {
      return sub_1B0D19D4C(a1[1], a2[1]);
    }
  }
}

uint64_t IndexRequest.ID.next.getter(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t IndexRequest.ID.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D1A3C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6BA0, &qword_1B0EED950);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 1;
  off_1EB6DC768 = result;
  return result;
}

void static IndexRequest.ID.makeNext()()
{
  if (qword_1EB6DC760 != -1)
  {
    swift_once();
  }

  v0 = off_1EB6DC768;

  os_unfair_lock_lock(v0 + 6);
  v1 = *&v0[4]._os_unfair_lock_opaque;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *&v0[4]._os_unfair_lock_opaque = v1 + 1;
    os_unfair_lock_unlock(v0 + 6);
  }
}

uint64_t IndexRequest.ID.init(from:)(uint64_t *a1)
{
  sub_1B03D2CA8(a1, v4);
  v2 = sub_1B0E455C8();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_1B0D1A50C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B03D2CA8(a1, v7);
  v5 = sub_1B0E455C8();
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1B0D1A63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64657243656B616DLL && a2 == 0xEF736C6169746E65)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B0E46A78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0D1A6CC()
{
  sub_1B0D2000C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1A708()
{
  sub_1B0D2000C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1A744()
{
  sub_1B0D20060();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1A780()
{
  sub_1B0D20060();

  return sub_1B0E46F38();
}

uint64_t CredentialRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68F0, &qword_1B0EEA868);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E68F8, &qword_1B0EEA870);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D2000C();
  sub_1B0E46D48();
  sub_1B0D20060();
  sub_1B0E468B8();
  v18 = v16;
  v19 = v17;
  sub_1B0D11D5C();
  sub_1B0E46958();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

void *sub_1B0D1A9E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B0D200B4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1B0D1AA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B0E46A78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0D1AAD8()
{
  sub_1B0D20434();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1AB14()
{
  sub_1B0D20434();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1AB50()
{
  sub_1B0D20488();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1AB8C()
{
  sub_1B0D20488();

  return sub_1B0E46F38();
}

uint64_t CredentialResponse.encode(to:)(void *a1, uint64_t a2)
{
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6900, &qword_1B0EEA878);
  v4 = *(v16[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v16[0]);
  v7 = v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6908, &qword_1B0EEA880);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D20434();
  sub_1B0E46D48();
  sub_1B0D20488();
  sub_1B0E468B8();
  v16[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6910, &qword_1B0EEA888);
  sub_1B0D204DC();
  v14 = v16[0];
  sub_1B0E46958();
  (*(v4 + 8))(v7, v14);
  return (*(v9 + 8))(v12, v8);
}

void *sub_1B0D1AE00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B0D205B4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1B0D1AE54()
{
  v1 = *v0;
  v2 = 0x686372616573;
  v3 = 0xD000000000000015;
  v4 = 0x6C616E41646E6573;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 == 1)
  {
    v5 = 0x70756B6F6F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B0D1AF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0D20D10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0D1AF48()
{
  sub_1B0D20944();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1AF84()
{
  sub_1B0D20944();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1AFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0D1B08C()
{
  sub_1B0D209EC();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1B0C8()
{
  sub_1B0D209EC();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1B104()
{
  v1 = 0x65726F666562;
  if (*v0 != 1)
  {
    v1 = 0x74696D696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B0D1B14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0D20F18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0D1B174()
{
  sub_1B0D20BC0();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1B1B0()
{
  sub_1B0D20BC0();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1B1EC()
{
  sub_1B0D20B6C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1B228()
{
  sub_1B0D20B6C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1B264()
{
  sub_1B0D20C14();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1B2A0()
{
  sub_1B0D20C14();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1B2DC()
{
  sub_1B0D20C68();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1B318()
{
  sub_1B0D20C68();

  return sub_1B0E46F38();
}

uint64_t sub_1B0D1B354()
{
  sub_1B0D20998();

  return sub_1B0E46F28();
}

uint64_t sub_1B0D1B390()
{
  sub_1B0D20998();

  return sub_1B0E46F38();
}

uint64_t SearchRequest.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6918, &qword_1B0EEA890);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6920, &qword_1B0EEA898);
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6928, &qword_1B0EEA8A0);
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6930, &qword_1B0EEA8A8);
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6938, &qword_1B0EEA8B0);
  v62 = *(v16 - 8);
  v17 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6940, &qword_1B0EEA8B8);
  v61 = *(v20 - 8);
  v21 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6948, &qword_1B0EEA8C0);
  v71 = *(v69 - 8);
  v24 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v26 = &v55 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0D20944();
  v70 = v26;
  sub_1B0E46D48();
  v29 = *v2;
  v28 = *(v2 + 8);
  v30 = *(v2 + 16);
  v31 = *(v2 + 40);
  if (v31 <= 1)
  {
    if (*(v2 + 40))
    {
      LOBYTE(v73) = 1;
      sub_1B0D20C14();
      v53 = v69;
      v54 = v70;
      sub_1B0E468B8();
      v73 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
      sub_1B0D25B58(&qword_1EB6DB080);
      sub_1B0E46958();
      (*(v62 + 8))(v19, v16);
      return (*(v71 + 8))(v54, v53);
    }

    else
    {
      LOBYTE(v73) = 0;
      sub_1B0D20C68();
      v42 = v69;
      v43 = v70;
      sub_1B0E468B8();
      v73 = v29;
      v74 = v28;
      v75 = v30;
      sub_1B0D20CBC();
      sub_1B0E46958();
      (*(v61 + 8))(v23, v20);
      return (*(v71 + 8))(v43, v42);
    }
  }

  else
  {
    v32 = *(v2 + 24);
    v33 = *(v2 + 28);
    v34 = *(v2 + 32);
    if (v31 == 2)
    {
      v68 = *(v2 + 32);
      LOBYTE(v73) = 2;
      sub_1B0D20BC0();
      v44 = v63;
      v46 = v69;
      v45 = v70;
      sub_1B0E468B8();
      v73 = v29;
      v74 = v28;
      v75 = v30;
      v76 = 0;
      sub_1B0D20A40();
      v47 = v65;
      v48 = v72;
      sub_1B0E46958();
      if (!v48)
      {
        LODWORD(v73) = v32;
        BYTE4(v73) = v33 & 1;
        v76 = 1;
        sub_1B0D20B18();
        sub_1B0E468F8();
        LOBYTE(v73) = 2;
        sub_1B0E46948();
      }

      (*(v64 + 8))(v44, v47);
      return (*(v71 + 8))(v45, v46);
    }

    else
    {
      v35 = v32 | (v33 << 32) | ((*(v2 + 29) | (*(v2 + 31) << 16)) << 40);
      v36 = v69;
      if (v31 == 3)
      {
        LOBYTE(v73) = 4;
        sub_1B0D209EC();
        v37 = v66;
        v38 = v70;
        sub_1B0E468B8();
        v73 = v29;
        v74 = v28;
        v75 = v30;
        v76 = 0;
        sub_1B0D20A40();
        v39 = v68;
        v40 = v72;
        sub_1B0E46958();
        if (!v40)
        {
          v73 = v35;
          v76 = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3000, &unk_1B0EA07F0);
          sub_1B0D20A94();
          sub_1B0E46958();
        }

        (*(v67 + 8))(v37, v39);
        return (*(v71 + 8))(v38, v36);
      }

      else
      {
        v49 = v70;
        if (v30 | v28 | v29 | v34 | v35)
        {
          LOBYTE(v73) = 5;
          sub_1B0D20998();
          v50 = v58;
          sub_1B0E468B8();
          v52 = v59;
          v51 = v60;
        }

        else
        {
          LOBYTE(v73) = 3;
          sub_1B0D20B6C();
          v50 = v55;
          sub_1B0E468B8();
          v52 = v56;
          v51 = v57;
        }

        (*(v52 + 8))(v50, v51);
        return (*(v71 + 8))(v49, v36);
      }
    }
  }
}