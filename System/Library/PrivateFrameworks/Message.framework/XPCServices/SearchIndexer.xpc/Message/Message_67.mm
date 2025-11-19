unint64_t sub_100440478()
{
  result = qword_1005DCAD0;
  if (!qword_1005DCAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCAD0);
  }

  return result;
}

uint64_t sub_1004404DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100492448(*a1, *a2, *(a2 + 8), *(a2 + 16), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_100440564(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  if (a2 <= 1u)
  {
    if (a2)
    {
      goto LABEL_16;
    }

    v5 = *(v2 + 5);
    result = sub_1002F178C(0x2065657274627573, 0xE800000000000000, v2 + 1, *(v2 + 5));
    if (v7)
    {
      v8._countAndFlagsBits = 0x2065657274627573;
      v8._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v2 + 5);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    *(v2 + 5) = v12;
    v13 = sub_10044022C(a1);
    v14 = __OFADD__(v9, v13);
    result = v9 + v13;
    if (!v14)
    {
      return result;
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_22;
  }

  v15 = *(v2 + 5);
  result = sub_1002F178C(0x2D65657274627573, 0xEC00000020656E6FLL, v2 + 1, *(v2 + 5));
  if (v16)
  {
    v17._countAndFlagsBits = 0x2D65657274627573;
    v17._object = 0xEC00000020656E6FLL;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = result;
  v19 = *(v2 + 5);
  v11 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v11)
  {
    goto LABEL_51;
  }

  *(v2 + 5) = v20;
  v21 = sub_10044022C(a1);
  v14 = __OFADD__(v18, v21);
  result = v18 + v21;
  if (!v14)
  {
    return result;
  }

  __break(1u);
LABEL_16:
  v22 = *(v2 + 5);
  result = sub_1002F178C(0x65786F626C69616DLL, 0xEA00000000002073, v2 + 1, *(v2 + 5));
  if (v23)
  {
    v24._countAndFlagsBits = 0x65786F626C69616DLL;
    v24._object = 0xEA00000000002073;
    result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
  }

  v25 = result;
  v26 = *(v2 + 5);
  v11 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (v11)
  {
    goto LABEL_52;
  }

  *(v2 + 5) = v27;
  v28 = sub_10044022C(a1);
  v14 = __OFADD__(v25, v28);
  result = v25 + v28;
  if (v14)
  {
    __break(1u);
LABEL_22:
    if (a1 > 1)
    {
      if (a1 == 2)
      {
LABEL_36:
        v39 = *(v2 + 5);
        v2 = (v2 + 20);
        v38 = v39;
        result = sub_1002F178C(0x6269726373627573, 0xEA00000000006465, (v2 - 12), v39);
        if (v40)
        {
          v41._countAndFlagsBits = 0x6269726373627573;
          v41._object = 0xEA00000000006465;
          result = ByteBuffer._setStringSlowpath(_:at:)(v41, v38);
        }

        v33 = *v2 + result;
        if (!__CFADD__(*v2, result))
        {
          goto LABEL_49;
        }

        __break(1u);
        goto LABEL_41;
      }

      if (a1 != 3)
      {
LABEL_41:
        v43 = *(v2 + 5);
        v2 = (v2 + 20);
        v42 = v43;
        result = sub_1002F178C(0xD000000000000010, 0x80000001004B0DA0, (v2 - 12), v43);
        if (v44)
        {
          v45._object = 0x80000001004B0DA0;
          v45._countAndFlagsBits = 0xD000000000000010;
          result = ByteBuffer._setStringSlowpath(_:at:)(v45, v42);
        }

        v33 = *v2 + result;
        if (!__CFADD__(*v2, result))
        {
          goto LABEL_49;
        }

        __break(1u);
LABEL_46:
        v47 = *(v2 + 5);
        v2 = (v2 + 20);
        v46 = v47;
        result = sub_1002F178C(0x6C616E6F73726570, 0xE800000000000000, (v2 - 12), v47);
        if (v48)
        {
          v49._countAndFlagsBits = 0x6C616E6F73726570;
          v49._object = 0xE800000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v49, v46);
        }

        v33 = *v2 + result;
        if (!__CFADD__(*v2, result))
        {
LABEL_49:
          *v2 = v33;
          return result;
        }

LABEL_53:
        __break(1u);
        return result;
      }

      v29 = *(v2 + 5);
      v2 = (v2 + 20);
      a1 = v29;
      result = sub_1002F178C(0x64657463656C6573, 0xE800000000000000, (v2 - 12), v29);
      if (v30)
      {
        v31._countAndFlagsBits = 0x64657463656C6573;
        v31._object = 0xE800000000000000;
        v32 = a1;
        a1 = v2;
        result = ByteBuffer._setStringSlowpath(_:at:)(v31, v32);
      }

      v33 = *v2 + result;
      if (!__CFADD__(*v2, result))
      {
        goto LABEL_49;
      }

      __break(1u);
    }

    if (a1)
    {
      goto LABEL_46;
    }

    v35 = *(v2 + 5);
    v2 = (v2 + 20);
    v34 = v35;
    result = sub_1002F178C(0x7365786F626E69, 0xE700000000000000, (v2 - 12), v35);
    if (v36)
    {
      v37._countAndFlagsBits = 0x7365786F626E69;
      v37._object = 0xE700000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v37, v34);
    }

    v33 = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_36;
  }

  return result;
}

void MailboxFilter.hash(into:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      sub_1004A6EB4(7uLL);
      v7 = *(a2 + 16);
      sub_1004A6EB4(v7);
      if (v7)
      {
        v8 = (a2 + 40);
        do
        {
          v9 = *v8;
          v8 += 4;
          sub_1004A6EB4(v9 | (v9 << 32));
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      sub_1004A6EB4(qword_100506868[a2]);
    }
  }

  else if (a3)
  {
    sub_1004A6EB4(4uLL);
    v10 = *(a2 + 16);
    sub_1004A6EB4(v10);
    if (v10)
    {
      v11 = (a2 + 40);
      do
      {
        v12 = *v11;
        v11 += 4;
        sub_1004A6EB4(v12 | (v12 << 32));
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    sub_1004A6EB4(3uLL);
    v4 = *(a2 + 16);
    sub_1004A6EB4(v4);
    if (v4)
    {
      v5 = (a2 + 40);
      do
      {
        v6 = *v5;
        v5 += 4;
        sub_1004A6EB4(v6 | (v6 << 32));
        --v4;
      }

      while (v4);
    }
  }
}

Swift::Int MailboxFilter.hashValue.getter(uint64_t a1, unsigned __int8 a2)
{
  sub_1004A6E94();
  MailboxFilter.hash(into:)(v5, a1, a2);
  return sub_1004A6F14();
}

Swift::Int sub_100440A80()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  MailboxFilter.hash(into:)(v4, v1, v2);
  return sub_1004A6F14();
}

Swift::Int sub_100440ADC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  MailboxFilter.hash(into:)(v4, v1, v2);
  return sub_1004A6F14();
}

uint64_t _s12NIOIMAPCore213MailboxFilterO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (a4 == 2)
      {
        v4 = a3;
        return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(a1, v4);
      }
    }

    else if (a1 <= 1)
    {
      if (a1)
      {
        if (a4 == 3 && a3 == 1)
        {
          return 1;
        }
      }

      else if (a4 == 3 && !a3)
      {
        return 1;
      }
    }

    else if (a1 == 2)
    {
      if (a4 == 3 && a3 == 2)
      {
        return 1;
      }
    }

    else if (a1 == 3)
    {
      if (a4 == 3 && a3 == 3)
      {
        return 1;
      }
    }

    else if (a4 == 3 && a3 == 4)
    {
      return 1;
    }
  }

  else if (a2)
  {
    if (a4 == 1)
    {
LABEL_10:
      v4 = a3;
      return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(a1, v4);
    }
  }

  else if (!a4)
  {
    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_100440C28()
{
  result = qword_1005DCAD8;
  if (!qword_1005DCAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCAD8);
  }

  return result;
}

uint64_t sub_100440C7C(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100440C98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100440CE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100440D24(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

double EmailAddressGroup.init(groupName:sourceRoot:children:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v12 = a1;
  *(&v12 + 1) = a2;
  LODWORD(v13) = a3;
  WORD2(v13) = WORD2(a3);
  BYTE6(v13) = BYTE6(a3);
  *(&v13 + 1) = a4;
  *&v14 = a5;
  DWORD2(v14) = a6;
  BYTE14(v14) = BYTE6(a6);
  WORD6(v14) = WORD2(a6);
  v15 = a7;
  v16[0] = a1;
  v16[1] = a2;
  v17 = a3;
  v18 = WORD2(a3);
  v19 = BYTE6(a3);
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v24 = BYTE6(a6);
  v23 = WORD2(a6);
  v25 = a7;
  sub_1003A31B0(&v12, v11);
  sub_1003A320C(v16);
  v9 = v13;
  *a8 = v12;
  *(a8 + 16) = v9;
  result = *&v14;
  *(a8 + 32) = v14;
  *(a8 + 48) = v15;
  return result;
}

void EmailAddressGroup.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(v2 + 10);
  v8 = *(v2 + 22);
  swift_beginAccess();
  v9 = *(v4 + 24) + (v8 | (v7 << 8));
  sub_1004A6EA4();
  v10 = v2[3];
  if (v10)
  {
    v11 = *(v2 + 46);
    v12 = *(v2 + 22);
    v13 = v2[4];
    sub_1004A6EC4(1u);
    swift_beginAccess();
    v14 = *(v10 + 24) + (v11 | (v12 << 8));
    sub_1004A6EA4();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003AB028(a1, v2[6]);
}

Swift::Int EmailAddressGroup.hashValue.getter()
{
  sub_1004A6E94();
  EmailAddressGroup.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100440F2C()
{
  sub_1004A6E94();
  EmailAddressGroup.hash(into:)(v1);
  return sub_1004A6F14();
}

uint64_t sub_100440F68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s12NIOIMAPCore217EmailAddressGroupV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

void EmailAddressListElement.hash(into:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    v3 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v4 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x1C);
    v6 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x24);
    v7 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x26);
    v8 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v14 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x3E);
    v9 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x3C);
    v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x38);
    v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v10 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
    sub_1004A6EB4(1uLL);
    swift_beginAccess();
    v11 = *(v3 + 24) + (v7 | (v6 << 8));
    sub_1004A6EA4();
    if (v8)
    {
      v12 = v15 | ((v9 | (v14 << 16)) << 32);
      sub_1004A6EC4(1u);
      swift_beginAccess();
      v13 = *(v8 + 24) + ((v12 >> 24) & 0xFFFF00 | BYTE6(v12));
      sub_1004A6EA4();
    }

    else
    {
      sub_1004A6EC4(0);
    }

    sub_1003AB028(a1, v10);
  }

  else
  {
    v19 = *(a2 + 48);
    v20 = *(a2 + 64);
    *v21 = *(a2 + 80);
    *&v21[15] = *(a2 + 95);
    v17 = *(a2 + 16);
    v18 = *(a2 + 32);
    sub_1004A6EB4(0);
    EmailAddress.hash(into:)();
  }
}

Swift::Int EmailAddressListElement.hashValue.getter(unint64_t a1)
{
  sub_1004A6E94();
  EmailAddressListElement.hash(into:)(v3, a1);
  return sub_1004A6F14();
}

Swift::Int sub_1004411A4()
{
  v1 = *v0;
  sub_1004A6E94();
  EmailAddressListElement.hash(into:)(v3, v1);
  return sub_1004A6F14();
}

Swift::Int sub_1004411F4()
{
  v1 = *v0;
  sub_1004A6E94();
  EmailAddressListElement.hash(into:)(v3, v1);
  return sub_1004A6F14();
}

uint64_t sub_100441244(uint64_t *a1)
{
  v2 = v1;
  *v38 = *(a1 + 3);
  *&v32[1] = *(a1 + 3);
  v46 = *v32;
  *&v38[15] = *(a1 + 39);
  v4 = *(a1 + 4);
  v5 = *(a1 + 22);
  v6 = (v5 << 48) | (*(a1 + 10) << 32);
  *&v32[16] = *(a1 + 39);
  v47 = *&v32[16];
  v8 = *a1;
  v7 = a1[1];
  memset(v45, 0, sizeof(v45));
  v48 = v8;
  v49 = v7;
  v52 = v5;
  v51 = WORD2(v6);
  v50 = v4;
  v53 = 0;
  v54[0] = 0;
  *(v54 + 7) = 0;
  memset(v55, 0, sizeof(v55));
  v57 = *&v32[16];
  v56 = *v32;
  v58 = v8;
  v59 = v7;
  v62 = v5;
  v61 = WORD2(v6);
  v60 = v4;
  v63 = 0;
  v64[0] = 0;
  *(v64 + 7) = 0;
  sub_1004419B4(v38, v39);
  sub_1004419B4(v38, v39);

  sub_1003A3260(v45, v39);
  sub_1003A32BC(v55);
  v9 = sub_1003E367C(v45);
  result = sub_1003A32BC(v45);
  v11 = a1[6];
  v37 = v11;
  v12 = v11[2];
  if (v12)
  {
    v13 = *(v2 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
    if (v14)
    {
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
    }

    v16 = result;
    v17 = *(v2 + 20);
    v18 = __CFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      goto LABEL_21;
    }

    *(v2 + 20) = v19;
  }

  else
  {
    v16 = 0;
  }

  __chkstk_darwin(result);
  v29[2] = sub_1003E7C08;
  v29[3] = 0;
  v29[4] = v2;
  v29[5] = &v37;
  v29[6] = 0;
  v29[7] = 0xE000000000000000;
  result = sub_100451C5C(0, sub_100441A24, v29, v11);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
    goto LABEL_18;
  }

  if (!v12)
  {
    result = 0;
    v26 = v20;
    goto LABEL_13;
  }

  v21 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v22)
  {
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
  }

  v24 = *(v2 + 20);
  v18 = __CFADD__(v24, result);
  v25 = v24 + result;
  if (v18)
  {
    goto LABEL_22;
  }

  *(v2 + 20) = v25;
  v26 = v20 + result;
  if (__OFADD__(v20, result))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  v27 = v9 + v26;
  if (__OFADD__(v9, v26))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *&v31[1] = *v38;
  v40 = *v31;
  *&v31[16] = *&v38[15];
  memset(v32, 0, 23);
  v41 = *&v38[15];
  memset(v39, 0, sizeof(v39));
  v42 = 0;
  v43[0] = 0;
  *(v43 + 7) = 0;
  v43[2] = 0;
  v44[0] = 0;
  *(v44 + 7) = 0;
  v33 = *&v38[15];
  *&v32[23] = *v31;
  v34 = 0;
  v35[0] = 0;
  *(v35 + 7) = 0;
  v35[2] = 0;
  v36[0] = 0;
  *(v36 + 7) = 0;
  sub_1003A3260(v39, &v30);
  sub_1003A32BC(v32);
  v28 = sub_1003E367C(v39);
  sub_1003A32BC(v39);
  result = v27 + v28;
  if (__OFADD__(v27, v28))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t _s12NIOIMAPCore217EmailAddressGroupV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_10020FBD0(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40) | ((*(a1 + 44) | (*(a1 + 46) << 16)) << 32);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40) | ((*(a2 + 44) | (*(a2 + 46) << 16)) << 32);
  v9 = *(a2 + 24);

  LOBYTE(v5) = sub_10020FBD0(v10, v5, v6 & 0xFFFFFFFFFFFFFFLL, v4, v7, v8 & 0xFFFFFFFFFFFFFFLL);

  if ((v5 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  v11 = *(a1 + 48);
  v12 = *(a2 + 48);

  return sub_100398218(v11, v12);
}

uint64_t _s12NIOIMAPCore223EmailAddressListElementO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v11 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = v7;
    v13 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    *&v14 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = v8;
      v18 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
      *&v19 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
      sub_1003A31B0(&v16, v10);
      v6 = _s12NIOIMAPCore217EmailAddressGroupV23__derived_struct_equalsySbAC_ACtFZ_0(&v11, &v16);
      sub_1003A320C(&v16);
      return v6 & 1;
    }

    goto LABEL_5;
  }

  v2 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = v2;
  v15[0] = *(a1 + 80);
  *(v15 + 15) = *(a1 + 95);
  v3 = *(a1 + 32);
  v11 = *(a1 + 16);
  v12 = v3;
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    v6 = 0;
    return v6 & 1;
  }

  v4 = *(a2 + 64);
  v18 = *(a2 + 48);
  v19 = v4;
  v20[0] = *(a2 + 80);
  *(v20 + 15) = *(a2 + 95);
  v5 = *(a2 + 32);
  v16 = *(a2 + 16);
  v17 = v5;
  sub_1003A3260(&v16, v10);
  v6 = _s12NIOIMAPCore212EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(&v11, &v16);
  sub_1003A32BC(&v16);
  return v6 & 1;
}

unint64_t sub_10044179C()
{
  result = qword_1005DCAE0;
  if (!qword_1005DCAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCAE0);
  }

  return result;
}

unint64_t sub_1004417F4()
{
  result = qword_1005DCAE8;
  if (!qword_1005DCAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCAE8);
  }

  return result;
}

uint64_t sub_100441848(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100441890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004418F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100441954(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1004419B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D8528, &qword_1004F4B48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100441A4C()
{
  result = qword_1005DCAF0;
  if (!qword_1005DCAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCAF0);
  }

  return result;
}

unint64_t sub_100441AA4()
{
  result = qword_1005DCAF8;
  if (!qword_1005DCAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCAF8);
  }

  return result;
}

unint64_t sub_100441AFC()
{
  result = qword_1005DCB00;
  if (!qword_1005DCB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB00);
  }

  return result;
}

unint64_t sub_100441B60(unint64_t a1, unint64_t a2)
{
  if (*v2 == 1)
  {

    return sub_1004425C0(a1, a2);
  }

  v31 = *v2;
  v32 = v2[2];
  v33 = *(v2 + 6);
  v6 = HIDWORD(*(v2 + 2));
  v7 = sub_100442FFC(a1, a2);
  if (v7 <= 1)
  {
    if (!v7)
    {

      return sub_100443574(a1, a2);
    }

LABEL_21:
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_22:
      v37._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v37);

      v38._countAndFlagsBits = 658813;
      v38._object = 0xE300000000000000;
      sub_1004A5994(v38);
      v16 = sub_1002F178C(123, 0xE100000000000000, v2 + 1, v6);
      if (v17)
      {
        v18._countAndFlagsBits = 123;
        v18._object = 0xE100000000000000;
        v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v6);
      }

      v19 = v16;

      v20 = *(v2 + 5);
      v21 = __CFADD__(v20, v19);
      v22 = v20 + v19;
      if (v21)
      {
        __break(1u);
LABEL_37:
        sub_1004A59E4();
LABEL_29:
        v39._countAndFlagsBits = sub_1004A6CE4();
        sub_1004A5994(v39);

        v40._countAndFlagsBits = 168656171;
        v40._object = 0xE400000000000000;
        sub_1004A5994(v40);
        v24 = sub_1002F178C(123, 0xE100000000000000, v2 + 1, v6);
        if (v25)
        {
          v26._countAndFlagsBits = 123;
          v26._object = 0xE100000000000000;
          v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v6);
        }

        v27 = v24;

        v28 = *(v2 + 5);
        v21 = __CFADD__(v28, v27);
        v29 = v28 + v27;
        if (v21)
        {
          __break(1u);
        }

        else
        {
          *(v2 + 5) = v29;
          v30 = sub_1003E0978(a1, a2);
          v15 = __OFADD__(v27, v30);
          result = v27 + v30;
          if (!v15)
          {
            return result;
          }
        }

        __break(1u);
        return result;
      }

      *(v2 + 5) = v22;
      v23 = sub_1003E0978(a1, a2);
      v15 = __OFADD__(v19, v23);
      result = v19 + v23;
      if (!v15)
      {
        return result;
      }

      __break(1u);
LABEL_28:
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }

