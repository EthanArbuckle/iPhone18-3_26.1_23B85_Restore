uint64_t sub_1008C7664(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v54 = a1;
  v52 = a5;
  v53 = a4;
  v50 = sub_100936038();
  v6 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SenderKeyAndState(0);
  __chkstk_darwin(v49);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SenderKeyInfo(0);
  v10 = (a2 + *(v48 + 28));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[3];
  v56 = v10[2];
  sub_1008ED848(a2, v9, type metadata accessor for SenderKeyAndState);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v14 = sub_1009364B8();
  v15 = sub_100936F18();
  v55 = v13;

  v16 = os_log_type_enabled(v14, v15);
  v46 = v12;
  v47 = v11;
  if (v16)
  {
    v17 = swift_slowAlloc();
    LODWORD(v44) = v15;
    v18 = v17;
    v45 = swift_slowAlloc();
    v57 = v45;
    *v18 = 136315650;
    v19 = v6;
    v20 = sub_100935E08();
    v22 = v21;
    sub_1008ED8B0(v9, type metadata accessor for SenderKeyAndState);
    v23 = v20;
    v6 = v19;
    v24 = sub_10001273C(v23, v22, &v57);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10001273C(v11, v12, &v57);
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_10001273C(v56, v55, &v57);
    _os_log_impl(&_mh_execute_header, v14, v44, "Saving received sender key and state with keyID: %s senderURI: %s receiverURI: %s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1008ED8B0(v9, type metadata accessor for SenderKeyAndState);
  }

  v25 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  v27 = a2[3];
  v44 = a2[2];
  v26 = v44;
  v45 = v25;
  v29 = a2[1];
  v42 = *a2;
  v28 = v42;
  v43 = v27;
  v41 = v29;
  v30 = v51;
  (*(v6 + 16))(v51, a2 + *(v48 + 24), v50);
  v31 = (a2 + *(v49 + 20));
  v32 = *v31;
  v33 = v31[1];
  sub_100715738(v26, v27);
  sub_100715738(v28, v29);
  v35 = v52;
  v34 = v53;
  sub_100715738(v53, v52);
  sub_100715738(v32, v33);
  v36 = sub_10001E2FC();
  v37 = sub_10001E2FC();
  LOBYTE(v26) = sub_10001E2FC();
  LOBYTE(v27) = sub_10001E2FC();
  v38 = sub_10001E2FC();
  sub_10075E86C(v44, v43, v42, v41, v47, v46, v56, v55, v34, v35, v30, v32, v33, v36 & 1, v37 & 1, v26 & 1, v27 & 1, v38 & 1);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936768();
  if (sub_1009366F8())
  {
    sub_100936708();
  }
}

uint64_t sub_1008C7AD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v12) = 1;
  v7[3] = a1;
  v7[4] = a2;
  v8 = a3;
  v9 = &v12;
  v10 = a4;
  v11 = a5;
  (*((swift_isaMask & *v5) + 0x118))(0, sub_1008ED6E8, v7);
  return v12;
}

void *sub_1008C7D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &_swiftEmptyArrayStorage;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = &v6;
  (*((swift_isaMask & *v3) + 0x118))(0, sub_1008ED81C, v5);
  return v6;
}

uint64_t sub_1008C7DB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, size_t *a6)
{
  v11 = sub_100936038();
  __chkstk_darwin(v11 - 8);
  v62 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SenderKeyInfo(0);
  __chkstk_darwin(v13 - 8);
  v61 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SenderKeyAndState(0);
  v60 = *(v15 - 8);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v55 - v19;
  v21 = [a5 prefixedURI];
  v22 = sub_100936B38();
  v24 = v23;

  v25 = sub_1008C24F4(a3, a4, v22, v24, a1);

  v26 = v25;
  if (!(v25 >> 62))
  {
    result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:
  }

  result = sub_1009373F8();
  v26 = v25;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (result >= 1)
  {
    v28 = 0;
    v55 = v26 & 0xC000000000000001;
    v56 = result;
    v58 = v18;
    v59 = a6;
    v57 = v26;
    do
    {
      if (v55)
      {
        sub_100937268();
      }

      else
      {
      }

      v29 = sub_10075A72C();
      v31 = v30;
      v32 = sub_10075A43C();
      v34 = v33;
      v35 = v62;
      sub_10075B2DC();
      v36 = sub_10075AA1C();
      v38 = v37;
      v39 = sub_10075AD04();
      v41 = nullsub_23(v36, v38, v39, v40);
      v42 = v61;
      sub_10078694C(v29, v31, v32, v34, v35, v41, v43, v44, v61, v45);
      v46 = sub_10075B6D4();
      sub_100780BD0(v42, v46, v47, v20);
      v48 = v58;
      sub_1008ED848(v20, v58, type metadata accessor for SenderKeyAndState);
      v49 = v59;
      v50 = *v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v49 = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v50 = sub_1008E40E0(0, v50[2] + 1, 1, v50, &qword_100CBAD68, &unk_1009BF040, type metadata accessor for SenderKeyAndState);
        *v49 = v50;
      }

      v53 = v50[2];
      v52 = v50[3];
      if (v53 >= v52 >> 1)
      {
        *v49 = sub_1008E40E0(v52 > 1, v53 + 1, 1, v50, &qword_100CBAD68, &unk_1009BF040, type metadata accessor for SenderKeyAndState);
      }

      ++v28;

      sub_1008ED8B0(v20, type metadata accessor for SenderKeyAndState);
      v54 = *v49;
      *(v54 + 16) = v53 + 1;
      sub_1008F24C4(v48, v54 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v53, type metadata accessor for SenderKeyAndState);
    }

    while (v56 != v28);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008C8270(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = &v5;
  (*((swift_isaMask & *v2) + 0x118))(0, sub_1008ED910, v4);
  return v5;
}

void sub_1008C8304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[0] = a4;
  v25[1] = a5;
  v8 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v8 - 8);
  v10 = v25 - v9;
  v11 = sub_100706B30(&qword_100CBA8D8);
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = v25 - v12;
  v14 = sub_100706B30(&qword_100CBA368);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v25 - v16;
  v28 = a2;
  v29 = a3;
  v30 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  (*(v15 + 16))(v10, v17, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936828();
  v18 = sub_1009366E8();
  if (v5)
  {
    (*(v26 + 8))(v13, v27);
    (*(v15 + 8))(v17, v14);
    swift_errorRetain();
    v19 = sub_1009364B8();
    v20 = sub_100936EF8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error fetching IDSQuerySDSenderKeyDistribution instance: %@", v21, 0xCu);
      sub_100013814(v22, &qword_100CB36B0);
    }

    else
    {
    }
  }

  else
  {
    v24 = v18;
    (*(v26 + 8))(v13, v27);
    (*(v15 + 8))(v17, v14);
    *v25[0] = v24 > 0;
  }
}

uint64_t sub_1008C8710@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v55 = a3;
  v49 = a2;
  v67 = a4;
  v5 = sub_100706B30(&qword_100CBA430);
  v6 = *(v5 - 8);
  v63 = v5;
  v64 = v6;
  __chkstk_darwin(v5);
  v60 = v46 - v7;
  v8 = sub_100706B30(&qword_100CBA6A0);
  v9 = *(v8 - 8);
  v61 = v8;
  v62 = v9;
  __chkstk_darwin(v8);
  v56 = v46 - v10;
  v11 = sub_100706B30(&qword_100CBA6A8);
  v12 = *(v11 - 8);
  v65 = v11;
  v66 = v12;
  __chkstk_darwin(v11);
  v59 = v46 - v13;
  v14 = sub_100706B30(&qword_100CBAD28);
  v15 = *(v14 - 8);
  v53 = v14;
  v54 = v15;
  __chkstk_darwin(v14);
  v17 = v46 - v16;
  v18 = sub_100706B30(&qword_100CBA6B0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v46 - v20;
  v22 = sub_100706B30(&qword_100CBA6B8);
  v23 = *(v22 - 8);
  v50 = v22;
  v51 = v23;
  __chkstk_darwin(v22);
  v25 = v46 - v24;
  v26 = sub_100706B30(&qword_100CBAD30);
  v27 = *(v26 - 8);
  v57 = v26;
  v58 = v27;
  __chkstk_darwin(v26);
  v52 = v46 - v28;
  v48 = *a1;
  sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v29 = *(v19 + 8);
  v46[1] = v19 + 8;
  v47 = v29;
  v29(v21, v18);
  v68 = v49;
  v69 = v55;
  v30 = v17;
  sub_100935D48();
  v55 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100014C88(&qword_100CBA6F0, &qword_100CBA6B8);
  sub_100014C88(&qword_100CBAD38, &qword_100CBAD28);
  sub_1008EFEF8();
  v31 = v50;
  v32 = v53;
  sub_100935C68();
  (*(v54 + 8))(v30, v32);
  (*(v51 + 8))(v25, v31);
  sub_100935D58();
  swift_getKeyPath();
  v33 = v56;
  sub_100935C78();

  v47(v21, v18);
  LOBYTE(v68) = 0;
  v34 = v60;
  sub_100935D48();
  sub_100014C88(&qword_100CBA708, &qword_100CBA6A0);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  v35 = v59;
  v36 = v34;
  v37 = v61;
  v38 = v63;
  sub_100935C68();
  (*(v64 + 8))(v36, v38);
  (*(v62 + 8))(v33, v37);
  v39 = sub_100706B30(&qword_100CBAD40);
  v40 = v67;
  v67[3] = v39;
  v40[4] = sub_1008F2534();
  sub_100014250(v40);
  sub_100014C88(&qword_100CBAD60, &qword_100CBAD30);
  sub_100014C88(&qword_100CBA720, &qword_100CBA6A8);
  v41 = v52;
  v42 = v35;
  v43 = v57;
  v44 = v65;
  sub_100935CF8();
  (*(v66 + 8))(v42, v44);
  return (*(v58 + 8))(v41, v43);
}

void *sub_1008C8EB8(uint64_t a1)
{
  v11 = &_swiftEmptyArrayStorage;
  v9[3] = a1;
  v9[4] = &v11;
  (*((swift_isaMask & *v1) + 0x118))(0, sub_1008ED930, v9);

  v3 = sub_1008ECC24(v2);

  v4 = *(v3 + 16);
  if (!v4)
  {

    return &_swiftEmptyArrayStorage;
  }

  v5 = sub_1007883E4(*(v3 + 16), 0);
  v6 = *(type metadata accessor for SenderKeyInfo(0) - 8);
  v7 = sub_10078FA7C(&v10, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v4, v3);
  result = sub_100308C6C();
  if (v7 == v4)
  {

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008C9020(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v39 = a4;
  v6 = sub_100936038();
  __chkstk_darwin(v6 - 8);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SenderKeyInfo(0);
  v44 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1008C1A64(a3, 1, a1);
  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1009373F8())
  {
    v14 = 0;
    v42 = v12 & 0xFFFFFFFFFFFFFF8;
    v43 = v12 & 0xC000000000000001;
    v15 = &_swiftEmptyArrayStorage;
    v40 = i;
    v41 = v12;
    while (v43)
    {
      sub_100937268();
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v47 = v16;
      v17 = sub_10075A72C();
      v46 = v18;
      v19 = sub_10075A43C();
      v21 = v20;
      v22 = v15;
      v23 = v45;
      sub_10075B2DC();
      v24 = sub_10075AA1C();
      v26 = v25;
      v27 = sub_10075AD04();
      v29 = nullsub_23(v24, v26, v27, v28);
      v30 = v23;
      v15 = v22;
      sub_10078694C(v17, v46, v19, v21, v30, v29, v31, v32, v10, v33);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1008E40E0(0, v22[2] + 1, 1, v22, &qword_100CB4F98, &unk_1009B0C38, type metadata accessor for SenderKeyInfo);
      }

      v34 = v40;
      v36 = v15[2];
      v35 = v15[3];
      if (v36 >= v35 >> 1)
      {
        v15 = sub_1008E40E0(v35 > 1, v36 + 1, 1, v15, &qword_100CB4F98, &unk_1009B0C38, type metadata accessor for SenderKeyInfo);
      }

      v15[2] = v36 + 1;
      sub_1008F24C4(v10, v15 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v36, type metadata accessor for SenderKeyInfo);
      ++v14;
      v12 = v41;
      if (v47 == v34)
      {
        goto LABEL_19;
      }
    }

    if (v14 >= *(v42 + 16))
    {
      goto LABEL_16;
    }

    v16 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v15 = &_swiftEmptyArrayStorage;
LABEL_19:

  *v39 = v15;
}

uint64_t sub_1008C9388(void *a1, void *a2)
{
  v5 = sub_100706B30(&qword_100CBA368);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = [a1 prefixedURI];
  v11 = sub_100936B38();
  v13 = v12;

  v14 = [a2 prefixedURI];
  v15 = sub_100936B38();
  v17 = v16;

  v28 = v11;
  v29 = v13;
  v30 = v15;
  v31 = v17;
  v33[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();

  v33[0] = &_swiftEmptySetSingleton;
  v26 = v9;
  v27 = v33;
  (*((swift_isaMask & *v2) + 0x118))(0, sub_1008ED984, v25);
  v18 = v33[0];
  v19 = *(v33[0] + 16);
  if (!v19)
  {

    v20 = &_swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v23 = v9;
  v24 = v6;
  v20 = sub_1008E42BC(v19, 0);
  v21 = sub_1008EAAC0(&v32, v20 + 2, v19, v18);

  result = sub_100308C6C();
  if (v21 == v19)
  {

    v9 = v23;
    v6 = v24;
LABEL_5:
    (*(v6 + 8))(v9, v5);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008C9720(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v32 = a3;
  v5 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v5 - 8);
  v7 = v29 - v6;
  v8 = sub_100706B30(&qword_100CBA8D8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - v10;
  v12 = sub_100706B30(&qword_100CBA368);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936828();
  v14 = sub_100936728();
  result = (*(v9 + 8))(v11, v8);
  if (!v3)
  {
    if (v14 >> 62)
    {
      goto LABEL_23;
    }

    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v17 = v32;
    v29[1] = 0;
    if (v16)
    {
      v18 = 0;
      v30 = v14 & 0xFFFFFFFFFFFFFF8;
      v31 = v14 & 0xC000000000000001;
      v19 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if (v31)
        {
          sub_100937268();
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v18 >= *(v30 + 16))
          {
            goto LABEL_22;
          }

          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            v16 = sub_1009373F8();
            goto LABEL_4;
          }
        }

        v21 = v16;
        v22 = sub_10075A43C();
        v24 = v23;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100787FB8(0, *(v19 + 2) + 1, 1, v19);
        }

        v26 = *(v19 + 2);
        v25 = *(v19 + 3);
        if (v26 >= v25 >> 1)
        {
          v19 = sub_100787FB8((v25 > 1), v26 + 1, 1, v19);
        }

        *(v19 + 2) = v26 + 1;
        v27 = &v19[16 * v26];
        *(v27 + 4) = v22;
        *(v27 + 5) = v24;
        ++v18;
        v16 = v21;
        v17 = v32;
        if (v20 == v21)
        {
          goto LABEL_19;
        }
      }
    }

    v19 = &_swiftEmptyArrayStorage;
LABEL_19:

    v28 = sub_100791A24(v19);

    *v17 = v28;
  }

  return result;
}

uint64_t sub_1008C9B64(void *a1, void *a2)
{
  v5 = sub_100706B30(&qword_100CBA368);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = [a1 prefixedURI];
  v11 = sub_100936B38();
  v13 = v12;

  v14 = [a2 prefixedURI];
  v15 = sub_100936B38();
  v17 = v16;

  v23 = v11;
  v24 = v13;
  v25 = v15;
  v26 = v17;
  v28 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();

  v27 = 0;
  v21 = v9;
  v22 = &v27;
  (*((swift_isaMask & *v2) + 0x118))(0, sub_1008F4C80, v20);
  v18 = v27;
  (*(v6 + 8))(v9, v5);
  return v18;
}

uint64_t sub_1008C9E60(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v17 = a3;
  v5 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_100706B30(&qword_100CBA8D8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_100706B30(&qword_100CBA368);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936828();
  v14 = sub_1009366E8();
  result = (*(v9 + 8))(v11, v8);
  if (!v3)
  {
    *v17 = v14 > 0;
  }

  return result;
}

BOOL sub_1008CA10C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100706B30(&unk_100CB4A50);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  (*((swift_isaMask & *v2) + 0x108))(a2, a1);
  v8 = type metadata accessor for SenderKeyAndState(0);
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8) != 1;
  sub_100013814(v7, &unk_100CB4A50);
  return v9;
}

BOOL sub_1008CA244(uint64_t a1)
{
  v4 = 0;
  v3[3] = a1;
  v3[4] = &v4;
  (*((swift_isaMask & *v1) + 0x118))(0, sub_1008ED9A0, v3);
  return (v4 & 1) == 0;
}

uint64_t sub_1008CA2E0(uint64_t a1, uint64_t a2, void *a3, BOOL *a4)
{
  v7 = sub_100936038();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = [a3 prefixedURI];
  v15 = sub_100936B38();
  v17 = v16;

  v18 = sub_1008BA450(v15, v17, a1);

  if (v18)
  {
    sub_100936028();
    sub_100935FC8();
    v21 = v20;
    v22 = *(v8 + 8);
    v22(v13, v7);
    sub_10075B2DC();
    sub_100935FC8();
    v24 = v23;
    v22(v11, v7);
    v25 = v21 - v24;
    v26 = *sub_100771BA4();

    *a4 = v26 < v25;
  }

  return result;
}

BOOL sub_1008CA494(uint64_t a1, unint64_t a2)
{
  v5 = sub_100706B30(&unk_100CB4A50);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1009373F8())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = sub_100937268();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(a2 + 8 * j + 32);
      }

      v11 = v10;
      v12 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      (*((swift_isaMask & *v2) + 0x108))(v10, a1);

      v13 = type metadata accessor for SenderKeyAndState(0);
      v14 = (*(*(v13 - 8) + 48))(v7, 1, v13);
      sub_100013814(v7, &unk_100CB4A50);
      result = v14 != 1;
      if (v14 != 1 || v12 == i)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return 0;
}

uint64_t sub_1008CA6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100936038();
  (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v10 = v3;
  return (*((swift_isaMask & *v3) + 0x118))(0, sub_1008ED9D0, v9);
}

void sub_1008CA7D4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v48 = a1;
  v44 = a4;
  v45 = a5;
  v7 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v7 - 8);
  v43 = &v43 - v8;
  v9 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - v10;
  v12 = sub_100706B30(&qword_100CBA8D8);
  v47 = *(v12 - 8);
  __chkstk_darwin(v12);
  v50 = &v43 - v13;
  v14 = sub_100706B30(&qword_100CBA368);
  v46 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  v17 = [a2 prefixedURI];
  v18 = sub_100936B38();
  v20 = v19;

  v21 = [a3 prefixedURI];
  v22 = sub_100936B38();
  v24 = v23;

  v51 = v18;
  v52 = v20;
  v53 = v22;
  v54 = v24;
  v55 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();

  v25 = v12;
  v26 = v46;

  (*(v26 + 16))(v11, v16, v14);
  (*(v26 + 56))(v11, 0, 1, v14);
  sub_100706B30(&qword_100CBACD8);
  sub_100706B30(&qword_100CBACE0);
  *(swift_allocObject() + 16) = xmmword_1009AC700;
  swift_getKeyPath();
  sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date);
  v27 = v50;
  sub_100935C48();
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936828();
  sub_1009367D8();
  v28 = v49;
  v29 = sub_100936728();
  if (!v28)
  {
    v49 = v14;
    v35 = v47;
    v37 = v43;
    v36 = v44;
    if (v29 >> 62)
    {
      v40 = v29;
      v41 = sub_1009373F8();
      v29 = v40;
      v38 = v16;
      if (v41)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v38 = v16;
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        if ((v29 & 0xC000000000000001) != 0)
        {
          sub_100937268();
        }

        else
        {
          if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }
        }

        sub_10075B2DC();

        v39 = 0;
        v38 = v16;
LABEL_13:
        (*(v35 + 8))(v50, v25);
        (*(v26 + 8))(v38, v49);
        v42 = sub_100936038();
        (*(*(v42 - 8) + 56))(v37, v39, 1, v42);
        sub_10073545C(v37, v36, &qword_100CB4AC0);
        return;
      }
    }

    v39 = 1;
    goto LABEL_13;
  }

  (*(v47 + 8))(v27, v25);
  (*(v26 + 8))(v16, v14);
  swift_errorRetain();
  v30 = sub_1009364B8();
  v31 = sub_100936EF8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "Error fetching IDSQuerySDSenderKeyDistribution instance: %@", v32, 0xCu);
    sub_100013814(v33, &qword_100CB36B0);
  }

  else
  {
  }
}

uint64_t sub_1008CAEB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v10 = sub_100936038();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  (*(v11 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  v13 = (*(v11 + 80) + 28) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v11 + 32))(v14 + v13, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = a4;
  v15[4] = v20;
  v16 = *((swift_isaMask & *v5) + 0x110);
  v17 = v5;
  sub_1000254AC(a4);
  v16(sub_1008ED9F0, v14, sub_1008EDA64, v15);
}

uint64_t sub_1008CB0A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_100936038();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex(0);
  (*(v8 + 16))(v10, a4, v7);
  sub_10075FE18(a2, a3, v10);
  sub_100014C40(&qword_100CBA960, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_100936768();
}

uint64_t sub_1008CB1F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = a4;
  v12[4] = a5;
  v13 = *((swift_isaMask & *v5) + 0x110);

  v14 = a2;
  v15 = v5;

  v13(sub_1008EDAA8, v11, sub_1008EDD9C, v12);
}

