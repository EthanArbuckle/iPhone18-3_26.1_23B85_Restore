uint64_t sub_1001014BC(uint64_t a1, uint64_t a2)
{
  v69 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v74 = *(v69 - 8);
  v4 = *(v74 + 64);
  __chkstk_darwin(v69);
  v64 = &v58 - v5;
  v6 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v58 - v8;
  v66 = sub_10000C9C0(&qword_1005CE810, &unk_1004D1120);
  v10 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v68 = &v58 - v11;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  v12 = *(*(MessagesVMa - 8) + 64);
  __chkstk_darwin(MessagesVMa);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s19UserInitiatedSearchV5StateOMa(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v67 = &v58 - v20;
  v72 = sub_10000C9C0(&qword_1005D0948, &unk_1004DAB60);
  v21 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v23 = &v58 - v22;
  v71 = _s19UserInitiatedSearchVMa(0);
  v24 = *(*(v71 - 8) + 64);
  v25 = __chkstk_darwin(v71);
  v27 = (&v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v30 = (&v58 - v29);
  v31 = *(a1 + 16);
  if (v31 != *(a2 + 16))
  {
    return 0;
  }

  if (!v31 || a1 == a2)
  {
    return 1;
  }

  v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v33 = a1 + v32;
  v75 = a2 + v32;
  v58 = (v74 + 48);
  v59 = v23;
  v62 = *(v28 + 72);
  v63 = v19;
  v34 = v68;
  v60 = &v58 - v29;
  v61 = v27;
  v65 = v14;
  while (1)
  {
    result = sub_1001054EC(v33, v30, _s19UserInitiatedSearchVMa);
    if (!v31)
    {
      break;
    }

    sub_1001054EC(v75, v27, _s19UserInitiatedSearchVMa);
    if (*v30 != *v27)
    {
      goto LABEL_32;
    }

    v73 = v33;
    v74 = v31;
    v36 = v15;
    v37 = *(v71 + 20);
    v38 = &v23[*(v72 + 48)];
    sub_1001054EC(v30 + v37, v23, _s19UserInitiatedSearchV5StateOMa);
    sub_1001054EC(v27 + v37, v38, _s19UserInitiatedSearchV5StateOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1001054EC(v23, v19, _s19UserInitiatedSearchV5StateOMa);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_100105554(v19, _s19UserInitiatedSearchV13FetchMessagesVMa);
        goto LABEL_26;
      }

      v39 = v65;
      sub_100105098(v38, v65, _s19UserInitiatedSearchV13FetchMessagesVMa);
      sub_100016D2C();
      if ((sub_1004A7034() & 1) == 0)
      {
        goto LABEL_30;
      }

      v40 = *(MessagesVMa + 20);
      if ((sub_1004A7034() & 1) == 0)
      {
        goto LABEL_30;
      }

      v41 = *(MessagesVMa + 24);
      v42 = v19;
      v43 = *(v66 + 48);
      sub_100105100(&v42[v41], v34);
      sub_100105100(v39 + v41, v34 + v43);
      v44 = *v58;
      if ((*v58)(v34, 1, v69) == 1)
      {
        if (v44(v34 + v43, 1, v69) != 1)
        {
          goto LABEL_29;
        }

        sub_100025F40(v34, &qword_1005CD510, &unk_1004CF2E0);
        v39 = v65;
        v19 = v63;
        v15 = v36;
      }

      else
      {
        sub_100105100(v34, v9);
        if (v44(v34 + v43, 1, v69) == 1)
        {
          sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
LABEL_29:
          sub_100025F40(v34, &qword_1005CE810, &unk_1004D1120);
          v39 = v65;
          v19 = v63;
LABEL_30:
          sub_100105554(v39, _s19UserInitiatedSearchV13FetchMessagesVMa);
          sub_100105554(v19, _s19UserInitiatedSearchV13FetchMessagesVMa);
LABEL_31:
          sub_100105554(v23, _s19UserInitiatedSearchV5StateOMa);
LABEL_32:
          sub_100105554(v27, _s19UserInitiatedSearchVMa);
          sub_100105554(v30, _s19UserInitiatedSearchVMa);
          return 0;
        }

        v56 = v64;
        sub_100020950(v34 + v43, v64);
        v57 = sub_1004A7034();
        sub_100025F40(v56, &unk_1005D91B0, &unk_1004CF400);
        sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
        sub_100025F40(v34, &qword_1005CD510, &unk_1004CF2E0);
        v39 = v65;
        v19 = v63;
        v15 = v36;
        if ((v57 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      sub_100105554(v39, _s19UserInitiatedSearchV13FetchMessagesVMa);
      sub_100105554(v19, _s19UserInitiatedSearchV13FetchMessagesVMa);
    }

    else
    {
      v45 = v67;
      sub_1001054EC(v23, v67, _s19UserInitiatedSearchV5StateOMa);
      v47 = *v45;
      v46 = *(v45 + 8);
      v48 = *(v45 + 16);
      v49 = *(v45 + 24);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1000B37D8(v47);

        v30 = v60;
        v27 = v61;
LABEL_26:
        sub_100025F40(v23, &qword_1005D0948, &unk_1004DAB60);
        goto LABEL_32;
      }

      v50 = v9;
      v51 = *v38;
      v52 = *(v38 + 8);
      v53 = *(v38 + 16);
      v54 = *(v38 + 24);
      if ((static SearchKey.__derived_enum_equals(_:_:)(v47, v51) & 1) == 0)
      {
        sub_1000B37D8(v51);

        sub_1000B37D8(v47);

        v23 = v59;
        v30 = v60;
        v27 = v61;
        goto LABEL_31;
      }

      v55 = static SearchRequest.RangesToExclude.__derived_struct_equals(_:_:)(v46, v48, v49, v52, v53, v54);
      sub_1000B37D8(v51);

      sub_1000B37D8(v47);

      v9 = v50;
      v23 = v59;
      v30 = v60;
      v27 = v61;
      v34 = v68;
      v19 = v63;
      v15 = v36;
      if (!v55)
      {
        goto LABEL_31;
      }
    }

    sub_100105554(v23, _s19UserInitiatedSearchV5StateOMa);
    sub_100105554(v27, _s19UserInitiatedSearchVMa);
    sub_100105554(v30, _s19UserInitiatedSearchVMa);
    v75 += v62;
    v33 = v73 + v62;
    v31 = v74 - 1;
    if (v74 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100101D68(uint64_t a1, uint64_t a2)
{
  v52 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v52);
  v48 = &v43 - v6;
  v7 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v43 - v9;
  v49 = sub_10000C9C0(&qword_1005CE810, &unk_1004D1120);
  v11 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v13 = &v43 - v12;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  v14 = *(*(SearchResult - 8) + 64);
  __chkstk_darwin(SearchResult);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v20 = (&v43 - v19);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    return 0;
  }

  if (!v21 || a1 == a2)
  {
    return 1;
  }

  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v46 = (v4 + 48);
  v25 = *(v18 + 72);
  v44 = v10;
  v45 = v25;
  v47 = (&v43 - v19);
  while (1)
  {
    sub_1001054EC(v23, v20, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    sub_1001054EC(v24, v16, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    if (*v20 != *v16)
    {
      sub_100105554(v16, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v41 = v20;
LABEL_20:
      sub_100105554(v41, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      return 0;
    }

    v26 = *(SearchResult + 20);
    v27 = v20 + v26;
    v28 = v16 + v26;
    sub_100016D2C();
    if ((sub_1004A7034() & 1) == 0)
    {
      v42 = v16;
LABEL_19:
      sub_100105554(v42, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v41 = v47;
      goto LABEL_20;
    }

    v51 = v23;
    v29 = v16;
    MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
    v31 = *(MessagesVMa + 20);
    if ((sub_1004A7034() & 1) == 0)
    {
      v42 = v29;
      goto LABEL_19;
    }

    v32 = *(MessagesVMa + 24);
    v33 = *(v49 + 48);
    sub_100105100(&v27[v32], v13);
    v34 = &v28[v32];
    v35 = v52;
    sub_100105100(v34, &v13[v33]);
    v36 = *v46;
    if ((*v46)(v13, 1, v35) != 1)
    {
      break;
    }

    sub_100105554(v29, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    v20 = v47;
    sub_100105554(v47, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    if (v36(&v13[v33], 1, v52) != 1)
    {
      goto LABEL_22;
    }

    sub_100025F40(v13, &qword_1005CD510, &unk_1004CF2E0);
    v16 = v29;
LABEL_5:
    v24 += v45;
    v23 = v51 + v45;
    if (!--v21)
    {
      return 1;
    }
  }

  v37 = v44;
  sub_100105100(v13, v44);
  if (v36(&v13[v33], 1, v52) != 1)
  {
    v38 = v48;
    sub_100020950(&v13[v33], v48);
    v39 = sub_1004A7034();
    sub_100025F40(v38, &unk_1005D91B0, &unk_1004CF400);
    v16 = v29;
    sub_100105554(v29, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    v20 = v47;
    sub_100105554(v47, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    sub_100025F40(v37, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v13, &qword_1005CD510, &unk_1004CF2E0);
    if ((v39 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_100105554(v29, type metadata accessor for FetchSearchResultMessages.Requests.Search);
  sub_100105554(v47, type metadata accessor for FetchSearchResultMessages.Requests.Search);
  sub_100025F40(v37, &unk_1005D91B0, &unk_1004CF400);
LABEL_22:
  sub_100025F40(v13, &qword_1005CE810, &unk_1004D1120);
  return 0;
}

uint64_t sub_100102318(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); *(i - 6) == *(v3 - 6); i += 4)
    {
      v5 = *v3;
      v6 = *i;
      v7 = *(i - 2);
      if (*(v3 - 2) == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else if (v7 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(*(v3 - 2) & 0xFFFFFFFF01010101, *(v3 - 8), *(i - 2) & 0xFFFFFFFF01010101, *(i - 8)) & 1) == 0)
      {
        return 0;
      }

      if (v5)
      {
        if (!v6)
        {
          return 0;
        }

        v8 = sub_100083478(v5, v6);

        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10010243C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    for (i = (a1 + 40); *(v3 - 2) == *(i - 2); i += 12)
    {
      result = 0;
      if (*(v3 - 1) != *(i - 1) || ((*i ^ *v3) & 1) != 0)
      {
        return result;
      }

      v3 += 12;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1001024BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 176);
    v103 = *(a1 + 160);
    v104 = v3;
    v105[0] = *(a1 + 192);
    *(v105 + 9) = *(a1 + 201);
    v4 = *(a1 + 96);
    v100 = *(a1 + 112);
    v5 = *(a1 + 144);
    v101 = *(a1 + 128);
    v102 = v5;
    v6 = *(a1 + 48);
    v95 = *(a1 + 32);
    v96 = v6;
    v7 = *(a1 + 80);
    v97 = *(a1 + 64);
    v98 = v7;
    v99 = v4;
    v8 = *(a2 + 176);
    *&v106[128] = *(a2 + 160);
    *&v106[144] = v8;
    *&v106[160] = *(a2 + 192);
    *&v106[169] = *(a2 + 201);
    v9 = *(a2 + 112);
    *&v106[64] = *(a2 + 96);
    *&v106[80] = v9;
    v10 = *(a2 + 144);
    *&v106[96] = *(a2 + 128);
    *&v106[112] = v10;
    v11 = *(a2 + 48);
    *v106 = *(a2 + 32);
    *&v106[16] = v11;
    v12 = *(a2 + 80);
    *&v106[32] = *(a2 + 64);
    *&v106[48] = v12;
    if (*v106 != v95)
    {
      return 0;
    }

    v13 = (a1 + 224);
    v14 = (a2 + 224);
    while (1)
    {
      v15 = *(v13 - 40);
      v91 = *(v13 - 56);
      v92 = v15;
      v93 = *(v13 - 24);
      v94 = *(v13 - 8);
      v16 = *(v13 - 104);
      v87 = *(v13 - 120);
      v88 = v16;
      v17 = *(v13 - 72);
      v89 = *(v13 - 88);
      v90 = v17;
      v18 = *(v13 - 168);
      v83 = *(v13 - 184);
      v84 = v18;
      v19 = *(v13 - 136);
      v85 = *(v13 - 152);
      v86 = v19;
      if (sub_10000FE74(&v83) == 1)
      {
        v55[8] = *&v106[136];
        v55[9] = *&v106[152];
        v55[10] = *&v106[168];
        v56 = v106[184];
        v55[4] = *&v106[72];
        v55[5] = *&v106[88];
        v55[6] = *&v106[104];
        v55[7] = *&v106[120];
        v55[0] = *&v106[8];
        v55[1] = *&v106[24];
        v55[2] = *&v106[40];
        v55[3] = *&v106[56];
        if (sub_10000FE74(v55) != 1)
        {
          return 0;
        }
      }

      else
      {
        v79 = *&v106[136];
        v80 = *&v106[152];
        v81 = *&v106[168];
        v82 = v106[184];
        v75 = *&v106[72];
        v76 = *&v106[88];
        v77 = *&v106[104];
        v78 = *&v106[120];
        v71 = *&v106[8];
        v72 = *&v106[24];
        v73 = *&v106[40];
        v74 = *&v106[56];
        if (sub_10000FE74(&v71) == 1)
        {
          return 0;
        }

        v69[8] = v91;
        v69[9] = v92;
        v69[10] = v93;
        v70 = v94;
        v69[4] = v87;
        v69[5] = v88;
        v69[6] = v89;
        v69[7] = v90;
        v69[0] = v83;
        v69[1] = v84;
        v69[2] = v85;
        v69[3] = v86;
        if (sub_10000FE88(v69) == 1)
        {
          v20 = UInt32.init(_:)(v69);
          v21 = *(v20 + 80);
          v109[4] = *(v20 + 64);
          v109[5] = v21;
          v109[6] = *(v20 + 96);
          v110 = *(v20 + 112);
          v22 = *(v20 + 16);
          v109[0] = *v20;
          v109[1] = v22;
          v23 = *(v20 + 48);
          v109[2] = *(v20 + 32);
          v109[3] = v23;
          v65 = v79;
          v66 = v80;
          v67 = v81;
          v68 = v82;
          v61 = v75;
          v62 = v76;
          v63 = v77;
          v64 = v78;
          v57 = v71;
          v58 = v72;
          v59 = v73;
          v60 = v74;
          if (sub_10000FE88(&v57) != 1)
          {
            goto LABEL_20;
          }

          v24 = UInt32.init(_:)(&v57);
          v25 = *(v24 + 80);
          v111[4] = *(v24 + 64);
          v111[5] = v25;
          v111[6] = *(v24 + 96);
          v112 = *(v24 + 112);
          v26 = *(v24 + 16);
          v111[0] = *v24;
          v111[1] = v26;
          v27 = *(v24 + 48);
          v111[2] = *(v24 + 32);
          v111[3] = v27;
          sub_10001025C(&v95, v55);
          sub_10001025C(v106, v55);
          v28 = static BodyStructure.Multipart.__derived_struct_equals(_:_:)(v109, v111);
        }

        else
        {
          v29 = UInt32.init(_:)(v69);
          v30 = v29[9];
          v107[8] = v29[8];
          v107[9] = v30;
          v107[10] = v29[10];
          v31 = v29[5];
          v107[4] = v29[4];
          v107[5] = v31;
          v32 = v29[6];
          v107[7] = v29[7];
          v107[6] = v32;
          v33 = v29[1];
          v107[0] = *v29;
          v107[1] = v33;
          v34 = v29[2];
          v107[3] = v29[3];
          v107[2] = v34;
          v68 = v82;
          v66 = v80;
          v67 = v81;
          v64 = v78;
          v65 = v79;
          v62 = v76;
          v63 = v77;
          v60 = v74;
          v61 = v75;
          v58 = v72;
          v59 = v73;
          v57 = v71;
          if (sub_10000FE88(&v57) == 1)
          {
LABEL_20:
            UInt32.init(_:)(&v57);
            return 0;
          }

          v35 = UInt32.init(_:)(&v57);
          v36 = v35[9];
          v108[8] = v35[8];
          v108[9] = v36;
          v108[10] = v35[10];
          v37 = v35[5];
          v108[4] = v35[4];
          v108[5] = v37;
          v38 = v35[6];
          v108[7] = v35[7];
          v108[6] = v38;
          v39 = v35[1];
          v108[0] = *v35;
          v108[1] = v39;
          v40 = v35[2];
          v108[3] = v35[3];
          v108[2] = v40;
          sub_10001025C(&v95, v55);
          sub_10001025C(v106, v55);
          v28 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(v107, v108);
        }

        v41 = v28;
        sub_100104F94(v106);
        sub_100104F94(&v95);
        if (!v41)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }

      v42 = v13[9];
      v103 = v13[8];
      v104 = v42;
      v105[0] = v13[10];
      *(v105 + 9) = *(v13 + 169);
      v43 = v13[4];
      v100 = v13[5];
      v44 = v13[7];
      v101 = v13[6];
      v102 = v44;
      v45 = v13[1];
      v95 = *v13;
      v96 = v45;
      v46 = v13[2];
      v47 = v13[3];
      v13 += 12;
      v97 = v46;
      v98 = v47;
      v99 = v43;
      v48 = v14[9];
      *&v106[128] = v14[8];
      *&v106[144] = v48;
      *&v106[160] = v14[10];
      *&v106[169] = *(v14 + 169);
      v49 = v14[5];
      *&v106[64] = v14[4];
      *&v106[80] = v49;
      v50 = v14[7];
      *&v106[96] = v14[6];
      *&v106[112] = v50;
      v51 = v14[1];
      *v106 = *v14;
      *&v106[16] = v51;
      v52 = v14[2];
      v53 = v14[3];
      v14 += 12;
      *&v106[32] = v52;
      *&v106[48] = v53;
      if (*v106 != v95)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_1001029D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 32)
    {
      v6 = *(a1 + i + 56);
      v7 = *(a2 + i + 56);
      result = static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(*(a1 + i + 32), *(a1 + i + 40), *(a1 + i + 48), *(a2 + i + 32), *(a2 + i + 40), *(a2 + i + 48));
      if ((result & 1) == 0)
      {
        break;
      }

      if ((v7 | v6) < 0)
      {
        __break(1u);
        return result;
      }

      if (v7 != v6)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_100102A80(int32x2_t *a1, int32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  do
  {
    v5 = *v4++;
    v6 = v5;
    v7 = *v3++;
    v8 = vceq_s32(v6, v7);
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --*&v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_100102AF4(int32x2_t *a1, int32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vceq_s32(v6, v7);
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --*&v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_100102B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1001054EC(v14, v11, type metadata accessor for TaskHistory.Running);
        sub_1001054EC(v15, v7, type metadata accessor for TaskHistory.Running);
        v17 = sub_10016AFF8(v11, v7);
        sub_100105554(v7, type metadata accessor for TaskHistory.Running);
        sub_100105554(v11, type metadata accessor for TaskHistory.Running);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_100102D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10000C9C0(&qword_1005D0940, &qword_1004D43A8);
  v7 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v9 = &v41 - v8;
  v10 = type metadata accessor for TaskHistory.Previous(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v48 = &v41 - v15;
  __chkstk_darwin(v16);
  v47 = &v41 - v19;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v24 = *(v17 + 72);
  v41 = v18;
  v42 = v24;
  v25 = v47;
  v43 = v10;
  while (1)
  {
    sub_1001054EC(v22, v25, type metadata accessor for TaskHistory.Previous);
    v26 = v48;
    sub_1001054EC(v23, v48, type metadata accessor for TaskHistory.Previous);
    v27 = &v9[*(v46 + 48)];
    sub_1001054EC(v25, v9, type metadata accessor for TaskHistory.Previous);
    sub_1001054EC(v26, v27, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v28 = v45;
    sub_1001054EC(v9, v45, type metadata accessor for TaskHistory.Previous);
    v29 = *v28;
    v30 = *(v28 + 8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100020EDC(v29);
      goto LABEL_19;
    }

    v31 = *v27;
    v32 = *(v27 + 8);
    v33 = static Action.__derived_enum_equals(_:_:)(v29, *v27);
    sub_100020EDC(v31);
    sub_100020EDC(v29);
    if ((v33 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_100105554(v9, type metadata accessor for TaskHistory.Previous);
    v25 = v47;
    if (v30 != v32)
    {
      goto LABEL_20;
    }

LABEL_5:
    sub_100105554(v48, type metadata accessor for TaskHistory.Previous);
    sub_100105554(v25, type metadata accessor for TaskHistory.Previous);
    v23 += v42;
    v22 += v42;
    if (!--v20)
    {
      return 1;
    }
  }

  v34 = v41;
  sub_1001054EC(v9, v41, type metadata accessor for TaskHistory.Previous);
  v35 = *(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48);
  v36 = *(v34 + v35);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v37 = *(v27 + v35);
    v38 = v44;
    sub_100105098(v27, v44, type metadata accessor for ClientCommand);
    v39 = static ClientCommand.__derived_enum_equals(_:_:)(v34, v38);
    sub_100105554(v38, type metadata accessor for ClientCommand);
    sub_100105554(v34, type metadata accessor for ClientCommand);
    if ((v39 & 1) == 0)
    {
LABEL_16:
      sub_100105554(v9, type metadata accessor for TaskHistory.Previous);
      v25 = v47;
      goto LABEL_20;
    }

    sub_100105554(v9, type metadata accessor for TaskHistory.Previous);
    v25 = v47;
    if (v36 != v37)
    {
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  sub_100105554(v34, type metadata accessor for ClientCommand);
LABEL_19:
  sub_100025F40(v9, &qword_1005D0940, &qword_1004D43A8);
LABEL_20:
  sub_100105554(v48, type metadata accessor for TaskHistory.Previous);
  sub_100105554(v25, type metadata accessor for TaskHistory.Previous);
  return 0;
}

uint64_t sub_10010321C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = sub_1004A5834();
      v11 = v10;
      if (v9 == sub_1004A5834() && v11 == v12)
      {
      }

      else
      {
        v14 = sub_1004A6D34();

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10010330C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_10018A6B4(_swiftEmptyArrayStorage);
  v8 = v7;
  v10 = v9;
  v16 = &_s18CondStoreResponsesVN;
  v17 = sub_100105170();
  v11 = swift_allocObject();
  *&v15 = v11;
  *(v11 + 16) = _swiftEmptyArrayStorage;
  *(v11 + 24) = v6;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  *(v11 + 48) = _swiftEmptyArrayStorage;
  *(v11 + 56) = 0;
  *(v11 + 64) = 1;
  sub_100016D2C();
  sub_1004A7114();
  sub_1000B364C(&v15, a1);
  *(a1 + 40) = _swiftEmptyArrayStorage;
  *(a1 + 48) = 0;
  v12 = type metadata accessor for PendingServerResponses();
  return sub_100020950(v5, a1 + *(v12 + 24));
}

uint64_t sub_100103430@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_10018A6B4(_swiftEmptyArrayStorage);
  v8 = v7;
  v10 = v9;
  v16 = &_s14BasicResponsesVN;
  v17 = sub_10010521C();
  v11 = swift_allocObject();
  *&v15 = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  *(v11 + 32) = v10;
  *(v11 + 40) = _swiftEmptyArrayStorage;
  *(v11 + 48) = 1;
  *(v11 + 56) = 1;
  sub_100016D2C();
  sub_1004A7114();
  sub_1000B364C(&v15, a1);
  *(a1 + 40) = _swiftEmptyArrayStorage;
  *(a1 + 48) = 0;
  v12 = type metadata accessor for PendingServerResponses();
  return sub_100020950(v5, a1 + *(v12 + 24));
}

uint64_t sub_100103554(uint64_t result)
{
  v2 = *v1;
  if ((*(v1 + 8) & 1) == 0)
  {
    v3 = *(v2 + 16);
    if (v3 <= 0x294)
    {
      v4 = result;
      sub_10000C9C0(&qword_1005CEFA0, &qword_1004D43B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004CEAA0;
      *(inited + 32) = v4;
      result = sub_1000819F8(inited);
      v6 = 0;
      v7 = v2;
LABEL_7:
      *v1 = v7;
      *(v1 + 8) = v6;
      return result;
    }

    result = sub_10002A758(*v1, 0);
    v2 = v3;
  }

  v7 = v2 + 1;
  if (!__OFADD__(v2, 1))
  {
    v6 = 1;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void *sub_100103614(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v35 = _swiftEmptySetSingleton;
  v8 = v3[3];
  v9 = v3[4];
  sub_10002587C(v3, v8);
  v10 = *((*(v9 + 24))(v8, v9) + 16);

  if (v10 && (a3 ^ 1) & 1 | (v10 > 0x52))
  {
    v11 = v4[3];
    v12 = v4[4];
    sub_10002587C(v4, v11);
    v13 = (*(v12 + 24))(v11, v12);
    LOBYTE(v11) = sub_100026C90(a1, a2, v13);

    if (v11)
    {
      v14 = &v30;
      v15 = 5;
    }

    else
    {
      v14 = &v31;
      v15 = 4;
    }

    sub_100088568(v14, v15);
  }

  v16 = v4[3];
  v17 = v4[4];
  sub_10002587C(v4, v16);
  (*(v17 + 40))(v16, v17);
  v19 = *(v18 + 16);

  if (v19 || (v25 = v4[3], v26 = v4[4], sub_10002587C(v4, v25), v27 = (*(v26 + 72))(v25, v26), (v28 & 1) == 0) || v27)
  {
    sub_100088568(&v34, 11);
  }

  v20 = v4[5];
  v21 = v20;
  if ((v4[6] & 1) == 0)
  {
    v21 = *(v20 + 16);
  }

  v22 = 82;
  if ((a3 & 1) == 0)
  {
    v22 = 0;
  }

  if (v21 > v22)
  {
    if (sub_100026C18(a1, a2, v20, *(v4 + 48)))
    {
      v23 = &v32;
      v24 = 3;
    }

    else
    {
      v23 = &v33;
      v24 = 2;
    }

    sub_100088568(v23, v24);
  }

  return v35;
}

uint64_t sub_100103850(uint64_t a1)
{
  v2 = sub_10010587C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10010388C(uint64_t a1)
{
  v2 = sub_10010587C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001038C8(void *a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005D0970, &qword_1004D4618);
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v30 = &v28[-v6];
  v7 = sub_10000C9C0(&qword_1005D0978, &qword_1004D4620);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v10 = &v28[-v9];
  v11 = sub_10000C9C0(&qword_1005D0980, &qword_1004D4628);
  v34 = *(v11 - 8);
  v35 = v11;
  v12 = *(v34 + 64);
  __chkstk_darwin(v11);
  v14 = &v28[-v13];
  v15 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100105780();
  sub_1004A6FA4();
  v17 = *v2;
  v16 = v2[1];
  v19 = v2[2];
  v18 = v2[3];
  v20 = *(v2 + 48);
  if (v20 < 0)
  {
    v24 = v2 + 4;
    v23 = v2[4];
    v33 = v24[1];
    v29 = v20 & 0x7F;
    LOBYTE(v36) = 1;
    sub_1001057D4();
    v25 = v30;
    v26 = v35;
    sub_1004A6BD4();
    v36 = v17;
    v37 = v16;
    v38 = v19;
    v39 = v18;
    v40 = v23;
    v41 = v33;
    v42 = v29;
    sub_100105828();
    v27 = v32;
    sub_1004A6C74();
    (*(v31 + 8))(v25, v27);
    return (*(v34 + 8))(v14, v26);
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_10010587C();
    v21 = v35;
    sub_1004A6BD4();
    v36 = v17;
    v37 = v16;
    v38 = v19;
    v39 = v18;
    sub_1001058D0();
    sub_1004A6C74();
    (*(v33 + 8))(v10, v7);
    return (*(v34 + 8))(v14, v21);
  }
}

uint64_t sub_100103C34()
{
  if (*v0)
  {
    result = 0x726F7453646E6F63;
  }

  else
  {
    result = 0x6369736162;
  }

  *v0;
  return result;
}

uint64_t sub_100103C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369736162 && a2 == 0xE500000000000000;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F7453646E6F63 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_100103D5C(uint64_t a1)
{
  v2 = sub_100105780();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100103D98(uint64_t a1)
{
  v2 = sub_100105780();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100103DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004A6D34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100103E54(uint64_t a1)
{
  v2 = sub_1001057D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100103E90(uint64_t a1)
{
  v2 = sub_1001057D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100103EE4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_100104D64(v8, v9) & 1;
}

Swift::Int sub_100103F7C(uint64_t a1, char a2, uint64_t a3)
{
  sub_1004A6E94();
  if (a1 != 2)
  {
    sub_1004A6EC4(1u);
    FlagsUpdate.hash(into:)(v7, a1 & 0xFFFFFFFF01010101, a2);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1004A6EC4(0);
    return sub_1004A6F14();
  }

  sub_1004A6EC4(0);
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1004A6EC4(1u);
  sub_100092AB8(v7, a3);
  return sub_1004A6F14();
}

void sub_100104040(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[2];
  if (*v1 != 2)
  {
    v5 = *(v1 + 8);
    sub_1004A6EC4(1u);
    FlagsUpdate.hash(into:)(a1, v3 & 0xFFFFFFFF01010101, v5);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1004A6EC4(0);
    return;
  }

  sub_1004A6EC4(0);
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1004A6EC4(1u);

  sub_100092AB8(a1, v4);
}

Swift::Int sub_100104104()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  sub_1004A6E94();
  if (v1 != 2)
  {
    sub_1004A6EC4(1u);
    FlagsUpdate.hash(into:)(v5, v1 & 0xFFFFFFFF01010101, v2);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1004A6EC4(0);
    return sub_1004A6F14();
  }

  sub_1004A6EC4(0);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1004A6EC4(1u);
  sub_100092AB8(v5, v3);
  return sub_1004A6F14();
}

uint64_t *sub_1001041D4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(result + 8) == 1)
  {
    v5 = v3 == 0;
    if (v3)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (!v5)
    {
      v4 = 0;
    }

    if (v2)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  else if ((v3 | v2) < 0)
  {
    __break(1u);
  }

  else
  {
    return (v3 == v2);
  }

  return result;
}

uint64_t sub_100104228(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    do
    {
      v9 = *(v3 + 16);
      if (v7 == v9)
      {
        break;
      }

      if (v7 >= v9)
      {
        __break(1u);
        goto LABEL_32;
      }

      v10 = *(a1 + v6 + 40);
      v11 = *(a1 + v6 + 48);
      v12 = *(a1 + v6 + 56);
      v13 = *(v3 + v6 + 32);
      v14 = *(v3 + v6 + 40);
      v15 = *(v3 + v6 + 48);
      v16 = *(v3 + v6 + 56);
      LODWORD(v26) = *(a1 + v6 + 32);
      *(&v26 + 1) = v10;
      LOBYTE(v27) = v11;
      *(&v27 + 1) = v12;
      LODWORD(v28) = v13;
      *(&v28 + 1) = v14;
      LOBYTE(v29) = v15;
      *(&v29 + 1) = v16;
      if (v13 != v26)
      {
        goto LABEL_23;
      }

      if (v10 == 2)
      {
        if (v14 != 2)
        {
          goto LABEL_23;
        }
      }

      else if (v14 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(v10 & 0xFFFFFFFF01010101, v11, v14 & 0xFFFFFFFF01010101, v15) & 1) == 0)
      {
LABEL_23:

LABEL_24:

LABEL_25:
        sub_100025F40(&v26, &qword_1005D0968, &qword_1004D44B0);
        break;
      }

      if (v12)
      {
        if (!v16)
        {
          goto LABEL_24;
        }

        swift_bridgeObjectRetain_n();

        v18 = sub_100083478(v17, v16);

        if ((v18 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (v16)
      {
        goto LABEL_24;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v30 = v8;
      if ((result & 1) == 0)
      {
        result = sub_100091CE8(0, v8[2] + 1, 1);
        v8 = v30;
      }

      v20 = v8[2];
      v19 = v8[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_100091CE8((v19 > 1), v20 + 1, 1);
        v8 = v30;
      }

      ++v7;
      v8[2] = v20 + 1;
      v21 = &v8[8 * v20];
      v22 = v26;
      v23 = v27;
      v24 = v29;
      v21[4] = v28;
      v21[5] = v24;
      v21[2] = v22;
      v21[3] = v23;
      v6 += 32;
    }

    while (v4 != v7);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v25 = v8[2];

  if (v25)
  {
    if (*(v3 + 16) < v25)
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      return sub_1001646B8(0, v25);
    }
  }

  return result;
}

uint64_t sub_100104488(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v4 == v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    return v7 & 1;
  }

  else if (v6)
  {
    return 0;
  }

  else
  {
    return sub_1001045E0(v4, v5) & 1;
  }
}

uint64_t sub_1001044E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = *(v4 - 2);
      if (*(v3 - 2) == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else if (v7 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(*(v3 - 2) & 0xFFFFFFFF01010101, *(v3 - 8), *(v4 - 2) & 0xFFFFFFFF01010101, *(v4 - 8)) & 1) == 0)
      {
        return 0;
      }

      if (v5)
      {
        if (!v6)
        {
          return 0;
        }

        v8 = sub_100083478(v5, v6);

        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1001045E0(uint64_t result, uint64_t a2)
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
    v6 = *v4++;
    v5 = v6;
    v7 = *v3++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10010463C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = v6 >> 14;
      if (v6 >> 14 > 1)
      {
        if (v8 == 2)
        {
          v12 = v7 & 0xC000;
          v13 = (v7 ^ v6);
          if (v12 != 0x8000 || v13 != 0)
          {
            return 0;
          }
        }

        else if (*v3 > 0xC001u)
        {
          if (v6 == 49154)
          {
            if (v7 != 49154)
            {
              return 0;
            }
          }

          else if (v7 != 49155)
          {
            return 0;
          }
        }

        else if (v6 == 49152)
        {
          if (v7 != 49152)
          {
            return 0;
          }
        }

        else if (v7 != 49153)
        {
          return 0;
        }
      }

      else if (v8)
      {
        v9 = v7 & 0xC000;
        v10 = (v7 ^ v6);
        if (v9 != 0x4000 || v10 != 0)
        {
          return 0;
        }
      }

      else
      {
        if (v7 >> 14)
        {
          v5 = 0;
        }

        else
        {
          v5 = v6 == v7;
        }

        if (!v5)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100104744(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  result = 1;
  while (v3 != v2)
  {
    v6 = (v4 + 16 * v3);
    v7 = a2 + 32 + 16 * v3;
    if ((*(v6 + 2) | (*(v6 + 2) << 32)) != (*(v7 + 8) | (*(v7 + 8) << 32)))
    {
      return 0;
    }

    v8 = *v6;
    v9 = *v7;
    v10 = *(v8 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    if (v10)
    {
      v11 = v8 == v9;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v8 + 32);
      v13 = (v9 + 32);
      while (v10)
      {
        if (*v12 != *v13)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v10)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100104818(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (*(result + 48))
  {
    if (v2 != v3)
    {
      v4 = 0;
    }

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 48))
    {
      return 0;
    }

    v5 = *(v2 + 16);
    if (v5 != *(v3 + 16))
    {
      return 0;
    }

    if (v5)
    {
      v6 = v2 == v3;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v12 = (v2 + 32);
      v13 = (v3 + 32);
      while (v5)
      {
        if (*v13 != *v12)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v5)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }
  }

LABEL_13:
  sub_100104D00(result, v31);
  sub_100104D00(a2, v32);
  sub_10000C9C0(&qword_1005D0930, &qword_1004D4398);
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v8 = *(v25 + 16);
      if (v8 != *(v18 + 16))
      {
        goto LABEL_37;
      }

      if (v8 && v25 != v18)
      {
        v9 = (v25 + 32);
        v10 = (v18 + 32);
        while (*v10 == *v9)
        {
          ++v9;
          ++v10;
          if (!--v8)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_37;
      }

LABEL_21:
      if ((sub_1001044E0(v26, v19) & 1) == 0)
      {
LABEL_37:

        goto LABEL_38;
      }

      v16 = sub_100102318(v27, v20);

      if ((v16 & 1) == 0)
      {
LABEL_38:
        v11 = 0;
        goto LABEL_39;
      }

      if (v29)
      {
        if (v28)
        {
          if (v22)
          {
            v11 = v21 != 0;
LABEL_39:

            sub_1000197E0(v32);
            sub_1000197E0(v31);
            return v11;
          }
        }

        else if (v22)
        {
          v11 = v21 == 0;
          goto LABEL_39;
        }

LABEL_63:
        v11 = 0;
        goto LABEL_39;
      }

      if (v22)
      {
        goto LABEL_63;
      }

      if (((v21 | v28) & 0x8000000000000000) == 0)
      {
        if (v21 == v28)
        {
          v11 = 1;
          goto LABEL_39;
        }

        goto LABEL_63;
      }

      goto LABEL_65;
    }
  }

  if (!swift_dynamicCast())
  {
LABEL_41:
    sub_100025F40(v31, &qword_1005D0938, &qword_1004D43A0);
    return 0;
  }

  if (!swift_dynamicCast())
  {

    goto LABEL_41;
  }

  if ((sub_1001029D0(v24, v17) & 1) == 0)
  {

LABEL_49:

    goto LABEL_50;
  }

  if ((sub_1001045E0(v26, v19) & 1) == 0 || (sub_1001044E0(v27, v20) & 1) == 0)
  {

    goto LABEL_49;
  }

  v15 = sub_100102318(v28, v21);

  if ((v15 & 1) == 0)
  {
LABEL_50:
    v14 = 0;
LABEL_51:

    sub_1000197E0(v32);
    sub_1000197E0(v31);
    return v14;
  }

  if (v30)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v23)
  {
LABEL_60:
    v14 = 0;
    goto LABEL_51;
  }

  if (((v22 | v29) & 0x8000000000000000) == 0)
  {
    if (v22 == v29)
    {
LABEL_59:
      v14 = 1;
      goto LABEL_51;
    }

    goto LABEL_60;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_100104D00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100104D64(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v17 = *a2;
  v18 = *(a2 + 2);
  if (v4 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v17 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(v4 & 0xFFFFFFFF01010101, v5, v17 & 0xFFFFFFFF01010101, BYTE8(v17)) & 1) == 0)
  {
    goto LABEL_32;
  }

  v7 = v18;
  if (v6)
  {
    if (!v18)
    {
      sub_100105484(&v17, v16);
      goto LABEL_32;
    }

    sub_100105484(&v17, v16);
    v8 = sub_100083478(v6, v7);
    result = sub_1001054BC(&v17);
    if ((v8 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v18)
    {
      goto LABEL_32;
    }

    result = sub_100105484(&v17, v16);
  }

  v10 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (*(a2 + 6) != *(a1 + 6))
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_32;
    }
  }

  v11 = *(a2 + 36);
  if (*(a1 + 36))
  {
    if (!*(a2 + 36))
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (*(a2 + 8) != *(a1 + 8))
    {
      v11 = 1;
    }

    if (v11)
    {
      goto LABEL_32;
    }
  }

  v12 = *(a2 + 48);
  if (a1[6])
  {
    if ((a2[3] & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_31:
    v15 = static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(*(a1 + 14), a1[8], a1[9], *(a2 + 14), *(a2 + 8), *(a2 + 9));
    return v15 & 1;
  }

  if (a2[3])
  {
LABEL_32:
    v15 = 0;
    return v15 & 1;
  }

  v13 = a1[5];
  v14 = *(a2 + 5);
  if (((v14 | v13) & 0x8000000000000000) == 0)
  {
    if (v14 == v13)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  __break(1u);
  return result;
}

BOOL sub_100104EEC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a1 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (a4 == 2)
    {
      return 0;
    }

    v7 = a6;
    v8 = static FlagsUpdate.__derived_struct_equals(_:_:)(a1 & 0xFFFFFFFF01010101, a2, a4 & 0xFFFFFFFF01010101, a5);
    a6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    if (!a6)
    {
      return 0;
    }

    v9 = a6;

    v10 = sub_100083478(a3, v9);

    return (v10 & 1) != 0;
  }

  return !a6;
}

uint64_t sub_100105098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100105100(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100105170()
{
  result = qword_1005D0950;
  if (!qword_1005D0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0950);
  }

  return result;
}

uint64_t sub_1001051C4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return _swift_deallocObject(v0, 65, 7);
}

unint64_t sub_10010521C()
{
  result = qword_1005D0958;
  if (!qword_1005D0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0958);
  }

  return result;
}

uint64_t sub_100105270()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1001052C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100105308(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t sub_10010536C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1001053C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100105430()
{
  result = qword_1005D0960;
  if (!qword_1005D0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0960);
  }

  return result;
}

uint64_t sub_1001054EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100105554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001055C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_100105620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100105690(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 49))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 48) & 0x7E | (*(a1 + 48) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001056E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_100105780()
{
  result = qword_1005D0988;
  if (!qword_1005D0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0988);
  }

  return result;
}

unint64_t sub_1001057D4()
{
  result = qword_1005D0990;
  if (!qword_1005D0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0990);
  }

  return result;
}

unint64_t sub_100105828()
{
  result = qword_1005D0998;
  if (!qword_1005D0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0998);
  }

  return result;
}

unint64_t sub_10010587C()
{
  result = qword_1005D09A0;
  if (!qword_1005D09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D09A0);
  }

  return result;
}

unint64_t sub_1001058D0()
{
  result = qword_1005D09A8;
  if (!qword_1005D09A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D09A8);
  }

  return result;
}

unint64_t sub_100105958()
{
  result = qword_1005D09B0;
  if (!qword_1005D09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D09B0);
  }

  return result;
}

unint64_t sub_1001059B0()
{
  result = qword_1005D09B8;
  if (!qword_1005D09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D09B8);
  }

  return result;
}

unint64_t sub_100105A08()
{
  result = qword_1005D09C0;
  if (!qword_1005D09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D09C0);
  }

  return result;
}

unint64_t sub_100105A60()
{
  result = qword_1005D09C8;
  if (!qword_1005D09C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D09C8);
  }

  return result;
}

unint64_t sub_100105AB8()
{
  result = qword_1005D09D0;
  if (!qword_1005D09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D09D0);
  }

  return result;
}

unint64_t sub_100105B10()
{
  result = qword_1005D09D8;
  if (!qword_1005D09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D09D8);
  }

  return result;
}

unint64_t sub_100105B68()
{
  result = qword_1005D09E0;
  if (!qword_1005D09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D09E0);
  }

  return result;
}

unint64_t sub_100105BC0()
{
  result = qword_1005D09E8;
  if (!qword_1005D09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D09E8);
  }

  return result;
}

unint64_t sub_100105C18()
{
  result = qword_1005D09F0;
  if (!qword_1005D09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D09F0);
  }

  return result;
}

uint64_t sub_100105C74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_100105CBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100105D18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((sub_1001045DC(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1001044E0(v2, v6) & 1) == 0)
  {
    return 0;
  }

  result = sub_100102318(v3, v7);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v4)
    {
      if (v9)
      {
        return v8 != 0;
      }
    }

    else if (v9)
    {
      return v8 == 0;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

  if (((v8 | v4) & 0x8000000000000000) == 0)
  {
    return v8 == v4;
  }

  __break(1u);
  return result;
}

uint64_t BodyStructure.Multipart.Extension.parameters.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  return v1;
}

uint64_t sub_100105EA4()
{
  v1 = sub_10018A6B4(_swiftEmptyArrayStorage);
  v3 = v2;
  v5 = v4;
  v6 = *v0;

  v7 = v0[1];

  v8 = v0[2];

  *v0 = v1;
  v0[1] = v3;
  v0[2] = v5;
  return result;
}

double sub_100105F18@<D0>(uint64_t a1@<X8>)
{
  sub_100106F44(*(v1 + 8), *(v1 + 24), v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

unint64_t sub_100105F6C(uint64_t a1)
{
  result = sub_100105F94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100105F94()
{
  result = qword_1005D09F8;
  if (!qword_1005D09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D09F8);
  }

  return result;
}

uint64_t sub_100105FE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_10000C9C0(&qword_1005D0A00, &qword_1004D4A70);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100107338();
  sub_1004A6FA4();
  v16 = 0;
  sub_1004A6BE4();
  if (!v5)
  {
    v15 = 1;
    sub_1004A6BE4();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_10010617C()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x577365676E616863;
  }

  *v0;
  return result;
}

uint64_t sub_1001061C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x577365676E616863 && a2 == 0xEE00444955687469;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004AA3A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_1001062B4(uint64_t a1)
{
  v2 = sub_100107338();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001062F0(uint64_t a1)
{
  v2 = sub_100107338();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10010634C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = a3;
  v84 = a1;
  v85 = a2;
  v83 = _s12LocalMailboxV6LoggerVMa();
  v9 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  __chkstk_darwin(v10);
  v12 = &v81 - v11;
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v16 = &v81 - v15;
  __chkstk_darwin(v17);
  v19 = &v81 - v18;
  __chkstk_darwin(v20);
  v22 = &v81 - v21;
  __chkstk_darwin(v23);
  v25 = &v81 - v24;
  __chkstk_darwin(v26);
  v28 = &v81 - v27;
  __chkstk_darwin(v29);
  v33 = &v81 - v30;
  v82 = a5;
  if ((a5 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) != 0)
    {
      v60 = v32;
      v61 = v31;
      sub_1001071B0(a6, v31, _s12LocalMailboxV6LoggerVMa);
      sub_1001071B0(a6, v12, _s12LocalMailboxV6LoggerVMa);
      sub_1001071B0(a6, v60, _s12LocalMailboxV6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v62 = sub_1004A4A54();
      v63 = sub_1004A6014();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v90 = v87;
        *v64 = 68158979;
        *(v64 + 4) = 2;
        *(v64 + 8) = 256;
        v65 = v83;
        v66 = v12[*(v83 + 20)];
        sub_100107218(v12, _s12LocalMailboxV6LoggerVMa);
        *(v64 + 10) = v66;
        *(v64 + 11) = 1040;
        *(v64 + 13) = 2;
        *(v64 + 17) = 512;
        v67 = *(v60 + *(v65 + 20) + 2);
        sub_100107218(v60, _s12LocalMailboxV6LoggerVMa);
        *(v64 + 19) = v67;
        *(v64 + 21) = 2160;
        *(v64 + 23) = 0x786F626C69616DLL;
        *(v64 + 31) = 2085;
        v68 = v61 + *(v65 + 20);
        v69 = *(v68 + 8);
        v70 = *(v68 + 16);

        sub_100107218(v61, _s12LocalMailboxV6LoggerVMa);
        v88 = v69;
        v89 = v70;
        v71 = sub_1004A5824();
        v73 = sub_10015BA6C(v71, v72, &v90);

        *(v64 + 33) = v73;
        _os_log_impl(&_mh_execute_header, v62, v63, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Flag/label change without UID and without sequence number.", v64, 0x29u);
        sub_1000197E0(v87);
      }

      else
      {
        sub_100107218(v60, _s12LocalMailboxV6LoggerVMa);
        sub_100107218(v12, _s12LocalMailboxV6LoggerVMa);

        sub_100107218(v61, _s12LocalMailboxV6LoggerVMa);
      }
    }

    else
    {
      v48 = a4;
      sub_1001071B0(a6, v22, _s12LocalMailboxV6LoggerVMa);
      sub_1001071B0(a6, v19, _s12LocalMailboxV6LoggerVMa);
      sub_1001071B0(a6, v16, _s12LocalMailboxV6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v49 = sub_1004A4A54();
      v50 = sub_1004A6004();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v90 = v81;
        *v51 = 68159235;
        *(v51 + 4) = 2;
        *(v51 + 8) = 256;
        v52 = v83;
        v53 = v19[*(v83 + 20)];
        v82 = v48;
        sub_100107218(v19, _s12LocalMailboxV6LoggerVMa);
        *(v51 + 10) = v53;
        *(v51 + 11) = 1040;
        *(v51 + 13) = 2;
        *(v51 + 17) = 512;
        v54 = *&v16[*(v52 + 20) + 2];
        sub_100107218(v16, _s12LocalMailboxV6LoggerVMa);
        *(v51 + 19) = v54;
        *(v51 + 21) = 2160;
        *(v51 + 23) = 0x786F626C69616DLL;
        *(v51 + 31) = 2085;
        v55 = &v22[*(v52 + 20)];
        v56 = *(v55 + 1);
        v57 = *(v55 + 4);

        sub_100107218(v22, _s12LocalMailboxV6LoggerVMa);
        v88 = v56;
        v89 = v57;
        v58 = sub_1004A5824();
        v48 = sub_10015BA6C(v58, v59, &v90);

        *(v51 + 33) = v48;
        LODWORD(v48) = v82;
        *(v51 + 41) = 1024;
        *(v51 + 43) = v48;
        _os_log_impl(&_mh_execute_header, v49, v50, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Inserting flag/label change without UID. Sequence number %u.", v51, 0x2Fu);
        sub_1000197E0(v81);
      }

      else
      {
        sub_100107218(v16, _s12LocalMailboxV6LoggerVMa);
        sub_100107218(v19, _s12LocalMailboxV6LoggerVMa);

        sub_100107218(v22, _s12LocalMailboxV6LoggerVMa);
      }

      v75 = v86;
      v74 = v87;
      v76 = v87[3];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_1000859C4(0, *(v76 + 2) + 1, 1, v76);
      }

      v78 = *(v76 + 2);
      v77 = *(v76 + 3);
      if (v78 >= v77 >> 1)
      {
        v76 = sub_1000859C4((v77 > 1), v78 + 1, 1, v76);
      }

      *(v76 + 2) = v78 + 1;
      v79 = &v76[32 * v78];
      *(v79 + 8) = v48;
      v80 = v85;
      *(v79 + 5) = v84;
      v79[48] = v80;
      *(v79 + 7) = v75;
      v74[3] = v76;
    }
  }

  else
  {
    sub_1001071B0(a6, &v81 - v30, _s12LocalMailboxV6LoggerVMa);
    sub_1001071B0(a6, v28, _s12LocalMailboxV6LoggerVMa);
    sub_1001071B0(a6, v25, _s12LocalMailboxV6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v34 = sub_1004A4A54();
    v35 = sub_1004A6004();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v90 = v81;
      *v36 = 68159235;
      *(v36 + 4) = 2;
      *(v36 + 8) = 256;
      v37 = v83;
      v38 = v28[*(v83 + 20)];
      sub_100107218(v28, _s12LocalMailboxV6LoggerVMa);
      *(v36 + 10) = v38;
      *(v36 + 11) = 1040;
      *(v36 + 13) = 2;
      *(v36 + 17) = 512;
      v39 = *&v25[*(v37 + 20) + 2];
      sub_100107218(v25, _s12LocalMailboxV6LoggerVMa);
      *(v36 + 19) = v39;
      *(v36 + 21) = 2160;
      *(v36 + 23) = 0x786F626C69616DLL;
      *(v36 + 31) = 2085;
      v40 = &v33[*(v37 + 20)];
      v41 = *(v40 + 1);
      v42 = *(v40 + 4);

      sub_100107218(v33, _s12LocalMailboxV6LoggerVMa);
      v88 = v41;
      v89 = v42;
      v43 = sub_1004A5824();
      v45 = sub_10015BA6C(v43, v44, &v90);

      *(v36 + 33) = v45;
      *(v36 + 41) = 1024;
      v46 = v82;
      *(v36 + 43) = v82;
      _os_log_impl(&_mh_execute_header, v34, v35, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Inserting flag/label change for UID %u.", v36, 0x2Fu);
      sub_1000197E0(v81);

      v47 = v86;
    }

    else
    {
      sub_100107218(v25, _s12LocalMailboxV6LoggerVMa);
      sub_100107218(v28, _s12LocalMailboxV6LoggerVMa);

      sub_100107218(v33, _s12LocalMailboxV6LoggerVMa);
      v47 = v86;
      v46 = v82;
    }

    sub_100186664(v84, v85, v47, v46);
  }
}

void sub_100106C70(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  sub_1001071B0(a1, v20 - v7, type metadata accessor for MailboxTaskLogger);
  sub_1001071B0(a1, v5, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v9 = sub_1004A4A54();
  v10 = sub_1004A6014();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v11 = 68159235;
    *(v11 + 4) = 2;
    *(v11 + 8) = 256;
    v12 = &v5[*(v2 + 20)];
    *(v11 + 10) = *v12;
    *(v11 + 11) = 2082;
    v13 = &v8[*(v2 + 20)];
    *(v11 + 13) = sub_10015BA6C(*(v13 + 1), *(v13 + 2), &v22);
    *(v11 + 21) = 1040;
    *(v11 + 23) = 2;
    *(v11 + 27) = 512;
    v14 = *(v12 + 12);
    sub_100107218(v5, type metadata accessor for MailboxTaskLogger);
    *(v11 + 29) = v14;
    *(v11 + 31) = 2160;
    *(v11 + 33) = 0x786F626C69616DLL;
    *(v11 + 41) = 2085;
    v15 = *(v13 + 4);
    v16 = *(v13 + 10);

    sub_100107218(v8, type metadata accessor for MailboxTaskLogger);
    v20[1] = v15;
    v21 = v16;
    v17 = sub_1004A5824();
    v19 = sub_10015BA6C(v17, v18, &v22);

    *(v11 + 43) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Attempting to store HIGHESTMODSEQ, but PendingServerResponses does not support CONDSTORE.", v11, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100107218(v5, type metadata accessor for MailboxTaskLogger);

    sub_100107218(v8, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_100106F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v5 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  sub_100016D2C();
  sub_1004A7114();
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = (a1 + 32);
    do
    {
      v21 = *v20++;
      v34 = v21;
      MessageIdentifierSet.insert(_:)(v35, &v34, v12);
      --v19;
    }

    while (v19);
  }

  sub_100025FDC(v15, v18, &unk_1005D91B0, &unk_1004CF400);
  v32 = sub_100143D50();
  v23 = v22;
  sub_100025F40(v18, &unk_1005D91B0, &unk_1004CF400);
  sub_1004A7114();
  v24 = *(v33 + 16);
  if (v24)
  {
    v25 = (v33 + 32);
    do
    {
      v26 = *v25;
      v25 += 8;
      v34 = v26;
      MessageIdentifierSet.insert(_:)(v35, &v34, v5);
      --v24;
    }

    while (v24);
  }

  sub_100025FDC(v8, v11, &qword_1005CDA58, &qword_1004CF7C0);
  v27 = sub_10014433C();
  v29 = v28;
  result = sub_100025F40(v11, &qword_1005CDA58, &qword_1004CF7C0);
  *a3 = v32;
  *(a3 + 8) = v23;
  *(a3 + 16) = v27;
  *(a3 + 24) = v29;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return result;
}

uint64_t sub_1001071B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100107218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100107278(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1001072D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100107338()
{
  result = qword_1005D0A08;
  if (!qword_1005D0A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A08);
  }

  return result;
}

unint64_t sub_1001073A0()
{
  result = qword_1005D0A10;
  if (!qword_1005D0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A10);
  }

  return result;
}

unint64_t sub_1001073F8()
{
  result = qword_1005D0A18;
  if (!qword_1005D0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A18);
  }

  return result;
}

unint64_t sub_100107450()
{
  result = qword_1005D0A20;
  if (!qword_1005D0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A20);
  }

  return result;
}

uint64_t sub_1001074A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  result = static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16));
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (((v3 | v2) & 0x8000000000000000) == 0)
  {
    return v3 == v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100107504@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v49 - v16;
  v53 = v2;
  v18 = v2[2];
  sub_100016D2C();
  sub_1004A7114();
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 32);
    do
    {
      v21 = *v20++;
      v55 = v21;
      MessageIdentifierSet.insert(_:)(&v54, &v55, v11);
      --v19;
    }

    while (v19);
  }

  sub_100025FDC(v14, v17, &unk_1005D91B0, &unk_1004CF400);
  v22 = sub_100143D50();
  v51 = v23;
  v52 = v22;
  sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
  v24 = v53;
  v25 = v53[4];
  sub_1004A7114();
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = (v25 + 32);
    do
    {
      v28 = *v27;
      v27 += 8;
      v55 = v28;
      MessageIdentifierSet.insert(_:)(&v54, &v55, v4);
      --v26;
    }

    while (v26);
  }

  sub_100025FDC(v7, v10, &qword_1005CDA58, &qword_1004CF7C0);
  v29 = sub_10014433C();
  v31 = v30;
  result = sub_100025F40(v10, &qword_1005CDA58, &qword_1004CF7C0);
  v33 = *v24;
  v34 = *(*v24 + 16);
  v35 = _swiftEmptyArrayStorage;
  if (v34)
  {
    v49 = v31;
    v50 = v29;
    v54 = _swiftEmptyArrayStorage;
    sub_100092308(0, v34, 0);
    v35 = v54;
    v36 = (v33 + 56);
    do
    {
      v37 = *(v36 - 6);
      v38 = *(v36 - 2);
      v39 = *(v36 - 1);
      v40 = *v36;

      v41 = sub_100108BD8(v38);

      v54 = v35;
      v43 = v35[2];
      v42 = v35[3];
      if (v43 >= v42 >> 1)
      {
        result = sub_100092308((v42 > 1), v43 + 1, 1);
        v35 = v54;
      }

      v36 += 4;
      v35[2] = v43 + 1;
      v44 = &v35[2 * v43];
      v44[4] = v41;
      v44[5] = v40;
      --v34;
    }

    while (v34);
    v24 = v53;
    v31 = v49;
    v29 = v50;
  }

  v45 = v24[5];
  v46 = *(v24 + 48);
  if (v46)
  {
    v45 = 0;
  }

  v47 = v51;
  v48 = v52;
  *a1 = v35;
  *(a1 + 8) = v48;
  *(a1 + 16) = v47;
  *(a1 + 24) = v29;
  *(a1 + 32) = v31;
  *(a1 + 40) = v45;
  *(a1 + 48) = v46 | 0x80;
  return result;
}

void sub_1001078B8(uint64_t a1, uint64_t a2)
{
  v5 = _s12LocalMailboxV6LoggerVMa();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v76 - v10;
  __chkstk_darwin(v12);
  v14 = &v76 - v13;
  __chkstk_darwin(v15);
  v17 = &v76 - v16;
  __chkstk_darwin(v18);
  v20 = &v76 - v19;
  __chkstk_darwin(v21);
  if ((*(a1 + 36) & 1) == 0)
  {
    v77 = v22;
    v78 = &v76 - v23;
    v38 = *(a1 + 32);
    v39 = *a1;
    v40 = *(a1 + 8);
    v41 = *(a1 + 16);

    v42 = v2;
    sub_100186664(v39, v40, v41, v38);
    if (*(a1 + 48))
    {
      v43 = v78;
      sub_100108E28(a2, v78);
      sub_100108E28(a2, v20);
      sub_100108E28(a2, v17);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v25 = sub_1004A4A54();
      v44 = sub_1004A6024();
      if (os_log_type_enabled(v25, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v81 = v46;
        *v45 = 68158979;
        *(v45 + 4) = 2;
        *(v45 + 8) = 256;
        v47 = v77;
        v48 = v20[*(v77 + 20)];
        sub_100108E8C(v20);
        *(v45 + 10) = v48;
        *(v45 + 11) = 1040;
        *(v45 + 13) = 2;
        *(v45 + 17) = 512;
        v49 = *&v17[*(v47 + 20) + 2];
        sub_100108E8C(v17);
        *(v45 + 19) = v49;
        *(v45 + 21) = 2160;
        *(v45 + 23) = 0x786F626C69616DLL;
        *(v45 + 31) = 2085;
        v50 = v43 + *(v47 + 20);
        v51 = *(v50 + 8);
        v52 = *(v50 + 16);

        sub_100108E8C(v43);
        v79 = v51;
        v80 = v52;
        v53 = sub_1004A5824();
        v55 = sub_10015BA6C(v53, v54, &v81);

        *(v45 + 33) = v55;
        _os_log_impl(&_mh_execute_header, v25, v44, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Mailbox supports CONDSTORE, but flag change has no MODSEQ.", v45, 0x29u);
        sub_1000197E0(v46);
        goto LABEL_8;
      }

      sub_100108E8C(v17);
      sub_100108E8C(v20);

      v75 = v43;
      goto LABEL_30;
    }

    v65 = *(a1 + 40);
    v66 = *(a1 + 56);
    v68 = *(a1 + 64);
    v67 = *(a1 + 72);
    v69 = *v42;
    v70 = *(*v42 + 2);
    if (!v70 || (static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(v66, v68, v67, *&v69[32 * v70], *&v69[32 * v70 + 8], *&v69[32 * v70 + 16]) & 1) == 0)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_100085AD0(0, *(v69 + 2) + 1, 1, v69);
      }

      v73 = *(v69 + 2);
      v72 = *(v69 + 3);
      if (v73 >= v72 >> 1)
      {
        v69 = sub_100085AD0((v72 > 1), v73 + 1, 1, v69);
      }

      *(v69 + 2) = v73 + 1;
      v74 = &v69[32 * v73];
      *(v74 + 8) = v66;
      *(v74 + 5) = v68;
      *(v74 + 6) = v67;
      *(v74 + 7) = v65;
      *v42 = v69;
      return;
    }

    v71 = *(v69 + 2);
    if (v71)
    {
      if (v65 <= *&v69[32 * v71 + 24])
      {
        v67 = *&v69[32 * v71 + 24];
      }

      else
      {
        v67 = v65;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    v69 = sub_100139908(v69);
LABEL_21:
    if (v71 > *(v69 + 2))
    {
      __break(1u);
    }

    else
    {
      *&v69[32 * v71 + 24] = v67;
      *v42 = v69;
    }

    return;
  }

  if (*(a1 + 28))
  {
    v24 = v22;
    sub_100108E28(a2, v14);
    sub_100108E28(a2, v11);
    sub_100108E28(a2, v8);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v25 = sub_1004A4A54();
    v26 = sub_1004A6014();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v81 = v28;
      *v27 = 68158979;
      v29 = v24;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      v30 = v11[*(v24 + 20)];
      sub_100108E8C(v11);
      *(v27 + 10) = v30;
      *(v27 + 11) = 1040;
      *(v27 + 13) = 2;
      *(v27 + 17) = 512;
      v31 = *&v8[*(v24 + 20) + 2];
      sub_100108E8C(v8);
      *(v27 + 19) = v31;
      *(v27 + 21) = 2160;
      *(v27 + 23) = 0x786F626C69616DLL;
      *(v27 + 31) = 2085;
      v32 = &v14[*(v29 + 20)];
      v33 = *(v32 + 1);
      v34 = *(v32 + 4);

      sub_100108E8C(v14);
      v79 = v33;
      v80 = v34;
      v35 = sub_1004A5824();
      v37 = sub_10015BA6C(v35, v36, &v81);

      *(v27 + 33) = v37;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Flag change has no UID and no sequence number.", v27, 0x29u);
      sub_1000197E0(v28);
LABEL_8:

      return;
    }

    sub_100108E8C(v8);
    sub_100108E8C(v11);

    v75 = v14;
LABEL_30:
    sub_100108E8C(v75);
    return;
  }

  v56 = *(a1 + 24);
  v57 = *a1;
  v58 = *(a1 + 8);
  v59 = *(a1 + 16);
  v60 = v2;
  v61 = v2[4];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v61 = sub_1000859C4(0, *(v61 + 2) + 1, 1, v61);
  }

  v63 = *(v61 + 2);
  v62 = *(v61 + 3);
  if (v63 >= v62 >> 1)
  {
    v61 = sub_1000859C4((v62 > 1), v63 + 1, 1, v61);
  }

  *(v61 + 2) = v63 + 1;
  v64 = &v61[32 * v63];
  *(v64 + 8) = v56;
  *(v64 + 5) = v57;
  v64[48] = v58;
  *(v64 + 7) = v59;
  v60[4] = v61;
}

uint64_t sub_100107FA0()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];

  return v1;
}

uint64_t sub_100107FF0()
{
  v1 = sub_10018A6B4(_swiftEmptyArrayStorage);
  v3 = v2;
  v5 = v4;
  v6 = v0[1];

  v7 = v0[2];

  v8 = v0[3];

  v0[1] = v1;
  v0[2] = v3;
  v0[3] = v5;
  return result;
}

uint64_t sub_100108050(uint64_t result, Swift::Int a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 16);
  if (!v5)
  {
LABEL_15:

    v8 = 0;
    LODWORD(v17) = 1;
    v21 = v25;
    goto LABEL_16;
  }

  v7 = result;
  v8 = 0;
  v9 = v4 + 6;
  while (1)
  {
    if (v8 >= v4[2])
    {
      __break(1u);
      goto LABEL_28;
    }

    v11 = v4;
    v12 = *(v9 - 4);
    v13 = *(v9 - 1);
    v14 = *v9;

    LOBYTE(v12) = ConnectionCommandIDSet.isDisjoint(with:)(v7, a2, a3, v12, v13);

    if ((v12 & 1) == 0)
    {
      break;
    }

    ++v8;
    v9 += 4;
    v4 = v11;
    if (v5 == v8)
    {
      v8 = v5;
      goto LABEL_8;
    }
  }

  v4 = v11;
LABEL_8:
  if (v4[2] < v8)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  sub_100092028(0, v8, 0);
  v15 = _swiftEmptyArrayStorage[2];
  v16 = v4 + 7;
  v17 = v8;
  do
  {
    v19 = *v16;
    v16 += 4;
    v18 = v19;
    v20 = _swiftEmptyArrayStorage[3];
    if (v15 >= v20 >> 1)
    {
      sub_100092028((v20 > 1), v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    _swiftEmptyArrayStorage[v15++ + 4] = v18;
    --v17;
  }

  while (v17);
  v21 = v25;
  v4 = v11;
LABEL_16:
  v22 = sub_1000AFBEC(_swiftEmptyArrayStorage);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    if ((*(v21 + 48) & 1) == 0 && v22 <= *(v21 + 40))
    {
      v22 = *(v21 + 40);
    }

    *(v21 + 40) = v22;
    *(v21 + 48) = 0;
  }

  if (v17)
  {
LABEL_24:
  }

  else
  {
    if (v4[2] >= v8)
    {
      sub_100164C3C(0, v8);
      goto LABEL_24;
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_100108270(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  if (*(*v1 + 16))
  {
    v4 = static ConnectionCommandIDSet.empty.getter();
    v6 = v5;
    v8 = v7;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085AD0(0, *(v3 + 16) + 1, 1, v3);
      v3 = result;
    }

    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_100085AD0((v9 > 1), v10 + 1, 1, v3);
      v3 = result;
    }

    *(v3 + 16) = v10 + 1;
    v11 = v3 + 32 * v10;
    *(v11 + 32) = v4;
    *(v11 + 40) = v6;
    *(v11 + 48) = v8;
    *(v11 + 56) = v2;
    *v1 = v3;
  }

  else
  {
    *(v1 + 40) = result;
    *(v1 + 48) = 0;
  }

  return result;
}

uint64_t sub_100108344()
{
  if ((*(*(v0 + 32) + 16) != 0) | *(v0 + 48) & 1)
  {
    return 0;
  }

  else
  {
    return *(v0 + 40);
  }
}

double sub_100108378@<D0>(uint64_t a1@<X8>)
{
  sub_100107504(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1001083C4(void *a1, uint64_t a2)
{
  v5 = sub_10000C9C0(&qword_1005D0A58, &unk_1004D4D48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_1001090D4();
  sub_1004A6FA4();
  v13 = a2;
  v12[15] = 0;
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100109128();
  sub_1004A6C74();
  if (!v2)
  {
    v12[14] = 1;
    sub_1004A6CA4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100108578(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D0A30, &qword_1004D4D38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100108FA8();
  sub_1004A6FA4();
  v19 = *v3;
  v18[7] = 0;
  sub_10000C9C0(&qword_1005D0A40, &qword_1004D4D40);
  sub_100108FFC();
  sub_1004A6C74();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = v3[1];
  v12 = v3[2];
  v18[6] = 1;
  sub_1004A6BE4();
  v13 = v3[3];
  v14 = v3[4];
  v18[5] = 2;
  sub_1004A6BE4();
  v16 = v3[5];
  v17 = *(v3 + 48);
  v18[4] = 3;
  sub_1004A6C34();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100108768()
{
  if (*v0)
  {
    result = 0x65636E6575716573;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1001087B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001004AA3E0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xED000065756C6156)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1004A6D34();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1001088A4(uint64_t a1)
{
  v2 = sub_1001090D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001088E0(uint64_t a1)
{
  v2 = sub_1001090D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100108938()
{
  v1 = 0x65636E6575716573;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0x577365676E616863;
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

uint64_t sub_1001089D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001093D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100108A04(uint64_t a1)
{
  v2 = sub_100108FA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100108A40(uint64_t a1)
{
  v2 = sub_100108FA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100108A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if ((sub_1001029D0(a1, a7) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1001045DC(a2, a8) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1001044E0(a3, a9) & 1) == 0)
  {
    return 0;
  }

  result = sub_100102318(a4, a10);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (a6)
  {
    return (a12 & 1) != 0;
  }

  if (a12)
  {
    return 0;
  }

  if (((a11 | a5) & 0x8000000000000000) == 0)
  {
    return a11 == a5;
  }

  __break(1u);
  return result;
}

unint64_t sub_100108B5C(uint64_t a1)
{
  result = sub_100108B84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100108B84()
{
  result = qword_1005D0A28;
  if (!qword_1005D0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A28);
  }

  return result;
}

void *sub_100108BD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100091A08(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_1004A6554();
  v6 = result;
  v7 = 0;
  v20 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v21 = v7;
    v22 = *(a1 + 36);
    v23 = *(*(a1 + 48) + 4 * v6);
    result = sub_1004A6934();
    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      result = sub_100091A08((v10 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v12 = &_swiftEmptyArrayStorage[2 * v11];
    v12[4] = HIDWORD(v23);
    v12[5] = 0xE000000000000000;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v13 = *(a1 + 56 + 8 * v9);
    if ((v13 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v6 & 0x3F));
    if (v14)
    {
      v8 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v17 = (a1 + 64 + 8 * v9);
      while (v16 < (v8 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_100020944(v6, v22, 0);
          v8 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v6, v22, 0);
    }

LABEL_4:
    v7 = v21 + 1;
    v6 = v8;
    if (v21 + 1 == v20)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100108E28(uint64_t a1, uint64_t a2)
{
  v4 = _s12LocalMailboxV6LoggerVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100108E8C(uint64_t a1)
{
  v2 = _s12LocalMailboxV6LoggerVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100108F10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100108F58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100108FA8()
{
  result = qword_1005D0A38;
  if (!qword_1005D0A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A38);
  }

  return result;
}

unint64_t sub_100108FFC()
{
  result = qword_1005D0A48;
  if (!qword_1005D0A48)
  {
    sub_10000DEFC(&qword_1005D0A40, &qword_1004D4D40);
    sub_100109080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A48);
  }

  return result;
}

unint64_t sub_100109080()
{
  result = qword_1005D0A50;
  if (!qword_1005D0A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A50);
  }

  return result;
}

unint64_t sub_1001090D4()
{
  result = qword_1005D0A60;
  if (!qword_1005D0A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A60);
  }

  return result;
}

unint64_t sub_100109128()
{
  result = qword_1005D0A68;
  if (!qword_1005D0A68)
  {
    sub_10000DEFC(&unk_1005DA9A0, &unk_1004CF770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A68);
  }

  return result;
}

unint64_t sub_1001091C8()
{
  result = qword_1005D0A70;
  if (!qword_1005D0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A70);
  }

  return result;
}

unint64_t sub_100109220()
{
  result = qword_1005D0A78;
  if (!qword_1005D0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A78);
  }

  return result;
}

unint64_t sub_100109278()
{
  result = qword_1005D0A80;
  if (!qword_1005D0A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A80);
  }

  return result;
}

unint64_t sub_1001092D0()
{
  result = qword_1005D0A88;
  if (!qword_1005D0A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A88);
  }

  return result;
}

unint64_t sub_100109328()
{
  result = qword_1005D0A90;
  if (!qword_1005D0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A90);
  }

  return result;
}

unint64_t sub_100109380()
{
  result = qword_1005D0A98;
  if (!qword_1005D0A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0A98);
  }

  return result;
}

uint64_t sub_1001093D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEF73657461647055;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x577365676E616863 && a2 == 0xEE00444955687469 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004AA3A0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001004AA3C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

Swift::Int sub_10010955C()
{
  result = sub_100093190(&off_1005990D0);
  qword_1005DDF70 = result;
  return result;
}

uint64_t sub_100109584()
{
  sub_10000C9C0(&qword_1005CD560, &unk_1004CF410);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004D13E0;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *(v1 + 32) = type metadata accessor for FindMissingMessages(0);
  sub_100026044();

  sub_1004A6674();
  *(v1 + 80) = type metadata accessor for FetchSearchResultMessages(0);

  sub_1004A6674();
  *(v1 + 128) = &type metadata for DetectChangesToMessages;

  sub_1004A6674();
  *(v1 + 176) = &type metadata for DetectChangesToMessagesInRecent;

  sub_1004A6674();
  *(v1 + 224) = &type metadata for DetectRemovedMessages;

  sub_1004A6674();
  *(v1 + 272) = &type metadata for DetectRemovedMessagesInRecent;

  sub_1004A6674();
  return v1;
}

void sub_100109724(uint64_t a1)
{
  v3 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  if (*(v1 + 112))
  {
    sub_1000118A4(a1, v9);
    sub_1000118A4(a1, v6);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v16 = sub_1004A4A54();
    v17 = sub_1004A6034();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v18 = 68159235;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      v19 = &v6[*(v3 + 20)];
      *(v18 + 10) = *v19;
      *(v18 + 11) = 2082;
      v20 = &v9[*(v3 + 20)];
      *(v18 + 13) = sub_10015BA6C(*(v20 + 1), *(v20 + 2), &v48);
      *(v18 + 21) = 1040;
      *(v18 + 23) = 2;
      *(v18 + 27) = 512;
      v21 = *(v19 + 12);
      sub_100011908(v6);
      *(v18 + 29) = v21;
      *(v18 + 31) = 2160;
      *(v18 + 33) = 0x786F626C69616DLL;
      *(v18 + 41) = 2085;
      v22 = *(v20 + 4);
      v23 = *(v20 + 10);

      sub_100011908(v9);
      v46 = v22;
      v47 = v23;
      v24 = sub_1004A5824();
      v26 = sub_10015BA6C(v24, v25, &v48);

      *(v18 + 43) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Not purging any messages.", v18, 0x33u);
      swift_arrayDestroy();

      return;
    }

    sub_100011908(v6);

    v44 = v9;
  }

  else
  {
    v27 = *(v1 + 104);
    sub_1000118A4(a1, &v45 - v14);
    sub_1000118A4(a1, v12);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v28 = sub_1004A4A54();
    v29 = sub_1004A6034();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v45 = v27;
      v31 = v30;
      v48 = swift_slowAlloc();
      *v31 = 68159491;
      *(v31 + 4) = 2;
      *(v31 + 8) = 256;
      v32 = &v12[*(v3 + 20)];
      *(v31 + 10) = *v32;
      *(v31 + 11) = 2082;
      v33 = &v15[*(v3 + 20)];
      *(v31 + 13) = sub_10015BA6C(*(v33 + 1), *(v33 + 2), &v48);
      *(v31 + 21) = 1040;
      *(v31 + 23) = 2;
      *(v31 + 27) = 512;
      v34 = *(v32 + 12);
      sub_100011908(v12);
      *(v31 + 29) = v34;
      *(v31 + 31) = 2160;
      *(v31 + 33) = 0x786F626C69616DLL;
      *(v31 + 41) = 2085;
      v35 = *(v33 + 4);
      v36 = *(v33 + 10);

      sub_100011908(v15);
      v46 = v35;
      v47 = v36;
      v37 = sub_1004A5824();
      v39 = sub_10015BA6C(v37, v38, &v48);

      *(v31 + 43) = v39;
      *(v31 + 51) = 2082;
      v46 = v45;
      v40 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
      v41 = MessageIdentifierRange.debugDescription.getter(v40);
      v43 = sub_10015BA6C(v41, v42, &v48);

      *(v31 + 53) = v43;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task purging UIDs %{public}s", v31, 0x3Du);
      swift_arrayDestroy();

      return;
    }

    sub_100011908(v12);

    v44 = v15;
  }

  sub_100011908(v44);
}

uint64_t sub_100109C14()
{
  if (qword_1005CCE78 != -1)
  {
    swift_once();
  }
}

void sub_100109C74(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  if (*(v3 + 112) & 1) != 0 || (v5 = *(v3 + 104), (sub_10002092C(a1, a2)))
  {
    v6 = 0xF000000000000007;
  }

  else
  {
    v7 = swift_allocObject();
    v8 = *(v3 + 24);
    *(v7 + 16) = *(v3 + 16);
    *(v7 + 24) = v8;
    *(v7 + 32) = v5;
    v9 = *(v3 + 124);
    *(v7 + 40) = *(v3 + 116);
    *(v7 + 48) = v9;
    v6 = v7 | 0x3000000000000002;
  }

  *a3 = v6;
}

__n128 sub_100109D30(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100109D5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 125))
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

uint64_t sub_100109DA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 125) = 1;
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

    *(result + 125) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100109E18()
{
  result = qword_1005D0AA0;
  if (!qword_1005D0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0AA0);
  }

  return result;
}

unint64_t sub_100109E6C(uint64_t a1)
{
  result = sub_100109E94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100109E94()
{
  result = qword_1005D0B58;
  if (!qword_1005D0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0B58);
  }

  return result;
}

uint64_t sub_100109EE8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 49, 7);
}

Swift::Int sub_100109F38()
{
  result = sub_100093190(&off_100599148);
  qword_1005DDF78 = result;
  return result;
}

void sub_100109F60(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v24 - v9;
  sub_1000118A4(a1, v24 - v9);
  sub_1000118A4(a1, v7);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000B43E8(v2, v29);
  sub_1000B43E8(v2, v28);
  sub_1000B43E8(v2, v27);
  v11 = sub_1004A4A54();
  v12 = sub_1004A6034();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v13 = 68160003;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v14 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v14;
    *(v13 + 11) = 2082;
    v15 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_10015BA6C(*(v15 + 1), *(v15 + 2), &v26);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    v16 = *(v14 + 12);
    sub_100011908(v7);
    *(v13 + 29) = v16;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v17 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);

    sub_100011908(v10);
    v24[1] = v17;
    v25 = v15;
    v18 = sub_1004A5824();
    v20 = sub_10015BA6C(v18, v19, &v26);

    *(v13 + 43) = v20;
    *(v13 + 51) = 2048;
    v21 = v30;
    sub_1000B42C8(v29);
    *(v13 + 53) = v21;
    *(v13 + 61) = 2048;
    v22 = *(v28[15] + 16);
    sub_1000B42C8(v28);
    *(v13 + 63) = v22;
    *(v13 + 71) = 2048;
    v23 = v27[14];
    sub_1000B42C8(v27);
    *(v13 + 73) = v23;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. highest-mod-seq local: %llu, changes without UID: %ld, server: %llu", v13, 0x51u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000B42C8(v27);
    sub_1000B42C8(v28);
    sub_1000B42C8(v29);
    sub_100011908(v7);

    sub_100011908(v10);
  }
}

uint64_t sub_10010A268@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 104);
  if ((v5 < *(v3 + 112) || *(*(v3 + 120) + 16)) && (sub_100112A10(a1, a2) & 1) == 0)
  {
    if (*(v3 + 128))
    {
      v9 = &off_100599720;
    }

    else
    {
      v9 = &off_100599660;
    }

    v10 = a3 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
    v11 = sub_100016948();
    static MessageIdentifierRange.all.getter(&type metadata for UID, v11, &v14);
    v13 = v14;
    Range<>.init<A>(_:)(&v13, &type metadata for UID, v11);
    sub_100016D2C();
    sub_1004A7124();
    *v10 = v9;
    *(v10 + 8) = v5;
    *(v10 + 16) = 0;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    v12 = sub_10000C9C0(&qword_1005D0C20, &qword_1004D5180);
    return (*(*(v12 - 8) + 56))(a3, 0, 1, v12);
  }

  else
  {
    v6 = sub_10000C9C0(&qword_1005D0C20, &qword_1004D5180);
    v7 = *(*(v6 - 8) + 56);

    return v7(a3, 1, 1, v6);
  }
}

void sub_10010A434(uint64_t a1)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  if ((v3 | v2) < 0)
  {
    __break(1u);
  }

  else if (v3 != v2)
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 32);
    __chkstk_darwin(a1);
    if (*(v6 + 192))
    {
      v8 = *(v6 + 176);
      v7 = *(v6 + 184);
      v12 = *(v6 + 168);
      v9 = v12;
      v10 = v6;

      sub_1000BE940(&v12, v4, v5, 0, sub_10010AB08);
      sub_100020D58(v9, v8, v7, 1);
      v11 = v12;
      *(v10 + 176) = 0;
      *(v10 + 184) = 0;
      *(v10 + 168) = v11;
      *(v10 + 192) = 1;
    }
  }
}

uint64_t sub_10010A530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = *(a2 + 120);
  v14 = (a1 + *(type metadata accessor for MailboxSyncState() + 48));
  v15 = v14[3];
  v16 = v14[4];
  sub_100025928(v14, v15);
  (*(v16 + 32))(v13, v15, v16);
  v17 = v14[3];
  v18 = v14[4];
  sub_10002587C(v14, v17);
  (*(v18 + 40))(v17, v18);
  v20 = *(v19 + 16);

  sub_1000118A4(a3, v12);
  sub_1000118A4(a3, v9);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v21 = sub_1004A4A54();
  v22 = sub_1004A6034();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v20;
    v41 = v24;
    *v23 = 68159491;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    v25 = *(v6 + 20);
    v38 = a2;
    v26 = &v9[v25];
    *(v23 + 10) = v9[v25];
    *(v23 + 11) = 2082;
    v27 = &v12[*(v6 + 20)];
    *(v23 + 13) = sub_10015BA6C(*(v27 + 1), *(v27 + 2), &v41);
    *(v23 + 21) = 1040;
    *(v23 + 23) = 2;
    *(v23 + 27) = 512;
    LOWORD(v26) = *(v26 + 12);
    sub_100011908(v9);
    *(v23 + 29) = v26;
    *(v23 + 31) = 2160;
    *(v23 + 33) = 0x786F626C69616DLL;
    *(v23 + 41) = 2085;
    v28 = *(v27 + 4);
    LODWORD(v26) = *(v27 + 10);

    sub_100011908(v12);
    v39 = v28;
    v40 = v26;
    a2 = v38;
    v29 = sub_1004A5824();
    v31 = sub_10015BA6C(v29, v30, &v41);

    *(v23 + 43) = v31;
    *(v23 + 51) = 2048;
    *(v23 + 53) = v37;
    _os_log_impl(&_mh_execute_header, v21, v22, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Number of changes to-be-sent to the persistence: %ld.", v23, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_100011908(v9);

    sub_100011908(v12);
  }

  v32 = *(a2 + 112);
  v33 = v14[3];
  v34 = v14[4];
  sub_100025928(v14, v33);
  return (*(v34 + 64))(v32, a3, v33, v34);
}

uint64_t sub_10010A8B8()
{
  if (qword_1005CCE80 != -1)
  {
    swift_once();
  }
}

__n128 sub_10010A948(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10010A97C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_10010A9C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10010AA38()
{
  result = qword_1005D0B60;
  if (!qword_1005D0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0B60);
  }

  return result;
}

unint64_t sub_10010AA8C(uint64_t a1)
{
  result = sub_10010AAB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10010AAB4()
{
  result = qword_1005D0C18;
  if (!qword_1005D0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0C18);
  }

  return result;
}

__n128 sub_10010AB28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10010AB44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_10010ABA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t (*sub_10010AC1C(uint64_t **a1, uint64_t a2, unsigned int a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10010BB10(v6, a2, a3);
  return sub_10010ACA4;
}

void (*sub_10010ACA8(uint64_t **a1, uint64_t a2))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10010BBC0(v4, a2);
  return sub_10010F278;
}

void sub_10010AD20(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_10010AD6C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(v3 + 48);
  if (!v4)
  {
    goto LABEL_16;
  }

  if (!*(v4 + 16) || (v5 = sub_100063B5C(a1, a2), (v6 & 1) == 0))
  {
    v20 = 0;
    v19 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  v7 = *(v4 + 56) + 72 * v5;
  v31 = *v7;
  v8 = *(v7 + 64);
  v10 = *(v7 + 32);
  v9 = *(v7 + 48);
  v32 = *(v7 + 16);
  v33 = v10;
  v34 = v9;
  v35 = v8;
  v11 = *(&v31 + 1);
  v12 = v31;
  v14 = *(&v32 + 1);
  v13 = v32;
  v16 = *(&v10 + 1);
  v15 = v10;
  v17 = *(&v9 + 1);
  v18 = v9;
  v19 = v8;
  v20 = HIBYTE(v8);
  sub_100063BD4(&v31, v30);
  if (!v12)
  {
LABEL_15:
    *&v31 = 0;
    *(&v31 + 1) = v11;
    *&v32 = v13;
    *(&v32 + 1) = v14;
    *&v33 = v15;
    *(&v33 + 1) = v16;
    *&v34 = v18;
    *(&v34 + 1) = v17;
    LOBYTE(v35) = v19;
    HIBYTE(v35) = v20;
    sub_100025F40(&v31, &qword_1005CF248, &qword_1004D22C0);
    goto LABEL_16;
  }

  v31 = __PAIR128__(v11, v12);
  v32 = __PAIR128__(v14, v13);
  v33 = __PAIR128__(v16, v15);
  v34 = __PAIR128__(v17, v18);
  v35 = __PAIR16__(v20, v19);
  result = sub_100025F40(&v31, &qword_1005CF248, &qword_1004D22C0);
  if (v20)
  {
LABEL_16:
    v25 = 0;
    v26 = 1;
LABEL_17:
    LOBYTE(v31) = v26;
    return v25 | (v26 << 32);
  }

  if (a3 != -1)
  {
    if (a3 + 1 > v15)
    {
      v22 = a3 + 1;
    }

    else
    {
      v22 = v15;
    }

    v24 = sub_10010AC1C(v30, a1, a2);
    if (*v23 && *(v23 + 65) != 1)
    {
      *(v23 + 32) = v22;
    }

    (v24)(v30, 0);
    v26 = v15 > a3;
    if (v15 <= a3)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_10010AF60(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_10010D2D0(v9, v10) & 1;
}

uint64_t sub_10010B014(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10010B050(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 11) = *(a1 + 27);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 11) = *(a2 + 27);
  return sub_10010D194(&v5, &v7) & 1;
}

uint64_t sub_10010B09C(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UntaggedResponse(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v75 - v10;
  v12 = type metadata accessor for State.Logger();
  v13 = *(*(v12 - 8) + 64);
  result = __chkstk_darwin(v12);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    return result;
  }

  v17 = *(a1 + 24);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = v17 >> 60;
  if ((v17 >> 60) > 8)
  {
    goto LABEL_15;
  }

  if (((1 << v20) & 0x1D6) != 0)
  {
    return result;
  }

  if (v20 != 3)
  {
    if (v20 == 5)
    {
      if (!*(v2 + 48))
      {
        return result;
      }

      v29 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v28 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v30 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v31 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v32 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1000CB7C8(v17);

      sub_10010E780(v30, v29, v28);
      sub_10013CE40(v32, v31, &v94);

      sub_10010E7C0(v30, v29, v28);

      sub_100025F40(&v94, &qword_1005CF248, &qword_1004D22C0);
      return sub_1000CB848(v17);
    }

LABEL_15:
    v79 = result;
    v83 = v2;
    v33 = *(v17 + 16);
    v34 = *(v17 + 40);
    v35 = *(v17 + 24);
    v36 = *(v17 + 56);
    v37 = *(v17 + 88);
    v38 = *(v17 + 72);
    v39 = *(v17 + 104);
    v40 = *(v17 + 120);
    v41 = *(v17 + 152);
    v42 = *(v17 + 136);
    v43 = *(v17 + 184);
    v103 = *(v17 + 168);
    v104 = v43;
    v100 = v40;
    v101 = v42;
    v102 = v41;
    v96 = v36;
    v97 = v38;
    v98 = v37;
    v99 = v39;
    v94 = v35;
    v95 = v34;
    sub_1000CB7C8(v17);
    sub_1000CB7C8(v17);

    sub_10010E800(&v94, v84);
    sub_10010E0AC(v33, &v94, v87);
    v44 = v87[0];
    v45 = v87[1];
    v46 = v87[2];
    v81 = v87[4];
    v82 = v87[3];
    v80 = v88 | (v89 << 16);
    sub_10010E85C(a2, v16, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v47 = sub_1004A4A54();
    v48 = sub_1004A6034();
    if (os_log_type_enabled(v47, v48))
    {
      v77 = v44 >> 56;
      v75 = (v44 & 0x100) == 0;
      v76 = (v44 & 0x1000000) == 0;
      v49 = swift_slowAlloc();
      v78 = v46;
      v50 = v49;
      *v49 = 68159744;
      *(v49 + 4) = 2;
      *(v49 + 8) = 256;
      v51 = *(v79 + 20);
      LODWORD(v79) = v48;
      v52 = v44;
      v53 = v45;
      v54 = v16[v51];
      sub_10010E8C4(v16);
      *(v50 + 10) = v54;
      v45 = v53;
      v44 = v52;
      *(v50 + 11) = 1024;
      *(v50 + 13) = (v52 & 1) == 0;
      *(v50 + 17) = 1024;
      *(v50 + 19) = v75;
      *(v50 + 23) = 1024;
      *(v50 + 25) = (v52 & 0xFF0000) == 0;
      *(v50 + 29) = 1024;
      *(v50 + 31) = v76;
      *(v50 + 35) = 1024;
      *(v50 + 37) = (v45 & 1) == 0;
      *(v50 + 41) = 1024;
      v55 = v77;
      *(v50 + 43) = v77 == 1;
      *(v50 + 47) = 1024;
      *(v50 + 49) = v55 == 2;
      _os_log_impl(&_mh_execute_header, v47, v79, "[%.*hhx] Server support: move: %{BOOL}d, Gmail labels: %{BOOL}d, cond-store: %{BOOL}d, message-seq-numbers: %{BOOL}d special-use: %{BOOL}d list-status: %{BOOL}d status-mod-seq: %{BOOL}d", v50, 0x35u);
      v46 = v78;
    }

    else
    {
      sub_10010E8C4(v16);
    }

    v56 = v83;
    sub_1000CB848(v17);

    if (*v56 == 2)
    {
      result = sub_1000CB848(v17);
      if (v44 == 2)
      {
        return result;
      }
    }

    else if (v44 == 2)
    {
      result = sub_1000CB848(v17);
    }

    else
    {
      v63 = *(v56 + 16);
      v64 = *(v56 + 32);
      v65 = *(v56 + 40) | (*(v56 + 42) << 16);
      v90[0] = *v56;
      v90[1] = v63;
      v91 = v64;
      v92 = v65;
      v93 = BYTE2(v65);
      v84[0] = v44;
      v84[1] = v45;
      v84[2] = v46;
      v84[3] = v82;
      v84[4] = v81;
      v85 = v80;
      v86 = BYTE2(v80);
      v66 = sub_10010D194(v90, v84);
      result = sub_1000CB848(v17);
      if (v66)
      {
        return result;
      }
    }

    *v56 = v44;
    *(v56 + 8) = v45;
    v67 = v81;
    v68 = v82;
    *(v56 + 16) = v46;
    *(v56 + 24) = v68;
    *(v56 + 32) = v67;
    BYTE2(v67) = BYTE2(v80);
    *(v56 + 40) = v80;
    *(v56 + 42) = BYTE2(v67);
    return result;
  }

  v21 = swift_projectBox();
  result = swift_getEnumCaseMultiPayload();
  if (result == 7)
  {
    sub_10010E85C(v21, v11, type metadata accessor for UntaggedResponse);
    v57 = *v11;
    v58 = *(v11 + 1);
    v59 = *(v11 + 4);
    v60 = v11[20];
    v61 = *(v11 + 3);
    v82 = *(v11 + 4);
    v83 = v61;
    v62 = *(v11 + 5);
    sub_1000CB7C8(v17);
    sub_1000CB7C8(v17);

    RemoteMailbox.init(attributes:path:)(v57, v58, v59 | (v60 << 32), &v94);
    sub_10010B818(&v94);
    sub_1000CB848(v17);

    sub_100063C30(&v94);

    return sub_1000CB848(v17);
  }

  if (result == 9)
  {
    sub_10010E85C(v21, v9, type metadata accessor for UntaggedResponse);
    v22 = *v9;
    v23 = *(v9 + 2);
    v24 = *(v9 + 6);
    v98 = *(v9 + 5);
    v99 = v24;
    v25 = *(v9 + 8);
    v100 = *(v9 + 7);
    v101 = v25;
    v26 = *(v9 + 2);
    v94 = *(v9 + 1);
    v95 = v26;
    v27 = *(v9 + 4);
    v96 = *(v9 + 3);
    v97 = v27;
    if (BYTE8(v94) & 1) != 0 || (v96 & 1) != 0 || (BYTE8(v96))
    {

      sub_10009A0FC(&v94);
    }

    else
    {
      v69 = v94;
      v70 = HIDWORD(v95);
      v71 = DWORD1(v96);
      sub_1000CB7C8(v17);
      sub_1000CB7C8(v17);

      sub_10009A0FC(&v94);
      if (*(v2 + 48))
      {
        v82 = v97;
        v83 = BYTE8(v97);
        v81 = v99;
        v80 = BYTE8(v99);
        v73 = sub_10010AC1C(v84, v22, v23);
        if (*v72)
        {
          *(v72 + 24) = v69;
          *(v72 + 32) = v70 | (v71 << 32);
          v74 = v83;
          *(v72 + 40) = v82;
          *(v72 + 48) = v74;
          *(v72 + 56) = v81;
          *(v72 + 64) = v80;
        }

        (v73)(v84, 0);
        sub_1000CB848(v17);
      }

      else
      {

        sub_1000CB848(v17);
      }
    }

    return sub_1000CB848(v17);
  }

  return result;
}

uint64_t sub_10010B818(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 48))
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    sub_100063BD4(a1, v17);
    v6 = *(v1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17[0] = *(v1 + 48);
    result = sub_10001CA34(a1, v3, v4, isUniquelyReferenced_nonNull_native);
    v9 = v17[0];
  }

  else
  {
    sub_10000C9C0(&qword_1005D0C28, &qword_1004D52F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004CEAA0;
    v12 = *a1;
    *(inited + 40) = *(a1 + 8);
    *(inited + 32) = v12;
    v13 = inited + 32;
    *(inited + 48) = *a1;
    v14 = *(a1 + 16);
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    *(inited + 112) = *(a1 + 64);
    *(inited + 80) = v15;
    *(inited + 96) = v16;
    *(inited + 64) = v14;
    v9 = sub_100162334(inited);
    swift_setDeallocating();
    sub_100063BD4(a1, v17);
    sub_100063BD4(a1, v17);
    result = sub_100025F40(v13, &qword_1005D0C30, &qword_1004D52F8);
  }

  *(v2 + 48) = v9;
  return result;
}

uint64_t sub_10010B948()
{
  if (*v0)
  {
    result = 0x616C696176616E75;
  }

  else
  {
    result = 0x6574726F70707573;
  }

  *v0;
  return result;
}

uint64_t sub_10010B990(__int16 a1)
{
  LOBYTE(v1) = a1;
  if ((a1 & 0x100) != 0)
  {
    if (!a1)
    {
      return 0x31303533636672;
    }

    v1 = a1;
    v5 = 0;
  }

  else
  {
    result = 0x2D6C616963657073;
    if (!v1)
    {
      return result;
    }

    v1 = v1;
    v5 = 0x2D6C616963657073;
  }

  if (v1 == 2)
  {
    v3._countAndFlagsBits = 0xD00000000000001BLL;
  }

  else
  {
    v3._countAndFlagsBits = 0x6174732D7473696CLL;
  }

  if (v1 == 2)
  {
    v4 = 0x80000001004AA400;
  }

  else
  {
    v4 = 0xEB00000000737574;
  }

  v3._object = v4;
  sub_1004A5994(v3);

  return v5;
}

uint64_t sub_10010BA84()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_10010B990(v1 | *v0);
}

uint64_t sub_10010BAA0()
{
  v1 = 0x6174732D7473696CLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616C696176616E75;
  }
}

uint64_t (*sub_10010BB10(uint64_t *a1, uint64_t a2, unsigned int a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_10010C1B4(v8);
  v8[9] = sub_10010BCC4(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10010BBBC;
}

void (*sub_10010BBC0(uint64_t *a1, uint64_t a2))(uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_10010C1E8(v6);
  v6[9] = sub_10010BFAC(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10010F27C;
}

void sub_10010BC64(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10010BCC4(uint64_t *a1, uint64_t a2, unsigned int a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x1C8uLL);
  }

  v11 = v10;
  *a1 = v10;
  *(v10 + 68) = a3;
  *(v10 + 432) = a2;
  *(v10 + 440) = v4;
  v12 = *v4;
  v13 = sub_100063B5C(a2, a3);
  *(v11 + 66) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_10013A2D4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1000C2FD4(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_100063B5C(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1004A6E24();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v11 + 448) = v13;
  if (v19)
  {
    memmove((v11 + 144), (*(*v5 + 56) + 72 * v13), 0x42uLL);
  }

  else
  {
    *(v11 + 208) = 0;
    *(v11 + 176) = 0u;
    *(v11 + 192) = 0u;
    *(v11 + 144) = 0u;
    *(v11 + 160) = 0u;
  }

  return sub_10010BE34;
}

void sub_10010BE34(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 160);
  *(v2 + 216) = *(*a1 + 144);
  *(v2 + 232) = v3;
  v4 = *(v2 + 192);
  *(v2 + 248) = *(v2 + 176);
  *(v2 + 264) = v4;
  *(v2 + 280) = *(v2 + 208);
  v5 = *(v2 + 216);
  v6 = *(v2 + 66);
  if (a2)
  {
    if (v5)
    {
      v8 = *(v2 + 440);
      v7 = *(v2 + 448);
      if ((*(v2 + 66) & 1) == 0)
      {
        v9 = *(v2 + 68);
        v10 = *(v2 + 432);
        v11 = *v8;
        v12 = *(v2 + 192);
        *(v2 + 32) = *(v2 + 176);
        *(v2 + 48) = v12;
        *(v2 + 64) = *(v2 + 208);
        v13 = *(v2 + 160);
        *v2 = *(v2 + 144);
        *(v2 + 16) = v13;
        v14 = v10;
        v15 = v2;
LABEL_11:
        sub_10001C6AC(v7, v14, v9, v15, v11);

        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v5)
  {
    v8 = *(v2 + 440);
    v7 = *(v2 + 448);
    if ((*(v2 + 66) & 1) == 0)
    {
      v9 = *(v2 + 68);
      v18 = *(v2 + 432);
      v11 = *v8;
      v19 = *(v2 + 144);
      *(v2 + 88) = *(v2 + 160);
      v20 = *(v2 + 192);
      *(v2 + 104) = *(v2 + 176);
      *(v2 + 120) = v20;
      *(v2 + 136) = *(v2 + 208);
      *(v2 + 72) = v19;
      v15 = v2 + 72;
      v14 = v18;
      goto LABEL_11;
    }

LABEL_7:
    memmove((*(*v8 + 56) + 72 * v7), (v2 + 144), 0x42uLL);
    goto LABEL_12;
  }

  if (*(v2 + 66))
  {
    v16 = *(v2 + 448);
    v17 = **(v2 + 440);
    sub_10009DA94(*(v17 + 48) + 16 * v16);
    sub_10013D1E8(v16, v17);
  }

LABEL_12:
  v21 = *(v2 + 192);
  *(v2 + 320) = *(v2 + 176);
  *(v2 + 336) = v21;
  *(v2 + 352) = *(v2 + 208);
  v22 = *(v2 + 160);
  *(v2 + 288) = *(v2 + 144);
  *(v2 + 304) = v22;
  sub_10010E920(v2 + 216, v2 + 360);
  sub_100025F40(v2 + 288, &qword_1005CF248, &qword_1004D22C0);

  free(v2);
}

void (*sub_10010BFAC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_100063E70(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_10013BB00();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1000C6184(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_100063E70(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
    result = sub_1004A6E24();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return sub_10010C100;
}

void sub_10010C100(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_10001C814(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];
    v8 = *(*(v7 + 48) + 8 * v6);

    sub_10013DA7C(v6, v7);
  }

  v9 = *v1;

  free(v1);
}

uint64_t (*sub_10010C1B4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10010C1DC;
}

uint64_t (*sub_10010C1E8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10010F264;
}

uint64_t sub_10010C210(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1004A5A34();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1004A5A04();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_10010C28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1004A5AA4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10010CD9C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1004A67E4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10010C818(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1004A5AA4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10010CD9C();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1004A67E4();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10010CD9C()
{
  v0 = sub_1004A5AB4();
  v4 = sub_10010CE1C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10010CE1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1004A58E4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1004A63E4();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10015BEAC(v9, 0);
  v12 = sub_10010CF74(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1004A58E4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1004A67E4();
LABEL_4:

  return sub_1004A58E4();
}

unint64_t sub_10010CF74(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10010C210(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1004A5A24();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1004A67E4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10010C210(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1004A59F4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
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

uint64_t sub_10010D194(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || ((a1[4] ^ a2[4]) & 1) != 0 || ((a1[5] ^ a2[5]) & 1) != 0 || a1[6] != a2[6] || a1[7] != a2[7] || ((a1[8] ^ a2[8]) & 1) != 0 || a1[9] != a2[9])
  {
    return 0;
  }

  v2 = a2[24];
  if (a1[24])
  {
    if (!a2[24])
    {
      return v2 & 1;
    }
  }

  else
  {
    if (*(a1 + 2) != *(a2 + 2))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  v5 = a2[40];
  if (a1[40])
  {
    v2 = 0;
    if (v3)
    {
      if ((a2[40] & 1) == 0 || !v4)
      {
        return v2 & 1;
      }
    }

    else if ((a2[40] & 1) == 0 || v4)
    {
      return v2 & 1;
    }
  }

  else
  {
    v2 = 0;
    if ((a2[40] & 1) != 0 || v3 != v4)
    {
      return v2 & 1;
    }
  }

  if (a1[41] != a2[41])
  {
    return 0;
  }

  v2 = a1[42] ^ a2[42] ^ 1;
  return v2 & 1;
}

uint64_t sub_10010D2D0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vmovn_s64(vceqq_s64(vandq_s8(vzip1q_s64(*a2, *a1), v5), vdupq_n_s64(2uLL)));
  if (v6.i8[4])
  {
    if ((v6.i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6.i8[0])
    {
      return 0;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40) | (*(a1 + 42) << 16);
    v10 = *(a2 + 16);
    v11 = *(a2 + 32);
    v12 = *(a2 + 40) | (*(a2 + 42) << 16);
    v29[0] = *a2;
    v29[1] = v10;
    v30 = v11;
    v31 = v12;
    v32 = BYTE2(v12);
    v25[0] = v4;
    v25[1] = v7;
    v26 = v8;
    v27 = v9;
    v28 = BYTE2(v9);
    if ((sub_10010D194(v25, v29) & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *(a2 + 48);

    v16 = sub_100113FD0(v13, v14);

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v17 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if ((*(a1 + 65) ^ *(a2 + 65)))
  {
    return 0;
  }

  v19 = *(a1 + 72);
  v20 = *(a2 + 72);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v22 = *(a1 + 80);
    v21 = *(a1 + 88);
    v24 = *(a2 + 80);
    v23 = *(a2 + 88);

    LOBYTE(v21) = static Mailbox.__derived_struct_equals(_:_:)(v19, v22, v21, v20, v24, v23);

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_10010D48C(uint64_t a1)
{
  v2 = Capability.listStatus.unsafeMutableAddressor();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(v2 + 24);

  LOBYTE(v3) = sub_100012A38(v3, v4, v5, v6, a1);

  if (v3)
  {
    v7 = Capability.yahooMailHighestModificationSequence.unsafeMutableAddressor();
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = *(v7 + 24);

    LOBYTE(v8) = sub_100012A38(v8, v9, v10, v11, a1);

    if (v8)
    {

      return 2;
    }

    else
    {
      v13 = Capability.condStore.unsafeMutableAddressor();
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = *(v13 + 24);

      LOBYTE(v14) = sub_100012A38(v14, v15, v16, v17, a1);

      if (v14)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10010D5AC(void *a1)
{
  v1 = a1[9];
  if (v1)
  {
    v2 = a1[8] == 0x4920216F6F686159 && v1 == 0xEB000000002E636ELL;
    if (v2 || (v3 = a1, v4 = a1[8], v5 = sub_1004A6D34(), a1 = v3, (v5 & 1) != 0))
    {
      sub_10010E990(a1);
      return 0;
    }
  }

  v7 = a1[1];
  if (!v7)
  {
    sub_10010E990(a1);
    return 2;
  }

  if (*a1 != 0x70616D4947 || v7 != 0xE500000000000000)
  {
    v9 = a1;
    v10 = *a1;
    v11 = sub_1004A6D34();
    sub_10010E990(v9);
    if (v11)
    {
      return 1;
    }

    return 2;
  }

  sub_10010E990(a1);
  return 1;
}

unsigned __int8 *sub_10010D688(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (!v4)
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {

        goto LABEL_19;
      }

      v4 = *(v1 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_90:
    v24 = sub_10010C28C(v7, v1, 10);
    v42 = v43;
    goto LABEL_86;
  }

  while (1)
  {
    v7 = v6;
LABEL_8:
    v8 = *(a1 + 48) + ((v7 << 11) | (32 * __clz(__rbit64(v4))));
    v10 = *v8;
    v9 = *(v8 + 8);
    v11 = *(v8 + 16);
    v12 = *(v8 + 24);

    v44 = v11;
    v45 = v10;
    if (v12)
    {
    }

    else
    {
      sub_1004A5AB4();
      sub_1004A5864();
    }

    v13 = sub_1004A5834();
    v15 = v14;

    if (v13 == 0x4C4547415353454DLL && v15 == 0xEC00000054494D49)
    {

      goto LABEL_23;
    }

    v17 = sub_1004A6D34();

    if (v17)
    {
      break;
    }

    v4 &= v4 - 1;

    v6 = v7;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

LABEL_23:

  v7 = Capability.value.getter(v45, v9, v44, v12);
  v1 = v19;

  if (!v1)
  {
    return 0;
  }

  v20 = HIBYTE(v1) & 0xF;
  v21 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v22 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
LABEL_19:

    return 0;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
    goto LABEL_90;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v47[0] = v7;
    v47[1] = v1 & 0xFFFFFFFFFFFFFFLL;
    if (v7 == 43)
    {
      if (v20)
      {
        if (--v20)
        {
          v24 = 0;
          v34 = v47 + 1;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              break;
            }

            ++v34;
            if (!--v20)
            {
              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }

LABEL_95:
      __break(1u);
      return result;
    }

    if (v7 != 45)
    {
      if (v20)
      {
        v24 = 0;
        v39 = v47;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          v41 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v41 + v40;
          if (__OFADD__(v41, v40))
          {
            break;
          }

          ++v39;
          if (!--v20)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }

    if (v20)
    {
      if (--v20)
      {
        v24 = 0;
        v28 = v47 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v30 - v29;
          if (__OFSUB__(v30, v29))
          {
            break;
          }

          ++v28;
          if (!--v20)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }

    goto LABEL_93;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    result = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1004A67E4();
  }

  v23 = *result;
  if (v23 == 43)
  {
    if (v21 < 1)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v20 = v21 - 1;
    if (v21 != 1)
    {
      v24 = 0;
      if (result)
      {
        v31 = result + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            goto LABEL_84;
          }

          v33 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            goto LABEL_84;
          }

          v24 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            goto LABEL_84;
          }

          ++v31;
          if (!--v20)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_76;
    }

LABEL_84:
    v24 = 0;
    LOBYTE(v20) = 1;
    goto LABEL_85;
  }

  if (v23 != 45)
  {
    if (v21)
    {
      v24 = 0;
      if (result)
      {
        while (1)
        {
          v37 = *result - 48;
          if (v37 > 9)
          {
            goto LABEL_84;
          }

          v38 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            goto LABEL_84;
          }

          v24 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            goto LABEL_84;
          }

          ++result;
          if (!--v21)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_84;
  }

  if (v21 < 1)
  {
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v20 = v21 - 1;
  if (v21 == 1)
  {
    goto LABEL_84;
  }

  v24 = 0;
  if (result)
  {
    v25 = result + 1;
    while (1)
    {
      v26 = *v25 - 48;
      if (v26 > 9)
      {
        goto LABEL_84;
      }

      v27 = 10 * v24;
      if ((v24 * 10) >> 64 != (10 * v24) >> 63)
      {
        goto LABEL_84;
      }

      v24 = v27 - v26;
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_84;
      }

      ++v25;
      if (!--v20)
      {
        goto LABEL_85;
      }
    }
  }

LABEL_76:
  LOBYTE(v20) = 0;
LABEL_85:
  v48 = v20;
  v42 = v20;
LABEL_86:

  if (v42)
  {
    return 0;
  }

  result = v24;
  if ((v24 - 1000000) < 0xFFFFFFFFFFF0BDC1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10010DB74(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (!v5)
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        goto LABEL_19;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_96:

LABEL_19:
    appended = Capability.mailboxSpecificAppendLimit.unsafeMutableAddressor();
    v21 = *appended;
    v22 = appended[1];
    v23 = appended[2];
    v24 = *(appended + 24);

    LODWORD(v21) = sub_100012A38(v21, v22, v23, v24, v1);

    return ~v21 & 1;
  }

  while (1)
  {
    v8 = v7;
LABEL_8:
    v9 = v1;
    v10 = *(v1 + 48) + ((v8 << 11) | (32 * __clz(__rbit64(v5))));
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);

    v49 = v13;
    v50 = v12;
    if (v14)
    {
    }

    else
    {
      sub_1004A5AB4();
      sub_1004A5864();
    }

    v15 = sub_1004A5834();
    v17 = v16;

    if (v15 == 0x494C444E45505041 && v17 == 0xEB0000000054494DLL)
    {
      v1 = v9;

      goto LABEL_22;
    }

    v19 = sub_1004A6D34();

    v1 = v9;
    if (v19)
    {
      break;
    }

    v5 &= v5 - 1;

    v7 = v8;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

LABEL_22:
  v26 = Capability.value.getter(v50, v11, v49, v14);
  v28 = v27;

  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = HIBYTE(v28) & 0xF;
  v30 = v26 & 0xFFFFFFFFFFFFLL;
  if ((v28 & 0x2000000000000000) != 0)
  {
    v31 = HIBYTE(v28) & 0xF;
  }

  else
  {
    v31 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    goto LABEL_96;
  }

  if ((v28 & 0x1000000000000000) != 0)
  {
    v33 = sub_10010C818(v26, v28, 10);
    v46 = v48;
    goto LABEL_87;
  }

  if ((v28 & 0x2000000000000000) != 0)
  {
    v51[0] = v26;
    v51[1] = v28 & 0xFFFFFFFFFFFFFFLL;
    if (v26 == 43)
    {
      if (v29)
      {
        if (--v29)
        {
          v33 = 0;
          v41 = v51 + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            if (!is_mul_ok(v33, 0xAuLL))
            {
              break;
            }

            v36 = __CFADD__(10 * v33, v42);
            v33 = 10 * v33 + v42;
            if (v36)
            {
              break;
            }

            ++v41;
            if (!--v29)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_85;
      }

LABEL_102:
      __break(1u);
      return result;
    }

    if (v26 != 45)
    {
      if (v29)
      {
        v33 = 0;
        v44 = v51;
        while (1)
        {
          v45 = *v44 - 48;
          if (v45 > 9)
          {
            break;
          }

          if (!is_mul_ok(v33, 0xAuLL))
          {
            break;
          }

          v36 = __CFADD__(10 * v33, v45);
          v33 = 10 * v33 + v45;
          if (v36)
          {
            break;
          }

          ++v44;
          if (!--v29)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_85;
    }

    if (v29)
    {
      if (--v29)
      {
        v33 = 0;
        v37 = v51 + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          if (!is_mul_ok(v33, 0xAuLL))
          {
            break;
          }

          v36 = 10 * v33 >= v38;
          v33 = 10 * v33 - v38;
          if (!v36)
          {
            break;
          }

          ++v37;
          if (!--v29)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_85;
    }

    goto LABEL_100;
  }

  if ((v26 & 0x1000000000000000) != 0)
  {
    result = (v28 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1004A67E4();
  }

  v32 = *result;
  if (v32 == 43)
  {
    if (v30 < 1)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v29 = v30 - 1;
    if (v30 != 1)
    {
      v33 = 0;
      if (result)
      {
        v39 = (result + 1);
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            goto LABEL_85;
          }

          if (!is_mul_ok(v33, 0xAuLL))
          {
            goto LABEL_85;
          }

          v36 = __CFADD__(10 * v33, v40);
          v33 = 10 * v33 + v40;
          if (v36)
          {
            goto LABEL_85;
          }

          ++v39;
          if (!--v29)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_77;
    }

LABEL_85:
    v33 = 0;
    LOBYTE(v29) = 1;
    goto LABEL_86;
  }

  if (v32 != 45)
  {
    if (v30)
    {
      v33 = 0;
      if (result)
      {
        while (1)
        {
          v43 = *result - 48;
          if (v43 > 9)
          {
            goto LABEL_85;
          }

          if (!is_mul_ok(v33, 0xAuLL))
          {
            goto LABEL_85;
          }

          v36 = __CFADD__(10 * v33, v43);
          v33 = 10 * v33 + v43;
          if (v36)
          {
            goto LABEL_85;
          }

          ++result;
          if (!--v30)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_85;
  }

  if (v30 < 1)
  {
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v29 = v30 - 1;
  if (v30 == 1)
  {
    goto LABEL_85;
  }

  v33 = 0;
  if (result)
  {
    v34 = (result + 1);
    while (1)
    {
      v35 = *v34 - 48;
      if (v35 > 9)
      {
        goto LABEL_85;
      }

      if (!is_mul_ok(v33, 0xAuLL))
      {
        goto LABEL_85;
      }

      v36 = 10 * v33 >= v35;
      v33 = 10 * v33 - v35;
      if (!v36)
      {
        goto LABEL_85;
      }

      ++v34;
      if (!--v29)
      {
        goto LABEL_86;
      }
    }
  }

LABEL_77:
  LOBYTE(v29) = 0;
LABEL_86:
  v52 = v29;
  v46 = v29;
LABEL_87:

  if ((v46 & 1) != 0 || v33 >> 5 < 0xC35)
  {
    goto LABEL_19;
  }

  if (v33 >= 2000000000)
  {
    v47 = 2000000000;
  }

  else
  {
    v47 = v33;
  }

  if (v33 >= 0)
  {
    return v47;
  }

  else
  {
    return 2000000000;
  }
}

uint64_t sub_10010E0AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = Capability.move.unsafeMutableAddressor();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);

  v11 = sub_100012A38(v7, v8, v9, v10, a1);

  v12 = Capability.gmailExtensions.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = *(v12 + 24);

  v17 = sub_100012A38(v13, v14, v15, v16, a1);

  v18 = Capability.condStore.unsafeMutableAddressor();
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = *(v18 + 24);

  LOBYTE(v19) = sub_100012A38(v19, v20, v21, v22, a1);

  if (v19)
  {
    v76 = 0;
    v23 = a2[9];
    if (!v23)
    {
LABEL_12:
      v75 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v24 = Capability.yahooMailHighestModificationSequence.unsafeMutableAddressor();
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = *(v24 + 24);

    LOBYTE(v25) = sub_100012A38(v25, v26, v27, v28, a1);

    if (v25)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    v76 = v29;
    v23 = a2[9];
    if (!v23)
    {
      goto LABEL_12;
    }
  }

  if ((a2[8] != 0x4920216F6F686159 || v23 != 0xEB000000002E636ELL) && (sub_1004A6D34() & 1) == 0)
  {
    goto LABEL_12;
  }

  v75 = 1;
LABEL_13:
  v74 = (v17 & 1) == 0;
  v73 = (v11 & 1) == 0;
  v30 = Capability.partial.unsafeMutableAddressor();
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v34 = *(v30 + 24);

  LOBYTE(v31) = sub_100012A38(v31, v32, v33, v34, a1);

  v35 = Capability.extendedSearch.unsafeMutableAddressor();
  v36 = *v35;
  v37 = v35[1];
  v38 = v35[2];
  v39 = *(v35 + 24);

  LOBYTE(v36) = sub_100012A38(v36, v37, v38, v39, a1);

  v72 = (v31 & 1) == 0;
  v71 = (v36 & 1) == 0;
  v40 = Capability.namespace.unsafeMutableAddressor();
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  LOBYTE(v38) = *(v40 + 24);

  LOBYTE(v41) = sub_100012A38(v41, v42, v43, v38, a1);

  v70 = (v41 & 1) == 0;

  v69 = sub_10010D48C(v44);
  v45 = Capability.specialUse.unsafeMutableAddressor();
  v46 = *v45;
  v47 = v45[1];
  v48 = v45[2];
  v49 = *(v45 + 24);

  LOBYTE(v46) = sub_100012A38(v46, v47, v48, v49, a1);

  v68 = (v46 & 1) == 0;
  v67 = sub_10010D5AC(a2);

  v51 = sub_10010D688(v50);
  v78 = v52 & 1;

  v54 = sub_10010DB74(v53);
  v77 = v55 & 1;
  v56 = Capability.idle.unsafeMutableAddressor();
  v57 = *v56;
  v58 = v56[1];
  v59 = v56[2];
  v60 = *(v56 + 24);

  LOBYTE(v57) = sub_100012A38(v57, v58, v59, v60, a1);

  LOBYTE(v41) = (v57 & 1) == 0;
  v61 = Capability.uidBatches.unsafeMutableAddressor();
  v62 = *v61;
  v63 = v61[1];
  v64 = v61[2];
  v65 = *(v61 + 24);

  LOBYTE(v62) = sub_100012A38(v62, v63, v64, v65, a1);

  *a3 = v73;
  *(a3 + 1) = v74;
  *(a3 + 2) = v76;
  *(a3 + 3) = v75;
  *(a3 + 4) = v72;
  *(a3 + 5) = v71;
  *(a3 + 6) = v70;
  *(a3 + 7) = v69;
  *(a3 + 8) = v68;
  *(a3 + 9) = v67;
  *(a3 + 16) = v51;
  *(a3 + 24) = v78;
  *(a3 + 32) = v54;
  *(a3 + 40) = v77;
  *(a3 + 41) = v41;
  *(a3 + 42) = (v62 & 1) == 0;
  return result;
}

uint64_t sub_10010E4CC(uint64_t result, char a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  if (a2)
  {
    return 1;
  }

  if ((a5 & 1) == 0 && a4 - 5 > 0xFFFFFFFD)
  {
    return 0;
  }

  v5 = __OFSUB__(a3, result);
  v6 = a3 - result;
  if (a3 < result)
  {
    if (__OFSUB__(result, a3))
    {
      __break(1u);
      goto LABEL_22;
    }

    v5 = __OFSUB__(0, result - a3);
    v6 = a3 - result;
    if (!v5)
    {
LABEL_11:
      v7 = v6 / 1000000000.0;
      if (a4 == 4)
      {
        if (v7 <= 4.0)
        {
LABEL_13:
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v9 = sub_1004A4A54();
          v10 = sub_1004A6034();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v19 = v12;
            *v11 = 68158466;
            *(v11 + 4) = 3;
            *(v11 + 8) = 2048;
            *(v11 + 10) = v7;
            *(v11 + 18) = 2082;
            v13 = sub_1004A6754();
            v15 = sub_10015BA6C(v13, v14, &v19);

            *(v11 + 20) = v15;
            *(v11 + 28) = 1024;
            *(v11 + 30) = a5 & 1;
            _os_log_impl(&_mh_execute_header, v9, v10, "Last mailbox list update was %.*g seconds ago. Not requesting update. (kind: %{public}s, update was requested: %{BOOL}d", v11, 0x22u);
            sub_1000197E0(v12);
          }

          return 0;
        }
      }

      else if (v7 <= 47.0)
      {
        goto LABEL_13;
      }

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v16 = sub_1004A4A54();
      v17 = sub_1004A6034();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 68157952;
        *(v18 + 4) = 3;
        *(v18 + 8) = 2048;
        *(v18 + 10) = v7;
        _os_log_impl(&_mh_execute_header, v16, v17, "Last mailbox list update was %.*g seconds ago. Requesting update.", v18, 0x12u);
      }

      return 1;
    }

    __break(1u);
  }

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_10010E780(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1000110B0(result);
  }

  return result;
}

unint64_t sub_10010E7C0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_10001114C(result);
  }

  return result;
}

uint64_t sub_10010E85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010E8C4(uint64_t a1)
{
  v2 = type metadata accessor for State.Logger();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010E920(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CF248, &qword_1004D22C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s6RemoteV6ServerV11ListSupportVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6RemoteV6ServerV11ListSupportVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10010EB98(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10010EBAC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[43])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10010EBF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t _s6RemoteV6ServerV13SearchSupportVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *_s6RemoteV6ServerV13SearchSupportVwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10010EDAC()
{
  result = qword_1005D0C38;
  if (!qword_1005D0C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0C38);
  }

  return result;
}

unint64_t sub_10010EE04()
{
  result = qword_1005D0C40;
  if (!qword_1005D0C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0C40);
  }

  return result;
}