LABEL_35:
    sub_1004A59E4();
    goto LABEL_22;
  }

  if (v7 != 2)
  {
    goto LABEL_28;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_1004A59E4();
  }

  v35._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v35);

  v36._countAndFlagsBits = 658813;
  v36._object = 0xE300000000000000;
  sub_1004A5994(v36);
  v8 = sub_1002F178C(123, 0xE100000000000000, v2 + 1, v6);
  if (v9)
  {
    v10._countAndFlagsBits = 123;
    v10._object = 0xE100000000000000;
    v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v6);
  }

  v11 = v8;

  v12 = *(v2 + 5);
  v13 = (v12 + v11);
  if (__CFADD__(v12, v11))
  {
    __break(1u);
    goto LABEL_35;
  }

  *(v2 + 5) = v13;
  if (((*(&v31 + 1) | (SBYTE5(v31) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(v13);
  }

  v14 = sub_1003E0978(a1, a2);
  v15 = __OFADD__(v11, v14);
  result = v11 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100441F24(uint64_t a1)
{
  if (*v1 == 1)
  {

    return sub_100442968(a1);
  }

  v31 = *v1;
  v32 = v1[2];
  v33 = *(v1 + 6);
  v4 = HIDWORD(*(v1 + 2));
  v5 = sub_10044314C(a1);
  if (v5 <= 1)
  {
    if (!v5)
    {

      return sub_100443A50(a1);
    }

LABEL_19:
    v29 = *(a1 + 16);
    v37._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v37);

    v38._countAndFlagsBits = 658813;
    v38._object = 0xE300000000000000;
    sub_1004A5994(v38);
    v13 = sub_1002F178C(123, 0xE100000000000000, v1 + 1, v4);
    if (v14)
    {
      v15._countAndFlagsBits = 123;
      v15._object = 0xE100000000000000;
      v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v4);
    }

    v16 = v13;

    v17 = *(v1 + 5);
    v18 = __CFADD__(v17, v16);
    v19 = v17 + v16;
    if (!v18)
    {
      *(v1 + 5) = v19;
      sub_1003E0AC4(a1);
      v12 = __OFADD__(v16, v20);
      result = v16 + v20;
      if (!v12)
      {
        return result;
      }

      __break(1u);
LABEL_25:
      v30 = *(a1 + 16);
      v39._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v39);

      v40._countAndFlagsBits = 168656171;
      v40._object = 0xE400000000000000;
      sub_1004A5994(v40);
      v21 = sub_1002F178C(123, 0xE100000000000000, v1 + 1, v4);
      if (v22)
      {
        v23._countAndFlagsBits = 123;
        v23._object = 0xE100000000000000;
        v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v4);
      }

      v24 = v21;

      v25 = *(v1 + 5);
      v18 = __CFADD__(v25, v24);
      v26 = v25 + v24;
      if (!v18)
      {
        *(v1 + 5) = v26;
        sub_1003E0AC4(a1);
        v12 = __OFADD__(v24, v27);
        result = v24 + v27;
        if (!v12)
        {
          return result;
        }

LABEL_33:
        __break(1u);
        return result;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v5 != 2)
  {
    goto LABEL_25;
  }

  v28 = *(a1 + 16);
  v35._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v35);

  v36._countAndFlagsBits = 658813;
  v36._object = 0xE300000000000000;
  sub_1004A5994(v36);
  v6 = sub_1002F178C(123, 0xE100000000000000, v1 + 1, v4);
  if (v7)
  {
    v8._countAndFlagsBits = 123;
    v8._object = 0xE100000000000000;
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, v4);
  }

  v9 = v6;

  v10 = *(v1 + 5);
  result = (v10 + v9);
  if (__CFADD__(v10, v9))
  {
    __break(1u);
    goto LABEL_31;
  }

  *(v1 + 5) = result;
  if (((*(&v31 + 1) | (SBYTE5(v31) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(result);
  }

  sub_1003E0AC4(a1);
  v12 = __OFADD__(v9, v11);
  result = v9 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10044226C(uint64_t *a1)
{
  if (*v1 == 1)
  {

    return sub_100442CAC(a1);
  }

  v31 = *v1;
  v32 = v1[2];
  v33 = *(v1 + 6);
  v4 = HIDWORD(*(v1 + 2));
  v5 = sub_1004434C4(a1);
  if (v5 <= 1)
  {
    if (!v5)
    {

      return sub_100443DD8(a1);
    }

LABEL_19:
    v29 = a1[4] - a1[3];
    v37._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v37);

    v38._countAndFlagsBits = 658813;
    v38._object = 0xE300000000000000;
    sub_1004A5994(v38);
    v13 = sub_1002F178C(123, 0xE100000000000000, v1 + 1, v4);
    if (v14)
    {
      v15._countAndFlagsBits = 123;
      v15._object = 0xE100000000000000;
      v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v4);
    }

    v16 = v13;

    v17 = *(v1 + 5);
    v18 = __CFADD__(v17, v16);
    v19 = v17 + v16;
    if (!v18)
    {
      *(v1 + 5) = v19;
      sub_1003E0BCC(a1);
      v12 = __OFADD__(v16, v20);
      result = v16 + v20;
      if (!v12)
      {
        return result;
      }

      __break(1u);
LABEL_25:
      v30 = a1[4] - a1[3];
      v39._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v39);

      v40._countAndFlagsBits = 168656171;
      v40._object = 0xE400000000000000;
      sub_1004A5994(v40);
      v21 = sub_1002F178C(123, 0xE100000000000000, v1 + 1, v4);
      if (v22)
      {
        v23._countAndFlagsBits = 123;
        v23._object = 0xE100000000000000;
        v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v4);
      }

      v24 = v21;

      v25 = *(v1 + 5);
      v18 = __CFADD__(v25, v24);
      v26 = v25 + v24;
      if (!v18)
      {
        *(v1 + 5) = v26;
        sub_1003E0BCC(a1);
        v12 = __OFADD__(v24, v27);
        result = v24 + v27;
        if (!v12)
        {
          return result;
        }

LABEL_33:
        __break(1u);
        return result;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v5 != 2)
  {
    goto LABEL_25;
  }

  v28 = a1[4] - a1[3];
  v35._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v35);

  v36._countAndFlagsBits = 658813;
  v36._object = 0xE300000000000000;
  sub_1004A5994(v36);
  v6 = sub_1002F178C(123, 0xE100000000000000, v1 + 1, v4);
  if (v7)
  {
    v8._countAndFlagsBits = 123;
    v8._object = 0xE100000000000000;
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, v4);
  }

  v9 = v6;

  v10 = *(v1 + 5);
  result = (v10 + v9);
  if (__CFADD__(v10, v9))
  {
    __break(1u);
    goto LABEL_31;
  }

  *(v1 + 5) = result;
  if (((*(&v31 + 1) | (SBYTE5(v31) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(result);
  }

  sub_1003E0BCC(a1);
  v12 = __OFADD__(v9, v11);
  result = v9 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1004425C0(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v32 = *v2;
  v33 = v2[2];
  v34 = *(v2 + 6);
  v5 = HIDWORD(*(v2 + 2));
  v6 = sub_100442FFC(a1, a2);
  if (v6 <= 1)
  {
    if (v6)
    {
      goto LABEL_22;
    }

    v4 = 0;
    result = sub_1002F178C(0x228588E222, 0xA500000000000000, v2 + 1, v5);
    if (v8)
    {
      v9._countAndFlagsBits = 0x228588E222;
      v9._object = 0xA500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v9, v5);
    }

    v10 = *(v2 + 5);
    v3 = (v2 + 20);
    v6 = v10 + result;
    if (!__CFADD__(v10, result))
    {
      goto LABEL_33;
    }

    __break(1u);
  }

  if (v6 != 2)
  {
LABEL_28:
    if ((v4 & 0x1000000000000000) != 0)
    {
      sub_1004A59E4();
    }

    v39._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v39);

    v40._countAndFlagsBits = 0x8588E20A0D7D2BLL;
    v40._object = 0xA700000000000000;
    sub_1004A5994(v40);
    v27 = sub_1002F178C(123, 0xE100000000000000, v3 + 1, v5);
    if (v28)
    {
      v29._countAndFlagsBits = 123;
      v29._object = 0xE100000000000000;
      v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v5);
    }

    v30 = v27;

    v31 = *(v3 + 5);
    v3 = (v3 + 20);
    result = v30;
    v6 = v31 + v30;
    if (!__CFADD__(v31, v30))
    {
LABEL_33:
      *v3 = v6;
      return result;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    sub_1004A59E4();
  }

  v35._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v35);

  v36._countAndFlagsBits = 658813;
  v36._object = 0xE300000000000000;
  sub_1004A5994(v36);
  v4 = 0;
  v11 = sub_1002F178C(123, 0xE100000000000000, v3 + 1, v5);
  if (v12)
  {
    v13._countAndFlagsBits = 123;
    v13._object = 0xE100000000000000;
    v11 = ByteBuffer._setStringSlowpath(_:at:)(v13, v5);
  }

  v14 = v11;

  v15 = *(v3 + 5);
  v5 = (v15 + v14);
  if (__CFADD__(v15, v14))
  {
    __break(1u);
    goto LABEL_35;
  }

  *(v3 + 5) = v5;
  if (((*(&v32 + 1) | (SBYTE5(v32) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(v5);
  }

  result = sub_1002F178C(8751330, 0xA300000000000000, v3 + 1, v5);
  if (v16)
  {
    v17._countAndFlagsBits = 8751330;
    v17._object = 0xA300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v5);
  }

  v18 = *(v3 + 5);
  v19 = __CFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    goto LABEL_37;
  }

  *(v3 + 5) = v20;
  v21 = __OFADD__(v14, result);
  result += v14;
  if (v21)
  {
    __break(1u);
LABEL_22:
    if ((v4 & 0x1000000000000000) == 0)
    {
LABEL_23:
      v37._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v37);

      v38._countAndFlagsBits = 0x8588E20A0D7DLL;
      v38._object = 0xA600000000000000;
      sub_1004A5994(v38);
      v4 = 0;
      v22 = sub_1002F178C(123, 0xE100000000000000, v3 + 1, v5);
      if (v23)
      {
        v24._countAndFlagsBits = 123;
        v24._object = 0xE100000000000000;
        v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v5);
      }

      v25 = v22;

      v26 = *(v3 + 5);
      v3 = (v3 + 20);
      result = v25;
      v6 = v26 + v25;
      if (!__CFADD__(v26, v25))
      {
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_35:
    sub_1004A59E4();
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_100442968(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v34 = *v1;
  v35 = v1[2];
  v36 = *(v1 + 6);
  v4 = HIDWORD(*(v1 + 2));
  v5 = sub_10044314C(a1);
  if (v5 <= 1)
  {
    if (v5)
    {
      goto LABEL_20;
    }

    v3 = 0;
    result = sub_1002F178C(0x228588E222, 0xA500000000000000, v1 + 1, v4);
    if (v7)
    {
      v8._countAndFlagsBits = 0x228588E222;
      v8._object = 0xA500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v4);
    }

    v9 = *(v1 + 5);
    v2 = (v1 + 20);
    v5 = v9 + result;
    if (!__CFADD__(v9, result))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  if (v5 != 2)
  {
    goto LABEL_25;
  }

  v31 = *(v3 + 16);
  v37._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v37);

  v38._countAndFlagsBits = 658813;
  v38._object = 0xE300000000000000;
  sub_1004A5994(v38);
  v3 = 0;
  v10 = sub_1002F178C(123, 0xE100000000000000, v2 + 1, v4);
  if (v11)
  {
    v12._countAndFlagsBits = 123;
    v12._object = 0xE100000000000000;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v4);
  }

  v13 = v10;

  v14 = *(v2 + 5);
  v4 = (v14 + v13);
  if (__CFADD__(v14, v13))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  *(v2 + 5) = v4;
  if (((*(&v34 + 1) | (SBYTE5(v34) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(v4);
  }

  result = sub_1002F178C(8751330, 0xA300000000000000, v2 + 1, v4);
  if (v15)
  {
    v16._countAndFlagsBits = 8751330;
    v16._object = 0xA300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v16, v4);
  }

  v17 = *(v2 + 5);
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    goto LABEL_32;
  }

  *(v2 + 5) = v19;
  v20 = __OFADD__(v13, result);
  result += v13;
  if (!v20)
  {
    return result;
  }

  __break(1u);
LABEL_20:
  v32 = *(v3 + 16);
  v39._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v39);

  v40._countAndFlagsBits = 0x8588E20A0D7DLL;
  v40._object = 0xA600000000000000;
  sub_1004A5994(v40);
  v3 = 0;
  v21 = sub_1002F178C(123, 0xE100000000000000, v2 + 1, v4);
  if (v22)
  {
    v23._countAndFlagsBits = 123;
    v23._object = 0xE100000000000000;
    v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v4);
  }

  v24 = v21;

  v25 = *(v2 + 5);
  v2 = (v2 + 20);
  result = v24;
  v5 = v25 + v24;
  if (!__CFADD__(v25, v24))
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_25:
  v33 = *(v3 + 16);
  v41._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v41);

  v42._countAndFlagsBits = 0x8588E20A0D7D2BLL;
  v42._object = 0xA700000000000000;
  sub_1004A5994(v42);
  v26 = sub_1002F178C(123, 0xE100000000000000, v2 + 1, v4);
  if (v27)
  {
    v28._countAndFlagsBits = 123;
    v28._object = 0xE100000000000000;
    v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v4);
  }

  v29 = v26;

  v30 = *(v2 + 5);
  v2 = (v2 + 20);
  result = v29;
  v5 = v30 + v29;
  if (__CFADD__(v30, v29))
  {
    goto LABEL_31;
  }

LABEL_28:
  *v2 = v5;
  return result;
}

uint64_t sub_100442CAC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v34 = *v1;
  v35 = v1[2];
  v36 = *(v1 + 6);
  v4 = HIDWORD(*(v1 + 2));
  v5 = sub_1004434C4(a1);
  if (v5 <= 1)
  {
    if (v5)
    {
      goto LABEL_20;
    }

    v3 = 0;
    result = sub_1002F178C(0x228588E222, 0xA500000000000000, v1 + 1, v4);
    if (v7)
    {
      v8._countAndFlagsBits = 0x228588E222;
      v8._object = 0xA500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v4);
    }

    v9 = *(v1 + 5);
    v2 = (v1 + 20);
    v5 = v9 + result;
    if (!__CFADD__(v9, result))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  if (v5 != 2)
  {
    goto LABEL_25;
  }

  v31 = *(v3 + 32) - *(v3 + 24);
  v37._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v37);

  v38._countAndFlagsBits = 658813;
  v38._object = 0xE300000000000000;
  sub_1004A5994(v38);
  v3 = 0;
  v10 = sub_1002F178C(123, 0xE100000000000000, v2 + 1, v4);
  if (v11)
  {
    v12._countAndFlagsBits = 123;
    v12._object = 0xE100000000000000;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v4);
  }

  v13 = v10;

  v14 = *(v2 + 5);
  v4 = (v14 + v13);
  if (__CFADD__(v14, v13))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  *(v2 + 5) = v4;
  if (((*(&v34 + 1) | (SBYTE5(v34) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(v4);
  }

  result = sub_1002F178C(8751330, 0xA300000000000000, v2 + 1, v4);
  if (v15)
  {
    v16._countAndFlagsBits = 8751330;
    v16._object = 0xA300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v16, v4);
  }

  v17 = *(v2 + 5);
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    goto LABEL_32;
  }

  *(v2 + 5) = v19;
  v20 = __OFADD__(v13, result);
  result += v13;
  if (!v20)
  {
    return result;
  }

  __break(1u);
LABEL_20:
  v32 = *(v3 + 32) - *(v3 + 24);
  v39._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v39);

  v40._countAndFlagsBits = 0x8588E20A0D7DLL;
  v40._object = 0xA600000000000000;
  sub_1004A5994(v40);
  v3 = 0;
  v21 = sub_1002F178C(123, 0xE100000000000000, v2 + 1, v4);
  if (v22)
  {
    v23._countAndFlagsBits = 123;
    v23._object = 0xE100000000000000;
    v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v4);
  }

  v24 = v21;

  v25 = *(v2 + 5);
  v2 = (v2 + 20);
  result = v24;
  v5 = v25 + v24;
  if (!__CFADD__(v25, v24))
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_25:
  v33 = *(v3 + 32) - *(v3 + 24);
  v41._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v41);

  v42._countAndFlagsBits = 0x8588E20A0D7D2BLL;
  v42._object = 0xA700000000000000;
  sub_1004A5994(v42);
  v26 = sub_1002F178C(123, 0xE100000000000000, v2 + 1, v4);
  if (v27)
  {
    v28._countAndFlagsBits = 123;
    v28._object = 0xE100000000000000;
    v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v4);
  }

  v29 = v26;

  v30 = *(v2 + 5);
  v2 = (v2 + 20);
  result = v29;
  v5 = v30 + v29;
  if (__CFADD__(v30, v29))
  {
    goto LABEL_31;
  }

LABEL_28:
  *v2 = v5;
  return result;
}

uint64_t sub_100442FFC(unint64_t a1, unint64_t a2)
{
  if (v2[5] < 0)
  {
    if (v2[2])
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v17 = a1;
        v12 = a2;
        v13 = sub_1004A59E4();
        a2 = v12;
        v14 = v13;
        a1 = v17;
        if (v14 > 70)
        {
          return 1;
        }
      }

      else if ((a2 & 0x2000000000000000) == 0 && (a1 & 0xFFFFFFFFFFFFLL) > 0x46)
      {
        return 1;
      }

      v18 = 0;
      if (sub_10044425C(a1, a2, &v18))
      {
        return 0;
      }
    }

    return 1;
  }

  v3 = v2[4];
  v4 = v2[3];
  if ((v2[1] & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v16 = a1;
    v6 = a2;
    v7 = sub_1004A59E4();
    a2 = v6;
    v8 = v7;
    a1 = v16;
    if (v8 > 70)
    {
      goto LABEL_6;
    }

LABEL_15:
    v18 = 0;
    v9 = a1;
    v10 = a2;
    v11 = sub_10044425C(a1, a2, &v18) & 1;
    if (v11)
    {
      v5 = 0;
    }

    else
    {
      v5 = 3;
    }

    if (v11)
    {
      return v5;
    }

    a2 = v10;
    a1 = v9;
    if (v4)
    {
      return v5;
    }

    goto LABEL_20;
  }

  if ((a2 & 0x2000000000000000) != 0 || (a1 & 0xFFFFFFFFFFFFLL) <= 0x46)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v4)
  {
    return 3;
  }

LABEL_20:
  if (v3)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      if (sub_1004A59E4() <= 4096)
      {
        return 3;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0 || (a1 & 0xFFFFFFFFFFFFLL) <= 0x1000)
    {
      return 3;
    }
  }

  return 2;
}

uint64_t sub_10044314C(uint64_t result)
{
  if (v1[5] < 0)
  {
    if ((v1[2] & 1) == 0)
    {
      return 1;
    }

    v3 = *(result + 16);
    if (v3 > 0x46)
    {
      return 1;
    }

    v9 = 0;
    v10 = result + 32;
    while (v3 != v9)
    {
      v11 = *(v10 + v9);
      if ((v11 - 127) < 0xFFFFFFA1)
      {
        return 1;
      }

      ++v9;
      if (v11 == 92 || v11 == 34)
      {
        while (v3 != v9)
        {
          if (__OFADD__(v9, 1))
          {
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            return result;
          }

          v12 = *(v10 + v9);
          if ((v12 - 127) < 0xFFFFFFA1)
          {
            return 1;
          }

          ++v9;
          if (v12 == 92 || v12 == 34)
          {
            while (v3 != v9)
            {
              if (v9 >= v3)
              {
                goto LABEL_95;
              }

              if (__OFADD__(v9, 1))
              {
                goto LABEL_93;
              }

              v13 = *(v10 + v9);
              if ((v13 - 127) < 0xFFFFFFA1)
              {
                return 1;
              }

              ++v9;
              if (v13 == 92 || v13 == 34)
              {
                v19 = v3 - v9;
                v20 = (v10 + v9);
                while (v19)
                {
                  if (v9 >= v3)
                  {
                    goto LABEL_95;
                  }

                  if (__OFADD__(v9, 1))
                  {
                    goto LABEL_93;
                  }

                  v21 = *v20;
                  if ((v21 - 127) < 0xFFFFFFA1)
                  {
                    return 1;
                  }

                  ++v9;
                  ++v20;
                  --v19;
                  if (v21 == 92 || v21 == 34)
                  {
                    while (v19)
                    {
                      if (v9 >= v3)
                      {
                        goto LABEL_95;
                      }

                      if (__OFADD__(v9, 1))
                      {
                        goto LABEL_93;
                      }

                      v22 = *v20;
                      if ((v22 - 127) < 0xFFFFFFA1)
                      {
                        return 1;
                      }

                      --v19;
                      ++v20;
                      ++v9;
                      if (v22 == 92 || v22 == 34)
                      {
                        result = 1;
                        while (v19)
                        {
                          if (v9 >= v3)
                          {
                            goto LABEL_95;
                          }

                          if (__OFADD__(v9, 1))
                          {
                            goto LABEL_93;
                          }

                          v23 = *v20;
                          if ((v23 - 127) < 0xFFFFFFA1)
                          {
                            return 1;
                          }

                          if (v23 != 34)
                          {
                            ++v9;
                            ++v20;
                            --v19;
                            if (v23 != 92)
                            {
                              continue;
                            }
                          }

                          return result;
                        }

                        return 0;
                      }
                    }

                    return 0;
                  }
                }

                return 0;
              }
            }

            return 0;
          }
        }

        return 0;
      }
    }

    return 0;
  }

  if (v1[1])
  {
    v2 = *(result + 16);
    if (v2 <= 0x46)
    {
      v4 = 0;
      v5 = result + 32;
      while (v2 != v4)
      {
        v6 = *(v5 + v4);
        if ((v6 - 127) < 0xFFFFFFA1)
        {
          goto LABEL_4;
        }

        ++v4;
        if (v6 == 92 || v6 == 34)
        {
          while (v2 != v4)
          {
            if (__OFADD__(v4, 1))
            {
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

            v7 = *(v5 + v4);
            if ((v7 - 127) < 0xFFFFFFA1)
            {
              goto LABEL_4;
            }

            ++v4;
            if (v7 == 92 || v7 == 34)
            {
              while (v2 != v4)
              {
                if (v4 >= v2)
                {
                  goto LABEL_94;
                }

                if (__OFADD__(v4, 1))
                {
                  goto LABEL_92;
                }

                v8 = *(v5 + v4);
                if ((v8 - 127) < 0xFFFFFFA1)
                {
                  goto LABEL_4;
                }

                ++v4;
                if (v8 == 92 || v8 == 34)
                {
                  v14 = v2 - v4;
                  v15 = (v5 + v4);
                  while (v14)
                  {
                    if (v4 >= v2)
                    {
                      goto LABEL_94;
                    }

                    if (__OFADD__(v4, 1))
                    {
                      goto LABEL_92;
                    }

                    v16 = *v15;
                    if ((v16 - 127) < 0xFFFFFFA1)
                    {
                      goto LABEL_4;
                    }

                    ++v4;
                    ++v15;
                    --v14;
                    if (v16 == 92 || v16 == 34)
                    {
                      while (v14)
                      {
                        if (v4 >= v2)
                        {
                          goto LABEL_94;
                        }

                        if (__OFADD__(v4, 1))
                        {
                          goto LABEL_92;
                        }

                        v17 = *v15;
                        if ((v17 - 127) < 0xFFFFFFA1)
                        {
                          goto LABEL_4;
                        }

                        --v14;
                        ++v15;
                        ++v4;
                        if (v17 == 92 || v17 == 34)
                        {
                          while (v14)
                          {
                            if (v4 >= v2)
                            {
                              goto LABEL_94;
                            }

                            if (__OFADD__(v4, 1))
                            {
                              goto LABEL_92;
                            }

                            v18 = *v15;
                            if ((v18 - 127) >= 0xFFFFFFA1 && v18 != 34)
                            {
                              ++v4;
                              ++v15;
                              --v14;
                              if (v18 != 92)
                              {
                                continue;
                              }
                            }

                            goto LABEL_4;
                          }

                          return 0;
                        }
                      }

                      return 0;
                    }
                  }

                  return 0;
                }
              }

              return 0;
            }
          }

          return 0;
        }
      }

      return 0;
    }
  }

LABEL_4:
  if ((v1[3] & 1) != 0 || (v1[4] & 1) != 0 && *(result + 16) <= 0x1000uLL)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1004434C4(uint64_t a1)
{
  v2 = a1;
  if ((v1[5] & 0x80000000) == 0)
  {
    v3 = v1[4];
    v4 = v1[3];
    if (v1[1])
    {
      v6 = sub_1004450E4(a1) & 1;
      if (v6)
      {
        result = 0;
      }

      else
      {
        result = 3;
      }

      if (v6)
      {
        return result;
      }

      v2 = a1;
      if (v4)
      {
        return result;
      }
    }

    else if (v1[3])
    {
      return 3;
    }

    if ((v3 & 1) == 0 || (*(v2 + 32) - *(v2 + 24)) > 4096)
    {
      return 2;
    }

    return 3;
  }

  return (v1[2] & 1) == 0 || (sub_1004450E4(a1) & 1) == 0;
}

unint64_t sub_100443574(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = a1;
  if (*v2 == 1)
  {
    v64[5] = 91;
    v64[6] = 0xE100000000000000;
    v6 = *(sub_10015BC90(a1, a2) + 2);

    v64[2] = v6;
    v65._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v65);

    v66._countAndFlagsBits = 0x5D736574796220;
    v66._object = 0xE700000000000000;
    sub_1004A5994(v66);
    v7 = *(v3 + 20);
    v8 = sub_1002F178C(91, 0xE100000000000000, (v3 + 8), *(v3 + 20));
    if (v9)
    {
      v10._countAndFlagsBits = 91;
      v10._object = 0xE100000000000000;
      v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
    }

    v11 = v8;

    v12 = *(v3 + 20);
    result = v11;
    v14 = __CFADD__(v12, v11);
    v15 = v12 + v11;
    if (v14)
    {
      goto LABEL_83;
    }

    *(v3 + 20) = v15;
    return result;
  }

  v16 = *(v2 + 20);
  result = sub_1002F178C(34, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v17)
  {
    v18._countAndFlagsBits = 34;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = result;
  v20 = *(v2 + 20);
  v21 = (v20 + result);
  if (__CFADD__(v20, result))
  {
    goto LABEL_84;
  }

  *(v2 + 20) = v21;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v22 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v62 = v5;
    v63 = 4 * v22;
    v23 = (v5 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v23) = 1;
    }

    v24 = 4 << v23;
    v25 = 15;
    v61 = v22;
    do
    {
      v26 = v25 & 0xC;
      result = v25;
      if (v26 == v24)
      {
        result = sub_10010C210(v25, v5, a2);
      }

      v27 = result >> 16;
      if (result >> 16 >= v22)
      {
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
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1004A5A24();
        v28 = result;
        if (v26 != v24)
        {
          goto LABEL_28;
        }
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v64[0] = v5;
        v64[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v28 = *(v64 + v27);
        if (v26 != v24)
        {
          goto LABEL_28;
        }
      }

      else
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v5 & 0x1000000000000000) == 0)
        {
          result = sub_1004A67E4();
        }

        v28 = *(result + v27);
        if (v26 != v24)
        {
LABEL_28:
          if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_32;
        }
      }

      result = sub_10010C210(v25, v5, a2);
      v25 = result;
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_29:
        v25 = (v25 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_34;
      }

LABEL_32:
      if (v22 <= v25 >> 16)
      {
        goto LABEL_74;
      }

      result = sub_1004A59F4();
      v25 = result;
LABEL_34:
      if (v28 == 34)
      {
        v43 = v21 + 2;
        if (v21 >= 0xFFFFFFFE)
        {
          goto LABEL_77;
        }

        v44 = *(v3 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = *(v3 + 24);
          v14 = v43 >= v45;
          v46 = v43 - v45;
          if (v14)
          {
            v47 = v46;
          }

          else
          {
            v47 = 0;
          }

          v48 = variable initialization expression of Engine.isProcessingUpdates();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v47, v48 & 1);
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v21);
        v49 = *(v3 + 8);
        v50 = *(v3 + 24);
        v51 = *(v3 + 28);
        v52 = *(v3 + 30);
        result = swift_beginAccess();
        v53 = v52 | (v51 << 8);
        v54 = v50 - v53;
        if (v50 - v53 >= v21)
        {
          v54 = v21;
        }

        if (!v21)
        {
          v54 = 0;
        }

        *(*(v49 + 24) + v53 + v54) = 8796;
        v55 = *(v3 + 20);
        v21 = v55 + 2;
        if (v55 >= 0xFFFFFFFE)
        {
          goto LABEL_78;
        }

        *(v3 + 20) = v21;
        v42 = __OFADD__(v19, 2);
        v19 += 2;
        if (v42)
        {
          goto LABEL_82;
        }

LABEL_16:
        v22 = v61;
        v5 = v62;
        continue;
      }

      if (v28 == 92)
      {
        v29 = v21 + 2;
        if (v21 >= 0xFFFFFFFE)
        {
          goto LABEL_76;
        }

        v30 = *(v3 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = *(v3 + 24);
          v14 = v29 >= v31;
          v32 = v29 - v31;
          if (v14)
          {
            v33 = v32;
          }

          else
          {
            v33 = 0;
          }

          v34 = variable initialization expression of Engine.isProcessingUpdates();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v33, v34 & 1);
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v21);
        v35 = *(v3 + 8);
        v36 = *(v3 + 24);
        v37 = *(v3 + 28);
        v38 = *(v3 + 30);
        result = swift_beginAccess();
        v39 = v38 | (v37 << 8);
        v40 = v36 - v39;
        if (v36 - v39 >= v21)
        {
          v40 = v21;
        }

        if (!v21)
        {
          v40 = 0;
        }

        *(*(v35 + 24) + v39 + v40) = 23644;
        v41 = *(v3 + 20);
        v21 = v41 + 2;
        if (v41 >= 0xFFFFFFFE)
        {
          goto LABEL_79;
        }

        *(v3 + 20) = v21;
        v42 = __OFADD__(v19, 2);
        v19 += 2;
        if (v42)
        {
          goto LABEL_81;
        }

        goto LABEL_16;
      }

      result = sub_1003B5C9C(v28, v21);
      v56 = *(v3 + 20);
      v21 = (v56 + result);
      if (__CFADD__(v56, result))
      {
        goto LABEL_75;
      }

      *(v3 + 20) = v21;
      v42 = __OFADD__(v19, result);
      v19 += result;
      if (v42)
      {
        goto LABEL_80;
      }
    }

    while (v63 != v25 >> 14);
  }

  result = sub_1002F178C(34, 0xE100000000000000, (v3 + 8), v21);
  if (v57)
  {
    v58._countAndFlagsBits = 34;
    v58._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v58, v21);
  }

  v59 = *(v3 + 20);
  v14 = __CFADD__(v59, result);
  v60 = v59 + result;
  if (v14)
  {
    goto LABEL_85;
  }

  *(v3 + 20) = v60;
  v42 = __OFADD__(v19, result);
  result += v19;
  if (v42)
  {
LABEL_86:
    __break(1u);
  }

  return result;
}