unint64_t sub_1008CB330()
{
  v1 = sub_100706B30(&qword_100CBA378);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v11 = sub_1008EB790(&_swiftEmptyArrayStorage);
  v10 = type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle(0);
  sub_100936128();
  v8 = v4;
  v9 = &v11;
  (*((swift_isaMask & *v0) + 0x118))(0, sub_1008EDDE0, v7);
  v5 = v11;
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1008CB5BC@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v1 = sub_100935D38();
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100706B30(&qword_100CBAC80);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_100706B30(&qword_100CBAC88);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = sub_100706B30(&qword_100CBAC90);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  sub_100014C88(&qword_100CBAC98, &qword_100CBAC88);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v9 + 8))(v11, v8);
  v27 = 0;
  sub_100935D48();
  v17 = v22;
  v16 = v23;
  (*(v22 + 104))(v3, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v23);
  v18 = sub_100706B30(&qword_100CBACA0);
  v19 = v24;
  v24[3] = v18;
  v19[4] = sub_1008F1FDC();
  sub_100014250(v19);
  sub_100014C88(&qword_100CBACC8, &qword_100CBAC90);
  sub_100014C88(&qword_100CBACD0, &qword_100CBAC80);
  v20 = v25;
  sub_100935CD8();
  (*(v17 + 8))(v3, v16);
  (*(v26 + 8))(v7, v20);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1008CB9E4(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = a3;
  v5 = sub_100706B30(&qword_100CBABD0);
  __chkstk_darwin(v5 - 8);
  v7 = v47 - v6;
  v8 = sub_100706B30(&qword_100CBABD8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v47 - v10;
  v12 = sub_100706B30(&qword_100CBA378);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle(0);
  sub_100014C40(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  v14 = &_swiftEmptyArrayStorage;
  sub_100936828();
  v15 = sub_100936728();
  result = (*(v9 + 8))(v11, v8);
  if (!v3)
  {
    v47[1] = 0;
    if (v15 >> 62)
    {
LABEL_34:
      v53 = v15 & 0xFFFFFFFFFFFFFF8;
      v17 = sub_1009373F8();
      v18 = v49;
      if (v17)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v53 = v15 & 0xFFFFFFFFFFFFFF8;
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v49;
      if (v17)
      {
LABEL_4:
        v19 = 0;
        v52 = v15 & 0xC000000000000001;
        v20 = &_swiftEmptyDictionarySingleton;
        v50 = v15;
        v51 = v17;
        while (1)
        {
          v48 = v20;
          v21 = v19;
          while (1)
          {
            if (v52)
            {
              sub_100937268();
              v19 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v21 >= *(v53 + 16))
              {
                goto LABEL_33;
              }

              v19 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }
            }

            sub_100760880();
            v22 = objc_allocWithZone(IDSURI);
            v23 = sub_100936B28();

            v24 = [v22 initWithPrefixedURI:v23];

            if (v24)
            {
              break;
            }

LABEL_7:

            ++v21;
            if (v19 == v51)
            {
              v20 = v48;
              v18 = v49;
              goto LABEL_36;
            }
          }

          v25 = v14;
          sub_100760598();
          v26 = objc_allocWithZone(IDSURI);
          v27 = sub_100936B28();

          v28 = [v26 initWithPrefixedURI:v27];

          if (!v28)
          {
            break;
          }

          v29 = v48;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = v29;
          v31 = sub_1007417B0(v24);
          v33 = v29[2];
          v34 = (v32 & 1) == 0;
          v35 = __OFADD__(v33, v34);
          v36 = v33 + v34;
          if (v35)
          {
            __break(1u);
            goto LABEL_39;
          }

          v37 = v32;
          v14 = v25;
          if (v29[3] >= v36)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_22;
            }

            v46 = v31;
            sub_1008E5DCC();
            v31 = v46;
            v14 = v25;
            v48 = v54;
            if (v37)
            {
              goto LABEL_25;
            }

LABEL_23:
            v39 = v48;
            v48[(v31 >> 6) + 8] |= 1 << v31;
            *(v39[6] + 8 * v31) = v24;
            *(v39[7] + 8 * v31) = v14;
            v40 = v39[2];
            v35 = __OFADD__(v40, 1);
            v41 = v40 + 1;
            if (!v35)
            {
              v42 = v31;
              v39[2] = v41;
              v43 = v24;
              v31 = v42;
              goto LABEL_25;
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          sub_1008E5368(v36, isUniquelyReferenced_nonNull_native);
          sub_100014170(0, &qword_100CBA2E0);
          v48 = v54;
          v31 = sub_1007417B0(v24);
          if ((v37 & 1) != (v38 & 1))
          {
LABEL_40:
            result = sub_1009375D8();
            __break(1u);
            return result;
          }

LABEL_22:
          if ((v37 & 1) == 0)
          {
            goto LABEL_23;
          }

LABEL_25:
          v20 = v48;
          v44 = (v48[7] + 8 * v31);
          v45 = v28;
          sub_100936CC8();
          if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100936D18();
            v14 = v25;
          }

          sub_100936D38();

          v15 = v50;
          v18 = v49;
          if (v19 == v51)
          {
LABEL_36:

            *v18 = v20;
          }
        }

        v14 = v25;
        v15 = v50;
        goto LABEL_7;
      }
    }

    v20 = &_swiftEmptyDictionarySingleton;
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1008CBF84()
{
  v0 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  v3 = sub_100706B30(&qword_100CBA368);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936748();
  return sub_100013814(v2, &unk_100CBA690);
}

uint64_t sub_1008CC20C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_100706B30(&qword_100CBA8D8);
  v24 = *(v10 - 8);
  v25 = v10;
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = sub_100706B30(&qword_100CBA368);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - v15;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v17 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  v31 = v17;
  sub_100936128();
  (*(v14 + 16))(v9, v16, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  v18 = sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936828();
  v27[16] = a4;
  v19 = sub_100716928();
  v20 = sub_100716930();
  v21 = v26;
  sub_100716938(v12, v19, v20, sub_1008F1D44, v27, v17, v18);
  if (v21)
  {
  }

  (*(v24 + 8))(v12, v25);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1008CC520@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v68 = a4;
  v55 = a3;
  v59 = a2;
  v69 = a5;
  v6 = sub_100706B30(&qword_100CBAC20);
  v7 = *(v6 - 8);
  v70 = v6;
  v71 = v7;
  __chkstk_darwin(v6);
  v67 = v49 - v8;
  v66 = sub_100706B30(&qword_100CBA430);
  v78 = *(v66 - 8);
  __chkstk_darwin(v66);
  v75 = v49 - v9;
  v61 = sub_100706B30(&qword_100CBA6A0);
  v77 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = v49 - v10;
  v11 = sub_100706B30(&qword_100CBA6A8);
  v12 = *(v11 - 8);
  v63 = v11;
  v64 = v12;
  __chkstk_darwin(v11);
  v60 = v49 - v13;
  v53 = sub_100706B30(&qword_100CBA4C0);
  v54 = *(v53 - 1);
  __chkstk_darwin(v53);
  v15 = v49 - v14;
  v16 = sub_100706B30(&qword_100CBA6B0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v49 - v18;
  v51 = sub_100706B30(&qword_100CBA828);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v21 = v49 - v20;
  v56 = sub_100706B30(&qword_100CBAC28);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v73 = v49 - v22;
  v62 = sub_100706B30(&qword_100CBAC30);
  v65 = *(v62 - 8);
  __chkstk_darwin(v62);
  v76 = v49 - v23;
  v72 = *a1;
  v24 = sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v25 = *(v17 + 8);
  v74 = v17 + 8;
  v25(v19, v16);
  v50 = v25;
  v79 = v59;
  v80 = v55;
  sub_100935D48();
  v59 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100014C88(&qword_100CBA848, &qword_100CBA828);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v26 = v15;
  v27 = v51;
  v28 = v53;
  sub_100935C68();
  (*(v54 + 1))(v26, v28);
  (*(v52 + 8))(v21, v27);
  v49[1] = v24;
  sub_100935D58();
  swift_getKeyPath();
  v29 = v58;
  sub_100935C78();

  v25(v19, v16);
  LOBYTE(v79) = 1;
  v30 = v75;
  sub_100935D48();
  v59 = sub_100014C88(&qword_100CBA708, &qword_100CBA6A0);
  v55 = sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  v32 = v60;
  v31 = v61;
  v33 = v66;
  sub_100935C68();
  v34 = *(v78 + 8);
  v78 += 8;
  v54 = v34;
  v34(v30, v33);
  v35 = *(v77 + 8);
  v77 += 8;
  v53 = v35;
  v36 = v29;
  (v35)(v29, v31);
  sub_100014C88(&qword_100CBAC38, &qword_100CBAC28);
  sub_100014C88(&qword_100CBA720, &qword_100CBA6A8);
  v37 = v73;
  v38 = v32;
  v39 = v56;
  v40 = v63;
  sub_100935CF8();
  (*(v64 + 8))(v38, v40);
  (*(v57 + 8))(v37, v39);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v50(v19, v16);
  LOBYTE(v79) = v68;
  v41 = v75;
  sub_100935D48();
  v42 = v67;
  sub_100935C98();
  v54(v41, v33);
  (v53)(v36, v31);
  v43 = sub_100706B30(&qword_100CBAC40);
  v44 = v69;
  v69[3] = v43;
  v44[4] = sub_1008F1D78();
  sub_100014250(v44);
  sub_100014C88(&qword_100CBAC68, &qword_100CBAC30);
  sub_100014C88(&qword_100CBAC70, &qword_100CBAC20);
  v45 = v76;
  v46 = v62;
  v47 = v70;
  sub_100935CF8();
  (*(v71 + 8))(v42, v47);
  return (*(v65 + 8))(v45, v46);
}

uint64_t sub_1008CD010(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (result)
  {
    swift_errorRetain();
    v4 = sub_1009364B8();
    v5 = sub_100936EF8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error updating sender key invalid state: %@", v6, 0xCu);
      sub_100013814(v7, &qword_100CB36B0);
    }

    if (a3)
    {
      a3(0);
    }
  }

  else if (a3)
  {
    return a3(1);
  }

  return result;
}

void *sub_1008CD34C()
{
  v3 = &_swiftEmptyArrayStorage;
  v2[2] = &v3;
  (*((swift_isaMask & *v0) + 0x118))(0, sub_1008EDE68, v2);
  return v3;
}

uint64_t sub_1008CD4F0(char *a1, void *a2)
{
  v53 = a1;
  v3 = sub_100936038();
  __chkstk_darwin(v3 - 8);
  v50 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for IDSRegistrationEventStruct();
  v49 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100706B30(&qword_100CBA610);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = sub_100706B30(&unk_100CBAC10);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - v16;
  v18 = sub_100706B30(&qword_100CBA618);
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent(0);
  sub_100014C40(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936828();
  v19 = v54;
  v20 = sub_100936728();
  v21 = v19;
  result = (*(v15 + 8))(v17, v14);
  if (!v19)
  {
    v54 = v10;
    v48 = v7;
    if (v20 >> 62)
    {
      goto LABEL_23;
    }

    v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v42 = v21;
    if (v23)
    {
      v21 = 0;
      v46 = v20 & 0xFFFFFFFFFFFFFF8;
      v47 = v20 & 0xC000000000000001;
      v24 = &_swiftEmptyArrayStorage;
      v44 = v20;
      v45 = a2;
      v43 = v23;
      while (1)
      {
        if (v47)
        {
          v20 = sub_100937268();
          v25 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v21 >= *(v46 + 16))
          {
            goto LABEL_22;
          }

          v20 = *(v20 + 8 * v21 + 32);

          v25 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            v23 = sub_1009373F8();
            goto LABEL_4;
          }
        }

        v53 = v25;
        v26 = sub_1007616AC();
        v51 = v27;
        v52 = v26;
        sub_100761994();
        sub_100761D5C();
        v28 = sub_100762214();
        v29 = sub_10076258C();
        v30 = sub_100762904();
        v32 = v31;
        v33 = sub_100762C3C();
        v35 = v34;
        v36 = sub_100761334();
        sub_1008A3DF4(v52, v51, v48, v50, v28, v29, v30, v32, v54, v33, v35, v36);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1008E40E0(0, v24[2] + 1, 1, v24, &qword_100CBA2C8, &unk_1009BE6E0, type metadata accessor for IDSRegistrationEventStruct);
        }

        a2 = v45;
        v38 = v24[2];
        v37 = v24[3];
        v39 = v49;
        v40 = v54;
        if (v38 >= v37 >> 1)
        {
          v41 = sub_1008E40E0(v37 > 1, v38 + 1, 1, v24, &qword_100CBA2C8, &unk_1009BE6E0, type metadata accessor for IDSRegistrationEventStruct);
          v39 = v49;
          v24 = v41;
          v40 = v54;
        }

        v24[2] = v38 + 1;
        sub_1008F24C4(v40, v24 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v38, type metadata accessor for IDSRegistrationEventStruct);
        ++v21;
        v20 = v44;
        if (v53 == v43)
        {
          goto LABEL_19;
        }
      }
    }

    v24 = &_swiftEmptyArrayStorage;
LABEL_19:

    *a2 = v24;
  }

  return result;
}