uint64_t sub_100443A50(uint64_t a1)
{
  v2 = v1;
  if (*v1 == 1)
  {
    v54 = *(a1 + 16);
    v55._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v55);

    v56._countAndFlagsBits = 0x5D736574796220;
    v56._object = 0xE700000000000000;
    sub_1004A5994(v56);
    v4 = *(v1 + 20);
    v5 = sub_1002F178C(91, 0xE100000000000000, (v1 + 8), *(v1 + 20));
    if (v6)
    {
      v7._countAndFlagsBits = 91;
      v7._object = 0xE100000000000000;
      v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
    }

    v8 = v5;

    v9 = *(v2 + 20);
    result = v8;
    v11 = __CFADD__(v9, v8);
    v12 = v9 + v8;
    if (v11)
    {
      goto LABEL_58;
    }

    *(v2 + 20) = v12;
  }

  else
  {
    v13 = *(v1 + 20);
    result = sub_1002F178C(34, 0xE100000000000000, (v1 + 8), *(v1 + 20));
    if (v14)
    {
      v15._countAndFlagsBits = 34;
      v15._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
    }

    v16 = result;
    v17 = *(v1 + 20);
    v18 = (v17 + result);
    if (__CFADD__(v17, result))
    {
      goto LABEL_59;
    }

    *(v1 + 20) = v18;
    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = (a1 + 32);
      do
      {
        v21 = *v20++;
        result = v21;
        if (v21 == 34)
        {
          v36 = v18 + 2;
          if (v18 >= 0xFFFFFFFE)
          {
            goto LABEL_53;
          }

          v37 = *(v2 + 8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = *(v2 + 24);
            v11 = v36 >= v38;
            v39 = v36 - v38;
            if (v11)
            {
              v40 = v39;
            }

            else
            {
              v40 = 0;
            }

            v41 = variable initialization expression of Engine.isProcessingUpdates();
            ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v40, v41 & 1);
          }

          ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v18);
          v42 = *(v2 + 8);
          v43 = *(v2 + 24);
          v44 = *(v2 + 28);
          v45 = *(v2 + 30);
          result = swift_beginAccess();
          v46 = v45 | (v44 << 8);
          v47 = v43 - v46;
          if (v43 - v46 >= v18)
          {
            v47 = v18;
          }

          if (!v18)
          {
            v47 = 0;
          }

          *(*(v42 + 24) + v46 + v47) = 8796;
          v48 = *(v2 + 20);
          v18 = v48 + 2;
          if (v48 >= 0xFFFFFFFE)
          {
            goto LABEL_54;
          }

          *(v2 + 20) = v18;
          v35 = __OFADD__(v16, 2);
          v16 += 2;
          if (v35)
          {
            goto LABEL_56;
          }
        }

        else if (result == 92)
        {
          v22 = v18 + 2;
          if (v18 >= 0xFFFFFFFE)
          {
            goto LABEL_52;
          }

          v23 = *(v2 + 8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = *(v2 + 24);
            v11 = v22 >= v24;
            v25 = v22 - v24;
            if (v11)
            {
              v26 = v25;
            }

            else
            {
              v26 = 0;
            }

            v27 = variable initialization expression of Engine.isProcessingUpdates();
            ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v26, v27 & 1);
          }

          ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v18);
          v28 = *(v2 + 8);
          v29 = *(v2 + 24);
          v30 = *(v2 + 28);
          v31 = *(v2 + 30);
          result = swift_beginAccess();
          v32 = v31 | (v30 << 8);
          v33 = v29 - v32;
          if (v29 - v32 >= v18)
          {
            v33 = v18;
          }

          if (!v18)
          {
            v33 = 0;
          }

          *(*(v28 + 24) + v32 + v33) = 23644;
          v34 = *(v2 + 20);
          v18 = v34 + 2;
          if (v34 >= 0xFFFFFFFE)
          {
            goto LABEL_55;
          }

          *(v2 + 20) = v18;
          v35 = __OFADD__(v16, 2);
          v16 += 2;
          if (v35)
          {
            goto LABEL_57;
          }
        }

        else
        {
          result = sub_1003B5C9C(result, v18);
          v49 = *(v2 + 20);
          v18 = (v49 + result);
          if (__CFADD__(v49, result))
          {
            __break(1u);
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
            goto LABEL_61;
          }

          *(v2 + 20) = v18;
          v35 = __OFADD__(v16, result);
          v16 += result;
          if (v35)
          {
            __break(1u);
            break;
          }
        }

        --v19;
      }

      while (v19);
    }

    result = sub_1002F178C(34, 0xE100000000000000, (v2 + 8), v18);
    if (v50)
    {
      v51._countAndFlagsBits = 34;
      v51._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v51, v18);
    }

    v52 = *(v2 + 20);
    v11 = __CFADD__(v52, result);
    v53 = v52 + result;
    if (v11)
    {
      goto LABEL_60;
    }

    *(v2 + 20) = v53;
    v35 = __OFADD__(v16, result);
    result += v16;
    if (v35)
    {
LABEL_61:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100443DD8(uint64_t a1)
{
  v2 = v1;
  if (*v1 == 1)
  {
    v73 = 91;
    v74 = 0xE100000000000000;
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    v6 = v5 - v4;
    if (v5 == v4)
    {
      result = _swiftEmptyArrayStorage;
LABEL_15:
      v28 = *(result + 16);

      v72[0] = v28;
      v75._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v75);

      v76._countAndFlagsBits = 0x5D736574796220;
      v76._object = 0xE700000000000000;
      sub_1004A5994(v76);
      v30 = v73;
      v29 = v74;
      v31 = *(v2 + 20);
      v32 = sub_1002F178C(v73, v74, (v2 + 8), *(v2 + 20));
      if (v33)
      {
        v34._countAndFlagsBits = v30;
        v34._object = v29;
        v32 = ByteBuffer._setStringSlowpath(_:at:)(v34, v31);
      }

      v35 = v32;

      v36 = *(v2 + 20);
      result = v35;
      v23 = __CFADD__(v36, v35);
      v37 = v36 + v35;
      if (v23)
      {
        goto LABEL_73;
      }

      *(v2 + 20) = v37;
      return result;
    }

LABEL_14:
    v26 = sub_10015BEAC(v6, 0);
    ByteBufferView._copyContents(initializing:)(v26 + 32, v6, v72);
    v27 = v72[6];

    result = v26;
    if (v27 != v6)
    {
      goto LABEL_75;
    }

    goto LABEL_15;
  }

  v8 = *(v1 + 20);
  result = sub_1002F178C(34, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v9)
  {
    v10._countAndFlagsBits = 34;
    v10._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v8);
  }

  v11 = result;
  v12 = *(v1 + 20);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    goto LABEL_72;
  }

  *(v1 + 20) = v13;
  v15 = *(a1 + 24);
  v14 = *(a1 + 32);
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(a1 + 12);
  v68 = *(a1 + 20);
  v19 = *(a1 + 22);
  sub_1003BD79C(a1, v72);
  v71 = v16;
  result = swift_beginAccess();
  if (v15 == v14)
  {
LABEL_8:

    v6 = 0;
    result = sub_1002F178C(34, 0xE100000000000000, (v2 + 8), v13);
    if (v20)
    {
      v21._countAndFlagsBits = 34;
      v21._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v21, v13);
    }

    v22 = *(v2 + 20);
    v23 = __CFADD__(v22, result);
    v24 = v22 + result;
    if (v23)
    {
      goto LABEL_74;
    }

    *(v2 + 20) = v24;
    v25 = __OFADD__(v11, result);
    result += v11;
    if (!v25)
    {
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v15 <= v17 + (v18 - v17))
  {
    v38 = v17 + (v18 - v17);
  }

  else
  {
    v38 = v15;
  }

  v69 = v19 | (v68 << 8);
  v70 = v38;
  v39 = v15;
  v67 = v17;
  while (v39 < v14)
  {
    if (v15 < v17)
    {
      goto LABEL_63;
    }

    if (v70 == v39)
    {
      goto LABEL_64;
    }

    result = *(*(v71 + 24) + v69 + v39);
    if (result == 34)
    {
      v53 = v13 + 2;
      if (v13 >= 0xFFFFFFFE)
      {
        goto LABEL_65;
      }

      v54 = *(v2 + 8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = *(v2 + 24);
        v23 = v53 >= v55;
        v56 = v53 - v55;
        if (v23)
        {
          v57 = v56;
        }

        else
        {
          v57 = 0;
        }

        v58 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v57, v58 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v13);
      v59 = *(v2 + 8);
      v60 = *(v2 + 24);
      v61 = *(v2 + 28);
      v62 = *(v2 + 30);
      result = swift_beginAccess();
      v63 = v62 | (v61 << 8);
      v64 = v60 - v63;
      if (v60 - v63 >= v13)
      {
        v64 = v13;
      }

      if (!v13)
      {
        v64 = 0;
      }

      *(*(v59 + 24) + v63 + v64) = 8796;
      v65 = *(v2 + 20);
      v13 = v65 + 2;
      if (v65 >= 0xFFFFFFFE)
      {
        goto LABEL_69;
      }

      *(v2 + 20) = v13;
      v25 = __OFADD__(v11, 2);
      v11 += 2;
      if (v25)
      {
        goto LABEL_70;
      }

      goto LABEL_23;
    }

    if (result == 92)
    {
      v40 = v13 + 2;
      if (v13 >= 0xFFFFFFFE)
      {
        goto LABEL_67;
      }

      v41 = *(v2 + 8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = *(v2 + 24);
        v23 = v40 >= v42;
        v43 = v40 - v42;
        if (v23)
        {
          v44 = v43;
        }

        else
        {
          v44 = 0;
        }

        v45 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v44, v45 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v13);
      v46 = *(v2 + 8);
      v47 = *(v2 + 24);
      v48 = *(v2 + 28);
      v49 = *(v2 + 30);
      result = swift_beginAccess();
      v50 = v49 | (v48 << 8);
      v51 = v47 - v50;
      if (v47 - v50 >= v13)
      {
        v51 = v13;
      }

      if (!v13)
      {
        v51 = 0;
      }

      *(*(v46 + 24) + v50 + v51) = 23644;
      v52 = *(v2 + 20);
      v13 = v52 + 2;
      if (v52 >= 0xFFFFFFFE)
      {
        goto LABEL_68;
      }

      *(v2 + 20) = v13;
      v25 = __OFADD__(v11, 2);
      v11 += 2;
      if (v25)
      {
        goto LABEL_71;
      }

LABEL_23:
      v17 = v67;
      goto LABEL_24;
    }

    result = sub_1003B5C9C(result, v13);
    v66 = *(v2 + 20);
    v13 = (v66 + result);
    if (__CFADD__(v66, result))
    {
      goto LABEL_66;
    }

    *(v2 + 20) = v13;
    v25 = __OFADD__(v11, result);
    v11 += result;
    if (v25)
    {
      __break(1u);
      break;
    }

LABEL_24:
    if (v14 == ++v39)
    {
      goto LABEL_8;
    }
  }

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
  return result;
}

unint64_t sub_10044425C(unint64_t a1, unint64_t a2, uint64_t *a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 1;
  }

  v7 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v21 = a2 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v11 = result & 0xC;
    v12 = result;
    if (v11 == v8)
    {
      v16 = result;
      v12 = sub_10010C210(result, a1, a2);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v3)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v19 = result;
      v15 = sub_1004A5A24();
      result = v19;
      if (v11 != v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v20[0] = a1;
        v20[1] = v21;
        v14 = v20;
      }

      else
      {
        v14 = v9;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v18 = result;
          v14 = sub_1004A67E4();
          result = v18;
        }
      }

      v15 = *(v14 + v13);
      if (v11 != v8)
      {
LABEL_18:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = sub_10010C210(result, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_19:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v3 <= result >> 16)
    {
      goto LABEL_34;
    }

    result = sub_1004A59F4();
LABEL_24:
    if ((v15 - 127) < 0xA1u)
    {
      return 0;
    }

    if (v15 == 34 || v15 == 92)
    {
      v17 = *a3 + 1;
      if (__OFADD__(*a3, 1))
      {
        goto LABEL_33;
      }

      *a3 = v17;
      if (v17 >= 6)
      {
        return 0;
      }
    }

    if (4 * v3 == result >> 14)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t MailboxInfo.init(attributes:path:extensions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 20) = BYTE4(a3);
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_100444458(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_30;
  }

  *(v1 + 20) = v10;
  v47 = *a1;
  v11 = v47;
  v12 = v47[2];
  if (v12)
  {
    result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), v10);
    if (v13)
    {
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v10);
    }

    v15 = result;
    v16 = *(v2 + 20);
    v17 = __CFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      goto LABEL_39;
    }

    *(v2 + 20) = v18;
  }

  else
  {
    v15 = 0;
  }

  __chkstk_darwin(result);
  v46[2] = sub_1003C40B8;
  v46[3] = 0;
  v46[4] = v2;
  v46[5] = &v47;
  v46[6] = 32;
  v46[7] = 0xE100000000000000;
  result = sub_1004594A4(0, sub_1003DACD4, v46, v11);
  v19 = v15 + result;
  if (__OFADD__(v15, result))
  {
    goto LABEL_31;
  }

  if (!v12)
  {
    result = 0;
    v25 = v19;
    goto LABEL_16;
  }

  v20 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v21)
  {
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v17 = __CFADD__(v23, result);
  v24 = v23 + result;
  if (v17)
  {
    goto LABEL_40;
  }

  *(v2 + 20) = v24;
  v25 = v19 + result;
  if (__OFADD__(v19, result))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_16:
  v26 = v8 + v25;
  if (__OFADD__(v8, v25))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v27 = *(v2 + 20);
  result = sub_1002F178C(8233, 0xE200000000000000, (v2 + 8), *(v2 + 20));
  if (v28)
  {
    v29._countAndFlagsBits = 8233;
    v29._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v29, v27);
  }

  v30 = *(v2 + 20);
  v17 = __CFADD__(v30, result);
  v31 = v30 + result;
  if (v17)
  {
    goto LABEL_33;
  }

  *(v2 + 20) = v31;
  v32 = __OFADD__(v26, result);
  v33 = v26 + result;
  if (v32)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v34 = *(a1 + 8);
  v35 = sub_10014A364(*(a1 + 20));
  v37 = sub_100444D34(v35, v36);

  v32 = __OFADD__(v33, v37);
  v38 = v33 + v37;
  if (v32)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v39 = *(v2 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v40)
  {
    v41._countAndFlagsBits = 32;
    v41._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v41, v39);
  }

  v42 = *(v2 + 20);
  v17 = __CFADD__(v42, result);
  v43 = v42 + result;
  if (v17)
  {
    goto LABEL_36;
  }

  *(v2 + 20) = v43;
  v44 = v38 + result;
  if (__OFADD__(v38, result))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v45 = sub_100441F24(v34);
  v32 = __OFADD__(v44, v45);
  result = v44 + v45;
  if (v32)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

uint64_t MailboxInfo.path.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16) | (*(v0 + 20) << 32);
}

uint64_t MailboxInfo.path.setter(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v5 = HIDWORD(a2);
  v6 = *(v2 + 8);

  *(v2 + 8) = a1;
  *(v2 + 16) = v3;
  *(v2 + 20) = v5;
  return result;
}

uint64_t MailboxInfo.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  sub_1004A6EB4(v5);
  if (v5)
  {
    v6 = (v4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      sub_1004A5814();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  v9 = v2[20];
  sub_1004A6EB4(*(v2 + 4) | (*(v2 + 4) << 32));
  sub_1004A6EC4(v9);
  v10 = *(v2 + 4);
  v11 = *(v2 + 5);

  return sub_1003A2110(a1, v10, v11);
}

Swift::Int MailboxInfo.hashValue.getter()
{
  sub_1004A6E94();
  MailboxInfo.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10044489C()
{
  sub_1004A6E94();
  MailboxInfo.hash(into:)(v1);
  return sub_1004A6F14();
}

BOOL sub_1004448D8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s12NIOIMAPCore211MailboxInfoV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

uint64_t static UseAttribute.== infix(_:_:)()
{
  v0 = sub_1004A5814();
  v2 = v1;
  if (v0 == sub_1004A5814() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1004A6D34();
  }

  return v4 & 1;
}

uint64_t UseAttribute.hash(into:)()
{
  sub_1004A5814();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int UseAttribute.hashValue.getter()
{
  sub_1004A6E94();
  sub_1004A5814();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

Swift::Int sub_100444B80()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  sub_1004A5814();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_100444BE8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A5814();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100444C3C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  sub_1004A5814();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_100444CA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_1004A5814();
  v8 = v7;
  if (v6 == sub_1004A5814() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1004A6D34();
  }

  return v11 & 1;
}

uint64_t sub_100444D34(_DWORD *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  if (a2)
  {
    v5 = a1;
    if ((a1 != 92 || a2 != 0xE100000000000000) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_15;
    }

    v7 = v2[5];
    v3 = v2 + 5;
    v6 = v7;
    v4 = 0;
    result = sub_1002F178C(2251810, 0xE300000000000000, (v3 - 3), v7);
    if (v9)
    {
      v10._countAndFlagsBits = 2251810;
      v10._object = 0xE300000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v10, v6);
    }

    v11 = *v3 + result;
    if (!__CFADD__(*v3, result))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  v13 = v3[5];
  v3 += 5;
  v12 = v13;
  v5 = v3 - 3;
  result = sub_1002F178C(4999502, 0xE300000000000000, (v3 - 3), v13);
  if (v14)
  {
    v15._countAndFlagsBits = 4999502;
    v15._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v11 = *v3 + result;
  if (!__CFADD__(*v3, result))
  {
    goto LABEL_26;
  }

  __break(1u);
LABEL_15:
  if (v5 == 34 && v4 == 0xE100000000000000 || (sub_1004A6D34() & 1) != 0)
  {
    v17 = v3[5];
    v3 += 5;
    v16 = v17;
    result = sub_1002F178C(576478242, 0xE400000000000000, (v3 - 3), v17);
    if (v18)
    {
      v19._countAndFlagsBits = 576478242;
      v19._object = 0xE400000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
    }

    v11 = *v3 + result;
    if (!__CFADD__(*v3, result))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  v26._countAndFlagsBits = 34;
  v26._object = 0xE100000000000000;
  sub_1004A5994(v26);
  sub_1004A55C4();
  v27._countAndFlagsBits = 34;
  v27._object = 0xE100000000000000;
  sub_1004A5994(v27);
  v21 = v3[5];
  v3 += 5;
  v20 = v21;
  v22 = sub_1002F178C(0, 0xE000000000000000, (v3 - 3), v21);
  if (v23)
  {
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v20);
  }

  v25 = v22;

  result = v25;
  v11 = *v3 + v25;
  if (!__CFADD__(*v3, v25))
  {
LABEL_26:
    *v3 = v11;
    return result;
  }

  __break(1u);
  return result;
}

BOOL _s12NIOIMAPCore211MailboxInfoV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1003A3710(*a1, *a2) & 1) == 0 || (*(a1 + 16) | (*(a1 + 16) << 32)) != (*(a2 + 16) | (*(a2 + 16) << 32)))
  {
    return 0;
  }

  v4 = *(a2 + 20);
  v5 = *(a1 + 20);
  v6 = sub_1000FFC98(*(a1 + 8), *(a2 + 8));
  result = 0;
  if ((v6 & 1) != 0 && v5 == v4)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    return (sub_1003A0868(v8, v10) & 1) != 0 && (sub_1003A0B30(v9, v11) & 1) != 0;
  }

  return result;
}

unint64_t sub_100445018()
{
  result = qword_1005DCB08;
  if (!qword_1005DCB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB08);
  }

  return result;
}

unint64_t sub_100445070()
{
  result = qword_1005DCB10;
  if (!qword_1005DCB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB10);
  }

  return result;
}

uint64_t sub_1004450E4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  if (v1 - v2 <= 70)
  {
    v4 = *a1;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 20);
    v8 = *(a1 + 22);
    swift_beginAccess();
    result = a1;
    v11 = v5 + (v6 - v5);
    v12 = v7 << 8;
    if (v2 <= v11)
    {
      v13 = v5 + (v6 - v5);
    }

    else
    {
      v13 = v2;
    }

    if (v2 <= v1)
    {
      v14 = v1;
    }

    else
    {
      v14 = v2;
    }

    v15 = v2;
    while (1)
    {
      v3 = v1 == v15;
      if (v1 == v15)
      {
        goto LABEL_61;
      }

      if (v14 == v15)
      {
        goto LABEL_64;
      }

      if (v2 < v5)
      {
        goto LABEL_65;
      }

      if (v13 == v15)
      {
        break;
      }

      v16 = *(v4 + 24);
      v17 = *(v16 + (v8 & 0xFFFFFFFFFF0000FFLL | (v7 << 8)) + v15);
      if ((v17 - 127) <= 0xFFFFFFA0)
      {
        goto LABEL_61;
      }

      ++v15;
      if (v17 == 92 || v17 == 34)
      {
        if (v15 <= v11)
        {
          v18 = v5 + (v6 - v5);
        }

        else
        {
          v18 = v15;
        }

        v19 = v15;
        while (1)
        {
          v3 = v1 == v19;
          if (v1 == v19)
          {
            break;
          }

          if (v15 < v2 || v19 >= v1)
          {
            goto LABEL_64;
          }

          if (v18 == v19)
          {
            goto LABEL_63;
          }

          v20 = *(v16 + v12 + v8 + v19);
          if ((v20 - 127) < 0xFFFFFFA1)
          {
            break;
          }

          ++v19;
          if (v20 == 92 || v20 == 34)
          {
            if (v19 <= v11)
            {
              v21 = v5 + (v6 - v5);
            }

            else
            {
              v21 = v19;
            }

            v22 = (v16 + v12 + v8 + v19);
            v23 = v1 - v19;
            while (1)
            {
              v3 = v23 == 0;
              if (!v23)
              {
                goto LABEL_61;
              }

              if (v21 == v19)
              {
                goto LABEL_63;
              }

              v24 = *v22;
              if ((v24 - 127) < 0xFFFFFFA1)
              {
                goto LABEL_61;
              }

              ++v19;
              --v23;
              ++v22;
              if (v24 == 92 || v24 == 34)
              {
                if (v19 <= v11)
                {
                  v25 = v5 + (v6 - v5);
                }

                else
                {
                  v25 = v19;
                }

                while (1)
                {
                  v3 = v23 == 0;
                  if (!v23)
                  {
                    goto LABEL_61;
                  }

                  if (v25 == v19)
                  {
                    goto LABEL_63;
                  }

                  v26 = *v22;
                  if ((v26 - 127) < 0xFFFFFFA1)
                  {
                    goto LABEL_61;
                  }

                  ++v19;
                  ++v22;
                  --v23;
                  if (v26 == 92 || v26 == 34)
                  {
                    if (v19 <= v11)
                    {
                      v27 = v5 + (v6 - v5);
                    }

                    else
                    {
                      v27 = v19;
                    }

                    while (1)
                    {
                      v3 = v23 == 0;
                      if (!v23)
                      {
                        goto LABEL_61;
                      }

                      if (v27 == v19)
                      {
                        goto LABEL_63;
                      }

                      v28 = *v22;
                      if ((v28 - 127) < 0xFFFFFFA1)
                      {
                        goto LABEL_61;
                      }

                      ++v19;
                      --v23;
                      ++v22;
                      if (v28 == 92 || v28 == 34)
                      {
                        if (v19 > v11)
                        {
                          v11 = v19;
                        }

                        v29 = v11 - v19;
                        do
                        {
                          v3 = v23 == 0;
                          if (!v23)
                          {
                            break;
                          }

                          if (!v29)
                          {
                            goto LABEL_63;
                          }

                          v30 = *v22;
                          if ((v30 - 127) < 0xFFFFFFA1)
                          {
                            break;
                          }

                          if (v30 == 34)
                          {
                            break;
                          }

                          ++v22;
                          --v29;
                          --v23;
                        }

                        while (v30 != 92);
                        goto LABEL_61;
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_61:
        sub_1003BD79C(result, &v31);

        return v3;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

char *MailboxName.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100447588(a1, a2, HIDWORD(a2), WORD2(a3), BYTE6(a3));

  return v3;
}

void MailboxPath.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIDWORD(a3);
  sub_1004A6EB4(a3 | (a3 << 32));
  sub_1004A6EC4(v3);
}

Swift::Int MailboxPath.hashValue.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  sub_1004A6E94();
  sub_1004A6EB4(v2 | (v2 << 32));
  sub_1004A6EC4(v3);
  return sub_1004A6F14();
}

Swift::Int sub_100445570()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  sub_1004A6EC4(v2);
  return sub_1004A6F14();
}

void sub_1004455D0()
{
  v1 = *(v0 + 12);
  sub_1004A6EB4(*(v0 + 8) | (*(v0 + 8) << 32));
  sub_1004A6EC4(v1);
}

Swift::Int sub_100445614()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  sub_1004A6EC4(v2);
  return sub_1004A6F14();
}

void MailboxPath.displayStringComponents(omittingEmptySubsequences:)(char a1, char *a2, uint64_t a3)
{
  sub_10014A364(SBYTE4(a3));
  if (!v5)
  {
    sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1004CEAA0;
    sub_1003F5A98(a2, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
    v55 = GmailLabel.makeDisplayString()();

    *(v54 + 32) = v55;
    return;
  }

  v6 = sub_1004A5584();
  if ((v6 & 0x100) == 0)
  {
    v7 = v6;

    LOBYTE(v73) = v7;
    __chkstk_darwin(v8);
    v56[2] = &v73;
    v9 = sub_1004470E0(0x7FFFFFFFFFFFFFFFLL, a1 & 1, sub_100447A50, v56, a2, &v57);
    v10 = *(v9 + 16);
    if (!v10)
    {
LABEL_31:

      return;
    }

    v72 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v10, 0);
    if (*(v9 + 16))
    {
      v11 = 0;
      v12 = v72;
      v13 = (v9 + 56);
      v58 = v10 - 1;
      v59 = v9;
      while (1)
      {
        v64 = v11;
        v14 = *(v13 - 3);
        v15 = *(v13 - 2);
        v17 = *(v13 - 1);
        v16 = *v13;
        v63 = v13;
        v62 = v14;
        swift_unknownObjectRetain();
        sub_1003BD9F8(&v73);
        v18 = *(&v74 + 1);
        v19 = v75;
        v69 = v73;
        v70 = v74;
        v71 = v75;
        v20 = (v16 >> 1) - v17;
        if (__OFSUB__(v16 >> 1, v17))
        {
          break;
        }

        v21 = v75 + v20;
        if (__CFADD__(v75, v20))
        {
          goto LABEL_34;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          if (v21 >= v74)
          {
            v22 = v21 - v74;
          }

          else
          {
            v22 = 0;
          }

          v23 = variable initialization expression of Engine.isProcessingUpdates();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v22, v23 & 1);
        }

        if (v20 > 0xFFFFFFFFLL)
        {
          goto LABEL_35;
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(v20, v19);
        ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v15 + v17), v15 + v17 + v20, v19);
        v24 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_36;
        }

        if (v24 < v18)
        {
          goto LABEL_37;
        }

        *(&v70 + 1) = v18;
        v71 = v19 + v20;
        if (v70 - (BYTE6(v70) | (WORD2(v70) << 8)) < v24)
        {
          goto LABEL_38;
        }

        HIDWORD(v69) = v19 + v20;
        v66 = v69;
        v67 = v70;
        v68 = v71;
        v25 = *(&v70 + 1);
        v26 = v71 - *(&v70 + 1);
        if (v24 - (v71 - *(&v70 + 1)) < *(&v70 + 1) || v24 < v26 || *(&v70 + 1) < DWORD2(v66) || (v26 | *(&v70 + 1)) < 0)
        {
          goto LABEL_39;
        }

        v27 = WORD2(v67);
        v28 = BYTE6(v67);
        v29 = BYTE6(v67) | (WORD2(v67) << 8);
        v30 = __CFADD__(v29, DWORD2(v70));
        v31 = v29 + DWORD2(v70);
        if (v30)
        {
          goto LABEL_40;
        }

        v60 = v12;
        v32 = v66;
        if (HIBYTE(v31))
        {
          v33 = v67;
          sub_1003BD79C(&v66, v65);
          v57 = v57 & 0xFF00000000000000 | v33 | (v27 << 32) | (v28 << 48);
          v34 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v25, v26, v32);
          v36 = v35;
          v38 = v37;
          v26 = HIDWORD(v35);
          v40 = v39;
          v42 = v41;
          sub_1003A52D0(&v66);
          sub_1003A52D0(&v66);
        }

        else
        {
          v34 = v66;
          v36 = 0;
          v40 = (v31 >> 8);
          v38 = v31 + v26;
          v42 = v31;
        }

        v61 = v61 & 0xFF00000000000000 | v38 | (v40 << 32) | (v42 << 48);
        sub_10045C954(v34, v36 | (v26 << 32), v61);
        v44 = v43;
        v46 = v45;
        swift_unknownObjectRelease();

        v47 = v46;
        v12 = v60;
        v72 = v60;
        v49 = v60[2];
        v48 = v60[3];
        v50 = v59;
        v51 = v63;
        if (v49 >= v48 >> 1)
        {
          v53 = v47;
          sub_100091A08((v48 > 1), v49 + 1, 1);
          v47 = v53;
          v12 = v72;
        }

        v12[2] = v49 + 1;
        v52 = &v12[2 * v49];
        v52[4] = v47;
        v52[5] = v44;
        if (v58 == v64)
        {
          goto LABEL_31;
        }

        v13 = v51 + 4;
        v11 = v64 + 1;
        if ((v64 + 1) >= *(v50 + 16))
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
LABEL_32:
      __break(1u);
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    __break(1u);
    __break(1u);
  }

  __break(1u);
}

char *static MailboxPath.makeRootMailbox(displayName:pathSeparator:)(Swift::Int a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = sub_1004A59E4();
    if (a1 > 1000)
    {
      v8 = sub_1004A59E4();
LABEL_4:
      sub_100447AD8();
      swift_allocError();
      *v9 = 1000;
      v9[1] = v8;
LABEL_10:
      swift_willThrow();
      return v6;
    }
  }

  else if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a1 & 0xFFFFFFFFFFFFuLL) > 0x3E8)
    {
      goto LABEL_4;
    }
  }

  if (a4)
  {
    v27 = a3;
    v28 = a4;
    __chkstk_darwin(a1);
    v26[2] = &v27;
    if (sub_100446F74(sub_100447A68, v26, v7, v6))
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1004A6724(34);
      v29._countAndFlagsBits = v7;
      v29._object = v6;
      sub_1004A5994(v29);
      v30._object = 0x80000001004B0DC0;
      v30._countAndFlagsBits = 0xD00000000000001ELL;
      sub_1004A5994(v30);
      sub_1004A55C4();
      v10 = v27;
      v11 = v28;
      sub_100447A84();
      swift_allocError();
      *v12 = v10;
      v12[1] = v11;
      goto LABEL_10;
    }
  }

  v13 = sub_10045CF70(v7, v6);
  v15 = v14;
  v17 = HIDWORD(v16);
  v18 = v16;
  swift_beginAccess();
  v19 = v17 - v18;
  if (v19)
  {
    v21 = *(v13 + 24);
    v22 = ((v15 >> 24) & 0xFFFF00 | BYTE6(v15)) + v18;
    v23 = sub_10015BEAC(v19, 0);
    memcpy(v23 + 32, (v21 + v22), v19);
    v20 = v23;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v6 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v20);
  if (a4)
  {
    if ((sub_1004A5584() & 0x100) != 0)
    {

      sub_1002EEE28();
      swift_allocError();
      *v25 = 0xD000000000000029;
      v25[1] = 0x80000001004AE390;
      swift_willThrow();
    }

    else
    {
      sub_1004A5584();
    }
  }

  return v6;
}

NIOIMAPCore2::MailboxPath __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MailboxPath.makeSubMailbox(displayName:)(Swift::String displayName)
{
  v3 = v1;
  object = displayName._object;
  countAndFlagsBits = displayName._countAndFlagsBits;
  v6 = sub_10014A364(SBYTE4(v2));
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v42 = v6;
    v43 = v7;
    __chkstk_darwin(v6);
    v41[2] = &v42;
    if ((sub_100446F74(sub_100447C68, v41, countAndFlagsBits, object) & 1) == 0)
    {
      v48 = sub_1003F5A98(v3, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v17 = HIDWORD(v16);
      v49 = v16;
      v50 = v18;
      v51 = v19;
      v52 = v20;

      v21 = sub_1003B2588(v8, v9, &v48, v17);
      if ((v21 & 0x100000000) != 0)
      {
        v22 = sub_1003B51F4(v8, v9, v17);
      }

      else
      {
        v22 = v21;
      }

      if (__CFADD__(HIDWORD(v49), v22))
      {
        __break(1u);
        goto LABEL_21;
      }

      HIDWORD(v49) += v22;
      v44[0] = sub_10045CF70(countAndFlagsBits, object);
      v44[1] = v23;
      v45 = v24;
      v47 = v25;
      v46 = v26;
      ByteBuffer.writeBuffer(_:)(v44);
      v27 = v49;
      countAndFlagsBits = HIDWORD(v49);
      v28 = (HIDWORD(v49) - v49);
      if (v28 <= 0x3E8)
      {
        v30 = v51;
        v31 = v52;
        v53 = v48;
        swift_beginAccess();
        if (countAndFlagsBits == v27)
        {
          v32 = _swiftEmptyArrayStorage;
        }

        else
        {
          v33 = countAndFlagsBits - v27;
          v34 = *(v53 + 24);
          v35 = (v31 | (v30 << 8)) + v27;
          v36 = sub_10015BEAC(v33, 0);
          memcpy(v36 + 32, (v34 + v35), v33);
          v32 = v36;
        }

        countAndFlagsBits = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v32);
        v38 = v37;

        v39 = sub_1004A5584();

        if ((v39 & 0x100) == 0)
        {
          sub_1004A5584();

          v14 = v38;
          goto LABEL_19;
        }

        sub_1002EEE28();
        swift_allocError();
        *v40 = 0xD000000000000029;
        v40[1] = 0x80000001004AE390;
        swift_willThrow();
      }

      else
      {

        sub_100447AD8();
        swift_allocError();
        *v29 = 1000;
        v29[1] = v28;
        swift_willThrow();
      }

      goto LABEL_19;
    }

    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1004A6724(34);
    v54._countAndFlagsBits = countAndFlagsBits;
    v54._object = object;
    sub_1004A5994(v54);
    v55._object = 0x80000001004B0DC0;
    v55._countAndFlagsBits = 0xD00000000000001ELL;
    sub_1004A5994(v55);
    sub_1004A55C4();

    v10 = v42;
    v11 = v43;
    sub_100447A84();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
  }

  else
  {
    sub_1002EEE28();
    swift_allocError();
    *v13 = 0xD00000000000002BLL;
    v13[1] = 0x80000001004B0DE0;
  }

  swift_willThrow();
LABEL_19:
  result.name.bytes._rawValue = countAndFlagsBits;
LABEL_21:
  result.name._hashValue._value = v14;
  result._pathSeparator = v15;
  return result;
}