unint64_t sub_1008CDA60(uint64_t a1, int a2)
{
  LODWORD(v82) = a2;
  v71 = 0;
  v3 = sub_100706B30(&unk_100CB4A50);
  __chkstk_darwin(v3 - 8);
  v81 = &v71 - v4;
  v5 = sub_100936108();
  v80 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100936118();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v71 - v13;
  v15 = sub_100936038();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v86 = 0xD00000000000002ELL;
  v87 = 0x8000000100B05E00;
  v85 = &_swiftEmptyArrayStorage;
  if (a1)
  {

    v23 = sub_100746E48(v22);

    v24 = sub_1008E438C(v23, &qword_100CBA2E0, IDSURI_ptr, &unk_100CB4A40);

    v85 = v24;
    v25 = v83;
  }

  else
  {
    v26 = v80;
    if (v82)
    {
      __chkstk_darwin(v20);
      *(&v71 - 2) = &v85;
      v25 = v83;
      v27 = v71;
      (*((swift_isaMask & *v83) + 0x118))(0, sub_1008EDE84);
      v71 = v27;
    }

    else
    {
      v82 = &v71 - v21;
      v78 = v20;
      sub_1009360F8();
      v28 = v26;
      (*(v26 + 104))(v7, enum case for Calendar.Component.day(_:), v5);
      sub_100935FF8();
      sub_1009360E8();
      v29 = v78;
      v79 = *(v16 + 8);
      v79(v19, v78);
      (*(v28 + 8))(v7, v5);
      v30 = v29;
      (*(v9 + 8))(v11, v8);
      v31 = *(v16 + 48);
      if (v31(v14, 1, v30) == 1)
      {
        v32 = v82;
        sub_100935F18();
        v33 = v31(v14, 1, v30);
        v25 = v83;
        if (v33 != 1)
        {
          sub_100013814(v14, &qword_100CB4AC0);
        }
      }

      else
      {
        v32 = v82;
        (*(v16 + 32))(v82, v14, v30);
        v25 = v83;
      }

      isa = sub_100935F58().super.isa;
      v35 = [v25 recentURIsSinceDate:isa service:IDSServiceNameiMessage];

      sub_100014170(0, &qword_100CBA2E0);
      v36 = sub_100936CE8();

      v37 = sub_100746E48(v36);

      v38 = sub_1008E438C(v37, &qword_100CBA2E0, IDSURI_ptr, &unk_100CB4A40);

      v79(v32, v30);
      v85 = v38;
    }
  }

  v39 = sub_100936B38();
  v40 = (*((swift_isaMask & *v25) + 0xE0))(v39);

  v41 = v40;
  if (v40 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v41 = v66)
  {
    v43 = v85;
    v74 = i;
    if (v85 >> 62)
    {
      v69 = v41;
      v70 = sub_1009373F8();
      v41 = v69;
      v44 = v70;
    }

    else
    {
      v44 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = 0;
    v75 = v41;
    v76 = v41 & 0xC000000000000001;
    v72 = v41 + 32;
    v73 = v41 & 0xFFFFFFFFFFFFFF8;
    v78 = "r Key Availability **********\n";
    v79 = (v43 & 0xC000000000000001);
    v80 = v43;
    while (1)
    {
      if (v76)
      {
        v46 = sub_100937268();
      }

      else
      {
        if (v45 >= *(v73 + 16))
        {
          goto LABEL_36;
        }

        v46 = *(v72 + 8 * v45);
      }

      v47 = v46;
      v48 = __OFADD__(v45, 1);
      v49 = v45 + 1;
      if (v48)
      {
        break;
      }

      v77 = v49;
      if (v44)
      {
        if (v44 < 1)
        {
          goto LABEL_35;
        }

        v50 = 0;
        v82 = *((swift_isaMask & *v25) + 0x108);
        do
        {
          if (v79)
          {
            v51 = sub_100937268();
          }

          else
          {
            v51 = *(v43 + 8 * v50 + 32);
          }

          v52 = v51;
          ++v50;
          v53 = v81;
          (v82)(v47, v51);
          v54 = type metadata accessor for SenderKeyAndState(0);
          v55 = (*(*(v54 - 8) + 48))(v53, 1, v54);
          sub_100013814(v53, &unk_100CB4A50);
          v84._countAndFlagsBits = 0;
          v84._object = 0xE000000000000000;
          sub_100937248(39);

          v84._countAndFlagsBits = 0x203A4D4F5246;
          v84._object = 0xE600000000000000;
          v56 = [v47 prefixedURI];
          v57 = sub_100936B38();
          v59 = v58;

          v88._countAndFlagsBits = v57;
          v88._object = v59;
          sub_100936C08(v88);

          v89._countAndFlagsBits = 0x203A4F5420;
          v89._object = 0xE500000000000000;
          sub_100936C08(v89);
          v60 = [v52 prefixedURI];
          v61 = sub_100936B38();
          v63 = v62;

          v90._countAndFlagsBits = v61;
          v90._object = v63;
          sub_100936C08(v90);

          v91._object = (v78 | 0x8000000000000000);
          v91._countAndFlagsBits = 0xD000000000000015;
          sub_100936C08(v91);
          if (v55 == 1)
          {
            v64._countAndFlagsBits = 20302;
          }

          else
          {
            v64._countAndFlagsBits = 5457241;
          }

          if (v55 == 1)
          {
            v65 = 0xE200000000000000;
          }

          else
          {
            v65 = 0xE300000000000000;
          }

          v64._object = v65;
          sub_100936C08(v64);

          v92._countAndFlagsBits = 10;
          v92._object = 0xE100000000000000;
          sub_100936C08(v92);
          sub_100936C08(v84);

          v43 = v80;
        }

        while (v44 != v50);
      }

      v41 = v75;
      v45 = v77;
      v25 = v83;
      if (v77 == v74)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v66 = v41;
    i = sub_1009373F8();
  }

LABEL_38:

  v67 = v86;

  return v67;
}

uint64_t sub_1008CE3BC(uint64_t a1, void *a2)
{
  v4 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_100706B30(&qword_100CBA8D8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9];
  v20 = &_swiftEmptySetSingleton;
  v11 = sub_100706B30(&qword_100CBA368);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  v13 = sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936828();
  v19 = &v20;
  v14 = sub_100716928();
  v15 = sub_100716930();
  sub_100716938(v10, v14, v15, sub_1008F1C68, v18, v12, v13);
  if (v2)
  {
  }

  v16 = sub_1008E438C(v20, &qword_100CBA2E0, IDSURI_ptr, &unk_100CB4A40);
  (*(v8 + 8))(v10, v7);
  *a2 = v16;
}

char *sub_1008CE658(unint64_t a1)
{
  v2 = a1;
  v21[0] = 0xD000000000000029;
  v21[1] = 0x8000000100B05E50;
  if (!a1)
  {
    goto LABEL_14;
  }

  if (a1 >> 62)
  {
    v3 = sub_1009373F8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = &_swiftEmptyArrayStorage;
  if (!v3)
  {
LABEL_13:
    v2 = sub_100747820(v4);

LABEL_14:
    __chkstk_darwin(a1);
    v16 = v1;
    v17 = v2;
    v18 = v21;
    (*((swift_isaMask & *v1) + 0x118))(0, sub_1008EDEA0);

    return v21[0];
  }

  result = sub_10071DE64(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v1 = v19;
    v4 = v20;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_100937268();
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 prefixedURI];
      v10 = sub_100936B38();
      v12 = v11;

      v20 = v4;
      v14 = v4[2];
      v13 = v4[3];
      if (v14 >= v13 >> 1)
      {
        sub_10071DE64((v13 > 1), v14 + 1, 1);
        v1 = v19;
        v4 = v20;
      }

      ++v6;
      v4[2] = v14 + 1;
      v15 = &v4[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
    }

    while (v3 != v6);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008CE868(uint64_t a1, uint64_t a2, uint64_t countAndFlagsBits)
{
  v5 = sub_100706B30(&qword_100CB4AC0);
  v6 = __chkstk_darwin(v5 - 8);
  v149 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v144 = &v127 - v9;
  v10 = __chkstk_darwin(v8);
  v137 = &v127 - v11;
  __chkstk_darwin(v10);
  v138 = &v127 - v12;
  v13 = sub_100936038();
  v145 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v136 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v135 = &v127 - v17;
  v18 = __chkstk_darwin(v16);
  v132 = &v127 - v19;
  v20 = __chkstk_darwin(v18);
  v133 = &v127 - v21;
  __chkstk_darwin(v20);
  v148 = &v127 - v22;
  v140 = sub_1008EB888(&_swiftEmptyArrayStorage);
  v23 = sub_1008B6FBC(a1, sub_1008ECF54);
  v24 = v23;
  if (v23 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1009373F8())
  {
    v139 = 0;
    v26 = 0;
    v146 = (v24 + 32);
    v147 = v24 & 0xFFFFFFFFFFFFFF8;
    v153 = (v24 & 0xC000000000000001);
    v154 = (countAndFlagsBits + 56);
    v150 = v24;
    v151 = countAndFlagsBits;
    v152 = i;
    while (v153)
    {
      sub_100937268();
      v27 = __OFADD__(v26++, 1);
      if (v27)
      {
        goto LABEL_47;
      }

LABEL_12:
      if (!countAndFlagsBits)
      {
        goto LABEL_33;
      }

      v28 = sub_10075AA1C();
      v30 = v29;
      if (*(countAndFlagsBits + 16))
      {
        v31 = v28;
        sub_100937668();
        sub_100936BC8();
        v32 = sub_1009376C8();
        v33 = -1 << *(countAndFlagsBits + 32);
        v34 = v32 & ~v33;
        if ((*&v154[(v34 >> 3) & 0xFFFFFFFFFFFFFF8] >> v34))
        {
          v35 = ~v33;
          do
          {
            v36 = (*(countAndFlagsBits + 48) + 16 * v34);
            v37 = *v36 == v31 && v36[1] == v30;
            if (v37 || (sub_100937598() & 1) != 0)
            {
              goto LABEL_32;
            }

            v34 = (v34 + 1) & v35;
          }

          while (((*&v154[(v34 >> 3) & 0xFFFFFFFFFFFFFF8] >> v34) & 1) != 0);
        }
      }

      v38 = sub_10075AD04();
      v40 = v39;
      if (*(countAndFlagsBits + 16))
      {
        v41 = v38;
        sub_100937668();
        sub_100936BC8();
        v42 = sub_1009376C8();
        v43 = -1 << *(countAndFlagsBits + 32);
        v44 = v42 & ~v43;
        if ((*&v154[(v44 >> 3) & 0xFFFFFFFFFFFFFF8] >> v44))
        {
          v45 = ~v43;
          while (1)
          {
            v46 = (*(countAndFlagsBits + 48) + 16 * v44);
            v47 = *v46 == v41 && v46[1] == v40;
            if (v47 || (sub_100937598() & 1) != 0)
            {
              break;
            }

            v44 = (v44 + 1) & v45;
            if (((*&v154[(v44 >> 3) & 0xFFFFFFFFFFFFFF8] >> v44) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_32:

LABEL_33:
          v155._countAndFlagsBits = sub_10075AA1C();
          v155._object = v48;
          v156._countAndFlagsBits = 2108704;
          v156._object = 0xE300000000000000;
          sub_100936C08(v156);
          v157._countAndFlagsBits = sub_10075AD04();
          sub_100936C08(v157);

          countAndFlagsBits = v155._countAndFlagsBits;
          object = v155._object;
          sub_1000254C0(v139);
          v50 = v140;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v155._countAndFlagsBits = v50;
          v53 = sub_1008E4CC8(countAndFlagsBits, object, &String.hash(into:), sub_10001375C);
          v54 = v50[2];
          v55 = (v52 & 1) == 0;
          v56 = v54 + v55;
          if (__OFADD__(v54, v55))
          {
            goto LABEL_48;
          }

          v24 = v52;
          if (v50[3] >= v56)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v52 & 1) == 0)
              {
                goto LABEL_42;
              }
            }

            else
            {
              sub_1008E5F30();
              v50 = v155._countAndFlagsBits;
              if ((v24 & 1) == 0)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
            sub_1008E55D8(v56, isUniquelyReferenced_nonNull_native);
            v57 = v155._countAndFlagsBits;
            v58 = sub_1008E4CC8(countAndFlagsBits, object, &String.hash(into:), sub_10001375C);
            if ((v24 & 1) != (v59 & 1))
            {
              goto LABEL_120;
            }

            v53 = v58;
            v50 = v57;
            if ((v24 & 1) == 0)
            {
LABEL_42:
              v50[(v53 >> 6) + 8] |= 1 << v53;
              v60 = (v50[6] + 16 * v53);
              *v60 = countAndFlagsBits;
              v60[1] = object;
              *(v50[7] + 8 * v53) = &_swiftEmptyArrayStorage;
              v61 = v50[2];
              v27 = __OFADD__(v61, 1);
              v62 = v61 + 1;
              if (v27)
              {
                goto LABEL_50;
              }

              v50[2] = v62;
              goto LABEL_44;
            }
          }

LABEL_44:
          v140 = v50;
          v63 = (v50[7] + 8 * v53);

          sub_100936CC8();
          v24 = v150;
          countAndFlagsBits = v151;
          if (*((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100936D18();
          }

          sub_100936D38();
          v139 = sub_1008CFBBC;
          goto LABEL_5;
        }
      }

LABEL_4:

LABEL_5:

      if (v26 == v152)
      {
        goto LABEL_53;
      }
    }

    if (v26 >= *(v147 + 16))
    {
      goto LABEL_49;
    }

    v27 = __OFADD__(v26++, 1);
    if (!v27)
    {
      goto LABEL_12;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v139 = 0;
LABEL_53:

  v64 = 0;
  v65 = v140;
  v66 = v140 + 64;
  v67 = 1 << *(v140 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(v140 + 64);
  v70 = (v67 + 63) >> 6;
  v146 = 0x8000000100B06170;
  v147 = "e Donation ----------\n";
  v143 = 0x8000000100B06190;
  v153 = (v145 + 6);
  v154 = (v145 + 1);
  v145 += 4;
  v142 = 0x8000000100B061B0;
  v131 = 0x8000000100B06210;
  v134 = 0x8000000100B061F0;
  v141 = 0x8000000100B061D0;
  v128 = v140 + 64;
  v127 = v70;
  while (v69)
  {
LABEL_62:
    v129 = v69;
    v130 = v64;
    v72 = __clz(__rbit64(v69)) | (v64 << 6);
    v73 = (*(v65 + 48) + 16 * v72);
    v74 = *v73;
    v75 = v73[1];
    v76 = *(*(v65 + 56) + 8 * v72);
    v155._countAndFlagsBits = 0;
    v155._object = 0xE000000000000000;

    sub_100937248(25);

    strcpy(&v155, "---------- ");
    HIDWORD(v155._object) = -352321536;
    v158._countAndFlagsBits = v74;
    v158._object = v75;
    sub_100936C08(v158);

    v159._countAndFlagsBits = 0x2D2D2D2D2D2D2D20;
    v159._object = 0xEC0000000A2D2D2DLL;
    sub_100936C08(v159);
    sub_100936C08(v155);

    v77 = v76;
    if (v76 >> 62)
    {
      v78 = sub_1009373F8();
      v77 = v76;
      if (!v78)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v78 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v78)
      {
        goto LABEL_56;
      }
    }

    if (v78 < 1)
    {
      goto LABEL_119;
    }

    v79 = 0;
    v150 = v77 & 0xC000000000000001;
    v151 = v78;
    v152 = v77;
    do
    {
      if (v150)
      {
        sub_100937268();
      }

      else
      {
      }

      v162._countAndFlagsBits = 0xD00000000000001FLL;
      v162._object = (v147 | 0x8000000000000000);
      sub_100936C08(v162);
      strcpy(&v155, "keyID: ");
      v155._object = 0xE700000000000000;
      v83 = sub_10075A43C();
      v85 = v84;
      v86 = sub_100935E88(0);
      v88 = v87;
      sub_1007156D8(v83, v85);
      v163._countAndFlagsBits = v86;
      v163._object = v88;
      sub_100936C08(v163);

      v164._countAndFlagsBits = 10;
      v164._object = 0xE100000000000000;
      sub_100936C08(v164);
      sub_100936C08(v155);

      v155._countAndFlagsBits = 0;
      v155._object = 0xE000000000000000;
      sub_100937248(23);

      v155._countAndFlagsBits = 0xD000000000000014;
      v155._object = v146;
      v89 = sub_10075BB44();
      v90 = (v89 & 1) == 0;
      if (v89)
      {
        v91._countAndFlagsBits = 1702195828;
      }

      else
      {
        v91._countAndFlagsBits = 0x65736C6166;
      }

      if (v90)
      {
        v92 = 0xE500000000000000;
      }

      else
      {
        v92 = 0xE400000000000000;
      }

      v91._object = v92;
      sub_100936C08(v91);

      v165._countAndFlagsBits = 10;
      v165._object = 0xE100000000000000;
      sub_100936C08(v165);
      sub_100936C08(v155);

      strcpy(&v155, "createdAt: ");
      HIDWORD(v155._object) = -352321536;
      v93 = v148;
      sub_10075B2DC();
      sub_100014C40(&qword_100CB3A88, &type metadata accessor for Date);
      v166._countAndFlagsBits = sub_100937548();
      sub_100936C08(v166);

      v94 = *v154;
      (*v154)(v93, v13);
      v167._countAndFlagsBits = 10;
      v167._object = 0xE100000000000000;
      sub_100936C08(v167);
      sub_100936C08(v155);

      if (sub_10075E434())
      {
        v155._countAndFlagsBits = 0;
        v155._object = 0xE000000000000000;
        sub_100937248(18);

        v155._countAndFlagsBits = 0x6E4964656B72616DLL;
        v155._object = 0xEF203A64696C6176;
        v95 = sub_10075E434();
        v96 = (v95 & 1) == 0;
        if (v95)
        {
          v97._countAndFlagsBits = 1702195828;
        }

        else
        {
          v97._countAndFlagsBits = 0x65736C6166;
        }

        if (v96)
        {
          v98 = 0xE500000000000000;
        }

        else
        {
          v98 = 0xE400000000000000;
        }

        v97._object = v98;
        sub_100936C08(v97);

        v168._countAndFlagsBits = 10;
        v168._object = 0xE100000000000000;
        sub_100936C08(v168);
        sub_100936C08(v155);
      }

      if (sub_10075BB44())
      {
        v155._countAndFlagsBits = 0;
        v155._object = 0xE000000000000000;
        sub_100937248(20);

        v155._countAndFlagsBits = 0xD000000000000011;
        v155._object = v143;
        v99 = sub_10075C730();
        v100 = (v99 & 1) == 0;
        if (v99)
        {
          v101._countAndFlagsBits = 1702195828;
        }

        else
        {
          v101._countAndFlagsBits = 0x65736C6166;
        }

        if (v100)
        {
          v102 = 0xE500000000000000;
        }

        else
        {
          v102 = 0xE400000000000000;
        }

        v101._object = v102;
        sub_100936C08(v101);

        v169._countAndFlagsBits = 10;
        v169._object = 0xE100000000000000;
        sub_100936C08(v169);
        sub_100936C08(v155);

        v103 = sub_10075D254();
        if (v104)
        {
          v105 = v104;
          v106 = v103;
          v107 = v138;
          sub_10075D66C();
          v108 = v107;
          if ((*v153)(v107, 1, v13) == 1)
          {

            sub_100013814(v107, &qword_100CB4AC0);
          }

          else
          {
            v109 = v133;
            (*v145)(v133, v108, v13);
            strcpy(&v155, "sentGUID: ");
            BYTE3(v155._object) = 0;
            HIDWORD(v155._object) = -369098752;
            v170._countAndFlagsBits = v106;
            v170._object = v105;
            sub_100936C08(v170);

            v171._countAndFlagsBits = 10;
            v171._object = 0xE100000000000000;
            sub_100936C08(v171);
            sub_100936C08(v155);

            strcpy(&v155, "sentAt: ");
            BYTE1(v155._object) = 0;
            WORD1(v155._object) = 0;
            HIDWORD(v155._object) = -402653184;
            v172._countAndFlagsBits = sub_100937548();
            sub_100936C08(v172);

            v173._countAndFlagsBits = 10;
            v173._object = 0xE100000000000000;
            sub_100936C08(v173);
            sub_100936C08(v155);

            v94(v109, v13);
          }
        }

        v155._countAndFlagsBits = 0;
        v155._object = 0xE000000000000000;
        sub_100937248(25);

        v155._countAndFlagsBits = 0xD000000000000016;
        v155._object = v142;
        v110 = sub_10075BE24();
        v111 = (v110 & 1) == 0;
        if (v110)
        {
          v112._countAndFlagsBits = 1702195828;
        }

        else
        {
          v112._countAndFlagsBits = 0x65736C6166;
        }

        if (v111)
        {
          v113 = 0xE500000000000000;
        }

        else
        {
          v113 = 0xE400000000000000;
        }

        v112._object = v113;
        sub_100936C08(v112);

        v174._countAndFlagsBits = 10;
        v174._object = 0xE100000000000000;
        sub_100936C08(v174);
        sub_100936C08(v155);

        if (sub_10075BE24())
        {
          v114 = v137;
          sub_10075C1D0();
          if ((*v153)(v114, 1, v13) == 1)
          {
            sub_100013814(v114, &qword_100CB4AC0);
          }

          else
          {
            v115 = v132;
            (*v145)(v132, v114, v13);
            v155._countAndFlagsBits = 0;
            v155._object = 0xE000000000000000;
            sub_100937248(25);

            v155._countAndFlagsBits = 0xD000000000000016;
            v155._object = v131;
            v175._countAndFlagsBits = sub_100937548();
            sub_100936C08(v175);

            v176._countAndFlagsBits = 10;
            v176._object = 0xE100000000000000;
            sub_100936C08(v176);
            sub_100936C08(v155);

            v94(v115, v13);
          }
        }

        v116 = v144;
        sub_10075DB04();
        v117 = *v153;
        if ((*v153)(v116, 1, v13) == 1)
        {
          sub_100013814(v116, &qword_100CB4AC0);
        }

        else
        {
          v118 = v135;
          (*v145)(v135, v116, v13);
          v155._countAndFlagsBits = 0;
          v155._object = 0xE000000000000000;
          sub_100937248(17);

          strcpy(&v155, "lastActiveAt: ");
          HIBYTE(v155._object) = -18;
          v177._countAndFlagsBits = sub_100937548();
          sub_100936C08(v177);

          v178._countAndFlagsBits = 10;
          v178._object = 0xE100000000000000;
          sub_100936C08(v178);
          sub_100936C08(v155);

          v94(v118, v13);
        }

        sub_10075DF9C();
        v119 = v149;
        if (v117(v149, 1, v13) == 1)
        {
          sub_100013814(v119, &qword_100CB4AC0);
        }

        else
        {
          v120 = v136;
          (*v145)(v136, v119, v13);
          v155._countAndFlagsBits = 0;
          v155._object = 0xE000000000000000;
          sub_100937248(20);

          v155._countAndFlagsBits = 0xD000000000000011;
          v155._object = v134;
          v179._countAndFlagsBits = sub_100937548();
          sub_100936C08(v179);

          v180._countAndFlagsBits = 10;
          v180._object = 0xE100000000000000;
          sub_100936C08(v180);
          sub_100936C08(v155);

          v94(v120, v13);
        }

        v82 = 0xE000000000000000;
        v155._countAndFlagsBits = 0;
        v155._object = 0xE000000000000000;
        sub_100937248(23);

        v155._countAndFlagsBits = 0xD000000000000013;
        v155._object = v141;
        v121 = sub_10075AFEC();
        v123 = v122;
        isa = sub_100935E78().super.isa;
        sub_1007156D8(v121, v123);
        v125 = [(objc_class *)isa __imHexString];

        if (v125)
        {
          v80 = sub_100936B38();
          v82 = v81;
        }

        else
        {
          v80 = 0;
        }

        v160._countAndFlagsBits = v80;
        v160._object = v82;
        sub_100936C08(v160);

        v161._countAndFlagsBits = 2601;
        v161._object = 0xE200000000000000;
        sub_100936C08(v161);
        sub_100936C08(v155);
      }

      ++v79;
    }

    while (v151 != v79);
LABEL_56:
    v69 = (v129 - 1) & v129;

    v65 = v140;
    v66 = v128;
    v64 = v130;
    v70 = v127;
  }

  while (1)
  {
    v71 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    if (v71 >= v70)
    {

      return sub_1000254C0(v139);
    }

    v69 = *(v66 + 8 * v71);
    ++v64;
    if (v69)
    {
      v64 = v71;
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  result = sub_1009375D8();
  __break(1u);
  return result;
}

uint64_t sub_1008CFBCC()
{
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  v2[2] = v3;
  (*((swift_isaMask & *v0) + 0x118))(0, sub_1008EDED0, v2);
  return v3[0];
}

uint64_t sub_1008CFD6C()
{
  v1 = sub_100706B30(&qword_100CBABD0);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  v4 = sub_100706B30(&qword_100CBABD8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  v8 = sub_100706B30(&qword_100CBA378);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle(0);
  sub_100014C40(&unk_100CBABE0, type metadata accessor for SDPersistenceSchemaV6.IDSOffGridDeliveryDonatedHandle);
  sub_100936828();
  v9 = sub_100936728();
  result = (*(v5 + 8))(v7, v4);
  if (!v0)
  {
    v13[1] = 0;
    if (v9 >> 62)
    {
      result = sub_1009373F8();
      v11 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_4:
        if (v11 < 1)
        {
          __break(1u);
          return result;
        }

        v12 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            sub_100937268();
          }

          else
          {
          }

          ++v12;
          v16._object = 0x8000000100B06120;
          v16._countAndFlagsBits = 0xD000000000000026;
          sub_100936C08(v16);
          v14._countAndFlagsBits = 0x203A495255;
          v14._object = 0xE500000000000000;
          v17._countAndFlagsBits = sub_100760598();
          sub_100936C08(v17);

          v18._countAndFlagsBits = 10;
          v18._object = 0xE100000000000000;
          sub_100936C08(v18);
          sub_100936C08(v14);

          v14._countAndFlagsBits = 0x3A4952556D6F7266;
          v14._object = 0xE900000000000020;
          v19._countAndFlagsBits = sub_100760880();
          sub_100936C08(v19);

          v20._countAndFlagsBits = 10;
          v20._object = 0xE100000000000000;
          sub_100936C08(v20);
          sub_100936C08(v14);

          v14._countAndFlagsBits = 0x797469726F697270;
          v14._object = 0xEA0000000000203ALL;
          v15 = sub_100760B68();
          v21._countAndFlagsBits = sub_100937548();
          sub_100936C08(v21);

          v22._countAndFlagsBits = 10;
          v22._object = 0xE100000000000000;
          sub_100936C08(v22);
          sub_100936C08(v14);
        }

        while (v11 != v12);
      }
    }
  }

  return result;
}

void sub_1008D0158(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1009364B8();
  v7 = sub_100936F18();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Called to perform DB cleanup tasks", v8, 2u);
  }

  [v3 cleanupExpiredSessionsIfNeededWithCompletion:0];
  [v3 cleanupShortHandlesWithExpireDuration:0 completion:sub_1008EE03C()];
  v9 = swift_allocObject();
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = v3;
  v10 = *((swift_isaMask & *v3) + 0x110);
  v11 = v3;
  v10(sub_1008D164C, 0, sub_1008EE18C, v9);

  sub_1008D02F0(a1, a2);
}

void sub_1008D02F0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = sub_100935D88();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2;
  v7 = *(v2 + OBJC_IVAR___IDSQuerySDPersistenceManager_serviceController);
  if (v7)
  {
    v8 = v7;
    v9 = [v8 allServices];
    if (!v9)
    {
      goto LABEL_24;
    }

    v10 = v9;
    v27[0] = v8;
    v37 = &_swiftEmptyArrayStorage;
    sub_100937018();
    sub_100014C40(&qword_100CBAA78, &type metadata accessor for NSFastEnumerationIterator);
    sub_100937068();
    if (v36)
    {
      v11 = &_swiftEmptyArrayStorage;
      do
      {
        sub_100308C74(&v35, &v33);
        sub_100014170(0, &qword_100CBAA80);
        if ((swift_dynamicCast() & 1) != 0 && v34)
        {
          sub_100936CC8();
          if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100936D18();
          }

          sub_100936D38();
          v11 = v37;
        }

        sub_100937068();
      }

      while (v36);
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
    }

    (*(v4 + 8))(v6, v3);
    if (v11 >> 62)
    {
      v12 = sub_1009373F8();
      if (v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_8:
        v29 = objc_opt_self();
        if (v12 >= 1)
        {
          v13 = 0;
          v14 = *((swift_isaMask & *v32) + 0x110);
          v27[1] = ((swift_isaMask & *v32) + 272);
          v28 = v14;
          v15 = v11;
          v16 = v30;
          do
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v17 = sub_100937268();
            }

            else
            {
              v17 = *(v15 + 8 * v13 + 32);
            }

            v18 = v17;
            ++v13;
            v19 = [v17 identifier];
            [v29 timeToCacheResultsForIDStatus:0 forService:v19];
            v21 = v20;

            v22 = swift_allocObject();
            *(v22 + 16) = v21;
            v23 = swift_allocObject();
            v25 = v31;
            v24 = v32;
            v23[2] = v32;
            v23[3] = v16;
            v23[4] = v25;
            v26 = v24;
            sub_1000254AC(v16);
            v28(sub_1008F1500, v22, sub_1008F151C, v23);

            v15 = v11;
          }

          while (v12 != v13);
          goto LABEL_21;
        }

        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }
    }

LABEL_21:
  }
}

void *sub_1008D07CC(void *a1)
{
  v75 = a1;
  v1 = sub_100706B30(&qword_100CBA9A8);
  __chkstk_darwin(v1 - 8);
  v76 = &v62 - v2;
  v3 = sub_100706B30(&qword_100CBA9B0);
  __chkstk_darwin(v3 - 8);
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v62 - v6;
  v8 = sub_100706B30(&qword_100CBA9B8);
  v70 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v62 - v9;
  v11 = sub_100936038();
  v71 = *(v11 - 8);
  v72 = v11;
  __chkstk_darwin(v11);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100935FF8();
  v74 = v13;
  v80 = v13;
  v14 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  v82 = v14;
  sub_100936128();
  v15 = sub_100706B30(&qword_100CBA350);
  v16 = (*(v15 - 8) + 56);
  v68 = *v16;
  v68(v7, 0, 1, v15);
  v17 = sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession);
  sub_100936828();
  sub_100706B30(&qword_100CB4A30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1009AD930;
  *(v18 + 32) = swift_getKeyPath();
  *(v18 + 40) = swift_getKeyPath();
  v19 = v10;
  v20 = v8;
  sub_1009367C8();
  v21 = v79;
  v22 = sub_100936728();
  v23 = v21;
  if (!v21)
  {
    v24 = &_swiftEmptyArrayStorage;
    v64 = v17;
    v65 = v16;
    v66 = v15;
    v67 = v14;
    if (v22 >> 62)
    {
      goto LABEL_30;
    }

    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v26 = v66;
      v63 = v20;
      v62 = v19;
      if (v25)
      {
        v78 = v22;
        v79 = v25;
        v81 = v24;
        result = sub_1008E44BC(0, v25 & ~(v25 >> 63), 0);
        v28 = v79;
        if (v79 < 0)
        {
          __break(1u);
          return result;
        }

        v77 = 0;
        v29 = v81;
        if ((v78 & 0xC000000000000001) != 0)
        {
          v30 = 0;
          do
          {
            sub_100937268();
            v31 = sub_100755430();
            v33 = v32;
            v34 = sub_100755A00();
            v36 = v35;
            swift_unknownObjectRelease();
            v81 = v29;
            v38 = v29[2];
            v37 = v29[3];
            if (v38 >= v37 >> 1)
            {
              sub_1008E44BC((v37 > 1), v38 + 1, 1);
              v29 = v81;
            }

            v30 = (v30 + 1);
            v29[2] = v38 + 1;
            v39 = &v29[4 * v38];
            v39[4] = v31;
            v39[5] = v33;
            v39[6] = v34;
            v39[7] = v36;
          }

          while (v79 != v30);
        }

        else
        {
          v41 = 32;
          do
          {
            v79 = v28;

            v42 = sub_100755430();
            v44 = v43;
            v45 = sub_100755A00();
            v47 = v46;

            v81 = v29;
            v49 = v29[2];
            v48 = v29[3];
            if (v49 >= v48 >> 1)
            {
              sub_1008E44BC((v48 > 1), v49 + 1, 1);
              v29 = v81;
            }

            v29[2] = v49 + 1;
            v50 = &v29[4 * v49];
            v50[4] = v42;
            v50[5] = v44;
            v50[6] = v45;
            v50[7] = v47;
            v41 += 8;
            v28 = (v79 - 1);
          }

          while (v79 != 1);
        }

        v73 = v29;

        v24 = v75;
        v20 = v63;
        v19 = v62;
        v23 = v77;
        v26 = v66;
      }

      else
      {

        v73 = &_swiftEmptyArrayStorage;
        v24 = v75;
      }

      v78 = &v62;
      __chkstk_darwin(v40);
      *(&v62 - 2) = v74;
      v51 = v69;
      sub_100936128();
      v68(v51, 0, 1, v26);
      sub_100936748();
      if (v23)
      {

        sub_100013814(v51, &qword_100CBA9B0);
        (*(v70 + 8))(v19, v20);
        return (*(v71 + 8))(v74, v72);
      }

      v22 = sub_100013814(v51, &qword_100CBA9B0);
      v52 = v73;
      v75 = v73[2];
      if (!v75)
      {
LABEL_27:
        (*(v70 + 8))(v62, v63);

        return (*(v71 + 8))(v74, v72);
      }

      v53 = 0;
      v19 = v73 + 7;
      while (v53 < v52[2])
      {
        v77 = 0;
        v54 = *(v19 - 1);
        v55 = *v19;
        v20 = *(v19 - 3);
        v56 = *(v19 - 2);
        v57 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
        v79 = &v62;
        __chkstk_darwin(v57);
        *(&v62 - 4) = v20;
        *(&v62 - 3) = v56;
        v58 = v76;
        *(&v62 - 2) = v54;
        *(&v62 - 1) = v55;

        v81 = v57;
        sub_100936128();

        v59 = sub_100706B30(&unk_100CBA340);
        (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
        sub_100014C40(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable);
        v60 = v77;
        sub_100936748();
        v23 = v60;
        if (v60)
        {

          sub_100013814(v58, &qword_100CBA9A8);
          (*(v70 + 8))(v62, v63);
          return (*(v71 + 8))(v74, v72);
        }

        v53 = (v53 + 1);
        v22 = sub_100013814(v58, &qword_100CBA9A8);
        v19 += 4;
        v52 = v73;
        if (v75 == v53)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_30:
      v61 = v22;
      v25 = sub_1009373F8();
      v22 = v61;
    }
  }

  (*(v70 + 8))(v19, v8);
  return (*(v71 + 8))(v74, v72);
}

uint64_t sub_1008D1098@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22[1] = a1;
  v24 = a2;
  v23 = sub_100935D38();
  v22[0] = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100706B30(&qword_100CBA628);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  v8 = sub_100706B30(&qword_100CBAA28);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - v10;
  v12 = sub_100706B30(&qword_100CBAA30);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v22 - v14;
  sub_100014C88(&qword_100CBAA38, &qword_100CBAA28);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v9 + 8))(v11, v8);
  sub_100936038();
  sub_100935D48();
  v16 = v22[0];
  v17 = v23;
  (*(v22[0] + 104))(v3, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v23);
  v18 = sub_100706B30(&qword_100CBAA40);
  v19 = v24;
  v24[3] = v18;
  v19[4] = sub_1008F13C4();
  sub_100014250(v19);
  sub_100014C88(&qword_100CBAA60, &qword_100CBAA30);
  sub_100014C88(&qword_100CBA688, &qword_100CBA628);
  sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date);
  v20 = v25;
  sub_100935CD8();
  (*(v16 + 8))(v3, v17);
  (*(v26 + 8))(v7, v20);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1008D164C(void **a1)
{
  v3 = sub_100706B30(&qword_100CBABB0);
  __chkstk_darwin(v3 - 8);
  v5 = v23 - v4;
  v6 = sub_100706B30(&qword_100CBABB8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - v8;
  v10 = sub_100706B30(&qword_100CBA358);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
  v12 = sub_100014C40(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice);
  v13 = v11;
  sub_100936828();
  v14 = sub_100936728();
  result = (*(v7 + 8))(v9, v6);
  if (!v1)
  {
    v23[2] = 0;
    v23[3] = v12;
    v24 = &_swiftEmptyArrayStorage;
    if (v14 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1009373F8())
    {
      v23[0] = v13;
      v23[1] = a1;
      v17 = 0;
      v13 = v14 & 0xFFFFFFFFFFFFFF8;
      while ((v14 & 0xC000000000000001) != 0)
      {
        sub_100937268();
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_20;
        }

LABEL_10:
        v19 = sub_100753830();
        if (v19)
        {
          if (v19 >> 62)
          {
            a1 = sub_1009373F8();

            if (a1)
            {
LABEL_13:

              goto LABEL_6;
            }
          }

          else
          {
            a1 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);

            if (a1)
            {
              goto LABEL_13;
            }
          }
        }

        a1 = &v24;
        sub_100937298();
        sub_1009372C8();
        sub_1009372D8();
        sub_1009372A8();
LABEL_6:
        ++v17;
        if (v18 == i)
        {
          v20 = v24;
          goto LABEL_24;
        }
      }

      if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v18 = v17 + 1;
      if (!__OFADD__(v17, 1))
      {
        goto LABEL_10;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v20 = &_swiftEmptyArrayStorage;
LABEL_24:

    if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
    {
      result = sub_1009373F8();
      v21 = result;
      if (result)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v21 = *(v20 + 16);
      if (v21)
      {
LABEL_27:
        if (v21 < 1)
        {
          __break(1u);
          return result;
        }

        for (j = 0; j != v21; ++j)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            sub_100937268();
          }

          else
          {
          }

          sub_100936758();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1008D1A30(uint64_t a1)
{
  v2 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v2 - 8);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_100936038();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v27 = a1;
  v16 = sub_1008B6FBC(a1, sub_1008ECA9C);
  sub_100936028();
  v32 = v15;
  v33 = v12;
  result = sub_100935F98();
  v18 = v16;
  if (v16 >> 62)
  {
    result = sub_1009373F8();
    v18 = v16;
    v19 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_16:

    v24 = *(v26 + 8);
    v24(v33, v7);
    return (v24)(v32, v7);
  }

  v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v19 >= 1)
  {
    v20 = 0;
    v34 = v18 & 0xC000000000000001;
    v21 = (v26 + 48);
    v29 = (v26 + 8);
    v30 = (v26 + 32);
    v28 = (v26 + 16);
    v22 = (v26 + 56);
    while (1)
    {
      if (v34)
      {
        sub_100937268();
      }

      else
      {
      }

      sub_1007596B0();
      if ((*v21)(v6, 1, v7) == 1)
      {
        sub_100013814(v6, &qword_100CB4AC0);
        v23 = v31;
        (*v28)(v31, v32, v7);
        (*v22)(v23, 0, 1, v7);
        sub_100759A78(v23);
      }

      else
      {
        (*v30)(v9, v6, v7);
        if (sub_100935F78())
        {
          type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle(0);
          sub_100014C40(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
          sub_100936758();

          (*v29)(v9, v7);
          goto LABEL_7;
        }

        (*v29)(v9, v7);
      }

LABEL_7:
      if (v19 == ++v20)
      {
        goto LABEL_16;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1008D1FD8(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = sub_100706B30(&qword_100CBA370);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = sub_100936038();
  v29 = v10;
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  sub_100936028();
  sub_100935F98();
  v28 = *(v11 + 8);
  v28(v14, v10);
  v32 = v16;
  v33 = type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex(0);
  v27 = v9;
  sub_100936128();
  v17 = *(v4 + 16);
  v26 = v3;
  v17(v7, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v7, v3);
  v20 = swift_allocObject();
  v21 = v30;
  v22 = v31;
  v20[2] = v2;
  v20[3] = v21;
  v20[4] = v22;
  v23 = *((swift_isaMask & *v2) + 0x110);
  v24 = v2;
  sub_1000254AC(v21);
  v23(sub_1008EE290, v19, sub_1008EE308, v20);

  (*(v4 + 8))(v27, v26);
  return (v28)(v16, v29);
}

uint64_t sub_1008D2330@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22[1] = a1;
  v24 = a2;
  v23 = sub_100935D38();
  v22[0] = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100706B30(&qword_100CBA628);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  v8 = sub_100706B30(&qword_100CBA968);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - v10;
  v12 = sub_100706B30(&qword_100CBA970);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v22 - v14;
  sub_100014C88(&qword_100CBA978, &qword_100CBA968);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v9 + 8))(v11, v8);
  sub_100936038();
  sub_100935D48();
  v16 = v22[0];
  v17 = v23;
  (*(v22[0] + 104))(v3, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v23);
  v18 = sub_100706B30(&qword_100CBA980);
  v19 = v24;
  v24[3] = v18;
  v19[4] = sub_1008F1094();
  sub_100014250(v19);
  sub_100014C88(&qword_100CBA9A0, &qword_100CBA970);
  sub_100014C88(&qword_100CBA688, &qword_100CBA628);
  sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date);
  v20 = v25;
  sub_100935CD8();
  (*(v16 + 8))(v3, v17);
  (*(v26 + 8))(v7, v20);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1008D2798(uint64_t a1, uint64_t a2)
{
  v3 = sub_100706B30(&qword_100CBA958);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex(0);
  v6 = sub_100706B30(&qword_100CBA370);
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_100014C40(&qword_100CBA960, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex);
  sub_100936748();
  return sub_100013814(v5, &qword_100CBA958);
}

uint64_t sub_1008D292C(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  if (a1 >> 62)
  {
    result = sub_1009373F8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v11 = sub_1009364B8();
  v12 = sub_100936F18();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315394;
    sub_100014170(0, &qword_100CBA2E0);
    v15 = sub_100936CF8();
    v17 = sub_10001273C(v15, v16, &v22);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a4;
    _os_log_impl(&_mh_execute_header, v11, v12, "Will mark sender key entries for delete - with unregisteredURIs: %s deleteAfter: %f", v13, 0x16u);
    sub_100012970(v14);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a4;
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a2;
  v19[4] = a3;
  v20 = *((swift_isaMask & *v5) + 0x110);

  v21 = v5;
  sub_1000254AC(a2);
  v20(sub_1008EE34C, v18, sub_1008EE36C, v19);
}

uint64_t sub_1008D2BD0(uint64_t a1, unint64_t a2, double a3)
{
  v44 = a1;
  v5 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v5 - 8);
  v38 = &v38 - v6;
  v7 = sub_100706B30(&qword_100CBA8D8);
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v11 = sub_100706B30(&qword_100CBA368);
  v39 = *(v11 - 8);
  isUniquelyReferenced_nonNull_native = __chkstk_darwin(v11);
  v46 = &v38 - v13;
  if (a2 >> 62)
  {
    goto LABEL_22;
  }

  v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v40 = isUniquelyReferenced_nonNull_native;
    v41 = v10;
    v42 = v8;
    v43 = v7;
    if (!v14)
    {
      break;
    }

    v8 = 0;
    v47 = a2 & 0xFFFFFFFFFFFFFF8;
    v48 = a2 & 0xC000000000000001;
    v7 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v48)
      {
        isUniquelyReferenced_nonNull_native = sub_100937268();
      }

      else
      {
        if (v8 >= *(v47 + 16))
        {
          goto LABEL_21;
        }

        isUniquelyReferenced_nonNull_native = *(a2 + 8 * v8 + 32);
      }

      v15 = isUniquelyReferenced_nonNull_native;
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v17 = [isUniquelyReferenced_nonNull_native prefixedURI];
      v10 = sub_100936B38();
      v19 = v18;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1000251F4(0, *(v7 + 2) + 1, 1, v7);
        v7 = isUniquelyReferenced_nonNull_native;
      }

      v21 = *(v7 + 2);
      v20 = *(v7 + 3);
      if (v21 >= v20 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1000251F4((v20 > 1), v21 + 1, 1, v7);
        v7 = isUniquelyReferenced_nonNull_native;
      }

      *(v7 + 2) = v21 + 1;
      v22 = &v7[16 * v21];
      *(v22 + 4) = v10;
      *(v22 + 5) = v19;
      ++v8;
      if (v16 == v14)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v37 = isUniquelyReferenced_nonNull_native;
    v14 = sub_1009373F8();
    isUniquelyReferenced_nonNull_native = v37;
  }

  v7 = &_swiftEmptyArrayStorage;
LABEL_17:
  v23 = sub_100747820(v7);

  __chkstk_darwin(v24);
  *(&v38 - 2) = v23;
  v25 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  v49 = v25;
  v26 = v46;
  sub_100936128();

  v27 = v38;
  v28 = v39;
  v29 = v40;
  (*(v39 + 16))(v38, v26, v40);
  (*(v28 + 56))(v27, 0, 1, v29);
  v30 = sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  v31 = v41;
  v32 = sub_100936828();
  __chkstk_darwin(v32);
  *(&v38 - 2) = a3;
  v33 = sub_100716928();
  v34 = sub_100716930();
  v35 = v45;
  sub_100716938(v31, v33, v34, sub_1008F0D3C, (&v38 - 4), v25, v30);
  if (v35)
  {
  }

  (*(v42 + 8))(v31, v43);
  return (*(v28 + 8))(v46, v29);
}

uint64_t sub_1008D30B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v77 = a2;
  v81 = a3;
  v94 = sub_100706B30(&qword_100CBA430);
  v101 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v60 - v5;
  v92 = sub_100706B30(&qword_100CBA6A0);
  v99 = *(v92 - 8);
  __chkstk_darwin(v92);
  v89 = &v60 - v6;
  v93 = sub_100706B30(&qword_100CBA6A8);
  v100 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v60 - v7;
  v8 = sub_100706B30(&qword_100CBA6B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v60 - v10;
  v85 = sub_100706B30(&qword_100CBA828);
  v97 = *(v85 - 8);
  __chkstk_darwin(v85);
  v13 = &v60 - v12;
  v83 = sub_100706B30(&qword_100CBA8E0);
  v96 = *(v83 - 8);
  __chkstk_darwin(v83);
  v15 = &v60 - v14;
  v88 = sub_100706B30(&qword_100CBA8E8);
  v98 = *(v88 - 8);
  __chkstk_darwin(v88);
  v82 = &v60 - v16;
  v79 = sub_100706B30(&qword_100CBA8F0);
  v80 = *(v79 - 8);
  v17 = __chkstk_darwin(v79);
  v78 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v60 - v19;
  v86 = *a1;
  v102 = a2;
  v76 = sub_100706B30(&qword_100CBA8F8);
  sub_100935D48();
  sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v84 = *(v9 + 8);
  v87 = v9 + 8;
  v84(v11, v8);
  v69 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v75 = sub_100014C88(&qword_100CBA900, &qword_100CBA8E0);
  v74 = sub_100014C88(&qword_100CBA848, &qword_100CBA828);
  v73 = sub_100014C88(&qword_100CBA908, &qword_100CBA8F8);
  v62 = v15;
  v66 = v13;
  v20 = v83;
  v21 = v85;
  sub_100935CA8();
  v22 = *(v97 + 8);
  v97 += 8;
  v72 = v22;
  v22(v13, v21);
  v23 = *(v96 + 8);
  v96 += 8;
  v71 = v23;
  v23(v15, v20);
  sub_100935D58();
  swift_getKeyPath();
  v24 = v89;
  sub_100935C78();

  v84(v11, v8);
  LOBYTE(v102) = 1;
  v25 = v91;
  sub_100935D48();
  v70 = sub_100014C88(&qword_100CBA708, &qword_100CBA6A0);
  v69 = sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  v26 = v90;
  v27 = v92;
  v28 = v94;
  sub_100935C68();
  v29 = *(v101 + 8);
  v101 += 8;
  v68 = v29;
  v29(v25, v28);
  v30 = *(v99 + 8);
  v99 += 8;
  v67 = v30;
  v30(v24, v27);
  v65 = sub_100014C88(&qword_100CBA910, &qword_100CBA8E8);
  v64 = sub_100014C88(&qword_100CBA720, &qword_100CBA6A8);
  v31 = v82;
  v32 = v26;
  v33 = v88;
  v34 = v93;
  sub_100935CF8();
  v35 = *(v100 + 8);
  v100 += 8;
  v63 = v35;
  v35(v32, v34);
  v36 = *(v98 + 8);
  v98 += 8;
  v61 = v36;
  v36(v31, v33);
  v102 = v77;
  v37 = v62;
  sub_100935D48();
  sub_100935D58();
  swift_getKeyPath();
  v38 = v66;
  sub_100935C78();

  v39 = v84;
  v84(v11, v8);
  v40 = v37;
  v41 = v83;
  v42 = v85;
  sub_100935CA8();
  v72(v38, v42);
  v71(v40, v41);
  sub_100935D58();
  swift_getKeyPath();
  v43 = v89;
  sub_100935C78();

  v39(v11, v8);
  LOBYTE(v102) = 0;
  v44 = v91;
  sub_100935D48();
  v45 = v90;
  v46 = v92;
  v47 = v94;
  sub_100935C68();
  v68(v44, v47);
  v67(v43, v46);
  v48 = v78;
  v49 = v82;
  v50 = v45;
  v51 = v88;
  v52 = v93;
  sub_100935CF8();
  v63(v50, v52);
  v61(v49, v51);
  v53 = sub_100706B30(&qword_100CBA918);
  v54 = v81;
  v81[3] = v53;
  v54[4] = sub_1008F0D68();
  sub_100014250(v54);
  sub_100014C88(&qword_100CBA950, &qword_100CBA8F0);
  v55 = v95;
  v56 = v48;
  v57 = v79;
  sub_100935D08();
  v58 = *(v80 + 8);
  v58(v56, v57);
  return (v58)(v55, v57);
}

uint64_t sub_1008D3D28()
{
  v0 = sub_100936038();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  sub_100935FF8();
  sub_100935F48();
  (*(v1 + 8))(v3, v0);
  (*(v1 + 56))(v6, 0, 1, v0);
  return sub_10075D184(v6);
}

uint64_t sub_1008D3E88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100936B38();
  v7 = (*((swift_isaMask & *v2) + 0xE0))(v6);

  v8 = sub_1009364B8();
  v9 = sub_100936F18();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    sub_100014170(0, &qword_100CBA2E0);
    v12 = sub_100936CF8();
    v14 = sub_10001273C(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Cleaning up invalid sender key entries - with registeredURIs: %s", v10, 0xCu);
    sub_100012970(v11);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v17 = *((swift_isaMask & *v3) + 0x110);
  v18 = v3;

  v17(sub_1008EE4D8, v15, sub_1008EE534, v16);
}

uint64_t sub_1008D4108(uint64_t a1, unint64_t a2)
{
  v95 = a2;
  v88 = a1;
  v2 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v2 - 8);
  v82 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v83 = &v81 - v5;
  __chkstk_darwin(v6);
  v84 = &v81 - v7;
  __chkstk_darwin(v8);
  v86 = &v81 - v9;
  v89 = sub_100706B30(&qword_100CBA368);
  v102 = *(v89 - 8);
  __chkstk_darwin(v89);
  v103 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v100 = &v81 - v12;
  __chkstk_darwin(v13);
  v101 = &v81 - v14;
  __chkstk_darwin(v15);
  v104 = &v81 - v16;
  __chkstk_darwin(v17);
  v19 = &v81 - v18;
  __chkstk_darwin(v20);
  v22 = &v81 - v21;
  v23 = sub_100936038();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v97 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v99 = &v81 - v27;
  __chkstk_darwin(v28);
  v30 = &v81 - v29;
  __chkstk_darwin(v31);
  v33 = &v81 - v32;
  __chkstk_darwin(v34);
  v36 = &v81 - v35;
  v37 = type metadata accessor for SenderKeyDistributionManager(0);
  (*(v37 + 816))();
  (*(v37 + 824))();
  sub_100936028();
  sub_100935F48();
  v39 = *(v24 + 8);
  v38 = (v24 + 8);
  v39(v33, v23);
  sub_100936028();
  sub_100935F48();
  v40 = v33;
  v41 = v95;
  v90 = v39;
  v39(v40, v23);
  v91 = v36;
  v108 = v36;
  v42 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  v109 = v42;
  v98 = v22;
  sub_100936128();
  v92 = v30;
  v107 = v30;
  v96 = v19;
  sub_100936128();
  sub_100936128();
  if (v41 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1009373F8())
  {
    v85 = v42;
    v93 = v38;
    v94 = v23;
    if (!i)
    {
      break;
    }

    v44 = 0;
    v105 = v41 & 0xFFFFFFFFFFFFFF8;
    v106 = (v41 & 0xC000000000000001);
    v42 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v106)
      {
        v45 = sub_100937268();
      }

      else
      {
        if (v44 >= *(v105 + 16))
        {
          goto LABEL_21;
        }

        v45 = *(v41 + 8 * v44 + 32);
      }

      v38 = v45;
      v23 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      v46 = v41;
      v47 = [v45 prefixedURI];
      v48 = sub_100936B38();
      v50 = v49;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1000251F4(0, *(v42 + 2) + 1, 1, v42);
      }

      v52 = *(v42 + 2);
      v51 = *(v42 + 3);
      v38 = (v52 + 1);
      if (v52 >= v51 >> 1)
      {
        v42 = sub_1000251F4((v51 > 1), v52 + 1, 1, v42);
      }

      *(v42 + 2) = v38;
      v53 = &v42[16 * v52];
      *(v53 + 4) = v48;
      *(v53 + 5) = v50;
      ++v44;
      v41 = v46;
      if (v23 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v42 = &_swiftEmptyArrayStorage;
LABEL_17:
  v54 = v99;
  v55 = sub_100935FF8();
  v106 = &v81;
  __chkstk_darwin(v55);
  *(&v81 - 2) = v42;
  v56 = v101;
  sub_100936128();

  v57 = v97;
  v58 = sub_100935F28();
  __chkstk_darwin(v58);
  *(&v81 - 2) = v57;
  *(&v81 - 1) = v54;
  v59 = v100;
  v60 = sub_100936128();
  __chkstk_darwin(v60);
  *(&v81 - 2) = v56;
  *(&v81 - 1) = v59;
  sub_100936128();
  v61 = v102;
  v62 = v86;
  v63 = v89;
  v105 = *(v102 + 16);
  (v105)(v86, v98, v89);
  v64 = *(v61 + 56);
  v64(v62, 0, 1, v63);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  v65 = v87;
  sub_100936748();
  if (v65)
  {
    v66 = v63;
    v67 = v94;
    v68 = v62;
    v71 = v92;
    v72 = v91;
    v73 = v90;
    sub_100013814(v68, &unk_100CBA690);
    v74 = *(v102 + 8);
    v74(v103, v66);
    v74(v104, v66);
    v74(v96, v66);
    v74(v98, v66);
    v74(v100, v66);
    v73(v97, v67);
    v74(v101, v66);
    v73(v99, v67);
    v73(v71, v67);
    return (v73)(v72, v67);
  }

  else
  {
    sub_100013814(v62, &unk_100CBA690);
    v69 = v84;
    (v105)(v84, v96, v63);
    v64(v69, 0, 1, v63);
    sub_100936748();
    sub_100013814(v69, &unk_100CBA690);
    v70 = v83;
    (v105)(v83, v104, v63);
    v64(v70, 0, 1, v63);
    sub_100936748();
    sub_100013814(v70, &unk_100CBA690);
    v76 = v82;
    (v105)(v82, v103, v63);
    v64(v76, 0, 1, v63);
    sub_100936748();
    v77 = v63;
    sub_100013814(v76, &unk_100CBA690);
    v78 = *(v102 + 8);
    v78(v103, v77);
    v78(v104, v77);
    v78(v96, v77);
    v78(v98, v77);
    v78(v100, v77);
    v79 = v94;
    v80 = v90;
    v90(v97, v94);
    v78(v101, v77);
    v80(v99, v79);
    v80(v92, v79);
    return (v80)(v91, v79);
  }
}

uint64_t sub_1008D4CA0@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v59 = a3;
  v52 = a2;
  v50 = a1;
  v65 = a4;
  v4 = sub_100706B30(&qword_100CBA430);
  v5 = *(v4 - 8);
  v61 = v4;
  v62 = v5;
  __chkstk_darwin(v4);
  v57 = &v41 - v6;
  v58 = sub_100706B30(&qword_100CBA6A0);
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v41 - v7;
  v8 = sub_100706B30(&qword_100CBA6A8);
  v9 = *(v8 - 8);
  v63 = v8;
  v64 = v9;
  __chkstk_darwin(v8);
  v56 = &v41 - v10;
  v11 = sub_100935D38();
  v41 = v11;
  v42 = *(v11 - 8);
  v12 = v42;
  __chkstk_darwin(v11);
  v47 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100706B30(&qword_100CBA628);
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v15 = &v41 - v14;
  v16 = sub_100706B30(&qword_100CBA6B0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - v18;
  v46 = sub_100706B30(&qword_100CBA898);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v21 = &v41 - v20;
  v22 = sub_100706B30(&qword_100CBA8A0);
  v23 = *(v22 - 8);
  v53 = v22;
  v54 = v23;
  __chkstk_darwin(v22);
  v66 = &v41 - v24;
  v50 = *v50;
  sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v25 = *(v17 + 8);
  v44 = v17 + 8;
  v45 = v25;
  v25(v19, v16);
  sub_100936038();
  v26 = v15;
  sub_100935D48();
  v27 = v47;
  (*(v12 + 104))(v47, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v11);
  v52 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100014C88(&qword_100CBA8A8, &qword_100CBA898);
  v43 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100014C88(&qword_100CBA688, &qword_100CBA628);
  sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date);
  v28 = v46;
  v29 = v49;
  sub_100935CD8();
  (*(v42 + 8))(v27, v41);
  (*(v51 + 8))(v26, v29);
  (*(v48 + 8))(v21, v28);
  sub_100935D58();
  swift_getKeyPath();
  v30 = v55;
  sub_100935C78();

  v45(v19, v16);
  v67 = v59;
  v31 = v57;
  sub_100935D48();
  sub_100014C88(&qword_100CBA708, &qword_100CBA6A0);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  v32 = v56;
  v33 = v58;
  v34 = v61;
  sub_100935C68();
  (*(v62 + 8))(v31, v34);
  (*(v60 + 8))(v30, v33);
  v35 = sub_100706B30(&qword_100CBA8B0);
  v36 = v65;
  v65[3] = v35;
  v36[4] = sub_1008F0B6C();
  sub_100014250(v36);
  sub_100014C88(&qword_100CBA8D0, &qword_100CBA8A0);
  sub_100014C88(&qword_100CBA720, &qword_100CBA6A8);
  v37 = v66;
  v38 = v53;
  v39 = v63;
  sub_100935CF8();
  (*(v64 + 8))(v32, v39);
  return (*(v54 + 8))(v37, v38);
}