uint64_t sub_1004463C4()
{
  v0 = ByteBufferAllocator.buffer(string:)(0x584F424E49, 0xE500000000000000, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
  v2 = v1;
  v4 = HIDWORD(v3);
  v5 = v3;
  swift_beginAccess();
  v6 = v4 - v5;
  if (v6)
  {
    v8 = *(v0 + 24);
    v9 = ((v2 >> 24) & 0xFFFF00 | BYTE6(v2)) + v5;
    v10 = sub_10015BEAC(v6, 0);
    memcpy(v10 + 32, (v8 + v9), v6);
    v7 = v10;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v11 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v7);
  v13 = v12;

  static MailboxName.inbox = v11;
  dword_1005DE9A0 = v13;
  return result;
}

uint64_t *MailboxName.inbox.unsafeMutableAddressor()
{
  if (qword_1005DBB68 != -1)
  {
    swift_once();
  }

  return &static MailboxName.inbox;
}

uint64_t static MailboxName.inbox.getter()
{
  if (qword_1005DBB68 != -1)
  {
    swift_once();
  }
}

uint64_t MailboxName.isInbox.getter(uint64_t a1, unsigned int a2)
{
  v2 = a2 | (a2 << 32);
  if (qword_1005DBB70 != -1)
  {
    v19 = a1;
    swift_once();
    a1 = v19;
  }

  if (v2 != qword_1005DCB18 || *(a1 + 16) != 5)
  {
    return 0;
  }

  v3 = a1;
  sub_1001D606C(0, 5, 0);
  v4 = v3[32];
  v6 = _swiftEmptyArrayStorage[2];
  v5 = _swiftEmptyArrayStorage[3];
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    sub_1001D606C((v5 > 1), v6 + 1, 1);
    v9 = v3;
    v5 = _swiftEmptyArrayStorage[3];
    v7 = v5 >> 1;
  }

  else
  {
    v9 = v3;
  }

  _swiftEmptyArrayStorage[2] = v8;
  *(&_swiftEmptyArrayStorage[4] + v6) = v4 & 0xDF;
  v10 = v9[33];
  v11 = v6 + 2;
  if (v7 <= v8)
  {
    v20 = v9[33];
    sub_1001D606C((v5 > 1), v6 + 2, 1);
    v10 = v20;
    v9 = v3;
    v5 = _swiftEmptyArrayStorage[3];
    v7 = v5 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v11;
  *(&_swiftEmptyArrayStorage[4] + v8) = v10 & 0xDF;
  v12 = v9[34];
  v13 = v6 + 3;
  if (v7 <= v11)
  {
    v21 = v9[34];
    sub_1001D606C((v5 > 1), v6 + 3, 1);
    v12 = v21;
    v9 = v3;
    v5 = _swiftEmptyArrayStorage[3];
    v7 = v5 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v13;
  *(&_swiftEmptyArrayStorage[4] + v11) = v12 & 0xDF;
  v14 = v9[35];
  v15 = v6 + 4;
  if (v7 <= v13)
  {
    v22 = v9[35];
    sub_1001D606C((v5 > 1), v6 + 4, 1);
    v14 = v22;
    v9 = v3;
    v5 = _swiftEmptyArrayStorage[3];
    v7 = v5 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v15;
  *(&_swiftEmptyArrayStorage[4] + v13) = v14 & 0xDF;
  v16 = v9[36];
  if (v7 <= v15)
  {
    sub_1001D606C((v5 > 1), v6 + 5, 1);
  }

  _swiftEmptyArrayStorage[2] = v6 + 5;
  *(&_swiftEmptyArrayStorage[4] + v15) = v16 & 0xDF;
  v17 = sub_1002EE92C(0x584F424E49uLL, 0xE500000000000000, _swiftEmptyArrayStorage);

  return v17 & 1;
}

unint64_t sub_10044683C(unint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *))
{
  v5 = *(a3 + 16);
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v20 = a3 + 32;
  v23 = v6;
  v22 = 4 * v6;
  v7 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v19 = a2 & 0xFFFFFFFFFFFFFFLL;

  v10 = 0;
  v11 = 15;
  while (1)
  {
    if (v10 == v5)
    {
      if (v22 == v11 >> 14)
      {
        v17 = 1;
LABEL_34:

        return v17;
      }

      v13 = 0;
      v12 = v5;
    }

    else
    {
      if (v10 >= v5)
      {
        goto LABEL_36;
      }

      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_37;
      }

      LOBYTE(v25[0]) = *(v20 + v10);
      a4(&v26, v25);
      if (v22 == v11 >> 14)
      {
        v17 = 0;
        goto LABEL_34;
      }

      v13 = v26;
    }

    v14 = v11 & 0xC;
    result = v11;
    if (v14 == v8)
    {
      result = sub_10010C210(v11, a1, a2);
    }

    v15 = result >> 16;
    if (result >> 16 >= v23)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1004A5A24();
      v16 = result;
      if (v14 != v8)
      {
        goto LABEL_23;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v25[0] = a1;
      v25[1] = v19;
      v16 = *(v25 + v15);
      if (v14 != v8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      result = v18;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_1004A67E4();
      }

      v16 = *(result + v15);
      if (v14 != v8)
      {
LABEL_23:
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    result = sub_10010C210(v11, a1, a2);
    v11 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
LABEL_27:
      if (v23 <= v11 >> 16)
      {
        goto LABEL_38;
      }

      result = sub_1004A59F4();
      v11 = result;
      goto LABEL_29;
    }

LABEL_24:
    v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_29:
    v17 = 0;
    if (v10 != v5)
    {
      v10 = v12;
      if (v13 == v16)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100446A6C()
{
  if (qword_1005DBB68 != -1)
  {
    result = swift_once();
  }

  qword_1005DCB18 = dword_1005DE9A0 | (dword_1005DE9A0 << 32);
  return result;
}

uint64_t sub_100446ADC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0x220FA12722E887A4;
  if (!a1)
  {
    v4 = 0x220FA12722E887A4;
    if (a2 < 0)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    v4 = 0x220FA12722E887A4;
    goto LABEL_31;
  }

  v3 = &a1[a2];
  v4 = 0x220FA12722E887A4;
  do
  {
    v5 = a1 + 1;
    v6 = *a1;
    if (a1 + 1 != v3)
    {
      v6 = a1[1] | (v6 << 8);
      v7 = a1 + 2;
      if (a1 + 2 == v3)
      {
        goto LABEL_13;
      }

      v6 = a1[2] | (v6 << 8);
      v5 = a1 + 3;
      if (a1 + 3 != v3)
      {
        v6 = a1[3] | (v6 << 8);
        v7 = a1 + 4;
        if (a1 + 4 == v3)
        {
          goto LABEL_13;
        }

        v6 = a1[4] | (v6 << 8);
        v5 = a1 + 5;
        if (a1 + 5 != v3)
        {
          v6 = a1[5] | (v6 << 8);
          v7 = a1 + 6;
          if (a1 + 6 == v3)
          {
            goto LABEL_13;
          }

          v6 = a1[6] | (v6 << 8);
          v5 = a1 + 7;
          if (a1 + 7 != v3)
          {
            v6 = a1[7] | (v6 << 8);
            v7 = a1 + 8;
LABEL_13:
            a1 = v5;
            if (v7 == v3)
            {
              goto LABEL_4;
            }

            goto LABEL_17;
          }
        }
      }

      a1 = v7;
    }

    v7 = v5;
    if (v5 == v3)
    {
      goto LABEL_4;
    }

LABEL_17:
    v7 = a1 + 2;
    if (a1 + 2 != v3)
    {
      v7 = a1 + 3;
      if (a1 + 3 != v3)
      {
        v7 = a1 + 4;
        if (a1 + 4 != v3)
        {
          v7 = a1 + 5;
          if (a1 + 5 != v3)
          {
            v7 = a1 + 6;
            if (a1 + 6 != v3)
            {
              v7 = a1 + 7;
              if (a1 + 7 != v3)
              {
                v7 = a1 + 8;
                v8 = a1 + 9;
                if (v7 != v3)
                {
                  v7 = v8;
                }
              }
            }
          }
        }
      }
    }

LABEL_4:
    v4 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * v6) | ((0x87C37B91114253D5 * v6) >> 33))) ^ v4, 37) + v2) + 1390208809;
    v2 = 10 * v4 + 944331445;
    a1 = v7;
  }

  while (v7 != v3);
  if (a2 < 0)
  {
LABEL_29:
    a2 = 0;
  }

LABEL_31:
  v9 = v2 ^ a2;
  v10 = (v4 ^ a2) + v9;
  v11 = v10 + v9;
  v12 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) >> 33));
  v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) >> 33));
  v14 = ((v13 ^ (v13 >> 33)) + (v12 ^ (v12 >> 33)) + (v13 ^ (v13 >> 33))) ^ ((v13 ^ (v13 >> 33)) + (v12 ^ (v12 >> 33)));
  return HIDWORD(v14) ^ v14;
}

Swift::Int sub_100446D78()
{
  v1 = *(v0 + 8);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  return sub_1004A6F14();
}

uint64_t sub_100446DBC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) | (*(a1 + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)))
  {
    return sub_1000FFC98(*a1, *a2);
  }

  else
  {
    return 0;
  }
}

uint64_t MailboxName.debugDescription.getter()
{

  v1 = sub_10044763C(v0);

  return v1;
}

uint64_t sub_100446E30()
{
  v1 = *v0;

  v3 = sub_10044763C(v2);

  return v3;
}

uint64_t sub_100446E7C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = (a3 + 64);
    do
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *(v5 + 4);
      v11 = *v5;
      v17 = v11 | (v10 << 32);
      v18[0] = v6;
      v18[1] = v7;
      v18[2] = v8;
      v18[3] = v9;
      v20 = v10;
      v19 = v11;
      sub_100447BE8(v6, v7, v8, v9, v17);
      v12 = v21;
      v13 = a1(v18);
      sub_1001FC9B4(v6, v7, v8, v9, v17);
      v21 = v12;
      if (v12)
      {
        break;
      }

      v14 = v4-- == 0;
      v5 += 10;
    }

    while (((v13 | v14) & 1) == 0);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

uint64_t sub_100446F74(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;

  v7 = sub_1004A59D4();
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      v13[0] = v7;
      v13[1] = v9;
      v10 = a1(v13);

      if (v4 || (v10 & 1) != 0)
      {
        break;
      }

      v7 = sub_1004A59D4();
      v9 = v11;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

void *sub_100447044(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000C9C0(&qword_1005DCB38, &qword_100507088);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 184);
  return result;
}

uint64_t sub_1004470E0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t (*a3)(char *)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  if (result < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    result = sub_1004620D0((a6 > 1), v7, 1, result);
LABEL_32:
    *(result + 16) = v7;
    v26 = (result + 32 * v9);
    v26[4] = v6;
    v26[5] = v6 + 32;
    v26[6] = 0;
    v26[7] = (2 * v10) | 1;
    return result;
  }

  v6 = a5;
  v11 = result;
  v10 = *(a5 + 16);
  if (!result || !v10)
  {
    if (!v10 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    result = sub_1004620D0(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(result + 16);
    a6 = *(result + 24);
    v7 = (v9 + 1);
    if (v9 < a6 >> 1)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

  v7 = a4;
  v13 = 0;
  v14 = a5 + 32;
  v15 = -v10;
  result = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v13 == v10)
    {
      v13 = v10;
      goto LABEL_36;
    }

    v32 = v11;
    v33 = v15;
    v35 = v10;
    v36 = result;
    v16 = (2 * v13) | 1;
    v34 = v14;
    v17 = v14 + v13;
LABEL_7:
    v18 = 0;
    v10 = v15 + v13;
    v9 = v16;
    while (1)
    {
      a6 = v13 + v18;
      if (v13 + v18 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_48;
      }

      v38 = *(v17 + v18);
      result = a3(&v38);
      if (v8)
      {
      }

      if (result)
      {
        break;
      }

      ++v18;
      v9 += 2;
      if (!(v10 + v18))
      {
        v10 = v35;
        goto LABEL_34;
      }
    }

    if (!v18 && (a2 & 1) != 0)
    {
      break;
    }

    if ((v13 + v18) < v13)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return result;
    }

    v19 = v36;
    v14 = v34;
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    v20 = *(v6 + 16);
    if (v20 < v13 || v20 < v13 + v18)
    {
      goto LABEL_56;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1004620D0(0, v36[2] + 1, 1, v36);
    }

    result = v19;
    v21 = v19[2];
    v22 = *(result + 24);
    v23 = v21 + 1;
    if (v21 >= v22 >> 1)
    {
      result = sub_1004620D0((v22 > 1), v21 + 1, 1, result);
      v23 = v21 + 1;
    }

    *(result + 16) = v23;
    v24 = (result + 32 * v21);
    v24[4] = v6;
    v24[5] = v34;
    v24[6] = v13;
    v24[7] = v9;
    v13 += v18 + 1;
    v25 = v23 == v32;
    v11 = v32;
    v10 = v35;
    v15 = v33;
    if (v25)
    {
      goto LABEL_35;
    }
  }

  ++v13;
  v16 += 2;
  ++v17;
  v10 = v35;
  v15 = v33;
  if (v13 != v35)
  {
    goto LABEL_7;
  }

  v13 = v35;
LABEL_34:
  result = v36;
  v14 = v34;
LABEL_35:
  if (v13 != v10)
  {
    goto LABEL_39;
  }

LABEL_36:
  if (a2)
  {
    v27 = result;

    return v27;
  }

LABEL_39:
  if (v10 < v13)
  {
    __break(1u);
    goto LABEL_51;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v28 = *(v6 + 16);
  if (v28 < v13 || v28 < v10)
  {
    goto LABEL_52;
  }

  v7 = result;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_53:
    v7 = sub_1004620D0(0, v7[2] + 1, 1, v7);
  }

  result = v7;
  v30 = v7[2];
  v29 = v7[3];
  if (v30 >= v29 >> 1)
  {
    result = sub_1004620D0((v29 > 1), v30 + 1, 1, v7);
  }

  *(result + 16) = v30 + 1;
  v31 = (result + 32 * v30);
  v31[4] = v6;
  v31[5] = v14;
  v31[6] = v13;
  v31[7] = (2 * v10) | 1;
  return result;
}

BOOL sub_10044747C(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return BYTE4(a2) == BYTE4(a4);
  }

  v6 = (result + 32);
  v7 = (a3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return BYTE4(a2) == BYTE4(a4);
    }
  }

  __break(1u);
  return result;
}

char *_s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(char *a1)
{

  v2 = sub_10044683C(0x584F424E49uLL, 0xE500000000000000, a1, sub_100446ACC);

  if (v2)
  {

    a1 = sub_10015BC90(0x584F424E49, 0xE500000000000000);
  }

  sub_100446ADC(a1 + 32, *(a1 + 2));
  return a1;
}

char *sub_100447588(uint64_t a1, unsigned int a2, unsigned int a3, unsigned __int16 a4, unsigned __int8 a5)
{
  swift_beginAccess();
  if (a3 == a2)
  {
    v10 = _swiftEmptyArrayStorage;
  }

  else
  {
    v11 = a3 - a2;
    v12 = *(a1 + 24);
    v13 = (a5 | (a4 << 8)) + a2;
    v14 = sub_10015BEAC(v11, 0);
    memcpy(v14 + 32, (v12 + v13), v11);
    v10 = v14;
  }

  return _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v10);
}

uint64_t sub_10044763C(uint64_t a1)
{
  v19 = 0;
  v20 = 0xE000000000000000;
  v2 = *(a1 + 16);
  sub_1004A5874(v2);
  LODWORD(v3) = 0;
  v4 = 0;
  v5 = (a1 + 32);
  v6 = &v5[v2];
  while (1)
  {
    v17 = v3;
    v18 = v4;
    if (!v4)
    {
      break;
    }

    if ((v3 & 0x80) != 0)
    {
      if (!v5)
      {
        goto LABEL_19;
      }

      v8 = v5;
      if (v5 == v6)
      {
        goto LABEL_19;
      }

LABEL_7:
      v5 = (v8 + 1);
      LODWORD(v3) = (*v8 << v4) | ((-255 << v4) - 1) & v3;
      v10 = v4 + 8;
      if ((v4 + 8) >= 0x20u)
      {
        goto LABEL_18;
      }

      if (v5 == v6)
      {
        goto LABEL_16;
      }

      v5 = (v8 + 2);
      LODWORD(v3) = (v8[1] << (v4 + 8)) | ((-255 << (v4 + 8)) - 1) & v3;
      v10 = v4 + 16;
      if ((v4 + 16) > 0x1Fu)
      {
        goto LABEL_18;
      }

      if (v5 == v6)
      {
        goto LABEL_16;
      }

      v5 = (v8 + 3);
      LODWORD(v3) = (v8[2] << v10) | ((-255 << v10) - 1) & v3;
      v10 = v4 + 24;
      if ((v4 + 24) > 0x1Fu)
      {
        goto LABEL_18;
      }

      if (v5 == v6)
      {
        goto LABEL_16;
      }

      v5 = (v8 + 4);
      LODWORD(v3) = (v8[3] << v10) | ((-255 << v10) - 1) & v3;
      v10 = v4 + 32;
      if (v4 < 0xE0u)
      {
LABEL_18:
        v4 = v10;
        goto LABEL_19;
      }

      if (v5 == v6 || (v5 = (v8 + 5), LODWORD(v3) = (v8[4] << v4) | ((-255 << v4) - 1) & v3, v10 = v4 + 40, v4 += 40, v4 < 0x20u))
      {
LABEL_16:
        v4 = v10;
        if (!v10)
        {
          return v19;
        }
      }

LABEL_19:
      if ((v3 & 0xC0E0) == 0x80C0)
      {
        if ((v3 & 0x1E) != 0)
        {
          v11 = 16;
LABEL_22:
          v17 = v3 >> v11;
          v18 = v4 - v11;
          goto LABEL_23;
        }
      }

      else if ((v3 & 0xC0C0F0) == 0x8080E0)
      {
        if ((v3 & 0x200F) != 0 && (v3 & 0x200F) != 0x200D)
        {
          v11 = 24;
          goto LABEL_22;
        }
      }

      else if ((v3 & 0xC0C0C0F8) == 0x808080F0 && (v3 & 0x3007) != 0 && __rev16(v3 & 0x3007) <= 0x400)
      {
        v11 = 32;
        goto LABEL_22;
      }

      v12 = sub_1004A6FB4();
      v3 = v3 >> ((8 * v12) & 0x38);
      v4 -= 8 * v12;
    }

    else
    {
      sub_1002A57BC();
      v13 = UnsafeExtractedAttachment.part.modify();
      sub_1002A5810(0);
      (v13)(&v15, 0);
LABEL_23:
      LODWORD(v3) = v17;
      v4 = v18;
      v15 = v19;
      v16 = v20;
      sub_1004A58C4();
      v19 = v15;
      v20 = v16;
    }
  }

  if (v5 && v6 != v5)
  {
    v7 = *v5++;
    v8 = v5;
    v9 = v7;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    LODWORD(v3) = v3 & 0xFFFFFF00 | v9;
    v4 = 8;
    if (v5 == v6)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  return v19;
}

unint64_t sub_100447A84()
{
  result = qword_1005DCB20;
  if (!qword_1005DCB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB20);
  }

  return result;
}

unint64_t sub_100447AD8()
{
  result = qword_1005DCB28;
  if (!qword_1005DCB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB28);
  }

  return result;
}

unint64_t sub_100447B30()
{
  result = qword_1005DCB30;
  if (!qword_1005DCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB30);
  }

  return result;
}

void sub_100447BE8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unint64_t a5)
{
  v6 = (a5 >> 37) & 7;
  if (v6 == 4 || v6 == 3)
  {
  }

  else if (v6 == 1)
  {

    sub_100051190(a3, a4);
  }
}

uint64_t static MailboxPatterns.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 0x100000000000000) == 0)
  {
    if ((a6 & 0x100000000000000) == 0)
    {
      return sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
    }

    return 0;
  }

  if ((a6 & 0x100000000000000) == 0)
  {
    return 0;
  }

  return sub_1003A370C(a1, a4);
}

void MailboxPatterns.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x100000000000000) != 0)
  {
    sub_1004A6EB4(1uLL);
    v7 = *(a2 + 16);
    sub_1004A6EB4(v7);
    if (v7)
    {
      v8 = (a2 + 54);
      do
      {
        v9 = *(v8 - 22);
        v10 = *(v8 - 14);
        v11 = *(v8 - 10);
        v12 = *(v8 - 1);
        v13 = *v8;
        v8 += 24;
        swift_beginAccess();
        v14 = *(v9 + 24) + (v13 | (v12 << 8));
        sub_1004A6EA4();
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    sub_1004A6EB4(0);
    swift_beginAccess();
    v6 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
    sub_1004A6EA4();
  }
}

Swift::Int MailboxPatterns.hashValue.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1004A6E94();
  if ((a3 & 0x100000000000000) != 0)
  {
    sub_1004A6EB4(1uLL);
    v6 = *(a1 + 16);
    sub_1004A6EB4(v6);
    if (v6)
    {
      v7 = (a1 + 54);
      do
      {
        v8 = *(v7 - 22);
        v9 = *(v7 - 14);
        v10 = *(v7 - 10);
        v11 = *(v7 - 1);
        v12 = *v7;
        v7 += 24;
        swift_beginAccess();
        v13 = *(v8 + 24) + (v12 | (v11 << 8));
        sub_1004A6EA4();
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    sub_1004A6EB4(0);
    swift_beginAccess();
    v5 = *(a1 + 24) + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3));
    sub_1004A6EA4();
  }

  return sub_1004A6F14();
}

Swift::Int sub_100447F1C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | ((*(v0 + 20) | (*(v0 + 22) << 16)) << 32);
  v4 = *(v0 + 23);
  sub_1004A6E94();
  MailboxPatterns.hash(into:)(v6, v1, v2, v3 | (v4 << 56));
  return sub_1004A6F14();
}

uint64_t sub_100447F90(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a1 + 23))
  {
    if (*(a2 + 23))
    {
      return sub_1003A370C(v3, *a2);
    }

    return 0;
  }

  if (*(a2 + 23))
  {
    return 0;
  }

  return sub_10020FBD0(v3, *(a1 + 8), *(a1 + 16) | ((*(a1 + 20) | (*(a1 + 22) << 16)) << 32), *a2, *(a2 + 8), (*(a2 + 16) | ((*(a2 + 20) | (*(a2 + 22) << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
}

unint64_t sub_100447FFC()
{
  result = qword_1005DCB40;
  if (!qword_1005DCB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB40);
  }

  return result;
}

uint64_t static MailboxUIDValidity.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5 || (v8 = sub_1004A6D34(), result = 0, (v8 & 1) != 0))
  {
    if ((a3 & 0x100000000) != 0)
    {
      if ((a6 & 0x100000000) != 0)
      {
        return 1;
      }
    }

    else if ((a6 & 0x100000000) == 0 && a3 == a6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1004480DC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 20);
  result = sub_1002F178C(a1, a2, (v3 + 8), *(v3 + 20));
  if (v10)
  {
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = *(v3 + 20);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v3 + 20) = v13;
  if ((a3 & 0x100000000) != 0)
  {
    v30 = 0;
  }

  else
  {
    v14 = result;
    result = sub_1002F178C(0x494C41564449553BLL, 0xED00003D59544944, (v3 + 8), v13);
    if (v15)
    {
      v16._countAndFlagsBits = 0x494C41564449553BLL;
      v16._object = 0xED00003D59544944;
      result = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
    }

    v17 = result;
    v18 = *(v3 + 20);
    v19 = (v18 + result);
    if (__CFADD__(v18, result))
    {
      goto LABEL_18;
    }

    *(v3 + 20) = v19;
    v20 = sub_1004A6CE4();
    v22 = v21;
    v23 = sub_1002F178C(v20, v21, (v3 + 8), v19);
    if (v24)
    {
      v25._countAndFlagsBits = v20;
      v25._object = v22;
      v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v19);
    }

    v26 = v23;

    v27 = *(v4 + 20);
    v28 = __CFADD__(v27, v26);
    v29 = v27 + v26;
    if (v28)
    {
      goto LABEL_19;
    }

    *(v4 + 20) = v29;
    v30 = v17 + v26;
    if (__OFADD__(v17, v26))
    {
LABEL_20:
      __break(1u);
      return result;
    }

    result = v14;
  }

  v31 = __OFADD__(result, v30);
  result += v30;
  if (v31)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t MailboxUIDValidity.uidValidity.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

void MailboxUIDValidity.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if ((a4 & 0x100000000) != 0)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(a4);
  }
}

Swift::Int MailboxUIDValidity.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if ((a3 & 0x100000000) != 0)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(a3);
  }

  return sub_1004A6F14();
}

Swift::Int sub_100448374()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v4 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v3);
  }

  return sub_1004A6F14();
}

void sub_100448400()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v4 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v3);
  }
}

Swift::Int sub_100448464()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v4 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v3);
  }

  return sub_1004A6F14();
}

uint64_t sub_1004484EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_1004A6D34(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_100448578()
{
  result = qword_1005DCB48;
  if (!qword_1005DCB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB48);
  }

  return result;
}

uint64_t sub_1004485CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_100448614(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MechanismBase64.init(mechanism:base64:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 38) = BYTE6(a5);
  *(a6 + 36) = WORD2(a5);
  return result;
}

void MechanismBase64.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v3 = v0[2];
  if (v3)
  {
    v4 = *(v0 + 38);
    v5 = *(v0 + 18);
    v6 = v0[3];
    sub_1004A6EC4(1u);
    swift_beginAccess();
    v7 = *(v3 + 24) + (v4 | (v5 << 8));
    sub_1004A6EA4();
  }

  else
  {
    sub_1004A6EC4(0);
  }
}