uint64_t sub_1008D556C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100706B30(&qword_100CBA430);
  v3 = *(v2 - 8);
  v17 = v2;
  v18 = v3;
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  v6 = sub_100706B30(&qword_100CBA6B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = sub_100706B30(&qword_100CBA6A0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v7 + 8))(v9, v6);
  v19 = 1;
  sub_100935D48();
  a1[3] = sub_100706B30(&qword_100CBA6A8);
  a1[4] = sub_1008F0304();
  sub_100014250(a1);
  sub_100014C88(&qword_100CBA708, &qword_100CBA6A0);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  v14 = v17;
  sub_100935C68();
  (*(v18 + 8))(v5, v14);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1008D58D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v94 = a2;
  v98 = a3;
  v112 = sub_100706B30(&qword_100CBA430);
  v120 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = v75 - v5;
  v110 = sub_100706B30(&qword_100CBA6A0);
  v118 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = v75 - v6;
  v111 = sub_100706B30(&qword_100CBA6A8);
  v119 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = v75 - v7;
  v8 = sub_100706B30(&qword_100CBA6B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v75 - v10;
  v103 = sub_100706B30(&qword_100CBA828);
  v116 = *(v103 - 8);
  __chkstk_darwin(v103);
  v13 = v75 - v12;
  v101 = sub_100706B30(&qword_100CBA450);
  v115 = *(v101 - 8);
  __chkstk_darwin(v101);
  v15 = v75 - v14;
  v102 = sub_100706B30(&qword_100CBA830);
  v114 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = v75 - v16;
  v106 = sub_100706B30(&qword_100CBA838);
  v117 = *(v106 - 8);
  __chkstk_darwin(v106);
  v99 = v75 - v17;
  v96 = sub_100706B30(&qword_100CBA840);
  v97 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v113 = v75 - v20;
  v75[1] = *a1;
  v121 = a2;
  v93 = sub_100706B30(&qword_100CBA460);
  sub_100935D48();
  v21 = v11;
  v22 = v8;
  v23 = sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  v24 = v21;
  sub_100935C78();

  v25 = *(v9 + 8);
  v104 = v9 + 8;
  v105 = v25;
  v25(v21, v8);
  v83 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v92 = sub_100014C88(&qword_100CBA470, &qword_100CBA450);
  v84 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v91 = sub_100014C88(&qword_100CBA848, &qword_100CBA828);
  v90 = sub_100014C88(&qword_100CBA480, &qword_100CBA460);
  v26 = v100;
  v27 = v15;
  v80 = v15;
  v85 = v13;
  v28 = v101;
  v29 = v103;
  sub_100935CA8();
  v30 = *(v116 + 8);
  v116 += 8;
  v89 = v30;
  v30(v13, v29);
  v31 = *(v115 + 8);
  v115 += 8;
  v88 = v31;
  v31(v27, v28);
  v87 = sub_100014C88(&qword_100CBA850, &qword_100CBA830);
  v32 = v99;
  v33 = v102;
  sub_100935C88();
  v34 = *(v114 + 8);
  v114 += 8;
  v86 = v34;
  v34(v26, v33);
  v75[2] = v23;
  sub_100935D58();
  swift_getKeyPath();
  v35 = v107;
  sub_100935C78();

  v105(v24, v22);
  LOBYTE(v121) = 1;
  v36 = v109;
  sub_100935D48();
  v84 = sub_100014C88(&qword_100CBA708, &qword_100CBA6A0);
  v83 = sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  v37 = v108;
  v38 = v35;
  v39 = v36;
  v40 = v110;
  v41 = v112;
  sub_100935C68();
  v42 = *(v120 + 8);
  v120 += 8;
  v82 = v42;
  v42(v39, v41);
  v43 = *(v118 + 8);
  v118 += 8;
  v81 = v43;
  v43(v38, v40);
  v79 = sub_100014C88(&qword_100CBA858, &qword_100CBA838);
  v78 = sub_100014C88(&qword_100CBA720, &qword_100CBA6A8);
  v44 = v37;
  v45 = v106;
  v46 = v111;
  sub_100935CF8();
  v47 = *(v119 + 8);
  v119 += 8;
  v77 = v47;
  v47(v44, v46);
  v48 = *(v117 + 8);
  v117 += 8;
  v76 = v48;
  v48(v32, v45);
  v121 = v94;
  v49 = v80;
  sub_100935D48();
  v50 = v22;
  v75[0] = v22;
  sub_100935D58();
  swift_getKeyPath();
  v51 = v85;
  sub_100935C78();

  v52 = v24;
  v53 = v105;
  v105(v24, v50);
  v54 = v100;
  v55 = v101;
  v56 = v103;
  sub_100935CA8();
  v89(v51, v56);
  v88(v49, v55);
  v57 = v99;
  v58 = v102;
  sub_100935C88();
  v86(v54, v58);
  v59 = v75[0];
  sub_100935D58();
  swift_getKeyPath();
  v60 = v107;
  sub_100935C78();

  v53(v52, v59);
  LOBYTE(v121) = 0;
  v61 = v109;
  sub_100935D48();
  v62 = v108;
  v63 = v110;
  v64 = v112;
  sub_100935C68();
  v82(v61, v64);
  v81(v60, v63);
  v65 = v95;
  v66 = v106;
  v67 = v111;
  sub_100935CF8();
  v77(v62, v67);
  v76(v57, v66);
  v68 = sub_100706B30(&qword_100CBA860);
  v69 = v98;
  v98[3] = v68;
  v69[4] = sub_1008F089C();
  sub_100014250(v69);
  sub_100014C88(&qword_100CBA890, &qword_100CBA840);
  v70 = v113;
  v71 = v65;
  v72 = v96;
  sub_100935D08();
  v73 = *(v97 + 8);
  v73(v71, v72);
  return (v73)(v70, v72);
}