Swift::Int MechanismBase64.hashValue.getter()
{
  sub_1004A6E94();
  v1 = *v0;
  v2 = v0[1];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v3 = v0[2];
  if (v3)
  {
    v4 = *(v0 + 38);
    v5 = *(v0 + 18);
    v6 = v0[3];
    sub_1004A6EC4(1u);
    swift_beginAccess();
    v7 = *(v3 + 24) + (v4 | (v5 << 8));
    sub_1004A6EA4();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1004487E4()
{
  sub_1004A6E94();
  MechanismBase64.hash(into:)();
  return sub_1004A6F14();
}

uint64_t sub_100448820(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return _s12NIOIMAPCore215MechanismBase64V23__derived_struct_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

uint64_t sub_10044886C(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v1 + 20);
  result = sub_1002F178C(*a1, v4, (v1 + 8), *(v1 + 20));
  if (v7)
  {
    v8._countAndFlagsBits = v3;
    v8._object = v4;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = result;
  v10 = *(v1 + 20);
  v11 = (v10 + result);
  if (__CFADD__(v10, result))
  {
    goto LABEL_13;
  }

  *(v1 + 20) = v11;
  if (*(a1 + 16))
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32) | ((*(a1 + 36) | (*(a1 + 38) << 16)) << 32);
    v22[0] = *(a1 + 16);
    v22[1] = v12;
    v23 = v13;
    v24 = WORD2(v13);
    v25 = BYTE6(v13);

    result = sub_1002F178C(61, 0xE100000000000000, (v1 + 8), v11);
    if (v14)
    {
      v15._countAndFlagsBits = 61;
      v15._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v11);
    }

    v16 = result;
    v17 = *(v1 + 20);
    v18 = __CFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      goto LABEL_14;
    }

    *(v1 + 20) = v19;
    v20 = EncodeBuffer.writeBuffer(_:)(v22);

    v21 = v16 + v20;
    if (__OFADD__(v16, v20))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    result = v9 + v21;
    if (!__OFADD__(v9, v21))
    {
      return result;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t _s12NIOIMAPCore215MechanismBase64V23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_1004A6D34(), result = 0, (v5 & 1) != 0))
  {
    v7 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (v7)
      {
        v8 = *(a1 + 24);
        v9 = *(a1 + 32) | ((*(a1 + 36) | (*(a1 + 38) << 16)) << 32);
        v10 = *(a2 + 24);
        v11 = *(a2 + 32) | ((*(a2 + 36) | (*(a2 + 38) << 16)) << 32);

        LOBYTE(v11) = sub_10020FBD0(v12, v8, v9 & 0xFFFFFFFFFFFFFFLL, v7, v10, v11 & 0xFFFFFFFFFFFFFFLL);

        if (v11)
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_100448ABC()
{
  result = qword_1005DCB50;
  if (!qword_1005DCB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB50);
  }

  return result;
}

__n128 sub_100448B10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100448B24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 39))
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

uint64_t sub_100448B6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 38) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 39) = 1;
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

    *(result + 39) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *Media.TopLevelType.application.unsafeMutableAddressor()
{
  if (qword_1005DBB88 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.application;
}

uint64_t *Media.TopLevelType.audio.unsafeMutableAddressor()
{
  if (qword_1005DBB90 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.audio;
}

uint64_t *Media.TopLevelType.image.unsafeMutableAddressor()
{
  if (qword_1005DBB98 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.image;
}

uint64_t *Media.TopLevelType.message.unsafeMutableAddressor()
{
  if (qword_1005DBBA0 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.message;
}

uint64_t *Media.TopLevelType.video.unsafeMutableAddressor()
{
  if (qword_1005DBBA8 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.video;
}

uint64_t *Media.Subtype.rfc822.unsafeMutableAddressor()
{
  if (qword_1005DBBD0 != -1)
  {
    swift_once();
  }

  return &static Media.Subtype.rfc822;
}

uint64_t *Media.Subtype.alternative.unsafeMutableAddressor()
{
  if (qword_1005DBBB8 != -1)
  {
    swift_once();
  }

  return &static Media.Subtype.alternative;
}

uint64_t *Media.Subtype.mixed.unsafeMutableAddressor()
{
  if (qword_1005DBBC8 != -1)
  {
    swift_once();
  }

  return &static Media.Subtype.mixed;
}

uint64_t *Media.Subtype.related.unsafeMutableAddressor()
{
  if (qword_1005DBBC0 != -1)
  {
    swift_once();
  }

  return &static Media.Subtype.related;
}

NIOIMAPCore2::Media::MediaType __swiftcall Media.MediaType.init(topLevel:sub:)(Swift::String topLevel, Swift::String sub)
{
  v2 = sub_1004A5814();
  v4 = v3;

  v5 = sub_1004A5814();
  v7 = v6;

  v8 = v2;
  v9 = v4;
  v10 = v5;
  v11 = v7;
  result.sub.stringValue._object = v11;
  result.sub.stringValue._countAndFlagsBits = v10;
  result.topLevel.stringValue._object = v9;
  result.topLevel.stringValue._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_100448F10()
{
  result = sub_1004A5814();
  static Media.TopLevelType.multipart = result;
  unk_1005DE9B0 = v1;
  return result;
}

uint64_t *Media.TopLevelType.multipart.unsafeMutableAddressor()
{
  if (qword_1005DBB78 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.multipart;
}

uint64_t sub_100448FC4()
{
  result = sub_1004A5814();
  static Media.TopLevelType.text = result;
  unk_1005DE9C0 = v1;
  return result;
}

uint64_t *Media.TopLevelType.text.unsafeMutableAddressor()
{
  if (qword_1005DBB80 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.text;
}

uint64_t sub_10044906C()
{
  result = sub_1004A5814();
  static Media.TopLevelType.application = result;
  unk_1005DE9D0 = v1;
  return result;
}

uint64_t sub_1004490D4()
{
  result = sub_1004A5814();
  static Media.TopLevelType.audio = result;
  unk_1005DE9E0 = v1;
  return result;
}

uint64_t sub_100449130()
{
  result = sub_1004A5814();
  static Media.TopLevelType.image = result;
  unk_1005DE9F0 = v1;
  return result;
}

uint64_t sub_10044918C()
{
  result = sub_1004A5814();
  static Media.TopLevelType.message = result;
  unk_1005DEA00 = v1;
  return result;
}

uint64_t sub_1004491EC()
{
  result = sub_1004A5814();
  static Media.TopLevelType.video = result;
  unk_1005DEA10 = v1;
  return result;
}

uint64_t sub_100449248()
{
  result = sub_1004A5814();
  static Media.TopLevelType.font = result;
  unk_1005DEA20 = v1;
  return result;
}

uint64_t *Media.TopLevelType.font.unsafeMutableAddressor()
{
  if (qword_1005DBBB0 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.font;
}

uint64_t sub_1004492F0()
{
  result = sub_1004A5814();
  static Media.Subtype.alternative = result;
  unk_1005DEA30 = v1;
  return result;
}

uint64_t sub_100449358()
{
  result = sub_1004A5814();
  static Media.Subtype.related = result;
  unk_1005DEA40 = v1;
  return result;
}

uint64_t sub_1004493B8()
{
  result = sub_1004A5814();
  static Media.Subtype.mixed = result;
  unk_1005DEA50 = v1;
  return result;
}

uint64_t sub_100449414()
{
  result = sub_1004A5814();
  static Media.Subtype.rfc822 = result;
  unk_1005DEA60 = v1;
  return result;
}

uint64_t BodyStructure.mediaType.getter()
{
  v1 = *(v0 + 144);
  v20[8] = *(v0 + 128);
  v20[9] = v1;
  v20[10] = *(v0 + 160);
  v21 = *(v0 + 176);
  v2 = *(v0 + 80);
  v20[4] = *(v0 + 64);
  v20[5] = v2;
  v3 = *(v0 + 112);
  v20[6] = *(v0 + 96);
  v20[7] = v3;
  v4 = *(v0 + 16);
  v20[0] = *v0;
  v20[1] = v4;
  v5 = *(v0 + 48);
  v20[2] = *(v0 + 32);
  v20[3] = v5;
  if (sub_10000FE88(v20) == 1)
  {
    v6 = UInt32.init(_:)(v20);
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    if (qword_1005DBB78 != -1)
    {
      swift_once();
    }

    v9 = static Media.TopLevelType.multipart;
    goto LABEL_11;
  }

  v10 = *UInt32.init(_:)(v20);
  if (!(v10 >> 62))
  {
    v11 = (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v9 = v11[2];
    v12 = v11[3];
    v13 = v11[4];
    v14 = v11[5];
LABEL_11:

    goto LABEL_12;
  }

  if (v10 >> 62 == 1)
  {
    if (qword_1005DBBA0 != -1)
    {
      swift_once();
    }

    v9 = static Media.TopLevelType.message;
    sub_1004A5814();
  }

  else
  {
    v16 = v10 & 0x3FFFFFFFFFFFFFFFLL;
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    v19 = qword_1005DBB80;

    if (v19 != -1)
    {
      swift_once();
    }

    v9 = static Media.TopLevelType.text;
  }

LABEL_12:

  return v9;
}

unint64_t sub_10044963C()
{
  result = qword_1005DCB58;
  if (!qword_1005DCB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB58);
  }

  return result;
}

unint64_t sub_100449694()
{
  result = qword_1005DCB60;
  if (!qword_1005DCB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB60);
  }

  return result;
}

unint64_t sub_1004496EC()
{
  result = qword_1005DCB68;
  if (!qword_1005DCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB68);
  }

  return result;
}

unint64_t sub_100449744()
{
  result = qword_1005DCB70;
  if (!qword_1005DCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB70);
  }

  return result;
}

unint64_t sub_10044979C()
{
  result = qword_1005DCB78;
  if (!qword_1005DCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB78);
  }

  return result;
}

unint64_t sub_1004497F4()
{
  result = qword_1005DCB80;
  if (!qword_1005DCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB80);
  }

  return result;
}

unint64_t sub_10044984C()
{
  result = qword_1005DCB88;
  if (!qword_1005DCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB88);
  }

  return result;
}

uint64_t sub_1004498E0()
{
  v1 = v0;
  v11._countAndFlagsBits = sub_1004A5834();
  sub_1004A5994(v11);

  v12._countAndFlagsBits = 34;
  v12._object = 0xE100000000000000;
  sub_1004A5994(v12);
  v2 = *(v0 + 20);
  v3 = sub_1002F178C(34, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v4)
  {
    v5._countAndFlagsBits = 34;
    v5._object = 0xE100000000000000;
    v3 = ByteBuffer._setStringSlowpath(_:at:)(v5, v2);
  }

  v6 = v3;

  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, v6);
  v10 = v8 + v6;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 20) = v10;
    return v6;
  }

  return result;
}

uint64_t sub_1004499A8()
{
  v1 = v0;
  v2 = *(v0 + 20);
  result = sub_1002F178C(34, 0xE100000000000000, (v0 + 8), *(v0 + 20));
  if (v4)
  {
    v5._countAndFlagsBits = 34;
    v5._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v5, v2);
  }

  v6 = result;
  v7 = *(v0 + 20);
  v8 = (v7 + result);
  if (__CFADD__(v7, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v0 + 20) = v8;
  v9 = sub_1004A5834();
  v11 = v10;
  v12 = sub_1002F178C(v9, v10, (v0 + 8), v8);
  if (v13)
  {
    v14._countAndFlagsBits = v9;
    v14._object = v11;
    v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v8);
  }

  v15 = v12;

  v16 = *(v1 + 20);
  v17 = (v16 + v15);
  if (__CFADD__(v16, v15))
  {
    goto LABEL_14;
  }

  *(v1 + 20) = v17;
  v18 = __OFADD__(v6, v15);
  v19 = v6 + v15;
  if (v18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1002F178C(34, 0xE100000000000000, (v1 + 8), v16 + v15);
  if (v20)
  {
    v21._countAndFlagsBits = 34;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v17);
  }

  v22 = *(v1 + 20);
  v23 = __CFADD__(v22, result);
  v24 = v22 + result;
  if (v23)
  {
    goto LABEL_16;
  }

  *(v1 + 20) = v24;
  v18 = __OFADD__(v19, result);
  result += v19;
  if (v18)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

void MessageAttribute.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 144);
  v88[8] = *(v1 + 128);
  v88[9] = v3;
  v88[10] = *(v1 + 160);
  v89 = *(v1 + 176);
  v4 = *(v1 + 80);
  v88[4] = *(v1 + 64);
  v88[5] = v4;
  v5 = *(v1 + 112);
  v88[6] = *(v1 + 96);
  v88[7] = v5;
  v6 = *(v1 + 16);
  v88[0] = *v1;
  v88[1] = v6;
  v7 = *(v1 + 48);
  v88[2] = *(v1 + 32);
  v88[3] = v7;
  switch(sub_10030445C(v88))
  {
    case 1u:
      v33 = sub_100304468(v88);
      v80 = *(v33 + 64);
      v81 = *(v33 + 80);
      v82 = *(v33 + 96);
      *&v83 = *(v33 + 112);
      v76 = *v33;
      v77 = *(v33 + 16);
      v78 = *(v33 + 32);
      v79 = *(v33 + 48);
      sub_1004A6EB4(1uLL);
      Envelope.hash(into:)(a1);
      return;
    case 2u:
      v29 = *sub_100304468(v88);
      v30 = 2;
      goto LABEL_30;
    case 3u:
      v31 = *sub_100304468(v88);
      sub_1004A6EB4(3uLL);
      sub_1004A6EE4(v31);
      return;
    case 4u:
      v26 = *sub_100304468(v88);
      sub_1004A6EB4(4uLL);
      sub_1004A6EB4(v26);
      return;
    case 5u:
      v34 = sub_100304468(v88);
      v35 = *(v34 + 144);
      v72 = *(v34 + 128);
      v73 = v35;
      v74 = *(v34 + 160);
      v75 = *(v34 + 176);
      v36 = *(v34 + 80);
      v68 = *(v34 + 64);
      v69 = v36;
      v37 = *(v34 + 112);
      v70 = *(v34 + 96);
      v71 = v37;
      v38 = *(v34 + 16);
      v64 = *v34;
      v65 = v38;
      v39 = *(v34 + 48);
      v66 = *(v34 + 32);
      v67 = v39;
      v40 = *(v34 + 177);
      sub_1004A6EB4(5uLL);
      v84 = v72;
      v85 = v73;
      v86 = v74;
      v87 = v75;
      v80 = v68;
      v81 = v69;
      v82 = v70;
      v83 = v71;
      v76 = v64;
      v77 = v65;
      v78 = v66;
      v79 = v67;
      if (sub_10000FE74(&v76) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        sub_1004A6EB4(0);
        v62[8] = v84;
        v62[9] = v85;
        v62[10] = v86;
        v63 = v87;
        v62[4] = v80;
        v62[5] = v81;
        v62[6] = v82;
        v62[7] = v83;
        v62[0] = v76;
        v62[1] = v77;
        v62[2] = v78;
        v62[3] = v79;
        if (sub_10000FE88(v62) == 1)
        {
          v51 = UInt32.init(_:)(v62);
          sub_1004A6EB4(1uLL);
          sub_1003AF454(a1, *v51);
          v52 = *(v51 + 8);
          v53 = *(v51 + 16);
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v54 = *(v51 + 72);
          v97 = *(v51 + 56);
          v98 = v54;
          v55 = *(v51 + 104);
          v99 = *(v51 + 88);
          v100 = v55;
          v56 = *(v51 + 40);
          v95 = *(v51 + 24);
          v96 = v56;
          sub_1003B053C(a1);
        }

        else
        {
          v57 = UInt32.init(_:)(v62);
          sub_1004A6EB4(0);
          BodyStructure.Singlepart.Kind.hash(into:)(a1, *v57);
          v58 = *(v57 + 24);
          v59 = *(v57 + 56);
          v92 = *(v57 + 40);
          v93 = v59;
          v94 = *(v57 + 72);
          v90 = *(v57 + 8);
          v91 = v58;
          BodyStructure.Fields.hash(into:)();
          v60 = *(v57 + 136);
          v97 = *(v57 + 120);
          v98 = v60;
          v99 = *(v57 + 152);
          *&v100 = *(v57 + 168);
          v61 = *(v57 + 104);
          v95 = *(v57 + 88);
          v96 = v61;
          sub_1003B0920(a1);
        }
      }

      v50 = v40 & 1;
      goto LABEL_36;
    case 6u:
      v44 = sub_100304468(v88);
      v46 = *v44;
      v45 = v44[1];
      sub_1004A6EB4(6uLL);
      v47 = *(v46 + 16);
      sub_1004A6EB4(v47);
      if (v47)
      {
        v48 = (v46 + 32);
        do
        {
          v49 = *v48++;
          sub_1004A6EB4(v49);
          --v47;
        }

        while (v47);
      }

      sub_1004A6EB4(v45);
      return;
    case 7u:
      v32 = sub_100304468(v88);
      v76 = *v32;
      v77 = *(v32 + 16);
      LOBYTE(v78) = *(v32 + 32);
      sub_1004A6EB4(7uLL);
      StreamingKind.hash(into:)(a1);
      return;
    case 8u:
      v29 = *sub_100304468(v88);
      v30 = 8;
      goto LABEL_30;
    case 9u:
      v29 = *sub_100304468(v88);
      v30 = 9;
      goto LABEL_30;
    case 0xAu:
      v29 = *sub_100304468(v88);
      v30 = 10;
LABEL_30:
      sub_1004A6EB4(v30);
      sub_1004A6EF4(v29);
      return;
    case 0xBu:
      v17 = *sub_100304468(v88);
      sub_1004A6EB4(0xBuLL);
      v18 = *(v17 + 16);
      sub_1004A6EB4(v18);
      if (v18)
      {
        v19 = (v17 + 54);
        do
        {
          v20 = *(v19 - 22);
          v21 = *(v19 - 14);
          v22 = *(v19 - 10);
          v23 = *(v19 - 1);
          v24 = *v19;
          v19 += 24;
          swift_beginAccess();
          v25 = *(v20 + 24) + (v24 | (v23 << 8));
          sub_1004A6EA4();
          --v18;
        }

        while (v18);
      }

      return;
    case 0xCu:
      v27 = sub_100304468(v88);
      v28 = *v27;
      v15 = v27[1];
      v16 = 12;
      goto LABEL_13;
    case 0xDu:
      v41 = sub_100304468(v88);
      v42 = *v41;
      v43 = v41[1];
      sub_1004A6EB4(0xDuLL);
      goto LABEL_23;
    case 0xEu:
      v13 = sub_100304468(v88);
      v14 = *v13;
      v15 = v13[1];
      v16 = 14;
LABEL_13:
      sub_1004A6EB4(v16);
      if (v15)
      {
        sub_1004A6EC4(1u);
LABEL_23:
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        v50 = 0;
LABEL_36:
        sub_1004A6EC4(v50);
      }

      break;
    default:
      v8 = *sub_100304468(v88);
      sub_1004A6EB4(0);
      v9 = *(v8 + 16);
      sub_1004A6EB4(v9);
      if (v9)
      {
        v10 = (v8 + 40);
        do
        {
          v11 = *(v10 - 1);
          v12 = *v10;
          sub_1004A5834();

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v10 += 2;
          --v9;
        }

        while (v9);
      }

      break;
  }
}

Swift::Int MessageAttribute.hashValue.getter()
{
  sub_1004A6E94();
  MessageAttribute.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10044A110()
{
  sub_1004A6E94();
  MessageAttribute.hash(into:)(v1);
  return sub_1004A6F14();
}

uint64_t sub_10044A14C(uint64_t a1, uint64_t a2)
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
  return _s12NIOIMAPCore216MessageAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(v13, v15) & 1;
}

void **MessageAttribute.debugDescription.getter()
{
  v1 = v0;
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1005DE398;
  v4 = word_1005DE39C;
  v5 = byte_1005DE39E;

  LOBYTE(v10) = 0;
  BYTE5(v10) = 0;
  *(&v10 + 1) = 65537;
  *(&v10 + 1) = v2;
  *&v11 = qword_1005DE390;
  DWORD2(v11) = v3;
  WORD6(v11) = v4;
  BYTE14(v11) = v5;
  *&v12 = sub_1003DBA20(_swiftEmptyArrayStorage);
  *(&v12 + 1) = v6;
  v13 = v7;
  result = sub_10044A37C(v1);
  if (DWORD1(v11) < v11)
  {
    __break(1u);
  }

  else if (v3 - (v5 | (v4 << 8)) >= DWORD1(v11))
  {
    v14[0] = v2;
    v14[1] = v11;
    v15 = v3;
    v16 = WORD6(v11);
    v17 = v5;
    v18 = v11;
    v19 = DWORD1(v11);
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;

    sub_1004A5874(DWORD1(v11) - v11);
    sub_1003BB2E4(v14, v20);
    sub_1003A52D0(v14);
    v9 = *&v20[0];
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = v12;
    v21 = v13;
    sub_1003E5C94(v20);
    return v9;
  }

  __break(1u);
  return result;
}