uint64_t sub_1008D66E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v34 = a2;
  v35 = a3;
  v28[1] = a1;
  v3 = sub_100935D38();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = sub_100706B30(&qword_100CBA628);
  v36 = *(v28[0] - 8);
  __chkstk_darwin(v28[0]);
  v6 = v28 - v5;
  v7 = sub_100706B30(&qword_100CBA6B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v28 - v9;
  v11 = sub_100706B30(&qword_100CBA7E8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v28 - v13;
  v15 = sub_100706B30(&qword_100CBA7F0);
  v16 = *(v15 - 8);
  v29 = v15;
  v30 = v16;
  __chkstk_darwin(v15);
  v18 = v28 - v17;
  sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v8 + 8))(v10, v7);
  sub_100936038();
  sub_100935D48();
  sub_100014C88(&qword_100CBA7F8, &qword_100CBA7E8);
  sub_100014C88(&qword_100CBA688, &qword_100CBA628);
  v19 = v28[0];
  sub_100935D18();
  v20 = *(v36 + 8);
  v36 += 8;
  v20(v6, v19);
  (*(v12 + 8))(v14, v11);
  sub_100935D48();
  v22 = v31;
  v21 = v32;
  v23 = v33;
  (*(v32 + 104))(v31, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v33);
  v24 = sub_100706B30(&qword_100CBA800);
  v25 = v35;
  v35[3] = v24;
  v25[4] = sub_1008F06D4();
  sub_100014250(v25);
  sub_100014C88(&qword_100CBA820, &qword_100CBA7F0);
  sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date);
  v26 = v29;
  sub_100935CD8();
  (*(v21 + 8))(v22, v23);
  v20(v6, v19);
  return (*(v30 + 8))(v18, v26);
}

uint64_t sub_1008D6C74@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v30 = a2;
  v33 = a3;
  v4 = sub_100706B30(&qword_100CBA6B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - v6;
  v8 = sub_100706B30(&qword_100CBA798);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v27 - v10;
  v12 = sub_100706B30(&qword_100CBA7A0);
  v13 = *(v12 - 8);
  v31 = v12;
  v32 = v13;
  __chkstk_darwin(v12);
  v29 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v28 = v27 - v16;
  v27[0] = *a1;
  v27[1] = sub_100706B30(&qword_100CBA368);
  sub_100935D48();
  v17 = sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  v36 = v4;
  v37 = v7;
  sub_100014C88(&qword_100CBA7A8, &qword_100CBA798);
  v35 = v17;
  sub_100935CB8();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v19 = *(v5 + 8);
  v19(v7, v4);
  sub_100935D48();
  sub_100935D58();
  v34 = v7;
  v20 = v29;
  sub_100935CB8();
  v18(v11, v8);
  v19(v7, v4);
  v21 = sub_100706B30(&qword_100CBA7B0);
  v22 = v33;
  v33[3] = v21;
  v22[4] = sub_1008F04A4();
  sub_100014250(v22);
  sub_100014C88(&qword_100CBA7E0, &qword_100CBA7A0);
  v23 = v28;
  v24 = v31;
  sub_100935CF8();
  v25 = *(v32 + 8);
  v25(v20, v24);
  return (v25)(v23, v24);
}

id sub_1008D70AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a6;
  v24 = a7;
  v11 = sub_1009364F8();
  v26 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100936528();
  v14 = *(v25 - 8);
  __chkstk_darwin(v25);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = im_primary_queue();
  if (result)
  {
    v18 = result;
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    v19[5] = a4;
    aBlock[4] = v23;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = v24;
    v20 = _Block_copy(aBlock);
    swift_errorRetain();
    v21 = a2;

    sub_100936508();
    v27 = &_swiftEmptyArrayStorage;
    sub_100014C40(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550);
    sub_100014C88(&qword_100CB4AB0, &unk_100CB3550);
    sub_1009370B8();
    sub_100936F88();
    _Block_release(v20);

    (*(v26 + 8))(v13, v11);
    (*(v14 + 8))(v16, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008D7430(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = *((swift_isaMask & *v1) + 0x110);

  v6 = v1;
  v5(sub_1008EE578, v3, sub_1008EE594, v4);
}

uint64_t sub_1008D753C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100706B30(&unk_100CBA690);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-v4];
  v6 = sub_100706B30(&qword_100CBA368);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  v12 = a2;
  v13 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  (*(v7 + 16))(v5, v9, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution);
  sub_100936748();
  sub_100013814(v5, &unk_100CBA690);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1008D7760@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a3;
  v65 = sub_100706B30(&qword_100CBA430);
  v68 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v44 - v5;
  v64 = sub_100706B30(&qword_100CBA6A0);
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v52 = &v44 - v6;
  v56 = sub_100706B30(&qword_100CBA6A8);
  v67 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v44 - v7;
  v8 = sub_100706B30(&qword_100CBA6B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - v10;
  v48 = sub_100706B30(&qword_100CBA6B8);
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v13 = &v44 - v12;
  v46 = sub_100706B30(&qword_100CBA6C0);
  v47 = *(v46 - 1);
  __chkstk_darwin(v46);
  v15 = &v44 - v14;
  v16 = sub_100706B30(&qword_100CBA6C8);
  v17 = *(v16 - 8);
  v50 = v16;
  v51 = v17;
  __chkstk_darwin(v16);
  v61 = &v44 - v18;
  v19 = sub_100706B30(&qword_100CBA6D0);
  v20 = *(v19 - 8);
  v54 = v19;
  v55 = v20;
  __chkstk_darwin(v19);
  v63 = &v44 - v21;
  v59 = *a1;
  v71 = a2;
  sub_100706B30(&qword_100CBA6D8);
  sub_100935D48();
  sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v58 = *(v9 + 8);
  v60 = v9 + 8;
  v58(v11, v8);
  v45 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100014C88(&qword_100CBA6E8, &qword_100CBA6C0);
  v44 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100014C88(&qword_100CBA6F0, &qword_100CBA6B8);
  sub_100014C88(&qword_100CBA6F8, &qword_100CBA6D8);
  sub_1008EFEF8();
  v22 = v15;
  v23 = v46;
  v24 = v48;
  sub_100935CA8();
  (*(v49 + 8))(v13, v24);
  (*(v47 + 8))(v22, v23);
  sub_100935D58();
  swift_getKeyPath();
  v25 = v52;
  sub_100935C78();

  v58(v11, v8);
  v70 = 1;
  v26 = v62;
  sub_100935D48();
  v48 = sub_100014C88(&qword_100CBA708, &qword_100CBA6A0);
  v47 = sub_100014C88(&qword_100CBA710, &qword_100CBA430);
  v27 = v53;
  v29 = v64;
  v28 = v65;
  sub_100935C68();
  v30 = *(v68 + 8);
  v68 += 8;
  v46 = v30;
  (v30)(v26, v28);
  v31 = *(v66 + 8);
  v66 += 8;
  v45 = v31;
  v31(v25, v29);
  sub_100014C88(&qword_100CBA718, &qword_100CBA6C8);
  v49 = sub_100014C88(&qword_100CBA720, &qword_100CBA6A8);
  v32 = v61;
  v33 = v50;
  v34 = v56;
  sub_100935CF8();
  v35 = *(v67 + 8);
  v67 += 8;
  v35(v27, v34);
  (*(v51 + 8))(v32, v33);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v58(v11, v8);
  v69 = 0;
  v36 = v62;
  sub_100935D48();
  v38 = v64;
  v37 = v65;
  sub_100935C68();
  (v46)(v36, v37);
  v45(v25, v38);
  v39 = sub_100706B30(&qword_100CBA728);
  v40 = v57;
  v57[3] = v39;
  v40[4] = sub_1008EFF4C();
  sub_100014250(v40);
  sub_100014C88(&qword_100CBA790, &qword_100CBA6D0);
  v41 = v63;
  v42 = v54;
  sub_100935CF8();
  v35(v27, v34);
  return (*(v55 + 8))(v41, v42);
}

uint64_t sub_1008D81A4(uint64_t a1)
{
  v17[0] = a1;
  v1 = sub_100706B30(&qword_100CBA610);
  __chkstk_darwin(v1 - 8);
  v3 = v17 - v2;
  v4 = sub_100706B30(&qword_100CBA618);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - v6;
  v8 = sub_100936038();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v17 - v13;
  sub_1008A2788();
  sub_100936028();
  sub_100935F48();
  v15 = *(v9 + 8);
  v15(v11, v8);
  v17[4] = v14;
  v17[5] = type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent(0);
  sub_100936128();
  (*(v5 + 16))(v3, v7, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  sub_100014C40(&qword_100CBA620, type metadata accessor for SDPersistenceSchemaV6.IDSRegistrationEvent);
  sub_100936748();
  sub_100013814(v3, &qword_100CBA610);
  (*(v5 + 8))(v7, v4);
  return (v15)(v14, v8);
}

uint64_t sub_1008D84A8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22[1] = a1;
  v24 = a2;
  v23 = sub_100935D38();
  v22[0] = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100706B30(&qword_100CBA628);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  v8 = sub_100706B30(&qword_100CBA630);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - v10;
  v12 = sub_100706B30(&qword_100CBA638);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v22 - v14;
  sub_100014C88(&qword_100CBA640, &qword_100CBA630);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v9 + 8))(v11, v8);
  sub_100936038();
  sub_100935D48();
  v16 = v22[0];
  v17 = v23;
  (*(v22[0] + 104))(v3, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v23);
  v18 = sub_100706B30(&qword_100CBA648);
  v19 = v24;
  v24[3] = v18;
  v19[4] = sub_1008EFCCC();
  sub_100014250(v19);
  sub_100014C88(&qword_100CBA680, &qword_100CBA638);
  sub_100014C88(&qword_100CBA688, &qword_100CBA628);
  sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date);
  v20 = v25;
  sub_100935CD8();
  (*(v16 + 8))(v3, v17);
  (*(v26 + 8))(v7, v20);
  return (*(v13 + 8))(v15, v12);
}

void sub_1008D8A0C(uint64_t a1, void **a2, uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v3 = sub_100706B30(&qword_100CBA5B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - v4;
  v6 = sub_100706B30(&qword_100CBA5C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v10 = sub_100706B30(&qword_100CBA5C8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v45 = type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount(0);
  sub_100936128();
  v14 = *(v11 + 16);
  v42 = v13;
  v14(v5, v13, v10);
  v15 = *(v11 + 56);
  v43 = v10;
  v15(v5, 0, 1, v10);
  sub_100014C40(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936828();
  sub_1009367D8();
  v16 = v44;
  v17 = sub_100936728();
  if (!v16)
  {
    v44 = v7;
    v23 = v40;
    if (v17 >> 62)
    {
      v37 = v17;
      v38 = sub_1009373F8();
      v17 = v37;
      v24 = v44;
      if (v38)
      {
LABEL_6:
        if ((v17 & 0xC000000000000001) != 0)
        {
          sub_100937268();
        }

        else
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }
        }

        v25 = [objc_allocWithZone(IDSQualifiedContactsMetric) init];
        sub_100763B94();
        isa = sub_100936E78().super.super.isa;
        [v25 setQualifiedHandlesCount:isa];

        sub_100763F0C();
        v27 = sub_100936E78().super.super.isa;
        [v25 setQualifiedHandlesIML:v27];

        sub_100764284();
        v28 = sub_100936E78().super.super.isa;
        [v25 setHandlesCount:v28];

        sub_100764CEC();
        v29 = sub_100936E78().super.super.isa;
        [v25 setEmergencyHandlesCount:v29];

        sub_1007645FC();
        v30 = sub_100936E78().super.super.isa;
        [v25 setQualifiedEmergencyHandles:v30];

        sub_100764974();
        v31 = sub_100936E78().super.super.isa;
        [v25 setQualifiedEmergencyHandlesIML:v31];

        sub_100765064();
        v32 = sub_100936E78().super.super.isa;
        [v25 setQualifiedPrimaryHandles:v32];

        sub_1007653DC();
        v33 = sub_100936E78().super.super.isa;
        [v25 setQualifiedPrimaryHandlesIML:v33];

        sub_100765754();
        v34 = sub_100936E78().super.super.isa;
        [v25 setPrimaryHandlesCount:v34];

        sub_100765ACC();
        v35 = sub_100936E78().super.super.isa;
        [v25 setFamilyHandlesCount:v35];

        (*(v44 + 8))(v9, v6);
        (*(v11 + 8))(v42, v43);
        v36 = *v23;
        *v23 = v25;

        return;
      }
    }

    else
    {
      v24 = v44;
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }
    }

    (*(v24 + 8))(v9, v6);
    (*(v11 + 8))(v42, v43);
    return;
  }

  (*(v7 + 8))(v9, v6);
  swift_errorRetain();
  v18 = sub_1009364B8();
  v19 = sub_100936EF8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "Error fetching IDSQualifiedContactsCount: %@", v20, 0xCu);
    sub_100013814(v21, &qword_100CB36B0);
  }

  else
  {
  }

  (*(v11 + 8))(v42, v43);
}

uint64_t sub_1008D9078@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100706B30(&qword_100CBA4C0);
  v3 = *(v2 - 8);
  v17 = v2;
  v18 = v3;
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = sub_100706B30(&qword_100CBA5D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_100706B30(&qword_100CBA5D8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  sub_100014C88(&qword_100CBA5E0, &qword_100CBA5D0);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v7 + 8))(v9, v6);
  v19 = sub_100936B38();
  v20 = v14;
  sub_100935D48();

  a1[3] = sub_100706B30(&qword_100CBA5E8);
  a1[4] = sub_1008EFB88();
  sub_100014250(a1);
  sub_100014C88(&qword_100CBA608, &qword_100CBA5D8);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v15 = v17;
  sub_100935C68();
  (*(v18 + 8))(v5, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1008D94AC(uint64_t a1, void *a2)
{
  type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount(0);
  sub_100936B38();
  v3 = [a2 qualifiedHandlesCount];
  [v3 integerValue];

  v4 = [a2 qualifiedHandlesIML];
  [v4 integerValue];

  v5 = [a2 handlesCount];
  [v5 integerValue];

  v6 = [a2 qualifiedEmergencyHandles];
  [v6 integerValue];

  v7 = [a2 qualifiedEmergencyHandlesIML];
  [v7 integerValue];

  v8 = [a2 emergencyHandlesCount];
  [v8 integerValue];

  v9 = [a2 qualifiedPrimaryHandles];
  [v9 integerValue];

  v10 = [a2 qualifiedPrimaryHandlesIML];
  [v10 integerValue];

  v11 = [a2 primaryHandlesCount];
  [v11 integerValue];

  v12 = [a2 familyHandlesCount];
  [v12 integerValue];

  sub_100765E44();
  sub_100014C40(&qword_100CBA5B0, type metadata accessor for SDPersistenceSchemaV6.IDSQualifiedContactsCount);
  sub_100936768();
}

void sub_1008D9758(uint64_t a1, uint64_t a2, const char *a3)
{
  if (a1)
  {
    swift_errorRetain();
    oslog = sub_1009364B8();
    v4 = sub_100936EF8();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, oslog, v4, a3, v5, 0xCu);
      sub_100013814(v6, &qword_100CB36B0);
    }

    else
    {
    }
  }
}

uint64_t sub_1008D9A0C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, id a5, uint64_t *a6)
{
  v9 = [a5 prefixedURI];
  v10 = sub_100936B38();
  v12 = v11;

  v13 = sub_1008AF68C(a3, a4, v10, v12, a1);

  if (v13)
  {
    v15 = sub_10074F118();
    if (v15)
    {
      v16 = v15;
      v17 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v15 >> 62)
      {
LABEL_26:
        v28 = sub_1009373F8();
      }

      else
      {
        v28 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = 0;
      while (v28 != v18)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          sub_100937268();
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v18 >= *(v17 + 16))
          {
            goto LABEL_25;
          }

          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        v20 = sub_100751C10();
        v22 = v21;
        v23 = objc_allocWithZone(IDSPushToken);
        isa = sub_100935E78().super.isa;
        v25 = [v23 initWithData:isa];

        sub_1007156D8(v20, v22);

        ++v18;
        if (v25)
        {
          sub_100936CC8();
          if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100936D18();
          }

          sub_100936D38();
          v18 = v19;
        }
      }

      v26 = sub_1007478B8(&_swiftEmptyArrayStorage);

      *a6 = v26;
    }

    else
    {
    }
  }

  return result;
}

void sub_1008D9E28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v88 = a8;
  v93 = a7;
  v103 = a6;
  v17 = sub_100706B30(&qword_100CBA350);
  v91 = *(v17 - 8);
  v92 = v17;
  __chkstk_darwin(v17);
  v99 = v85 - v18;
  v19 = sub_100936038();
  v89 = *(v19 - 8);
  v90 = v19;
  v20 = __chkstk_darwin(v19);
  v98 = v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = a5;
  v22 = [a5 prefixedURI];
  v23 = sub_100936B38();
  v25 = v24;

  v95 = a3;
  v96 = a4;
  v97 = a1;
  v26 = sub_1008AF68C(a3, a4, v23, v25, a1);

  if (!v26)
  {
    return;
  }

  v27 = sub_10074F118();
  if (!v27)
  {
LABEL_41:

    return;
  }

  v28 = v27;
  v87 = v26;
  v29 = v27 & 0xFFFFFFFFFFFFFF8;
  if (v27 >> 62)
  {
LABEL_64:
    v30 = sub_1009373F8();
    v100 = v11;
    if (v30)
    {
      goto LABEL_5;
    }

LABEL_65:

    return;
  }

  v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v100 = v10;
  if (!v30)
  {
    goto LABEL_65;
  }

LABEL_5:
  v11 = 0;
  v85[2] = a10;
  v85[1] = a9;
  v101 = v30;
  v102 = v28 & 0xC000000000000001;
  v86 = a2;
  while (1)
  {
    if (v102)
    {
      v31 = sub_100937268();
      v32 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    else
    {
      if (v11 >= *(v29 + 16))
      {
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

      v32 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_40;
      }
    }

    v104 = v31;
    v33 = sub_100751C10();
    v35 = v34;
    v36 = [v103 rawToken];
    v37 = sub_100935EA8();
    a2 = v38;

    v39 = v35 >> 62;
    v40 = a2 >> 62;
    if (v35 >> 62 == 3)
    {
      v41 = 0;
      if (!v33 && v35 == 0xC000000000000000 && a2 >> 62 == 3)
      {
        v41 = 0;
        if (!v37 && a2 == 0xC000000000000000)
        {

          sub_1007156D8(0, 0xC000000000000000);
          v50 = 0;
          v51 = 0xC000000000000000;
          goto LABEL_44;
        }
      }
    }

    else if (v39)
    {
      if (v39 == 1)
      {
        LODWORD(v41) = HIDWORD(v33) - v33;
        if (__OFSUB__(HIDWORD(v33), v33))
        {
          goto LABEL_63;
        }

        v41 = v41;
      }

      else
      {
        v43 = *(v33 + 16);
        v42 = *(v33 + 24);
        v44 = __OFSUB__(v42, v43);
        v41 = v42 - v43;
        if (v44)
        {
          goto LABEL_62;
        }
      }
    }

    else
    {
      v41 = BYTE6(v35);
    }

    if (v40 > 1)
    {
      if (v40 != 2)
      {
        if (!v41)
        {
          break;
        }

LABEL_7:

        sub_1007156D8(v37, a2);
        sub_1007156D8(v33, v35);
        goto LABEL_8;
      }

      v46 = *(v37 + 16);
      v45 = *(v37 + 24);
      v44 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v44)
      {
        goto LABEL_60;
      }

      if (v41 != v47)
      {
        goto LABEL_7;
      }
    }

    else if (v40)
    {
      if (__OFSUB__(HIDWORD(v37), v37))
      {
        goto LABEL_61;
      }

      if (v41 != HIDWORD(v37) - v37)
      {
        goto LABEL_7;
      }
    }

    else if (v41 != BYTE6(a2))
    {
      goto LABEL_7;
    }

    if (v41 < 1)
    {
      break;
    }

    sub_100715738(v37, a2);
    v48 = v100;
    v49 = sub_10071C8A0(v33, v35, v37, a2);
    v100 = v48;
    sub_1007156D8(v33, v35);
    sub_1007156D8(v37, a2);
    if (v49)
    {

      goto LABEL_45;
    }

LABEL_8:
    ++v11;
    if (v32 == v101)
    {
      goto LABEL_65;
    }
  }

  sub_1007156D8(v37, a2);
  v50 = v33;
  v51 = v35;
LABEL_44:
  sub_1007156D8(v50, v51);
LABEL_45:
  v52 = [v93 prefixedURI];
  v53 = sub_100936B38();
  v55 = v54;

  v56 = [v94 prefixedURI];
  v57 = sub_100936B38();
  v59 = v58;

  v60 = [v103 rawToken];
  v61 = sub_100935EA8();
  v63 = v62;

  v64 = v98;
  v65 = sub_100936028();
  v103 = v85;
  __chkstk_darwin(v65);
  v66 = v96;
  v85[-10] = v95;
  v85[-9] = v66;
  v85[-8] = v53;
  v85[-7] = v55;
  v85[-6] = v57;
  v85[-5] = v59;
  v85[-4] = v61;
  v85[-3] = v63;
  LOBYTE(v85[-2]) = 0;
  v85[-1] = v64;
  v105[3] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  v67 = v99;
  sub_100936128();

  v105[0] = &_swiftEmptyArrayStorage;
  v69.n128_f64[0] = __chkstk_darwin(v68);
  v70 = v86;
  v85[-2] = v67;
  v85[-1] = v105;
  v71 = v100;
  (*((swift_isaMask & *v70) + 0x118))(v97, sub_1008F4D40, v69);
  if (v71)
  {

    swift_errorRetain();
    v72 = sub_1009364B8();
    v73 = sub_100936EF8();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138412290;
      swift_errorRetain();
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v74 + 4) = v76;
      *v75 = v76;
      _os_log_impl(&_mh_execute_header, v72, v73, "Error fetching session matching condition: %@", v74, 0xCu);
      sub_100013814(v75, &qword_100CB36B0);

      sub_1007156D8(v61, v63);
    }

    else
    {
      sub_1007156D8(v61, v63);
    }

    goto LABEL_56;
  }

  v77 = v105[0];
  if (!(v105[0] >> 62))
  {
    if (*((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

LABEL_67:
    sub_1007156D8(v61, v63);

LABEL_56:
    (*(v91 + 8))(v99, v92);
    (*(v89 + 8))(v98, v90);

    return;
  }

  if (!sub_1009373F8())
  {
    goto LABEL_67;
  }

LABEL_50:
  if ((v77 & 0xC000000000000001) != 0)
  {
    sub_100937268();
  }

  else
  {
    if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  sub_1007156D8(v61, v63);

  (*(v91 + 8))(v99, v92);
  (*(v89 + 8))(v98, v90);

  type metadata accessor for ArchiveHelper();
  v78 = sub_100014170(0, &qword_100CBA320);
  v79 = sub_100751F00();
  v81 = v80;
  v82 = sub_10001C1E4(v78, v79, v80);
  sub_1007156D8(v79, v81);
  if (v82)
  {
    v83 = sub_100936B28();
    v84 = [v82 valueForCapability:v83];

    *v88 = v84;
  }

  else
  {
  }
}

uint64_t sub_1008DA8C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v39 = a1;
  v37 = a7;
  v38 = a8;
  v36 = sub_100706B30(&qword_100CBA350);
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v17 = &v33 - v16;
  v34 = sub_100936038();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100936028();
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v47 = a6;
  v48 = v37;
  v49 = v38;
  v50 = a9;
  v51 = a10;
  v52 = 0;
  v53 = v19;
  v54[3] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  sub_100936128();
  v54[0] = &_swiftEmptyArrayStorage;
  v42 = v17;
  v43 = v54;
  v20 = v40;
  result = (*((swift_isaMask & *a2) + 0x118))(v39, sub_1008F4D40, v41);
  if (!v20)
  {
    v27 = v54[0];
    if (v54[0] >> 62)
    {
      result = sub_1009373F8();
      if (result)
      {
LABEL_6:
        if ((v27 & 0xC000000000000001) != 0)
        {
          sub_100937268();
        }

        else
        {
          if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }
        }

        (*(v35 + 8))(v17, v36);
        (*(v33 + 8))(v19, v34);
        v28 = sub_100755FD8();
        v30 = v29;

        v31 = *a11;
        v32 = a11[1];
        *a11 = v28;
        a11[1] = v30;
        return sub_10001C370(v31, v32);
      }
    }

    else if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    (*(v35 + 8))(v17, v36);
    return (*(v33 + 8))(v19, v34);
  }

  swift_errorRetain();
  v22 = sub_1009364B8();
  v23 = sub_100936EF8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "Error fetching session matching condition: %@", v24, 0xCu);
    sub_100013814(v25, &qword_100CB36B0);
  }

  else
  {
  }

  (*(v35 + 8))(v17, v36);
  return (*(v33 + 8))(v19, v34);
}

uint64_t sub_1008DAF44(uint64_t a1, int a2, uint64_t a3, uint64_t a4, id a5, uint64_t *a6)
{
  v9 = [a5 prefixedURI];
  v10 = sub_100936B38();
  v12 = v11;

  v13 = sub_1008B5F10(a3, a4, v10, v12, a1);

  if (v13 >> 62)
  {
LABEL_20:
    v23 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = sub_1009373F8();
  }

  else
  {
    v23 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  while (v14 != v15)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      sub_100937268();
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v15 >= *(v23 + 16))
      {
        goto LABEL_19;
      }

      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    sub_100755A00();
    v17 = objc_allocWithZone(IDSURI);
    v18 = sub_100936B28();

    v19 = [v17 initWithPrefixedURI:v18];

    ++v15;
    if (v19)
    {
      sub_100936CC8();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100936D18();
      }

      sub_100936D38();
      v15 = v16;
    }
  }

  v20 = sub_100746E48(&_swiftEmptyArrayStorage);

  *a6 = v20;
}

uint64_t sub_1008DB1C4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, id a5, void *a6)
{
  v9 = [a5 rawToken];
  v10 = sub_100935EA8();
  v12 = v11;

  v13 = sub_1008B0A24(a3, a4, v10, v12, a1);
  result = sub_1007156D8(v10, v12);
  if (v13)
  {
    v15 = sub_100753830();
    if (v15)
    {
      v16 = v15;
      v17 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v15 >> 62)
      {
LABEL_26:
        v24 = sub_1009373F8();
      }

      else
      {
        v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = 0;
      while (v24 != v18)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          sub_100937268();
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v18 >= *(v17 + 16))
          {
            goto LABEL_25;
          }

          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        sub_10074E2C0();
        v20 = objc_allocWithZone(IDSURI);
        v21 = sub_100936B28();

        v22 = [v20 initWithPrefixedURI:v21];

        ++v18;
        if (v22)
        {
          sub_100936CC8();
          if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100936D18();
          }

          sub_100936D38();
          v18 = v19;
        }
      }

      *a6 = &_swiftEmptyArrayStorage;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1008DB5F0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, id a5, uint64_t a6)
{
  v10 = [a5 rawToken];
  v11 = sub_100935EA8();
  v13 = v12;

  v14 = sub_1008B0A24(a3, a4, v11, v13, a1);
  result = sub_1007156D8(v11, v13);
  if (v14)
  {
    sub_1007533E8(v17);

    v19 = v18;
    sub_100012D50(&v19, v16, &qword_100CB3CE8);
    sub_100769CA8(v17);
    return sub_10073545C(&v19, a6, &qword_100CB3CE8);
  }

  return result;
}

void sub_1008DB83C(uint64_t a1, int a2, id a3, void **a4)
{
  v8 = [a3 rawToken];
  v9 = sub_100935EA8();
  v11 = v10;

  v12 = sub_1008B1780(v9, v11, a1);
  sub_1007156D8(v9, v11);
  if (v12)
  {
    sub_1007533E8(v34);
    v44 = v35;
    sub_100012D50(&v44, v40, &qword_100CB3CE8);
    sub_100769CA8(v34);
    if (*(&v44 + 1) >> 60 == 15)
    {
LABEL_8:

      return;
    }

    sub_1007533E8(v36);
    v43 = v37;
    sub_100012D50(&v43, v40, &qword_100CB3CE8);
    sub_100769CA8(v36);
    if (*(&v43 + 1) >> 60 == 15)
    {
      v13 = &v44;
LABEL_7:
      sub_100013814(v13, &qword_100CB3CE8);
      goto LABEL_8;
    }

    sub_1007533E8(v38);
    v42 = v39;
    sub_100012D50(&v42, v40, &qword_100CB3CE8);
    sub_100769CA8(v38);
    if (*(&v42 + 1) >> 60 == 15)
    {
      sub_100013814(&v44, &qword_100CB3CE8);
      v13 = &v43;
      goto LABEL_7;
    }

    sub_1007533E8(v40);
    sub_100769CA8(v40);
    v32 = v41;
    sub_100014170(0, &qword_100CBA590);
    sub_100012D50(&v44, v33, &qword_100CB3CE8);
    v14 = sub_1008EF840();
    if (v4)
    {
      sub_100013814(&v44, &qword_100CB3CE8);
    }

    else
    {
      v31 = v14;
      sub_100013814(&v44, &qword_100CB3CE8);
      sub_100014170(0, &qword_100CBA598);
      sub_100012D50(&v43, v33, &qword_100CB3CE8);
      sub_100012D50(&v42, v33, &qword_100CB3CE8);
      v22 = sub_1008EF90C();
      sub_100013814(&v42, &qword_100CB3CE8);
      sub_100013814(&v43, &qword_100CB3CE8);
      v23 = objc_opt_self();
      v24 = objc_allocWithZone(NSNumber);
      v25 = v22;
      v26 = [v24 initWithShort:v32];
      v33[0] = 0;
      v27 = [v23 identityWithLegacyPublicIdentity:v31 ngmPublicDeviceIdentity:v25 ngmVersion:v26 error:v33];

      v28 = v33[0];
      if (v27)
      {
        sub_100013814(&v44, &qword_100CB3CE8);
        sub_100013814(&v43, &qword_100CB3CE8);
        sub_100013814(&v42, &qword_100CB3CE8);

        v29 = *a4;
        *a4 = v27;

        return;
      }

      v30 = v28;
      sub_100935D78();

      swift_willThrow();
    }

    v15 = a3;
    swift_errorRetain();
    v16 = sub_1009364B8();
    v17 = sub_100936F18();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412546;
      *(v18 + 4) = v15;
      *v19 = v15;
      *(v18 + 12) = 2112;
      v20 = v15;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v21;
      v19[1] = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error initializing IDSMPPublicDeviceIdentityContainer for pushToken %@ error: %@", v18, 0x16u);
      sub_100706B30(&qword_100CB36B0);
      swift_arrayDestroy();

      sub_100013814(&v44, &qword_100CB3CE8);
      sub_100013814(&v43, &qword_100CB3CE8);
      sub_100013814(&v42, &qword_100CB3CE8);
    }

    else
    {
      sub_100013814(&v44, &qword_100CB3CE8);
      sub_100013814(&v43, &qword_100CB3CE8);
      sub_100013814(&v42, &qword_100CB3CE8);
    }
  }
}

uint64_t sub_1008DBF78(uint64_t a1, int a2, uint64_t a3, uint64_t a4, id a5, uint64_t *a6)
{
  v10 = [a5 prefixedURI];
  v11 = sub_100936B38();
  v13 = v12;

  v14 = sub_1008AF68C(a3, a4, v11, v13, a1);

  if (v14)
  {
    v16 = sub_10074E5A8();
    v18 = v17;

    *a6 = v16;
    a6[1] = v18;
  }

  return result;
}