void **sub_10044A37C(uint64_t a1)
{
  v2 = *(a1 + 144);
  v55[8] = *(a1 + 128);
  v55[9] = v2;
  v55[10] = *(a1 + 160);
  v56 = *(a1 + 176);
  v3 = *(a1 + 80);
  v55[4] = *(a1 + 64);
  v55[5] = v3;
  v4 = *(a1 + 112);
  v55[6] = *(a1 + 96);
  v55[7] = v4;
  v5 = *(a1 + 16);
  v55[0] = *a1;
  v55[1] = v5;
  v6 = *(a1 + 48);
  v55[2] = *(a1 + 32);
  v55[3] = v6;
  v7 = sub_10030445C(v55);
  result = sub_100304468(v55);
  switch(v7)
  {
    case 1:
      v37 = *(result + 5);
      v61 = *(result + 4);
      v62 = v37;
      v63 = *(result + 6);
      *&v64 = result[14];
      v38 = *(result + 1);
      v57 = *result;
      v58 = v38;
      v39 = *(result + 3);
      v59 = *(result + 2);
      v60 = v39;
      v40 = *(v1 + 20);
      v41 = sub_1002F178C(0x45504F4C45564E45, 0xE900000000000020, (v1 + 8), *(v1 + 20));
      if (v42)
      {
        v43._countAndFlagsBits = 0x45504F4C45564E45;
        v43._object = 0xE900000000000020;
        v41 = ByteBuffer._setStringSlowpath(_:at:)(v43, v40);
      }

      v44 = v41;
      v45 = *(v1 + 20);
      v17 = __CFADD__(v45, v41);
      v46 = v45 + v41;
      if (v17)
      {
        goto LABEL_37;
      }

      *(v1 + 20) = v46;
      v47 = sub_1003E7CBC(&v57);
      v28 = __OFADD__(v44, v47);
      result = (v44 + v47);
      if (v28)
      {
        __break(1u);
LABEL_29:
        v48 = *(result + 9);
        v65 = *(result + 8);
        v66 = v48;
        v67 = *(result + 10);
        v68 = *(result + 176);
        v49 = *(result + 5);
        v61 = *(result + 4);
        v62 = v49;
        v50 = *(result + 7);
        v63 = *(result + 6);
        v64 = v50;
        v51 = *(result + 1);
        v57 = *result;
        v58 = v51;
        v52 = *(result + 3);
        v59 = *(result + 2);
        v60 = v52;
        return sub_10044A804(&v57, *(result + 177) & 1);
      }

      return result;
    case 2:
      v19 = *result;
      v20 = *(v1 + 20);
      v21 = sub_1002F178C(0x4C414E5245544E49, 0xED00002045544144, (v1 + 8), *(v1 + 20));
      if (v22)
      {
        v23._countAndFlagsBits = 0x4C414E5245544E49;
        v23._object = 0xED00002045544144;
        v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v20);
      }

      v24 = v21;
      v25 = *(v1 + 20);
      v17 = __CFADD__(v25, v21);
      v26 = v25 + v21;
      if (v17)
      {
        __break(1u);
        goto LABEL_36;
      }

      *(v1 + 20) = v26;
      v27 = sub_1004338EC(v19);
      v28 = __OFADD__(v24, v27);
      result = (v24 + v27);
      if (v28)
      {
        __break(1u);
LABEL_18:
        v29 = *result;
        *&v57 = 541346133;
        *(&v57 + 1) = 0xE400000000000000;
        v70._countAndFlagsBits = sub_1004A6CE4();
        sub_1004A5994(v70);
        v10 = v1;

        v30 = v57;
        v31 = *(v1 + 20);
        v32 = sub_1002F178C(v57, *(&v57 + 1), (v10 + 8), *(v10 + 20));
        if (v33)
        {
          v32 = ByteBuffer._setStringSlowpath(_:at:)(v30, v31);
          v10 = v1;
        }

        v34 = v32;

        v35 = *(v10 + 20);
        result = v34;
        v17 = __CFADD__(v35, v34);
        v18 = v35 + v34;
        if (!v17)
        {
LABEL_21:
          *(v10 + 20) = v18;
          return result;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        JUMPOUT(0x10044A7C4);
      }

      return result;
    case 3:
      goto LABEL_18;
    case 4:
      v9 = *result;
      strcpy(&v57, "RFC822.SIZE ");
      BYTE13(v57) = 0;
      HIWORD(v57) = -5120;
      v69._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v69);
      v10 = v1;

      v11 = v57;
      v12 = *(v1 + 20);
      v13 = sub_1002F178C(v57, *(&v57 + 1), (v10 + 8), *(v10 + 20));
      if (v14)
      {
        v13 = ByteBuffer._setStringSlowpath(_:at:)(v11, v12);
        v10 = v1;
      }

      v15 = v13;

      v16 = *(v10 + 20);
      result = v15;
      v17 = __CFADD__(v16, v15);
      v18 = v16 + v15;
      if (!v17)
      {
        goto LABEL_21;
      }

      __break(1u);
      return sub_10044B1F4(*result, result[1]);
    case 5:
      goto LABEL_29;
    case 6:
      v53 = result[1];
      return sub_10044A980(*result);
    case 7:
      v36 = *(result + 1);
      v57 = *result;
      v58 = v36;
      LOBYTE(v59) = *(result + 32);
      return sub_10044AD64(&v57);
    case 8:
      v54 = *result;
      return sub_1003EF7F0();
    case 9:
      return sub_10044AE4C(*result, 0x47534D2D4D472D58);
    case 10:
      return sub_10044AE4C(*result, 0x5248542D4D472D58);
    case 11:
      return sub_10044AF20(*result);
    case 12:
      return sub_10044B1F4(*result, result[1]);
    case 13:
      return sub_10044B36C(*result, result[1]);
    case 14:
      return sub_10044B4C4(*result, result[1]);
    default:
      return sub_10044AAEC(*result);
  }
}

uint64_t sub_10044A804(__int128 *a1, char a2)
{
  v5 = *(v2 + 20);
  result = sub_1002F178C(1497648962, 0xE400000000000000, (v2 + 8), *(v2 + 20));
  if (v7)
  {
    v8._countAndFlagsBits = 1497648962;
    v8._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = *(v2 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 20) = v10;
  if (a2)
  {
    v11 = result;
    result = sub_1002F178C(0x5255544355525453, 0xE900000000000045, (v2 + 8), v10);
    if (v12)
    {
      v13._countAndFlagsBits = 0x5255544355525453;
      v13._object = 0xE900000000000045;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    LODWORD(v10) = v15 + result;
    if (__CFADD__(v15, result))
    {
      goto LABEL_22;
    }

    result = v11;
    *(v2 + 20) = v10;
  }

  else
  {
    v14 = 0;
  }

  v16 = result + v14;
  if (__OFADD__(result, v14))
  {
    goto LABEL_18;
  }

  result = sub_1002F178C(32, 0xE100000000000000, (v2 + 8), v10);
  if (v17)
  {
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v10);
  }

  v19 = *(v2 + 20);
  v20 = __CFADD__(v19, result);
  v21 = v19 + result;
  if (v20)
  {
    goto LABEL_19;
  }

  *(v2 + 20) = v21;
  v22 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = sub_1003AA504(a1);
  v24 = __OFADD__(v22, v23);
  result = v22 + v23;
  if (v24)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_10044A980(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x532E5952414E4942, 0xEB00000000455A49, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x532E5952414E4942;
    v7._object = 0xEB00000000455A49;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v11;
  result = sub_100492F74(a1);
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v20);

  v13 = *(v1 + 20);
  v14 = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v15)
  {
    v16._countAndFlagsBits = 32;
    v16._object = 0xE100000000000000;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = v14;

  v18 = *(v2 + 20);
  v10 = __CFADD__(v18, v17);
  v19 = v18 + v17;
  if (v10)
  {
    goto LABEL_12;
  }

  *(v2 + 20) = v19;
  result = v12 + v17;
  if (__OFADD__(v12, v17))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_10044AAEC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x205347414C46, 0xE600000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x205347414C46;
    v7._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_28;
  }

  *(v1 + 20) = v10;
  v36 = a1;
  v11 = a1[2];
  if (v11)
  {
    result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), v10);
    if (v12)
    {
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v1 + 20);
    LODWORD(v10) = v15 + result;
    if (__CFADD__(v15, result))
    {
      goto LABEL_35;
    }

    *(v1 + 20) = v10;
  }

  else
  {
    v14 = 0;
  }

  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), v10);
  if (v16)
  {
    v17._countAndFlagsBits = 40;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v10);
  }

  v18 = *(v1 + 20);
  v19 = __CFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    goto LABEL_29;
  }

  *(v1 + 20) = v20;
  v21 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __chkstk_darwin(result);
  v35[2] = sub_1003C40B8;
  v35[3] = 0;
  v35[4] = v2;
  v35[5] = &v36;
  v35[6] = 32;
  v35[7] = 0xE100000000000000;
  result = sub_1004594A4(0, sub_1003A3458, v35, a1);
  v22 = v21 + result;
  if (__OFADD__(v21, result))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = *(v2 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v24)
  {
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v2 + 20);
  v27 = (v26 + result);
  if (__CFADD__(v26, result))
  {
    goto LABEL_32;
  }

  *(v2 + 20) = v27;
  v28 = __OFADD__(v22, result);
  v29 = v22 + result;
  if (v28)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v11)
  {
    v34 = v29;
    goto LABEL_24;
  }

  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), v27);
  if (v30)
  {
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v27);
  }

  v32 = *(v2 + 20);
  v19 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v19)
  {
    goto LABEL_36;
  }

  *(v2 + 20) = v33;
  v34 = v29 + result;
  if (__OFADD__(v29, result))
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_24:
  result = v8 + v34;
  if (__OFADD__(v8, v34))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

uint64_t sub_10044AD64(uint64_t a1)
{
  v2 = sub_10047C5F4(a1);
  v3 = *(v1 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v5)
  {
    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = *(v1 + 20);
  v8 = (v7 + result);
  if (__CFADD__(v7, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v8;
  v9 = __OFADD__(v2, result);
  v10 = v2 + result;
  if (v9)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_1002F178C(4999502, 0xE300000000000000, (v1 + 8), v8);
  if (v11)
  {
    v12._countAndFlagsBits = 4999502;
    v12._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v8);
  }

  v13 = *(v1 + 20);
  v14 = __CFADD__(v13, result);
  v15 = v13 + result;
  if (v14)
  {
    goto LABEL_12;
  }

  *(v1 + 20) = v15;
  v9 = __OFADD__(v10, result);
  result += v10;
  if (v9)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_10044AE4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v14._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v14);

  v4 = *(v2 + 20);
  v5 = sub_1002F178C(a2, 0xEB00000000204449, (v3 + 8), *(v3 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = a2;
    v7._object = 0xEB00000000204449;
    v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = v5;

  v10 = *(v3 + 20);
  v11 = __CFADD__(v10, v8);
  v12 = v10 + v8;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 20) = v12;
    return v8;
  }

  return result;
}

uint64_t sub_10044AF20(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x42414C2D4D472D58, 0xEB00000000534C45, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x42414C2D4D472D58;
    v7._object = 0xEB00000000534C45;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_32;
  }

  *(v1 + 20) = v10;
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), v10);
  if (v11)
  {
    v12._countAndFlagsBits = 32;
    v12._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = *(v1 + 20);
  v14 = (v13 + result);
  if (__CFADD__(v13, result))
  {
    goto LABEL_33;
  }

  *(v1 + 20) = v14;
  v15 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v41 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), v14);
    if (v17)
    {
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v14);
    }

    v19 = result;
    v20 = *(v1 + 20);
    LODWORD(v14) = v20 + result;
    if (__CFADD__(v20, result))
    {
      goto LABEL_41;
    }

    *(v1 + 20) = v14;
  }

  else
  {
    v19 = 0;
  }

  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), v14);
  if (v21)
  {
    v22._countAndFlagsBits = 40;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v14);
  }

  v23 = *(v1 + 20);
  v24 = __CFADD__(v23, result);
  v25 = v23 + result;
  if (v24)
  {
    goto LABEL_35;
  }

  *(v1 + 20) = v25;
  v26 = v19 + result;
  if (__OFADD__(v19, result))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  __chkstk_darwin(result);
  v40[2] = sub_1003F5FB4;
  v40[3] = 0;
  v40[4] = v2;
  v40[5] = &v41;
  v40[6] = 32;
  v40[7] = 0xE100000000000000;
  result = sub_10045948C(0, sub_1003E73E4, v40, a1);
  v27 = v26 + result;
  if (__OFADD__(v26, result))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v28 = *(v2 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v29)
  {
    v30._countAndFlagsBits = 41;
    v30._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v30, v28);
  }

  v31 = *(v2 + 20);
  v32 = (v31 + result);
  if (__CFADD__(v31, result))
  {
    goto LABEL_38;
  }

  *(v2 + 20) = v32;
  v33 = __OFADD__(v27, result);
  v34 = v27 + result;
  if (v33)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v16)
  {
    v39 = v34;
    goto LABEL_28;
  }

  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), v32);
  if (v35)
  {
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v36, v32);
  }

  v37 = *(v2 + 20);
  v24 = __CFADD__(v37, result);
  v38 = v37 + result;
  if (v24)
  {
    goto LABEL_42;
  }

  *(v2 + 20) = v38;
  v39 = v34 + result;
  if (__OFADD__(v34, result))
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_28:
  result = v15 + v39;
  if (__OFADD__(v15, v39))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  return result;
}