uint64_t sub_1008DC17C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v53 = a1;
  v51 = a7;
  v52 = a4;
  v11 = sub_100936038();
  v12 = *(v11 - 8);
  v57 = v11;
  v58 = v12;
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v15 - 8);
  v50 = &v49 - v16;
  v17 = sub_100706B30(&qword_100CBA350);
  v18 = *(v17 - 8);
  v55 = v17;
  v56 = v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v49 - v20;
  v22 = [a5 prefixedURI];
  v23 = sub_100936B38();
  v25 = v24;

  v26 = [a6 prefixedURI];
  v27 = sub_100936B38();
  v29 = v28;

  v62 = a3;
  v63 = v52;
  v64 = v23;
  v65 = v25;
  v66 = v27;
  v67 = v29;
  v68[3] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  sub_100936128();
  v68[0] = &_swiftEmptyArrayStorage;
  v60 = v68;
  v61 = v21;
  v30 = i;
  (*((swift_isaMask & *a2) + 0x118))(v53, sub_1008F4D58, v59);
  v31 = v30;
  if (v30)
  {

    swift_errorRetain();
    v32 = sub_1009364B8();
    v33 = sub_100936EF8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "Error fetching sessions matching condition: %@", v34, 0xCu);
      sub_100013814(v35, &qword_100CB36B0);
    }

    v31 = 0;
    v37 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v37 = v68[0];
  }

  (*(v56 + 8))(v21, v55);

  if (v37 >> 62)
  {
    goto LABEL_22;
  }

  v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = 0; v38; i = v31)
  {
    v39 = 0;
    v55 = v37 & 0xFFFFFFFFFFFFFF8;
    v56 = v37 & 0xC000000000000001;
    v40 = &_swiftEmptyArrayStorage;
    v41 = v14;
    v31 = v38;
    while (v56)
    {
      v42 = v37;
      v37 = sub_100937268();
      v43 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_20;
      }

LABEL_12:
      sub_1007562C8();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1008E40E0(0, v40[2] + 1, 1, v40, &unk_100CBA580, &unk_1009BEA40, &type metadata accessor for Date);
      }

      v45 = v40[2];
      v44 = v40[3];
      if (v45 >= v44 >> 1)
      {
        v40 = sub_1008E40E0(v44 > 1, v45 + 1, 1, v40, &unk_100CBA580, &unk_1009BEA40, &type metadata accessor for Date);
      }

      v40[2] = v45 + 1;
      v46 = v40 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v45;
      v14 = v41;
      (*(v58 + 32))(v46, v41, v57);
      ++v39;
      v37 = v42;
      if (v43 == v31)
      {
        goto LABEL_24;
      }
    }

    if (v39 >= *(v55 + 16))
    {
      goto LABEL_21;
    }

    v42 = v37;
    v37 = *(v37 + 8 * v39 + 32);

    v43 = v39 + 1;
    if (!__OFADD__(v39, 1))
    {
      goto LABEL_12;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v38 = sub_1009373F8();
  }

  v40 = &_swiftEmptyArrayStorage;
LABEL_24:

  v47 = v50;
  sub_1008DC764(v40, v50);

  return sub_10073545C(v47, v51, &qword_100CB4AC0);
}

uint64_t sub_1008DC764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100936038();
  __chkstk_darwin(*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = __chkstk_darwin(v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10.n128_f64[0]);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date);
        v21 = sub_100936AF8();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

void sub_1008DCC68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void **a8)
{
  v58 = a8;
  v64 = a7;
  v14 = sub_100706B30(&qword_100CBA350);
  v62 = *(v14 - 8);
  v63 = v14;
  __chkstk_darwin(v14);
  v65 = v55 - v15;
  v16 = sub_100936038();
  v60 = *(v16 - 8);
  v61 = v16;
  v17 = __chkstk_darwin(v16);
  v66 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a5 prefixedURI];
  v20 = sub_100936B38();
  v22 = v21;

  v68 = a1;
  v23 = sub_1008AF68C(a3, a4, v20, v22, a1);

  if (!v23)
  {
    return;
  }

  v59 = v23;
  v24 = [a6 rawToken];
  v25 = sub_100935EA8();
  v27 = v26;

  v28 = sub_1008B0A24(a3, a4, v25, v27, v68);
  sub_1007156D8(v25, v27);
  if (!v28)
  {

    return;
  }

  v57 = v28;
  v29 = [v64 prefixedURI];
  v64 = sub_100936B38();
  v56 = v30;

  v31 = [a5 prefixedURI];
  v32 = sub_100936B38();
  v34 = v33;

  v35 = [a6 rawToken];
  v36 = sub_100935EA8();
  v38 = v37;

  v39 = v66;
  v40 = sub_100936028();
  v55[1] = v55;
  __chkstk_darwin(v40);
  v55[-10] = a3;
  v55[-9] = a4;
  v41 = v38;
  v42 = v56;
  v55[-8] = v64;
  v55[-7] = v42;
  v55[-6] = v32;
  v55[-5] = v34;
  v64 = v36;
  v55[-4] = v36;
  v55[-3] = v38;
  LOBYTE(v55[-2]) = 0;
  v55[-1] = v39;
  v69[2] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  v43 = v65;
  sub_100936128();

  v69[0] = &_swiftEmptyArrayStorage;
  v45.n128_f64[0] = __chkstk_darwin(v44);
  v55[-2] = v43;
  v55[-1] = v69;
  v46 = v67;
  (*((swift_isaMask & *a2) + 0x118))(v68, sub_1008F4D40, v45);
  if (v46)
  {

    swift_errorRetain();
    v47 = sub_1009364B8();
    v48 = sub_100936EF8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      swift_errorRetain();
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v51;
      *v50 = v51;
      _os_log_impl(&_mh_execute_header, v47, v48, "Error fetching session matching condition: %@", v49, 0xCu);
      sub_100013814(v50, &qword_100CB36B0);
      v39 = v66;

      sub_1007156D8(v64, v41);
    }

    else
    {

      sub_1007156D8(v64, v41);
    }

    goto LABEL_15;
  }

  v52 = v69[0];
  if (v69[0] >> 62)
  {
    if (sub_1009373F8())
    {
      goto LABEL_10;
    }

LABEL_17:

    sub_1007156D8(v64, v41);

LABEL_15:
    (*(v62 + 8))(v43, v63);
    (*(v60 + 8))(v39, v61);
    return;
  }

  if (!*((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((v52 & 0xC000000000000001) != 0)
  {
    sub_100937268();
    goto LABEL_13;
  }

  if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_13:
    sub_1007156D8(v64, v41);

    (*(v62 + 8))(v43, v63);
    (*(v60 + 8))(v39, v61);
    v53 = sub_1008EC230();

    v54 = *v58;
    *v58 = v53;

    return;
  }

  __break(1u);
}

unint64_t sub_1008DD42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1008B5A30(a3, a4, a1);
  v24 = result;
  if (result >> 62)
  {
    result = sub_1009373F8();
    v5 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = v24 & 0xC000000000000001;
  v8 = &IDSRegistrationControlErrorDomain_ptr;
  v9 = &selRef_initWithPayload_legacyIdentity_;
  do
  {
    if (v7)
    {
      sub_100937268();
    }

    else
    {
    }

    sub_100755718();
    v10 = objc_allocWithZone(v8[449]);
    v11 = sub_100936B28();

    v12 = [v10 v9[26]];

    if (v12)
    {
      sub_100755A00();
      v13 = objc_allocWithZone(v8[449]);
      v14 = sub_100936B28();

      v15 = [v13 v9[26]];

      if (v15)
      {
        v16 = v5;
        v17 = v7;
        sub_100755430();
        v18 = objc_allocWithZone(IDSPeerIDKey);
        v19 = v15;
        v20 = v12;
        v21 = sub_100936B28();

        v22 = [v18 initWithService:v21 fromURI:v20 toURI:v19];

        if (v22)
        {
          v23 = v22;
          sub_100741A18(&v25, v23, &qword_100CBA400, off_100BD2EF8, &unk_100CBA570, &unk_1009BEA38);
        }

        else
        {
        }

        v7 = v17;
        v5 = v16;
        v8 = &IDSRegistrationControlErrorDomain_ptr;
      }

      else
      {
      }

      v9 = &selRef_initWithPayload_legacyIdentity_;
    }

    else
    {
    }

    ++v6;
  }

  while (v5 != v6);
LABEL_19:
}

uint64_t sub_1008DD834(uint64_t a1, int a2, uint64_t a3, uint64_t a4, id a5)
{
  v8 = [a5 prefixedURI];
  v9 = sub_100936B38();
  v11 = v10;

  v12 = sub_1008B51EC(a3, a4, v9, v11, a1);

  if (v12 >> 62)
  {
    result = sub_1009373F8();
    v14 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    return result;
  }

  v15 = 0;
  v16 = v12 & 0xC000000000000001;
  v17 = &IDSRegistrationControlErrorDomain_ptr;
  v18 = &selRef_initWithPayload_legacyIdentity_;
  do
  {
    if (v16)
    {
      sub_100937268();
    }

    else
    {
    }

    sub_100755718();
    v19 = objc_allocWithZone(v17[449]);
    v20 = sub_100936B28();

    v21 = [v19 v18[26]];

    if (v21)
    {
      sub_100755A00();
      v22 = objc_allocWithZone(v17[449]);
      v23 = sub_100936B28();

      v24 = [v22 v18[26]];

      if (v24)
      {
        v25 = v14;
        v26 = v16;
        sub_100755430();
        v27 = objc_allocWithZone(IDSPeerIDKey);
        v28 = v24;
        v29 = v21;
        v30 = sub_100936B28();

        v31 = [v27 initWithService:v30 fromURI:v29 toURI:v28];

        if (v31)
        {
          v32 = v31;
          sub_100741A18(&v33, v32, &qword_100CBA400, off_100BD2EF8, &unk_100CBA570, &unk_1009BEA38);
        }

        else
        {
        }

        v16 = v26;
        v14 = v25;
        v17 = &IDSRegistrationControlErrorDomain_ptr;
      }

      else
      {
      }

      v18 = &selRef_initWithPayload_legacyIdentity_;
    }

    else
    {
    }

    ++v15;
  }

  while (v14 != v15);
LABEL_19:
}

Class sub_1008DDB6C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t *a6, uint64_t a7, unint64_t *a8)
{
  v26 = &_swiftEmptySetSingleton;
  v21 = a1;
  v22 = sub_100936B38();
  v25 = &v26;
  v13 = swift_isaMask & *v21;
  v23 = v14;
  v24 = a4;
  v15 = *(v13 + 280);
  v16 = a4;
  v17 = v21;
  v15(0, a5, &v20);

  sub_1008E438C(v26, a6, a7, a8);

  sub_100014170(0, a6);
  v18.super.isa = sub_100936CD8().super.isa;

  return v18.super.isa;
}

unint64_t sub_1008DDCCC(uint64_t a1)
{
  result = sub_1008B6FBC(a1, sub_1008ECA80);
  v21 = result;
  if (result >> 62)
  {
    result = sub_1009373F8();
    v2 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_19;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = v21 & 0xC000000000000001;
  v5 = &IDSRegistrationControlErrorDomain_ptr;
  v6 = &selRef_initWithPayload_legacyIdentity_;
  do
  {
    if (v4)
    {
      sub_100937268();
    }

    else
    {
    }

    sub_100755718();
    v7 = objc_allocWithZone(v5[449]);
    v8 = sub_100936B28();

    v9 = [v7 v6[26]];

    if (v9)
    {
      sub_100755A00();
      v10 = objc_allocWithZone(v5[449]);
      v11 = sub_100936B28();

      v12 = [v10 v6[26]];

      if (v12)
      {
        v13 = v2;
        v14 = v4;
        sub_100755430();
        v15 = objc_allocWithZone(IDSPeerIDKey);
        v16 = v12;
        v17 = v9;
        v18 = sub_100936B28();

        v19 = [v15 initWithService:v18 fromURI:v17 toURI:v16];

        if (v19)
        {
          v20 = v19;
          sub_100741A18(&v22, v20, &qword_100CBA400, off_100BD2EF8, &unk_100CBA570, &unk_1009BEA38);
        }

        else
        {
        }

        v4 = v14;
        v2 = v13;
        v5 = &IDSRegistrationControlErrorDomain_ptr;
      }

      else
      {
      }

      v6 = &selRef_initWithPayload_legacyIdentity_;
    }

    else
    {
    }

    ++v3;
  }

  while (v2 != v3);
LABEL_19:
}

uint64_t sub_1008DE0B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_1008B6FBC(a1, sub_1008ECA80);
  v58 = v4;
  v53 = a3;
  if (v4 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1009373F8())
  {
    v6 = 0;
    v59 = i;
    while ((v58 & 0xC000000000000001) != 0)
    {
      sub_100937268();
      v7 = __OFADD__(v6, 1);
      v8 = v6 + 1;
      if (v7)
      {
        goto LABEL_48;
      }

LABEL_12:
      v61 = v8;
      v9 = sub_100755430();
      v11 = v10;
      sub_100755718();
      v12 = objc_allocWithZone(IDSURI);
      v13 = sub_100936B28();

      v14 = [v12 initWithPrefixedURI:v13];

      if (v14)
      {
        sub_100755A00();
        v15 = objc_allocWithZone(IDSURI);
        v16 = sub_100936B28();

        v17 = [v15 initWithPrefixedURI:v16];

        if (v17)
        {
          v18 = objc_allocWithZone(IDSPeerIDKey);
          v19 = v17;
          v20 = v14;
          v21 = sub_100936B28();
          v22 = v18;
          v23 = v19;
          v24 = [v22 initWithService:v21 fromURI:v20 toURI:v19];

          i = v59;
          v57 = v24;
          if (!v24)
          {

            goto LABEL_5;
          }

          v56 = v20;
          v25 = sub_100755A00();
          v27 = sub_1008AF68C(v9, v11, v25, v26, a1);

          if (!v27)
          {

            goto LABEL_47;
          }

          v55 = v23;
          type metadata accessor for ArchiveHelper();
          v28 = sub_100014170(0, &qword_100CBA560);
          v29 = sub_10074EC18();
          v31 = v30;
          v32 = sub_10001C1E4(v28, v29, v30);
          sub_10001C370(v29, v31);
          if (v32)
          {
            v33 = sub_10074F118();
            if (v33)
            {
              v34 = v33;
            }

            else
            {
              v34 = &_swiftEmptyArrayStorage;
            }

            if (v34 >> 62)
            {
              v35 = sub_1009373F8();
              v52 = v32;
              if (v35)
              {
LABEL_22:
                if (v35 < 1)
                {
                  goto LABEL_50;
                }

                v36 = 0;
                v60 = v35;
                do
                {
                  if ((v34 & 0xC000000000000001) != 0)
                  {
                    sub_100937268();
                  }

                  else
                  {
                  }

                  v37 = sub_1008EC230();
                  if (v37)
                  {
                    v38 = v27;
                    v39 = v37;
                    sub_100936CC8();
                    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_100936D18();
                    }

                    sub_100936D38();

                    v27 = v38;
                    v35 = v60;
                  }

                  else
                  {
                  }

                  ++v36;
                }

                while (v35 != v36);
              }
            }

            else
            {
              v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v52 = v32;
              if (v35)
              {
                goto LABEL_22;
              }
            }

            v40 = objc_allocWithZone(IDSPeerIDValue);
            sub_100014170(0, &qword_100CB4AD0);
            v41 = v52;
            isa = sub_100936CD8().super.isa;

            v43 = [v40 initWithEndpoints:isa keyTransparencyContext:v41];

            v44 = *v53;
            if ((*v53 & 0xC000000000000001) != 0)
            {
              if (v44 < 0)
              {
                v45 = *v53;
              }

              else
              {
                v45 = v44 & 0xFFFFFFFFFFFFFF8;
              }

              v46 = v43;
              v47 = sub_100937378();
              i = v59;
              if (__OFADD__(v47, 1))
              {
                goto LABEL_51;
              }

              v48 = v53;
              *v53 = sub_1008E4E78(v45, v47 + 1);
            }

            else
            {
              v49 = v43;
              v48 = v53;
              i = v59;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v62 = *v48;
            *v48 = 0x8000000000000000;
            sub_1008E5AE8(v43, v57, isUniquelyReferenced_nonNull_native);
            *v48 = v62;

LABEL_47:
            goto LABEL_5;
          }
        }

        else
        {
        }

        i = v59;
      }

      else
      {
      }

LABEL_5:
      v6 = v61;
      if (v61 == i)
      {
        goto LABEL_53;
      }
    }

    if (v6 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (!v7)
    {
      goto LABEL_12;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

LABEL_53:
}

id sub_1008DE830(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = &v8;
  (*((swift_isaMask & *v2) + 0x118))(0, sub_1008EE9B0, v7);
  if (!v9)
  {
    return 0;
  }

  v3 = objc_allocWithZone(IDSURI);
  v4 = sub_100936B28();
  v5 = [v3 initWithPrefixedURI:v4];

  return v5;
}

unint64_t sub_1008DEA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v28 = a1;
  v27 = a4;
  v6 = sub_100706B30(&qword_100CBA508);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_100706B30(&unk_100CBA510);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = sub_100706B30(&qword_100CBA380);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v30 = a2;
  v31 = a3;
  v32 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle(0);
  sub_100936128();
  (*(v14 + 16))(v8, v16, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  sub_100014C40(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_100936828();
  sub_1009367D8();
  v17 = v29;
  result = sub_100936728();
  if (v17)
  {
    (*(v10 + 8))(v12, v9);
    return (*(v14 + 8))(v16, v13);
  }

  v28 = v10;
  v29 = v9;
  v19 = v27;
  if (result >> 62)
  {
    v24 = result;
    v25 = sub_1009373F8();
    result = v24;
    v20 = v29;
    if (v25)
    {
      goto LABEL_5;
    }

LABEL_10:

    v21 = 0;
    v23 = 0;
    goto LABEL_11;
  }

  v20 = v29;
  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_100937268();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v21 = sub_1007590E0();
  v23 = v22;

  v20 = v29;
LABEL_11:
  (*(v28 + 8))(v12, v20);
  (*(v14 + 8))(v16, v13);
  *v19 = v21;
  v19[1] = v23;
}

uint64_t sub_1008DEE04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  v4 = sub_100706B30(&qword_100CBA4C0);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_100706B30(&qword_100CBA520);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = sub_100706B30(&qword_100CBA528);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  sub_100014C88(&qword_100CBA530, &qword_100CBA520);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v9 + 8))(v11, v8);
  v22 = v18;
  v23 = v19;
  sub_100935D48();
  a3[3] = sub_100706B30(&qword_100CBA538);
  a3[4] = sub_1008EFA00();
  sub_100014250(a3);
  sub_100014C88(&qword_100CBA558, &qword_100CBA528);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v16 = v20;
  sub_100935C68();
  (*(v21 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1008DF1E4(void *a1)
{
  v3 = sub_100706B30(&qword_100CBA380);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v14[-v6];
  v8 = [a1 prefixedURI];
  v9 = sub_100936B38();
  v11 = v10;

  v17 = v9;
  v18 = v11;
  v19[2] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle(0);
  sub_100936128();

  v19[0] = 0;
  v19[1] = 0;
  v15 = v7;
  v16 = v19;
  (*((swift_isaMask & *v1) + 0x118))(0, sub_1008EE9D8, v14);
  v12 = v19[0];
  (*(v4 + 8))(v7, v3);
  return v12;
}

uint64_t sub_1008DF4A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  v4 = sub_100706B30(&qword_100CBA4C0);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_100706B30(&qword_100CBA520);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = sub_100706B30(&qword_100CBA528);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  sub_100014C88(&qword_100CBA530, &qword_100CBA520);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v9 + 8))(v11, v8);
  v22 = v18;
  v23 = v19;
  sub_100935D48();
  a3[3] = sub_100706B30(&qword_100CBA538);
  a3[4] = sub_1008EFA00();
  sub_100014250(a3);
  sub_100014C88(&qword_100CBA558, &qword_100CBA528);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v16 = v20;
  sub_100935C68();
  (*(v21 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

unint64_t sub_1008DF810(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v22 = a3;
  v5 = sub_100706B30(&qword_100CBA508);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_100706B30(&unk_100CBA510);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = sub_100706B30(&qword_100CBA380);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle(0);
  sub_100014C40(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle);
  sub_100936828();
  sub_1009367D8();
  result = sub_100936728();
  if (v3)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v15 = v22;
  if (result >> 62)
  {
    v19 = result;
    v20 = sub_1009373F8();
    result = v19;
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_10:

    v16 = 0;
    v18 = 0;
    goto LABEL_11;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_100937268();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v16 = sub_1007593C8();
  v18 = v17;

LABEL_11:
  (*(v9 + 8))(v11, v8);
  *v15 = v16;
  v15[1] = v18;
}

void *sub_1008DFBBC(uint64_t a1, uint64_t a2)
{
  v5 = &_swiftEmptyArrayStorage;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = &v5;
  (*((swift_isaMask & *v2) + 0x118))(0, sub_1008EE9F4, v4);
  return v5;
}

uint64_t sub_1008DFDCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v53 = a1;
  v44 = a4;
  v6 = sub_100706B30(&qword_100CBA418);
  __chkstk_darwin(v6 - 8);
  v8 = v42 - v7;
  v45 = sub_100706B30(&qword_100CBA500);
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = v42 - v10;
  v12 = sub_100706B30(&unk_100CBA420);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v42 - v14;
  v55 = a2;
  v56 = a3;
  v58 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus(0);
  sub_100936128();
  (*(v13 + 16))(v8, v15, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  sub_100014C40(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  v16 = v11;
  sub_100936828();
  v17 = v54;
  v18 = sub_100936728();
  if (v17)
  {
    (*(v9 + 8))(v11, v45);
    return (*(v13 + 8))(v15, v12);
  }

  v50 = v15;
  v51 = v13;
  v52 = v12;
  if (v18 >> 62)
  {
    v41 = v18;
    v20 = sub_1009373F8();
    v18 = v41;
    v21 = v44;
    v22 = v45;
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_21:

    (*(v9 + 8))(v16, v22);
    (*(v51 + 8))(v50, v52);
    v40 = &_swiftEmptyArrayStorage;
LABEL_22:
    *v21 = v40;
  }

  v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v21 = v44;
  v22 = v45;
  if (!v20)
  {
    goto LABEL_21;
  }

LABEL_5:
  v23 = v18;
  v42[1] = 0;
  v43 = v16;
  v57 = &_swiftEmptyArrayStorage;
  result = sub_1009372B8();
  if ((v20 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v46 = v23 & 0xC000000000000001;
    v47 = v20;
    v48 = v23;
    v49 = v9;
    while (1)
    {
      if (v46)
      {
        sub_100937268();
      }

      else
      {
      }

      LODWORD(v54) = sub_10075083C();
      sub_100750554();
      v53 = sub_10075026C();
      sub_100750B54();
      if (v33)
      {
        isa = 0;
        sub_100750B8C();
        if ((v35 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        isa = sub_100936DC8().super.super.isa;
        sub_100750B8C();
        if ((v38 & 1) == 0)
        {
LABEL_14:
          v36.super.super.isa = sub_100936DC8().super.super.isa;
          sub_100750B1C();
          if (v37)
          {
            goto LABEL_18;
          }

          goto LABEL_7;
        }
      }

      v36.super.super.isa = 0;
      sub_100750B1C();
      if (v39)
      {
LABEL_18:
        v25.super.super.isa = 0;
        goto LABEL_8;
      }

LABEL_7:
      v25.super.super.isa = sub_100936DC8().super.super.isa;
LABEL_8:
      ++v24;
      v26 = objc_allocWithZone(IDSCachedIDStatus);
      v27 = sub_100936B28();

      v28 = sub_100936B28();

      [v26 initWithURIString:v27 service:v28 status:v54 expiry:isa negativeTTL:v36.super.super.isa lookupDate:v25.super.super.isa];

      sub_100937298();
      sub_1009372C8();
      sub_1009372D8();
      sub_1009372A8();
      v30 = v49;
      v29 = v50;
      v32 = v51;
      v31 = v52;
      if (v47 == v24)
      {

        (*(v30 + 8))(v43, v45);
        (*(v32 + 8))(v29, v31);
        v40 = v57;
        v21 = v44;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_1008E03BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = &v9;
  (*((swift_isaMask & *v4) + 0x118))(0, sub_1008EEA14, v8);
  v5 = v9;
  v6 = v9;

  return v5;
}

void sub_1008E05E0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, objc_class *a5, void **a6)
{
  v53 = a1;
  v51 = a6;
  isa = a5;
  v9 = sub_100706B30(&qword_100CBA418);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - v10;
  v12 = sub_100706B30(&qword_100CBA500);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v16 = sub_100706B30(&unk_100CBA420);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - v18;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v21 = v20;
  v58 = isa;
  v59 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus(0);
  sub_100936128();
  (*(v17 + 16))(v11, v19, v21);
  (*(v17 + 56))(v11, 0, 1, v21);
  sub_100014C40(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936828();
  sub_1009367D8();
  v22 = v54;
  v23 = sub_100936728();
  if (v22)
  {
    (*(v13 + 8))(v15, v12);
    (*(v17 + 8))(v19, v21);
    return;
  }

  v54 = v21;
  if (v23 >> 62)
  {
    v42 = v23;
    v24 = sub_1009373F8();
    v23 = v42;
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v13;
  if (!v24)
  {

    (*(v13 + 8))(v15, v12);
    (*(v17 + 8))(v19, v54);
    return;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
    sub_100937268();
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v26 = sub_10075083C();
  v46 = sub_100750554();
  v47 = sub_10075026C();
  v49 = v27;
  sub_100750B54();
  if ((v28 & 1) == 0)
  {
    isa = sub_100936DC8().super.super.isa;
    sub_100750B8C();
    if ((v30 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v45 = 0;
    goto LABEL_15;
  }

  isa = 0;
  sub_100750B8C();
  if (v29)
  {
    goto LABEL_14;
  }

LABEL_11:
  v45 = sub_100936DC8().super.super.isa;
LABEL_15:
  v44 = v17;
  v53 = v19;
  sub_100750B1C();
  v50 = v12;
  v48 = v15;
  v31 = v26;
  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = sub_100936DC8().super.super.isa;
  }

  v34 = objc_allocWithZone(IDSCachedIDStatus);
  v35 = sub_100936B28();

  v36 = sub_100936B28();

  v37 = v31;
  v38 = isa;
  v39 = v45;
  v40 = [v34 initWithURIString:v35 service:v36 status:v37 expiry:isa negativeTTL:v45 lookupDate:v33];

  (*(v25 + 8))(v48, v50);
  (*(v44 + 8))(v53, v54);
  v41 = *v51;
  *v51 = v40;
}

uint64_t sub_1008E0AF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v38 = a2;
  v39 = a3;
  v44 = a6;
  v45 = sub_100706B30(&qword_100CBA4C0);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = v33 - v7;
  v9 = sub_100706B30(&qword_100CBA440);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v33 - v11;
  v13 = sub_100706B30(&qword_100CBA448);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v33 - v14;
  v16 = sub_100706B30(&qword_100CBA4C8);
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  __chkstk_darwin(v16);
  v37 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v35 = *a1;
  v36 = v33 - v20;
  sub_100014C88(&qword_100CBA468, &qword_100CBA440);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v21 = *(v10 + 8);
  v33[1] = v10 + 8;
  v34 = v21;
  v21(v12, v9);
  v48 = v38;
  v49 = v39;
  sub_100935D48();
  v39 = sub_100014C88(&qword_100CBA478, &qword_100CBA448);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v22 = v45;
  sub_100935C68();
  v23 = *(v47 + 8);
  v47 += 8;
  v23(v8, v22);
  v24 = *(v46 + 8);
  v46 += 8;
  v24(v15, v13);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v34(v12, v9);
  v48 = v42;
  v49 = v43;
  sub_100935D48();
  v25 = v37;
  v26 = v45;
  sub_100935C68();
  v23(v8, v26);
  v24(v15, v13);
  v27 = sub_100706B30(&qword_100CBA4E8);
  v28 = v44;
  v44[3] = v27;
  v28[4] = sub_1008EF7B0();
  sub_100014250(v28);
  sub_100014C88(&qword_100CBA4F8, &qword_100CBA4C8);
  v29 = v36;
  v30 = v40;
  sub_100935CF8();
  v31 = *(v41 + 8);
  v31(v25, v30);
  return (v31)(v29, v30);
}

uint64_t sub_1008E1124(int a1, id a2)
{
  v3 = [a2 service];
  v4 = sub_100936B38();
  v17 = v5;
  v18 = v4;

  v6 = [a2 uriString];
  v7 = sub_100936B38();
  v9 = v8;

  [a2 status];
  v10 = [a2 lookupDate];
  if (v10)
  {
    v11 = v10;
    sub_100936DD8();
  }

  v12 = [a2 expiry];
  if (v12)
  {
    v13 = v12;
    sub_100936DD8();
  }

  v14 = [a2 negativeTTL];
  if (v14)
  {
    v15 = v14;
    sub_100936DD8();
  }

  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus(0);
  sub_100750FC0(v18, v17, v7, v9);
  sub_100014C40(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936768();
}

void sub_1008E14EC(void *a1, void *a2, uint64_t a3)
{
  v7 = [a1 service];
  if (!v7)
  {
    sub_100936B38();
    v7 = sub_100936B28();
  }

  v8 = [a1 uriString];
  if (!v8)
  {
    sub_100936B38();
    v8 = sub_100936B28();
  }

  if (a2)
  {
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10072D1C8;
    v9[3] = &unk_100BEAE28;
    a2 = _Block_copy(v9);
  }

  [v3 deleteStatusForService:v7 URI:v8 completion:a2];
  _Block_release(a2);
}

uint64_t sub_1008E1700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100706B30(&qword_100CBA418);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_100706B30(&unk_100CBA420);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v17 - v14;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  v17[9] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus(0);
  sub_100936128();
  (*(v13 + 16))(v11, v15, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_100014C40(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936748();
  sub_100013814(v11, &qword_100CBA418);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1008E1934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v38 = a2;
  v39 = a3;
  v44 = a6;
  v45 = sub_100706B30(&qword_100CBA4C0);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = v33 - v7;
  v9 = sub_100706B30(&qword_100CBA440);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v33 - v11;
  v13 = sub_100706B30(&qword_100CBA448);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v33 - v14;
  v16 = sub_100706B30(&qword_100CBA4C8);
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  __chkstk_darwin(v16);
  v37 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v35 = *a1;
  v36 = v33 - v20;
  sub_100014C88(&qword_100CBA468, &qword_100CBA440);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v21 = *(v10 + 8);
  v33[1] = v10 + 8;
  v34 = v21;
  v21(v12, v9);
  v48 = v38;
  v49 = v39;
  sub_100935D48();
  v39 = sub_100014C88(&qword_100CBA478, &qword_100CBA448);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0);
  v22 = v45;
  sub_100935C68();
  v23 = *(v47 + 8);
  v47 += 8;
  v23(v8, v22);
  v24 = *(v46 + 8);
  v46 += 8;
  v24(v15, v13);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v34(v12, v9);
  v48 = v42;
  v49 = v43;
  sub_100935D48();
  v25 = v37;
  v26 = v45;
  sub_100935C68();
  v23(v8, v26);
  v24(v15, v13);
  v27 = sub_100706B30(&qword_100CBA4E8);
  v28 = v44;
  v44[3] = v27;
  v28[4] = sub_1008EF7B0();
  sub_100014250(v28);
  sub_100014C88(&qword_100CBA4F8, &qword_100CBA4C8);
  v29 = v36;
  v30 = v40;
  sub_100935CF8();
  v31 = *(v41 + 8);
  v31(v25, v30);
  return (v31)(v29, v30);
}

uint64_t sub_1008E21FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v44 = a3;
  v47 = a4;
  v6 = sub_100706B30(&qword_100CBA440);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - v8;
  v43 = sub_100706B30(&qword_100CBA448);
  v49 = *(v43 - 8);
  __chkstk_darwin(v43);
  v11 = v35 - v10;
  v12 = sub_100706B30(&qword_100CBA450);
  v48 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  v15 = sub_100706B30(&qword_100CBA458);
  v16 = *(v15 - 8);
  v45 = v15;
  v46 = v16;
  v17 = __chkstk_darwin(v15);
  v42 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v41 = v35 - v19;
  v39 = *a1;
  v50 = a2;
  v40 = sub_100706B30(&qword_100CBA460);
  sub_100935D48();
  sub_100014C88(&qword_100CBA468, &qword_100CBA440);
  sub_100935D58();
  swift_getKeyPath();
  v36 = v6;
  sub_100935C78();

  v20 = *(v7 + 8);
  v37 = v7 + 8;
  v38 = v20;
  v20(v9, v6);
  v35[2] = sub_100014C88(&qword_100CBA470, &qword_100CBA450);
  v35[1] = sub_100014C88(&qword_100CBA478, &qword_100CBA448);
  sub_100014C88(&qword_100CBA480, &qword_100CBA460);
  v21 = v12;
  v35[0] = v12;
  v22 = v43;
  sub_100935CA8();
  v23 = *(v49 + 8);
  v49 += 8;
  v24 = v22;
  v23(v11, v22);
  v25 = *(v48 + 8);
  v48 += 8;
  v25(v14, v21);
  v50 = v44;
  sub_100935D48();
  v26 = v36;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v38(v9, v26);
  v27 = v42;
  v28 = v35[0];
  sub_100935CA8();
  v23(v11, v24);
  v25(v14, v28);
  v29 = sub_100706B30(&qword_100CBA488);
  v30 = v47;
  v47[3] = v29;
  v30[4] = sub_1008EF3F4();
  sub_100014250(v30);
  sub_100014C88(&qword_100CBA4B8, &qword_100CBA458);
  v31 = v41;
  v32 = v45;
  sub_100935CF8();
  v33 = *(v46 + 8);
  v33(v27, v32);
  return (v33)(v31, v32);
}

uint64_t sub_1008E27F4()
{
  v0 = sub_100706B30(&qword_100CBA418);
  __chkstk_darwin(v0 - 8);
  v2 = v8 - v1;
  v3 = sub_100706B30(&unk_100CBA420);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - v5;
  v8[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus(0);
  sub_100936128();
  (*(v4 + 16))(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_100014C40(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936748();
  sub_100013814(v2, &qword_100CBA418);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1008E2A0C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_100706B30(&qword_100CBA430);
  a1[4] = sub_1008EF1F8();
  sub_100014250(a1);
  return sub_100935D48();
}

uint64_t sub_1008E2BC4(double a1)
{
  v2 = sub_100706B30(&qword_100CBA418);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_100706B30(&unk_100CBA420);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  v9 = sub_100936038();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100936028();
  sub_100935F08();
  v14 = v13;
  (*(v10 + 8))(v12, v9);
  v17 = 0;
  v18 = a1;
  v19 = v14;
  v20 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus(0);
  sub_100936128();
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_100014C40(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus);
  sub_100936748();
  sub_100013814(v4, &qword_100CBA418);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1008E2E98@<X0>(void (**a1)(char *, uint64_t)@<X0>, int a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  LODWORD(v81) = a2;
  v106 = a3;
  v8 = sub_100935D38();
  v104 = *(v8 - 8);
  v105 = v8;
  __chkstk_darwin(v8);
  v103 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100935D28();
  v97 = *(v10 - 8);
  v98 = v10;
  __chkstk_darwin(v10);
  v95 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100706B30(&qword_100CBAA88);
  v92 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v69 - v12;
  v94 = sub_100706B30(&qword_100CBAA90);
  v96 = *(v94 - 8);
  __chkstk_darwin(v94);
  v88 = &v69 - v13;
  v14 = sub_100706B30(&qword_100CBAA98);
  v15 = *(v14 - 8);
  v99 = v14;
  v100 = v15;
  __chkstk_darwin(v14);
  v90 = &v69 - v16;
  v17 = sub_100706B30(&qword_100CBAAA0);
  v18 = *(v17 - 8);
  v101 = v17;
  v102 = v18;
  __chkstk_darwin(v17);
  v93 = &v69 - v19;
  v84 = sub_100706B30(&qword_100CBAAA8);
  v85 = *(v84 - 8);
  __chkstk_darwin(v84);
  v79 = &v69 - v20;
  v80 = sub_100706B30(&qword_100CBAAB0);
  v110 = *(v80 - 8);
  __chkstk_darwin(v80);
  v76 = &v69 - v21;
  v82 = sub_100706B30(&qword_100CBAAB8);
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = &v69 - v22;
  v73 = sub_100706B30(&qword_100CBAAC0);
  v74 = *(v73 - 8);
  __chkstk_darwin(v73);
  v24 = &v69 - v23;
  v25 = sub_100706B30(&qword_100CBA440);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v69 - v27;
  v71 = sub_100706B30(&qword_100CBAAC8);
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v30 = &v69 - v29;
  v75 = sub_100706B30(&qword_100CBAAD0);
  v77 = *(v75 - 8);
  __chkstk_darwin(v75);
  v70 = &v69 - v31;
  v86 = sub_100706B30(&qword_100CBAAD8);
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v109 = &v69 - v32;
  v107 = *a1;
  sub_100014C88(&qword_100CBA468, &qword_100CBA440);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v33 = *(v26 + 8);
  v108 = v26 + 8;
  v33(v28, v25);
  v69 = v33;
  LODWORD(v111) = v81;
  sub_100935D48();
  sub_100014C88(&qword_100CBAAE0, &qword_100CBAAC8);
  v81 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100014C88(&qword_100CBAAE8, &qword_100CBAAC0);
  v34 = v24;
  v35 = v71;
  v36 = v73;
  sub_100935C68();
  (*(v74 + 8))(v34, v36);
  (*(v72 + 8))(v30, v35);
  sub_100935D58();
  swift_getKeyPath();
  v37 = v76;
  sub_100935C78();

  v33(v28, v25);
  v38 = v79;
  sub_100935CE8();
  v74 = sub_100014C88(&qword_100CBAAF0, &qword_100CBAAB0);
  sub_100014C88(&qword_100CBAAF8, &qword_100CBAAA8);
  sub_1008F1578();
  v39 = v78;
  v40 = v37;
  v41 = v80;
  v42 = v84;
  sub_100935C98();
  v85[1](v38, v42);
  v43 = *(v110 + 8);
  v110 += 8;
  v85 = v43;
  (v43)(v40, v41);
  sub_100014C88(&qword_100CBAB10, &qword_100CBAAD0);
  sub_100014C88(&qword_100CBAB18, &qword_100CBAAB8);
  v44 = v70;
  v45 = v75;
  v46 = v82;
  sub_100935CF8();
  (*(v83 + 8))(v39, v46);
  (*(v77 + 8))(v44, v45);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v69(v28, v25);
  v111 = 0.0;
  v47 = v89;
  sub_100935D48();
  v48 = sub_100014C88(&qword_100CBAB20, &qword_100CBAA88);
  v49 = v88;
  v50 = v91;
  v108 = v48;
  sub_100935D18();
  v107 = *(v92 + 8);
  v107(v47, v50);
  (v85)(v40, v41);
  v111 = a4;
  sub_100935D48();
  v52 = v97;
  v51 = v98;
  v53 = v95;
  (*(v97 + 104))(v95, enum case for PredicateExpressions.ArithmeticOperator.add(_:), v98);
  sub_100014C88(&qword_100CBAB28, &qword_100CBAA90);
  v54 = v90;
  v55 = v94;
  sub_100935CC8();
  (*(v52 + 8))(v53, v51);
  v56 = v107;
  v107(v47, v50);
  (*(v96 + 8))(v49, v55);
  v111 = a5;
  sub_100935D48();
  v58 = v103;
  v57 = v104;
  v59 = v105;
  (*(v104 + 104))(v103, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v105);
  sub_100014C88(&qword_100CBAB30, &qword_100CBAA98);
  v60 = v93;
  v61 = v54;
  v62 = v99;
  sub_100935CD8();
  (*(v57 + 8))(v58, v59);
  v56(v47, v50);
  (*(v100 + 8))(v61, v62);
  v63 = sub_100706B30(&qword_100CBAB38);
  v64 = v106;
  v106[3] = v63;
  v64[4] = sub_1008F15F4();
  sub_100014250(v64);
  sub_100014C88(&qword_100CBABA0, &qword_100CBAAD8);
  sub_100014C88(&qword_100CBABA8, &qword_100CBAAA0);
  v65 = v109;
  v66 = v86;
  v67 = v101;
  sub_100935CF8();
  (*(v102 + 8))(v60, v67);
  return (*(v87 + 8))(v65, v66);
}

uint64_t *sub_1008E3E7C@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id sub_1008E3EB8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

size_t sub_1008E3EF0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100706B30(&qword_100CBB208);
  v10 = *(sub_100706B30(&unk_100CBB1F8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_100706B30(&unk_100CBB1F8) - 8);
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

size_t sub_1008E40E0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100706B30(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

void *sub_1008E42BC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100706B30(&unk_100CB6030);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t type metadata accessor for SDPersistenceManager()
{
  result = qword_100CD1710;
  if (!qword_100CD1710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1008E438C(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_100937158();
  if (!v8)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v9 = sub_100788564(v8, 0);

    a4 = sub_1008EAC24(&v11, v9 + 4, v8, a1, a2, a3, a4);
    sub_100308C6C();
    if (a4 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v9;
}

size_t sub_1008E445C(size_t a1, int64_t a2, char a3)
{
  result = sub_1008E44DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1008E447C(char *a1, int64_t a2, char a3)
{
  result = sub_1008E46B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1008E449C(void *a1, int64_t a2, char a3)
{
  result = sub_1008E47C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1008E44BC(void *a1, int64_t a2, char a3)
{
  result = sub_1008E4AE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1008E44DC(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100706B30(&unk_100CBB250);
  v10 = *(sub_100935DD8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_100935DD8() - 8);
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

char *sub_1008E46B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100706B30(&unk_100CB6030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1008E47C0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100706B30(&unk_100CBB1E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100706B30(&unk_100CBA310);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1008E48F4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100706B30(&qword_100CBB208);
  v10 = *(sub_100706B30(&unk_100CBB1F8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_100706B30(&unk_100CBB1F8) - 8);
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

void *sub_1008E4AE4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100706B30(&qword_100CBAA68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100706B30(&qword_100CBAA70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1008E4C18(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_100715738(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_1007156D8(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1008E4CC8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  sub_100937668();
  a3(v10, a1, a2);
  v7 = sub_1009376C8();

  return a4(a1, a2, v7);
}

unint64_t sub_1008E4D5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100937028(*(v2 + 40));
  return sub_1008E4DAC(a1, v4, &qword_100CBA400);
}

unint64_t sub_1008E4DAC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_100014170(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_100937038();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

Swift::Int sub_1008E4E78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100706B30(&qword_100CBA568);
    v2 = sub_100937428();
    v19 = v2;
    sub_100937318();
    v3 = sub_1009373B8();
    if (v3)
    {
      v4 = v3;
      sub_100014170(0, &qword_100CBA400);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100014170(0, &qword_100CBA408);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1008E5880(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_100937028(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1009373B8();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_1008E50C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CBB148);
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v31 = *(*(v5 + 48) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        sub_100715738(v31, *(*(v5 + 48) + 16 * v20 + 8));
        v22 = v21;
      }

      sub_100937668();
      sub_100935EB8();
      result = sub_1009376C8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v16 = v31;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v16 = v31;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1008E5368(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CBAC78);
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_100937028(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1008E55D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&unk_100CBAC00);
  v34 = a2;
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_100937668();
      sub_100936BC8();
      result = sub_1009376C8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1008E5880(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100706B30(&qword_100CBA568);
  result = sub_100937418();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_100937028(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}