uint64_t sub_10044B1F4(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 20);
  result = sub_1002F178C(0x57454956455250, 0xE700000000000000, (v2 + 8), *(v2 + 20));
  if (v8)
  {
    v9._countAndFlagsBits = 0x57454956455250;
    v9._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = result;
  v11 = *(v2 + 20);
  v12 = (v11 + result);
  if (__CFADD__(v11, result))
  {
    goto LABEL_17;
  }

  *(v2 + 20) = v12;
  result = sub_1002F178C(32, 0xE100000000000000, (v2 + 8), v12);
  if (v13)
  {
    v14._countAndFlagsBits = 32;
    v14._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v12);
  }

  v15 = *(v2 + 20);
  v16 = (v15 + result);
  if (__CFADD__(v15, result))
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v16;
  v17 = __OFADD__(v10, result);
  v18 = v10 + result;
  if (v17)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (a2)
  {

    v19 = sub_100441B60(a1, a2);

    result = v18 + v19;
    if (!__OFADD__(v18, v19))
    {
      return result;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_1002F178C(4999502, 0xE300000000000000, (v2 + 8), v16);
  if (v20)
  {
    v21._countAndFlagsBits = 4999502;
    v21._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v16);
  }

  v22 = result;
  v23 = *(v3 + 20);
  v24 = __CFADD__(v23, result);
  v25 = v23 + result;
  if (v24)
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v25;
  result += v18;
  if (__OFADD__(v18, v22))
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10044B36C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + 20);
  result = sub_1002F178C(0x2044494C49414D45, 0xE900000000000028, (v2 + 8), *(v2 + 20));
  if (v8)
  {
    v9._countAndFlagsBits = 0x2044494C49414D45;
    v9._object = 0xE900000000000028;
    result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = result;
  v11 = *(v2 + 20);
  v12 = (v11 + result);
  if (__CFADD__(v11, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v12;

  v13 = sub_1002F178C(a1, a2, (v2 + 8), v12);
  if (v14)
  {
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = v13;

  v17 = *(v3 + 20);
  v18 = (v17 + v16);
  if (__CFADD__(v17, v16))
  {
    goto LABEL_14;
  }

  *(v3 + 20) = v18;
  v19 = __OFADD__(v10, v16);
  v20 = v10 + v16;
  if (v19)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1002F178C(41, 0xE100000000000000, (v3 + 8), v17 + v16);
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v18);
  }

  v23 = *(v3 + 20);
  v24 = __CFADD__(v23, result);
  v25 = v23 + result;
  if (v24)
  {
    goto LABEL_16;
  }

  *(v3 + 20) = v25;
  v19 = __OFADD__(v20, result);
  result += v20;
  if (v19)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_10044B4C4(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = 0x4449444145524854;
  if (!a2)
  {
    goto LABEL_15;
  }

  v7 = *(v2 + 20);
  result = sub_1002F178C(0x4449444145524854, 0xEA00000000002820, (v2 + 8), *(v2 + 20));
  if (v9)
  {
    v10._countAndFlagsBits = 0x4449444145524854;
    v10._object = 0xEA00000000002820;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v2 + 20);
  v4 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v2 + 20) = v4;

  v13 = sub_1002F178C(a1, a2, (v2 + 8), v4);
  if (v14)
  {
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v4);
  }

  v16 = v13;

  v17 = *(v3 + 20);
  v18 = (v17 + v16);
  if (__CFADD__(v17, v16))
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v18;
  v19 = v11 + v16;
  if (__OFADD__(v11, v16))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  result = sub_1002F178C(41, 0xE100000000000000, (v3 + 8), v17 + v16);
  if (v20)
  {
    v21._countAndFlagsBits = 41;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v18);
  }

  v22 = *(v3 + 20);
  v23 = __CFADD__(v22, result);
  v24 = v22 + result;
  if (v23)
  {
    goto LABEL_22;
  }

  *(v3 + 20) = v24;
  v25 = __OFADD__(v19, result);
  result += v19;
  if (v25)
  {
    __break(1u);
LABEL_15:
    v26 = *(v3 + 20);
    result = sub_1002F178C(v4, 0xEC0000004C494E20, (v3 + 8), *(v3 + 20));
    if (v27)
    {
      v28._countAndFlagsBits = v4;
      v28._object = 0xEC0000004C494E20;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
    }

    v29 = *(v3 + 20);
    v23 = __CFADD__(v29, result);
    v30 = v29 + result;
    if (!v23)
    {
      *(v3 + 20) = v30;
      return result;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t _s12NIOIMAPCore216MessageAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v241[3] = a1[3];
  v241[2] = v5;
  v241[1] = v4;
  v241[0] = v3;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v241[7] = a1[7];
  v241[6] = v8;
  v241[5] = v7;
  v241[4] = v6;
  v9 = a1[8];
  v10 = a1[9];
  v11 = a1[10];
  v242 = *(a1 + 88);
  v241[10] = v11;
  v241[9] = v10;
  v241[8] = v9;
  switch(sub_10030445C(v241))
  {
    case 1u:
      v80 = sub_100304468(v241);
      v81 = *(v80 + 64);
      v222 = *(v80 + 80);
      v223 = *(v80 + 96);
      *&v224 = *(v80 + 112);
      v82 = *(v80 + 16);
      v217 = *v80;
      v218 = v82;
      v83 = *(v80 + 48);
      v219 = *(v80 + 32);
      v220 = v83;
      v221 = v81;
      v84 = a2[9];
      v237 = a2[8];
      v238 = v84;
      v239 = a2[10];
      v240 = *(a2 + 88);
      v85 = a2[5];
      v233 = a2[4];
      v234 = v85;
      v86 = a2[7];
      v235 = a2[6];
      v236 = v86;
      v87 = a2[1];
      v229 = *a2;
      v230 = v87;
      v88 = a2[3];
      v231 = a2[2];
      v232 = v88;
      if (sub_10030445C(&v229) != 1)
      {
        goto LABEL_51;
      }

      v89 = sub_100304468(&v229);
      v209 = *(v89 + 64);
      v210 = *(v89 + 80);
      v211 = *(v89 + 96);
      *&v212 = *(v89 + 112);
      v205 = *v89;
      v206 = *(v89 + 16);
      v207 = *(v89 + 32);
      v208 = *(v89 + 48);
      v20 = _s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v217.i64, &v205);
      return v20 & 1;
    case 2u:
      v37 = *sub_100304468(v241);
      v58 = a2[2];
      v232 = a2[3];
      v231 = v58;
      v59 = *a2;
      v230 = a2[1];
      v229 = v59;
      v60 = a2[6];
      v236 = a2[7];
      v235 = v60;
      v61 = a2[4];
      v234 = a2[5];
      v233 = v61;
      v240 = *(a2 + 88);
      v62 = a2[9];
      v239 = a2[10];
      v63 = a2[8];
      v238 = v62;
      v237 = v63;
      if (sub_10030445C(&v229) == 2)
      {
        goto LABEL_44;
      }

      goto LABEL_51;
    case 3u:
      v64 = *sub_100304468(v241);
      v65 = a2[2];
      v232 = a2[3];
      v231 = v65;
      v66 = *a2;
      v230 = a2[1];
      v229 = v66;
      v67 = a2[6];
      v236 = a2[7];
      v235 = v67;
      v68 = a2[4];
      v234 = a2[5];
      v233 = v68;
      v240 = *(a2 + 88);
      v69 = a2[9];
      v239 = a2[10];
      v70 = a2[8];
      v238 = v69;
      v237 = v70;
      if (sub_10030445C(&v229) != 3)
      {
        goto LABEL_51;
      }

      v20 = *sub_100304468(&v229) == v64;
      return v20 & 1;
    case 4u:
      v37 = *sub_100304468(v241);
      v38 = a2[2];
      v232 = a2[3];
      v231 = v38;
      v39 = *a2;
      v230 = a2[1];
      v229 = v39;
      v40 = a2[6];
      v236 = a2[7];
      v235 = v40;
      v41 = a2[4];
      v234 = a2[5];
      v233 = v41;
      v240 = *(a2 + 88);
      v42 = a2[9];
      v239 = a2[10];
      v43 = a2[8];
      v238 = v42;
      v237 = v43;
      if (sub_10030445C(&v229) != 4)
      {
        goto LABEL_51;
      }

      goto LABEL_44;
    case 5u:
      v90 = sub_100304468(v241);
      v91 = *(v90 + 144);
      v225 = *(v90 + 128);
      v226 = v91;
      v227 = *(v90 + 160);
      v228 = *(v90 + 176);
      v92 = *(v90 + 64);
      v222 = *(v90 + 80);
      v93 = *(v90 + 112);
      v223 = *(v90 + 96);
      v224 = v93;
      v94 = *(v90 + 16);
      v217 = *v90;
      v218 = v94;
      v95 = *(v90 + 48);
      v219 = *(v90 + 32);
      v220 = v95;
      v221 = v92;
      v96 = *(v90 + 177);
      v97 = a2[9];
      v239 = a2[10];
      v98 = a2[8];
      v238 = v97;
      v237 = v98;
      v99 = a2[6];
      v236 = a2[7];
      v235 = v99;
      v100 = a2[4];
      v234 = a2[5];
      v233 = v100;
      v101 = a2[2];
      v232 = a2[3];
      v231 = v101;
      v102 = *a2;
      v230 = a2[1];
      v229 = v102;
      v240 = *(a2 + 88);
      if (sub_10030445C(&v229) != 5)
      {
        goto LABEL_51;
      }

      v103 = sub_100304468(&v229);
      v104 = *(v103 + 144);
      v201 = *(v103 + 128);
      v202 = v104;
      v203 = *(v103 + 160);
      v204 = *(v103 + 176);
      v105 = *(v103 + 80);
      v197 = *(v103 + 64);
      v198 = v105;
      v106 = *(v103 + 112);
      v199 = *(v103 + 96);
      v200 = v106;
      v107 = *(v103 + 16);
      v193 = *v103;
      v194 = v107;
      v108 = *(v103 + 48);
      v195 = *(v103 + 32);
      v196 = v108;
      v109 = *(v103 + 177);
      v216 = v228;
      v214 = v226;
      v215 = v227;
      v212 = v224;
      v213 = v225;
      v210 = v222;
      v211 = v223;
      v208 = v220;
      v209 = v221;
      v206 = v218;
      v207 = v219;
      v205 = v217;
      if (sub_10000FE74(&v205) == 1)
      {
        v189 = v201;
        v190 = v202;
        v191 = v203;
        v192 = v204;
        v185 = v197;
        v186 = v198;
        v187 = v199;
        v188 = v200;
        v181 = v193;
        v182 = v194;
        v183 = v195;
        v184 = v196;
        if (sub_10000FE74(&v181) != 1)
        {
          goto LABEL_51;
        }

        goto LABEL_30;
      }

      v189 = v201;
      v190 = v202;
      v191 = v203;
      v192 = v204;
      v185 = v197;
      v186 = v198;
      v187 = v199;
      v188 = v200;
      v181 = v193;
      v182 = v194;
      v183 = v195;
      v184 = v196;
      if (sub_10000FE74(&v181) == 1)
      {
        goto LABEL_51;
      }

      v179[8] = v213;
      v179[9] = v214;
      v179[10] = v215;
      v180 = v216;
      v179[4] = v209;
      v179[5] = v210;
      v179[6] = v211;
      v179[7] = v212;
      v179[0] = v205;
      v179[1] = v206;
      v179[2] = v207;
      v179[3] = v208;
      if (sub_10000FE88(v179) == 1)
      {
        v147 = UInt32.init(_:)(v179);
        v148 = *(v147 + 80);
        v247 = *(v147 + 64);
        v248 = v148;
        v249 = *(v147 + 96);
        *&v250 = *(v147 + 112);
        v149 = *(v147 + 16);
        v243 = *v147;
        v244 = v149;
        v150 = *(v147 + 48);
        v245 = *(v147 + 32);
        v246 = v150;
        v175 = v189;
        v176 = v190;
        v177 = v191;
        v178 = v192;
        v171 = v185;
        v172 = v186;
        v173 = v187;
        v174 = v188;
        v167 = v181;
        v168 = v182;
        v169 = v183;
        v170 = v184;
        if (sub_10000FE88(&v167) == 1)
        {
          v151 = UInt32.init(_:)(&v167);
          v152 = *(v151 + 80);
          v258 = *(v151 + 64);
          v259 = v152;
          v260 = *(v151 + 96);
          *&v261 = *(v151 + 112);
          v153 = *(v151 + 16);
          v254 = *v151;
          v255 = v153;
          v154 = *(v151 + 48);
          v256 = *(v151 + 32);
          v257 = v154;
          if (!_s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(&v243, &v254))
          {
            goto LABEL_51;
          }

LABEL_30:
          v20 = v96 ^ v109 ^ 1;
          return v20 & 1;
        }
      }

      else
      {
        v155 = UInt32.init(_:)(v179);
        v156 = v155[9];
        v251 = v155[8];
        v252 = v156;
        v253 = v155[10];
        v157 = v155[5];
        v247 = v155[4];
        v248 = v157;
        v158 = v155[6];
        v250 = v155[7];
        v249 = v158;
        v159 = v155[1];
        v243 = *v155;
        v244 = v159;
        v160 = v155[2];
        v246 = v155[3];
        v245 = v160;
        v178 = v192;
        v176 = v190;
        v177 = v191;
        v174 = v188;
        v175 = v189;
        v172 = v186;
        v173 = v187;
        v170 = v184;
        v171 = v185;
        v168 = v182;
        v169 = v183;
        v167 = v181;
        if (sub_10000FE88(&v167) != 1)
        {
          v161 = UInt32.init(_:)(&v167);
          v162 = v161[9];
          v262 = v161[8];
          v263 = v162;
          v264 = v161[10];
          v163 = v161[5];
          v258 = v161[4];
          v259 = v163;
          v164 = v161[7];
          v260 = v161[6];
          v261 = v164;
          v165 = v161[1];
          v254 = *v161;
          v255 = v165;
          v166 = v161[3];
          v256 = v161[2];
          v257 = v166;
          if (!static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v243, &v254))
          {
            goto LABEL_51;
          }

          goto LABEL_30;
        }
      }

      UInt32.init(_:)(&v167);
LABEL_51:
      v20 = 0;
      return v20 & 1;
    case 6u:
      v119 = sub_100304468(v241);
      v121 = *v119;
      v120 = v119[1];
      v122 = a2[9];
      v237 = a2[8];
      v238 = v122;
      v239 = a2[10];
      v240 = *(a2 + 88);
      v123 = a2[5];
      v233 = a2[4];
      v234 = v123;
      v124 = a2[7];
      v235 = a2[6];
      v236 = v124;
      v125 = a2[1];
      v229 = *a2;
      v230 = v125;
      v126 = a2[3];
      v231 = a2[2];
      v232 = v126;
      if (sub_10030445C(&v229) != 6)
      {
        goto LABEL_51;
      }

      v127 = sub_100304468(&v229);
      v128 = *v127;
      v129 = *(v121 + 16);
      if (v129 != *(*v127 + 16))
      {
        goto LABEL_51;
      }

      if (!v129 || v121 == v128)
      {
        goto LABEL_42;
      }

      v130 = (v121 + 32);
      v131 = (v128 + 32);
      while (*v130 == *v131)
      {
        ++v130;
        ++v131;
        if (!--v129)
        {
LABEL_42:
          v20 = v120 == v127[1];
          return v20 & 1;
        }
      }

      goto LABEL_51;
    case 7u:
      v71 = sub_100304468(v241);
      v72 = *(v71 + 16);
      v217 = *v71;
      v218 = v72;
      LOBYTE(v219) = *(v71 + 32);
      v73 = a2[2];
      v232 = a2[3];
      v231 = v73;
      v74 = *a2;
      v230 = a2[1];
      v229 = v74;
      v75 = a2[6];
      v236 = a2[7];
      v235 = v75;
      v76 = a2[4];
      v234 = a2[5];
      v233 = v76;
      v240 = *(a2 + 88);
      v77 = a2[9];
      v239 = a2[10];
      v78 = a2[8];
      v238 = v77;
      v237 = v78;
      if (sub_10030445C(&v229) != 7)
      {
        goto LABEL_51;
      }

      v79 = sub_100304468(&v229);
      v205 = *v79;
      v206 = *(v79 + 16);
      LOBYTE(v207) = *(v79 + 32);
      v20 = _s12NIOIMAPCore213StreamingKindO21__derived_enum_equalsySbAC_ACtFZ_0(v217.i64, &v205);
      return v20 & 1;
    case 8u:
      v138 = *sub_100304468(v241);
      v139 = a2[2];
      v232 = a2[3];
      v231 = v139;
      v140 = *a2;
      v230 = a2[1];
      v229 = v140;
      v141 = a2[6];
      v236 = a2[7];
      v235 = v141;
      v142 = a2[4];
      v234 = a2[5];
      v233 = v142;
      v240 = *(a2 + 88);
      v143 = a2[9];
      v239 = a2[10];
      v144 = a2[8];
      v238 = v143;
      v237 = v144;
      if (sub_10030445C(&v229) != 8)
      {
        goto LABEL_51;
      }

      v145 = *sub_100304468(&v229);
      if ((v145 | v138) < 0)
      {
        __break(1u);
        JUMPOUT(0x10044C2ECLL);
      }

      v20 = v145 == v138;
      return v20 & 1;
    case 9u:
      v37 = *sub_100304468(v241);
      v52 = a2[2];
      v232 = a2[3];
      v231 = v52;
      v53 = *a2;
      v230 = a2[1];
      v229 = v53;
      v54 = a2[6];
      v236 = a2[7];
      v235 = v54;
      v55 = a2[4];
      v234 = a2[5];
      v233 = v55;
      v240 = *(a2 + 88);
      v56 = a2[9];
      v239 = a2[10];
      v57 = a2[8];
      v238 = v56;
      v237 = v57;
      if (sub_10030445C(&v229) != 9)
      {
        goto LABEL_51;
      }

      goto LABEL_44;
    case 0xAu:
      v37 = *sub_100304468(v241);
      v132 = a2[2];
      v232 = a2[3];
      v231 = v132;
      v133 = *a2;
      v230 = a2[1];
      v229 = v133;
      v134 = a2[6];
      v236 = a2[7];
      v235 = v134;
      v135 = a2[4];
      v234 = a2[5];
      v233 = v135;
      v240 = *(a2 + 88);
      v136 = a2[9];
      v239 = a2[10];
      v137 = a2[8];
      v238 = v136;
      v237 = v137;
      if (sub_10030445C(&v229) != 10)
      {
        goto LABEL_51;
      }

LABEL_44:
      v20 = v37 == *sub_100304468(&v229);
      return v20 & 1;
    case 0xBu:
      v29 = *sub_100304468(v241);
      v30 = a2[2];
      v232 = a2[3];
      v231 = v30;
      v31 = *a2;
      v230 = a2[1];
      v229 = v31;
      v32 = a2[6];
      v236 = a2[7];
      v235 = v32;
      v33 = a2[4];
      v234 = a2[5];
      v233 = v33;
      v240 = *(a2 + 88);
      v34 = a2[9];
      v239 = a2[10];
      v35 = a2[8];
      v238 = v34;
      v237 = v35;
      if (sub_10030445C(&v229) != 11)
      {
        goto LABEL_51;
      }

      v36 = sub_100304468(&v229);
      v20 = sub_1003A370C(v29, *v36);
      return v20 & 1;
    case 0xCu:
      v44 = sub_100304468(v241);
      v23 = *v44;
      v22 = v44[1];
      v45 = a2[9];
      v237 = a2[8];
      v238 = v45;
      v239 = a2[10];
      v240 = *(a2 + 88);
      v46 = a2[5];
      v233 = a2[4];
      v234 = v46;
      v47 = a2[7];
      v235 = a2[6];
      v236 = v47;
      v48 = a2[1];
      v229 = *a2;
      v230 = v48;
      v49 = a2[3];
      v231 = a2[2];
      v232 = v49;
      if (sub_10030445C(&v229) == 12)
      {
        goto LABEL_11;
      }

      goto LABEL_51;
    case 0xDu:
      v110 = sub_100304468(v241);
      v111 = *v110;
      v112 = v110[1];
      v113 = a2[9];
      v237 = a2[8];
      v238 = v113;
      v239 = a2[10];
      v240 = *(a2 + 88);
      v114 = a2[5];
      v233 = a2[4];
      v234 = v114;
      v115 = a2[7];
      v235 = a2[6];
      v236 = v115;
      v116 = a2[1];
      v229 = *a2;
      v230 = v116;
      v117 = a2[3];
      v231 = a2[2];
      v232 = v117;
      if (sub_10030445C(&v229) != 13)
      {
        goto LABEL_51;
      }

      v118 = sub_100304468(&v229);
      if (v111 == *v118 && v112 == v118[1])
      {
        goto LABEL_49;
      }

      v20 = sub_1004A6D34();
      return v20 & 1;
    case 0xEu:
      v21 = sub_100304468(v241);
      v23 = *v21;
      v22 = v21[1];
      v24 = a2[9];
      v237 = a2[8];
      v238 = v24;
      v239 = a2[10];
      v240 = *(a2 + 88);
      v25 = a2[5];
      v233 = a2[4];
      v234 = v25;
      v26 = a2[7];
      v235 = a2[6];
      v236 = v26;
      v27 = a2[1];
      v229 = *a2;
      v230 = v27;
      v28 = a2[3];
      v231 = a2[2];
      v232 = v28;
      if (sub_10030445C(&v229) != 14)
      {
        goto LABEL_51;
      }

LABEL_11:
      v50 = sub_100304468(&v229);
      v51 = v50[1];
      if (v22)
      {
        if (!v51 || (v23 != *v50 || v22 != v51) && (sub_1004A6D34() & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else if (v51)
      {
        goto LABEL_51;
      }

LABEL_49:
      v20 = 1;
      return v20 & 1;
    default:
      v12 = *sub_100304468(v241);
      v13 = a2[2];
      v232 = a2[3];
      v231 = v13;
      v14 = *a2;
      v230 = a2[1];
      v229 = v14;
      v15 = a2[6];
      v236 = a2[7];
      v235 = v15;
      v16 = a2[4];
      v234 = a2[5];
      v233 = v16;
      v240 = *(a2 + 88);
      v17 = a2[9];
      v239 = a2[10];
      v18 = a2[8];
      v238 = v17;
      v237 = v18;
      if (sub_10030445C(&v229))
      {
        goto LABEL_51;
      }

      v19 = sub_100304468(&v229);
      v20 = sub_10010321C(v12, *v19);
      return v20 & 1;
  }
}

unint64_t sub_10044C32C()
{
  result = qword_1005DCB90;
  if (!qword_1005DCB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB90);
  }

  return result;
}

uint64_t sub_10044C380(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x72 && *(a1 + 178))
  {
    return (*a1 + 114);
  }

  v3 = ((*(a1 + 176) >> 5) & 0x70 | (*(a1 + 176) >> 12)) ^ 0x7F;
  if (v3 >= 0x71)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10044C3D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x71)
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
    *result = a2 - 114;
    if (a3 >= 0x72)
    {
      *(result + 178) = 1;
    }
  }

  else
  {
    if (a3 >= 0x72)
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
      *(result + 176) = (((-a2 >> 4) & 7) - 8 * a2) << 9;
    }
  }

  return result;
}

void MessageData.hash(into:)()
{
  v1 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v36 - v3;
  v5 = type metadata accessor for MessageData();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10044D504(v0, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = *v8;
      sub_1004A6EB4(0);
      sub_1004A6EE4(v19);
      return;
    }

    sub_100020950(v8, v4);
    v20 = 1;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100020950(v8, v4);
    v20 = 2;
LABEL_19:
    sub_1004A6EB4(v20);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    sub_1000956A0();
    sub_1004A5564();
    sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
    return;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v10 = *v8;
    sub_1004A6EB4(3uLL);
    sub_1004A6EB4(*(v10 + 16));
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = (v10 + 54);
      do
      {
        v13 = *(v12 - 22);
        v14 = *(v12 - 14);
        v15 = *(v12 - 10);
        v16 = *(v12 - 1);
        v17 = *v12;
        v12 += 24;
        swift_beginAccess();
        v18 = *(v13 + 24) + (v17 | (v16 << 8));
        sub_1004A6EA4();
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v21 = *v8;
    sub_1004A6EB4(4uLL);
    sub_1004A6EB4(*(v21 + 16));
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = 0;
      v36 = v21;
      do
      {
        v26 = v21 + v23;
        v27 = *(v21 + v23 + 32);
        v28 = *(v21 + v23 + 40);
        v29 = *(v26 + 44);
        v30 = *(v26 + 52);
        v31 = *(v26 + 54);
        v33 = *(v26 + 56);
        v32 = *(v26 + 64);
        v37 = *(v26 + 78);
        v34 = *(v26 + 76);
        v38 = *(v26 + 72);
        v39 = v32;
        swift_beginAccess();
        v35 = *(v27 + 24) + (v31 | (v30 << 8));
        sub_1004A6EA4();
        if (v33)
        {
          v24 = v38 | ((v34 | (v37 << 16)) << 32);
          sub_1004A6EC4(1u);
          swift_beginAccess();
          v25 = *(v33 + 24) + ((v24 >> 24) & 0xFFFF00 | BYTE6(v24));
          sub_1004A6EA4();
        }

        else
        {
          sub_1004A6EC4(0);
        }

        v23 += 48;
        --v22;
        v21 = v36;
      }

      while (v22);
    }
  }
}

Swift::Int MessageData.hashValue.getter()
{
  sub_1004A6E94();
  MessageData.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_10044C7E4()
{
  sub_1004A6E94();
  MessageData.hash(into:)();
  return sub_1004A6F14();
}

uint64_t sub_10044C820(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v90 - v9;
  v11 = type metadata accessor for MessageData();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10044D504(a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v20 = 0x44454853494E4156;
      sub_100020950(v14, v10);
      v58 = *(v2 + 20);
      result = sub_1002F178C(0x44454853494E4156, 0xE900000000000020, (v2 + 8), *(v2 + 20));
      if (v59)
      {
        v60._countAndFlagsBits = 0x44454853494E4156;
        v60._object = 0xE900000000000020;
        result = ByteBuffer._setStringSlowpath(_:at:)(v60, v58);
      }

      v61 = result;
      v62 = *(v2 + 20);
      v27 = __CFADD__(v62, result);
      v63 = v62 + result;
      if (v27)
      {
        goto LABEL_77;
      }

      *(v2 + 20) = v63;
      v2 = sub_10048E5D0(v2);
      sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
      result = v61 + v2;
      if (!__OFADD__(v61, v2))
      {
        return result;
      }

      __break(1u);
      goto LABEL_42;
    }

    LODWORD(v90[0]) = *v14;
    v14 = v90;
    v29 = sub_1004A6CE4();
    v31 = v30;
    v32 = *(v2 + 20);
    v33 = sub_1002F178C(v29, v30, (v2 + 8), *(v2 + 20));
    if (v34)
    {
      v14 = (v2 + 8);
      v35._countAndFlagsBits = v29;
      v35._object = v31;
      v33 = ByteBuffer._setStringSlowpath(_:at:)(v35, v32);
    }

    v8 = v33;

    v36 = *(v2 + 20);
    v37 = (v36 + v8);
    if (__CFADD__(v36, v8))
    {
      goto LABEL_76;
    }

    *(v2 + 20) = v37;
    result = sub_1002F178C(0x45474E5550584520, 0xE800000000000000, (v2 + 8), v36 + v8);
    if (v38)
    {
      v14 = (v2 + 8);
      v39._countAndFlagsBits = 0x45474E5550584520;
      v39._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v39, v37);
    }

    v40 = *(v2 + 20);
    v27 = __CFADD__(v40, result);
    v41 = v40 + result;
    if (v27)
    {
      goto LABEL_78;
    }

    *(v2 + 20) = v41;
    v42 = __OFADD__(v8, result);
    result += v8;
    if (!v42)
    {
      return result;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_22:
    sub_100020950(v14, v8);
    v43 = *(v2 + 20);
    result = sub_1002F178C(0xD000000000000013, 0x80000001004B09F0, (v2 + 8), *(v2 + 20));
    if (v44)
    {
      v45._object = 0x80000001004B09F0;
      v45._countAndFlagsBits = 0xD000000000000013;
      result = ByteBuffer._setStringSlowpath(_:at:)(v45, v43);
    }

    v46 = result;
    v47 = *(v2 + 20);
    v27 = __CFADD__(v47, result);
    v48 = v47 + result;
    if (v27)
    {
      goto LABEL_73;
    }

    *(v2 + 20) = v48;
    v14 = v8;
    v2 = sub_10048E5D0(v2);
    sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
    result = v46 + v2;
    if (!__OFADD__(v46, v2))
    {
      return result;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v10 = *v14;
    v16 = *(v2 + 20);
    result = sub_1002F178C(0x55414C52554E4547, 0xEA00000000004854, (v2 + 8), *(v2 + 20));
    if (v18)
    {
      v19._countAndFlagsBits = 0x55414C52554E4547;
      v19._object = 0xEA00000000004854;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
    }

    v20 = result;
    v21 = *(v2 + 20);
    v22 = (v21 + result);
    if (__CFADD__(v21, result))
    {
      goto LABEL_74;
    }

    *(v2 + 20) = v22;
    v90[0] = v10;
    if (*(v10 + 2))
    {
      result = sub_1002F178C(32, 0xE100000000000000, (v2 + 8), v22);
      if (v23)
      {
        v24._countAndFlagsBits = 32;
        v24._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
      }

      v25 = result;
      v26 = *(v2 + 20);
      v27 = __CFADD__(v26, result);
      v28 = v26 + result;
      if (v27)
      {
        goto LABEL_86;
      }

      *(v2 + 20) = v28;
      goto LABEL_43;
    }

LABEL_42:
    v25 = 0;
LABEL_43:
    __chkstk_darwin(result);
    v90[-6] = sub_10044CF7C;
    v90[-5] = 0;
    v90[-4] = v2;
    v90[-3] = v90;
    v90[-2] = 32;
    v90[-1] = 0xE100000000000000;
    result = sub_1004520C0(0, sub_10044D69C, &v90[-8], v10);
    v53 = v25 + result;
    if (__OFADD__(v25, result))
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (*(v10 + 2))
    {
      v64 = *(v2 + 20);
      v65 = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
      if (v66)
      {
        v67._countAndFlagsBits = 0;
        v67._object = 0xE000000000000000;
        v65 = ByteBuffer._setStringSlowpath(_:at:)(v67, v64);
      }

      v68 = v65;

      v69 = *(v2 + 20);
      v27 = __CFADD__(v69, v68);
      v70 = v69 + v68;
      if (v27)
      {
        goto LABEL_88;
      }

      *(v2 + 20) = v70;
      v71 = v53 + v68;
      if (__OFADD__(v53, v68))
      {
        __break(1u);
        goto LABEL_71;
      }
    }

    else
    {

      v71 = v53;
    }

    result = v20 + v71;
    if (!__OFADD__(v20, v71))
    {
      return result;
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_28:
  v10 = *v14;
  v49 = *(v2 + 20);
  result = sub_1002F178C(0x48435445464C5255, 0xE800000000000000, (v2 + 8), *(v2 + 20));
  if (v50)
  {
    v51._countAndFlagsBits = 0x48435445464C5255;
    v51._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v51, v49);
  }

  v20 = result;
  v52 = *(v2 + 20);
  v53 = (v52 + result);
  if (__CFADD__(v52, result))
  {
    goto LABEL_75;
  }

  *(v2 + 20) = v53;
  v90[0] = v10;
  if (!*(v10 + 2))
  {
LABEL_52:
    v56 = 0;
    goto LABEL_53;
  }

  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), v53);
  if (v54)
  {
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v55, v53);
  }

  v56 = result;
  v57 = *(v2 + 20);
  LODWORD(v53) = v57 + result;
  if (__CFADD__(v57, result))
  {
    goto LABEL_87;
  }

  *(v2 + 20) = v53;
LABEL_53:
  result = sub_1002F178C(40, 0xE100000000000000, (v2 + 8), v53);
  if (v72)
  {
    v73._countAndFlagsBits = 40;
    v73._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v73, v53);
  }

  v74 = *(v2 + 20);
  v27 = __CFADD__(v74, result);
  v75 = v74 + result;
  if (v27)
  {
    goto LABEL_80;
  }

  *(v2 + 20) = v75;
  v76 = v56 + result;
  if (__OFADD__(v56, result))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  __chkstk_darwin(result);
  v90[-6] = sub_10044CFBC;
  v90[-5] = 0;
  v90[-4] = v2;
  v90[-3] = v90;
  v90[-2] = 32;
  v90[-1] = 0xE100000000000000;
  result = sub_10045318C(0, sub_10044D678, &v90[-8], v10);
  v77 = v76 + result;
  if (__OFADD__(v76, result))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v78 = *(v2 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v79)
  {
    v80._countAndFlagsBits = 41;
    v80._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v80, v78);
  }

  v81 = *(v2 + 20);
  v82 = (v81 + result);
  if (__CFADD__(v81, result))
  {
    goto LABEL_83;
  }

  *(v2 + 20) = v82;
  v42 = __OFADD__(v77, result);
  v53 = v77 + result;
  if (v42)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (!*(v10 + 2))
  {
LABEL_71:

    v89 = v53;
    goto LABEL_67;
  }

  v83 = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), v82);
  if (v84)
  {
    v85._countAndFlagsBits = 0;
    v85._object = 0xE000000000000000;
    v83 = ByteBuffer._setStringSlowpath(_:at:)(v85, v82);
  }

  v86 = v83;

  v87 = *(v2 + 20);
  v27 = __CFADD__(v87, v86);
  v88 = v87 + v86;
  if (v27)
  {
    goto LABEL_89;
  }

  *(v2 + 20) = v88;
  v89 = v53 + v86;
  if (__OFADD__(v53, v86))
  {
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
    goto LABEL_79;
  }

LABEL_67:
  result = v20 + v89;
  if (__OFADD__(v20, v89))
  {
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
  }

  return result;
}